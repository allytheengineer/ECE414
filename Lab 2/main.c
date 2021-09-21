#pragma config FNOSC= FRCPLL,POSCMOD = OFF
#pragma config FPLLIDIV = DIV_2, FPLLMUL= MUL_20
#pragma config FPBDIV = DIV_1, FPLLODIV= DIV_2
#pragma config FWDTEN = OFF, JTAGEN = OFF, FSOSCEN= OFF

#include <stdio.h>
#include <xc.h>
#include <inttypes.h>
#include "porta_in.h"
#include "portb_out.h"

void main(){
    uint8_t in;
    uint16_t out;
    porta_in_init();
    portb_out_init();
    while(1){
        in = porta_in_read();
        
            if(in==0){
            out=0x0001;  
            portb_out_write(out);
            }
            else if(in==1){
            out=0x0002;    
             portb_out_write(out);
            }
            else if(in==2){
            out=0x0004;
            portb_out_write(out);
            }
            else if(in==3){
            out=0x0008;    
            portb_out_write(out);
            }
    else if(in==4){
        out=0x0010;
        portb_out_write(out);
    }
    else if(in==5){
    out=0x0020  ;  
    portb_out_write(out);
    }
    else if(in==6){
    out=0x0080;  
    portb_out_write(out);
    }
    else if(in==7){
    out=0x0100; 
    portb_out_write(out);
    }
    else if(in==8){
        out=0x0200;
        portb_out_write(out);
    }    
    else if(in==9){
        out=0x0400;
    portb_out_write(out);   
    }
    else if(in==10){
        out=0x0800;
        portb_out_write(out);
    }
    
    else if(in==11){
    out=0x2000;   
    portb_out_write(out);
    }
    else if(in==12){
    out=0x4000;
  portb_out_write(out);  
    }
    else if(in==13){
     out=0x8000;
     portb_out_write(out);
        
    }
    }
    
    
        
    }
