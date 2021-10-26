#define _SUPPRESS_PLIB_WARNING
#include "ts_lcd.h"
#include "TouchScreen.h"
#include "tft_master.h"
#include "tft_gfx.h"
#include <xc.h>
#include <inttypes.h>

#define BUTTONS 20
#define Y_GRID 46
#define X_GRID 79

int8_t button_press(){
  uint8_t buttons[16] = {7, 8, 9, 10, 4, 5, 6, 11, 1, 2, 3, 12, 0, 14, 15, 13};
  if(screenPress()){
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
          if(displayX >= (x * X_GRID) && 
             displayX <= (x * X_GRID) + 79 && 
             displayY >= (y * Y_GRID) &&
             displayY <= (y * Y_GRID) + 46)
             return buttons[(x + y * 4)];
        }
      }
  }
  return -1; //nothing pressed
}

void draw_screen(){
  uint16_t xTextOffset = 33, yTextOffset = 16;
  char btnLabels[BUTTONS] = {'7', '8', '9', '+',
                             '4', '5', '6', '-',
                             '1', '2', '3', '*',
                             '0', 'C', '=', '/',};
  uint16_t btnColors[BUTTONS] = {ILI9341_WHITE, ILI9341_WHITE, ILI9341_WHITE, ILI9341_GREEN,
                              ILI9341_WHITE, ILI9341_WHITE, ILI9341_WHITE, ILI9341_GREEN,
                              ILI9341_WHITE, ILI9341_WHITE, ILI9341_WHITE, ILI9341_GREEN,
                              ILI9341_WHITE, ILI9341_RED, ILI9341_BLUE, ILI9341_GREEN};
  tft_fillRect(4, 4, 312, 48, ILI9341_WHITE);
  tft_setTextSize(2);
  int y = 0;
  for(; y < 4; y++){
    int x = 0;
    for(; x < 4; x++){
      tft_fillRect(4   + (x * X_GRID), // X-coordinate of the top left corner shifted depending on which button this is.
                   56  + (y * Y_GRID), // Y-coordinate.
                   75, // Width of the box.
                   42, // Height of the box.
                   btnColors[x + y * 4]);
      tft_setTextColor(ILI9341_BLACK);
      tft_setCursor(4   + (x * X_GRID) + xTextOffset, 56  + (y * Y_GRID) + yTextOffset);
      tft_write(btnLabels[x + y * 4]);
    }
  }


}
