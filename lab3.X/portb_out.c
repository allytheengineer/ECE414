#include <xc.h>
#include <inttypes.h>
#include "portb_out.h"

//low level code to initilize port
void portb_out_init(){
    ANSELB = 0; //digital
    TRISB = 0x0000; //output
    LATB = 0x0000; // init output as 0
}

void portb_out_write(uint16_t outval){
    uint16_t valp1;
    uint16_t valp2;
    uint16_t valp3;
    valp1 = outval & 0x003F;
    valp2 = outval & 0x07C0;
    valp3 = outval & 0x1C00;
    LATB = valp1 | valp2 | valp3;   
    
}


