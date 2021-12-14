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

#pragma config FNOSC = FRCPLL, POSCMOD = OFF
#pragma config FPLLIDIV = DIV_2, FPLLMUL = MUL_20
#pragma config FPBDIV = DIV_1, FPLLODIV = DIV_2
#pragma config FWDTEN = OFF, JTAGEN = OFF, FSOSCEN = OFF


int out;
int main(int argc, char** argv) {
init_sounds();
porta_in_init();
    while(1){
        
        
         uint16_t red=0;
       uint16_t blue=0;
       uint16_t green=0;
       buttondebounce(porta_checkC());
        if(out==1){
       red= readred();    
       green=readgreen();
       blue=readblue();
        }
       if(blue!=0){
           PORTBbits.RB4=0;
       }  
      
    }
}
        
    


