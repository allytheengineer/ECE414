/* 
 * File:   main.c
 * Author: damatoj
 *
 * Created on October 13, 2021, 6:12 PM
 */

#define _SUPPRESS_PLIB_WARNING
#include <stdio.h>
#include <stdlib.h>
#include "config.h"
#include "ts_lcd.h"
#include "tft_gfx.h"
#include "tft_master.h"
#include "CALCFSM.h"
#include "touchDe.h"
#define XM AN0
#define YP AN1


int main(int argc, char** argv) {
    static char buffer[30];
    uint8_t press = 0;
    ts_lcd_init();
    draw_screen();
    int8_t input = button_press(), x = 16;
    int64_t calcAnswr=0;
    while(1){
      //test_touch();
      
      input = button_press();
      if(touchDe(screenPress()==1)){ // Screen no longer pressed
         calcAnswr = tickFct_CALCULATOR(input);
        }
        
    
     
      tft_fillRect(4, 4, 312, 48, ILI9341_WHITE);
      tft_setTextSize(2);
      tft_setCursor(37, 20);
      tft_setTextColor(ILI9341_BLACK);
      if(calcAnswr >= -1000)
        sprintf(buffer, "%d", calcAnswr);
      else if(calcAnswr==-1111)
        sprintf(buffer,"ERROR");
      else if(calcAnswr==-2222)
        sprintf(buffer,"DIV0");
      tft_writeString(buffer);
      
      delay_ms(20);
    }
    return (EXIT_SUCCESS);
}


