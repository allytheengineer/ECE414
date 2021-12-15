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


int out=0;
int out2=0;
int main() {
init_sounds();

uint16_t color1;
uint16_t color2;
uint16_t red1=0;
uint16_t blue1=0;
uint16_t green1=0;
uint16_t red2=0;
uint16_t blue2=0;
uint16_t green2=0;
while(1){
    out=PORTAbits.RA1;
    out2=PORTAbits.RA2;        
    if(out){
red1=readred();
blue1=readblue();
green1=readgreen();
 color1= color(red1,blue1,green1);
}
    if(out2){
  red2=readred();
blue2=readblue();
green2=readgreen();
color2= color(red2,blue2,green2);      
audioOut(testMatch(color1,color2));        
    }
}
}

