#include "porta_in.h"
#include "portb_out.h"
#include "PONGLED_FSM.h"
#include <inttypes.h>
#include <stdio.h>
#include<stdlib.h>
#include "timer1.h"

static enum PONGLED_States
{PONGLED_SMStart, PONGLED_Init, PONGLED_Wait, PONGLED_RightBounce, PONGLED_LeftBounce, PONGLED_MissLeft, PONGLED_MissRight} PONGLED_State;
extern int speed;
int count = 0;
int r;
int counter;
static uint16_t outval=0x10;

void tickFct_PONGLED(int Rout,int Lout)
{
    
    int rbtn = Rout;
    int lbtn = Lout;
	switch (PONGLED_State) {
		case PONGLED_SMStart: //starts the fsm
			PONGLED_State = PONGLED_Init;
			break;
		case PONGLED_Init: //initial state 
			PONGLED_State = PONGLED_Wait;
			break;
		case PONGLED_Wait: //waiting for someone to start
			if(lbtn==2&&outval==0x01){
				PONGLED_State = PONGLED_RightBounce;
			}
			else if(rbtn==1&&outval==0x100){
				PONGLED_State = PONGLED_LeftBounce;
			}
            else{
                PONGLED_State = PONGLED_Wait;
            }
			break;
		case PONGLED_RightBounce: //moves ?ball? right
            if(outval==0x100 && rbtn==1){ //Change to moving left
                if(speed>100){
                speed = speed-50;
                }
				PONGLED_State = PONGLED_LeftBounce;
			}
			else if((outval!=0x100 && rbtn==1)  ||  (outval>0x100)){ //Swing Missed
				PONGLED_State = PONGLED_MissRight;
			}
            else{
                PONGLED_State = PONGLED_RightBounce;
            }
			break;
case PONGLED_LeftBounce: //moves ?ball? left   
            if(outval==0x01 && lbtn==2){ //Change to moving right
                if(speed>100){
                speed = speed-50;
                }
				PONGLED_State = PONGLED_RightBounce;
			}
			else if((outval!=0x01 && lbtn==2)  ||  (outval<0x01)){ //Swing Missed
				PONGLED_State = PONGLED_MissLeft;
			}
            else{
                PONGLED_State = PONGLED_LeftBounce;
            }
			break;
		case PONGLED_MissLeft: //left player missed the ?ball?
			if(count>6){
				PONGLED_State = PONGLED_Init;
                count = 0;
			}
			else{
				PONGLED_State = PONGLED_MissLeft;
				count++;
			}
			break;
        case PONGLED_MissRight: //right player missed the ?ball?
			if(count>6){
				PONGLED_State = PONGLED_Init;
                count = 0;
			}
			else{
				PONGLED_State = PONGLED_MissRight;
				count++;
			}
			break;

		default:
			PONGLED_State = PONGLED_Init;
			break;
	}

	switch (PONGLED_State) {
		case PONGLED_Init:
            r = timer1_read()&0x01;
            if(r==0){
              outval=0x01;  
            }
			else{
                outval=0x100;
            }
            count = 0;
			portb_out_write(outval);
			break;
		case PONGLED_Wait:
            portb_out_write(outval);
            break; 
		case PONGLED_RightBounce:
            if(outval==0x00){
               outval = 0x01;
               counter = 0;
            }
            else{
                if(counter++==3)
                {
                    if(outval==0x20){
                        outval= outval << 2; 
                        counter = 0;
                    }
                    else{
                        outval = outval << 1; //Shift light left
                        counter = 0;
                    }
                        
                }
            }
			portb_out_write(outval);
			break;
		case PONGLED_LeftBounce:
            if(outval==0x00){
               outval = 0x100;  
               counter = 0 ;
            }
            else{
                if(counter++==3)
                {
                    if(outval==0x80){
                    outval=outval>>2; 
                    counter = 0;
                    }
                    else{
                    outval = outval >> 1;  //Shift light right
                    counter = 0;
                    }
                }       
			}
			portb_out_write(outval);
			break;
		case PONGLED_MissLeft:
			outval = (count&0x01) << 8; //Flash right Light
			portb_out_write(outval);
			break;
        case PONGLED_MissRight:
			outval = count&0x01; //Flash left Light
			portb_out_write(outval);
			break;
		default:
			outval = 0x00;
			break;
	}
}