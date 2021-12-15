/* 
 * File:   test.c
 * Author: phelana
 *
 * Created on December 8, 2021, 10:30 AM
 */

#include <xc.h>
#include <inttypes.h>
#include "timer1.h"
#include "rgbsensor.h"
#include "audio.h"
#include "button.h"
#include "uart1.h"
#include "color.h"

#pragma config FNOSC = FRCPLL, POSCMOD = OFF
#pragma config FPLLIDIV = DIV_2, FPLLMUL = MUL_20
#pragma config FPBDIV = DIV_1, FPLLODIV = DIV_2
#pragma config FWDTEN = OFF, JTAGEN = OFF, FSOSCEN = OFF


int out;
int main(int argc, char** argv) {
init_sounds();
uart1_init(9600);
uint8_t red=0;
uint8_t blue=0;
uint8_t green=0;
int i=0;
if(i==0){
    //while(!uart1_rxrdy());
   //red = uart1_rxread();
    red=255;
   i++;
}
if(i==1){
   // while(!uart1_rxrdy());
   //green = uart1_rxread();
    green=255;
   i++;
}
if(i==2){
    //while(!uart1_rxrdy());
   //blue = uart1_rxread();
    blue=255;
   i++;
}

 audioOut(color(red,blue,green));
 i=0;
}

