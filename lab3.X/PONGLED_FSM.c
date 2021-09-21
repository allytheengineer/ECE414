#include "porta_in.h"
#include "portb_out.h"
#include "PONGLED_FSM.h"
#include <inttypes.h>

static enum PONGLED_States
{PONGLED_SMStart, PONGLED_Init, PONGLED_Wait, PONGLED_RightBounce, PONGLED_LeftBounce, PONGLED_MissLeft, PONGLED_MissRight} PONGLED_State;

static uint8_t outval;

void tickFct_PONGLED(int right, int left, int s, int c)
{
    int speed=s;
    int count=c;
    int rbtn = right;
    int lbtn = left;
	switch (PONGLED_State) {
		case PONGLED_SMStart: //starts the fsm
			PONGLED_State = PONGLED_Init;
			break;
		case PONGLED_Init: //initial state
			PONGLED_State = PONGLED_RightBounce;
			break;
		case PONGLED_Wait: //waiting for someone to start
			if(lbtn==0&&rbtn==1){
				PONGLED_State = PONGLED_RightBounce;
			}
			if(lbtn==1&&rbtn==0){
				PONGLED_State = PONGLED_LeftBounce;
			}
			break;
		case PONGLED_RightBounce: //moves ?ball? right
			if(outval!=0x01 && lbtn==1 && rbtn==1){ //Still going right
				PONGLED_State = PONGLED_RightBounce;
			}
            if(outval==0x01 && lbtn==0 && rbtn==1){ //Change to moving left
				PONGLED_State = PONGLED_LeftBounce;
			}
			if(outval!=0x01 && lbtn==0 && rbtn==1){ //Swing Missed
				PONGLED_State = PONGLED_MissRight;
			}
			break;
case PONGLED_LeftBounce: //moves ?ball? left
			if(outval!=0x80 && lbtn==1 && rbtn==1){ //Still going left
				PONGLED_State = PONGLED_LeftBounce;
			}
            if(outval==0x80 && lbtn==1 && rbtn==0){ //Change to moving right
				PONGLED_State = PONGLED_RightBounce;
			}
			if(outval!=0x80 && lbtn==1 && rbtn==0){ //Swing Missed
				PONGLED_State = PONGLED_MissLeft;
			}
			break;
		case PONGLED_MissLeft: //left player missed the ?ball?
			if(count>3){
				PONGLED_State = PONGLED_Init;
			}
			if(count<3){
				PONGLED_State = PONGLED_MissLeft;
				count++;
			}
			break;
case PONGLED_MissRight: //left player missed the ?ball?
			if(count>3){
				PONGLED_State = PONGLED_Init;
			}
			if(count<3){
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
			outval = 0x00; 
            count = 0;
			portb_out_write(outval);
			break;
		case PONGLED_Wait:
			outval = 0x00;
            portb_out_write(outval);
            break; 
		case PONGLED_RightBounce:
			outval = outval >> 1; //Shift light right
			speed = speed-50;
			portb_out_write(outval);
			break;
		case PONGLED_LeftBounce:
			outval = outval << 1; //Shift light left
			speed = speed-50;
			portb_out_write(outval);
			break;
		case PONGLED_MissLeft:
			outval = 0x01; //Flash Right Light
			portb_out_write(outval);
			break;
        case PONGLED_MissRight:
			outval = 0x80; //Flash Left Light
			portb_out_write(outval);
			break;
		default:
			outval = 0x00;
			break;
	}
}
