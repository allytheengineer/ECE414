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
uint16_t red=0;
uint16_t blue=0;
uint16_t green=0;
while(1){
red=readred();
blue=readblue();
green=readgreen();
audioOut(color(red,blue,green));
}
}

