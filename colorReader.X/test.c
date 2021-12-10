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

#pragma config FNOSC = FRCPLL, POSCMOD = OFF
#pragma config FPLLIDIV = DIV_2, FPLLMUL = MUL_20
#pragma config FPBDIV = DIV_1, FPLLODIV = DIV_2
#pragma config FWDTEN = OFF, JTAGEN = OFF, FSOSCEN = OFF


int out;
int main(int argc, char** argv) {

    while(1){
        if(out==1){
       uint16_t red;
       red= readred();    
       if(red>1){
       PORTBbits.RB2 = 1;   
       }
       else 
       {
        PORTBbits.RB11 = 1; // Sound 7 (black)    
       }
        }
        }
    }


