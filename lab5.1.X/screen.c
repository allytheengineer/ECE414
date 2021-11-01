#define _SUPPRESS_PLIB_WARNING
#include <xc.h>
#include <inttypes.h>
#include "ts_lcd.h"
#include "TouchScreen.h"
#include "tft_master.h"
#include "tft_gfx.h"

#define NUM_BOXES 20
#define Y_DIST 46
#define X_DIST 79

int8_t button_press(){
  uint8_t result[16] = {7, 8, 9, 10, 4, 5, 6, 11, 1, 2, 3, 12, 0, 14, 15, 13};
  if(screenIsPressed()){
      uint16_t displayX, displayY;
      ts_lcd_get_ts(&displayX, &displayY);
      if(displayY < 54){
        return -1;
      }
      displayY -= 54;
      int y = 0;
      for(; y < 4; y++){
        int x = 0;
        for(; x < 4; x++){
          if(displayX >= (x*X_DIST) && displayX <= (x*X_DIST) + 79 && displayY >= (y*Y_DIST) && displayY <= (y*Y_DIST) + 46){
             return result[(x + y * 4)];
          }
        }
      }
  }
  return -1;
}

void draw_buttons(){
  uint16_t xTextOffset = 33, yTextOffset = 16;
  char buttonText[NUM_BOXES] = {'7', '8', '9', '+',
                                '4', '5', '6', '-',
                                '1', '2', '3', '*',
                                '0', 'C', '=', '/',};
  uint16_t button_color[NUM_BOXES] = {ILI9341_LIGHTGREY, ILI9341_LIGHTGREY, ILI9341_LIGHTGREY, ILI9341_DARKCYAN,
                              ILI9341_LIGHTGREY, ILI9341_LIGHTGREY, ILI9341_LIGHTGREY, ILI9341_DARKCYAN,
                              ILI9341_LIGHTGREY, ILI9341_LIGHTGREY, ILI9341_LIGHTGREY, ILI9341_DARKCYAN,
                              ILI9341_LIGHTGREY, ILI9341_MAROON, ILI9341_OLIVE, ILI9341_DARKCYAN};
  tft_fillRoundRect(4, 4, 312, 48, 4, ILI9341_WHITE);
  tft_setTextSize(2);
  int y = 0;
  for(; y < 4; y++){
    int x = 0;
    for(; x < 4; x++){
      tft_fillRoundRect(4+(x*X_DIST), 56+(y*Y_DIST), 75, 42, 10, button_color[x+y*4]);
      tft_setTextColor(ILI9341_BLACK);
      tft_setCursor(4+(x*X_DIST)+xTextOffset,56+(y*Y_DIST)+yTextOffset);
      tft_write(buttonText[x + y * 4]);
    }
  }
}
