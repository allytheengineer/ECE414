/*
 * File:   touch_main.c
 * Author: watkinma
 *
 * Description: Prints out the detected position (x, y) of a press on the
 * touchscreen as well as the pressure (z).
 *
 * IMPORTANT: For this example to work, you need to make the following
 * connections from the touchpad to the PIC32:
 *  Y+ => AN1 (Pin 3)
 *  Y- => RA3 (Pin 10)
 *  X+ => RA4 (Pin 12)
 *  X- => AN0 (Pin 2)                        
 */

#define _SUPPRESS_PLIB_WARNING
#include <xc.h>
#include <plib.h>
#include "config.h"
#include "adc_intf.h"
#include "TouchScreen.h"
#include "tft_master.h"
#include "tft_gfx.h"
#include "calcfsm.h"

#define XM AN0
#define YP AN1

int main(int argc, char** argv) {
    static char buffer[30];
    uint8_t press = 0;
    ts_lcd_init();
    draw_buttons();
    int8_t input = button_press();
    int8_t x = 16;
    int64_t calcResult;
    while(1){
      //cursor_test();
      input = button_press();
      if(screenIsPressed() && press == 0){ // screen no longer pressed
        press = 1;
        if(input >= 0){ // checks for input
            x = input;
        }
      }
      calcResult = tickFct_CALCFSM(x);
      x = 16; //reset
      if(!screenIsPressed())
      {
        press = 0;
      }
      tft_fillRoundRect(4, 4, 312, 48, 4, ILI9341_WHITE);
      tft_setTextSize(2);
      tft_setCursor(37, 20);
      tft_setTextColor(ILI9341_BLACK);
      if(calcResult >= -1000){//display result
        sprintf(buffer, "%d", calcResult);
      }
      else if(calcResult == -1001){//or display too big error message
        sprintf(buffer,"ERROR");
      }
      else if(calcResult == -1002){//or display div by 0 error message
        sprintf(buffer,"DIV0");
      }
      tft_writeString(buffer);
      delay_ms(20);
    }
    return (EXIT_SUCCESS);
}