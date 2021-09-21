#include <xc.h>
#include <inttypes.h>
#include "porta_in.h"

//low level code to initialize port
void porta_in_init(){
    ANSELA = 0; //digital
    TRISA = 0x1F; //input
    CNPUA = 0x1F; //internal pull up resistor
}

uint8_t porta_in_read(){
    uint8_t data;
    data = PORTA;
    return data;
}


