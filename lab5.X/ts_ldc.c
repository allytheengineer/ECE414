#define _SUPPRESS_PLIB_WARNING
#include "ts_lcd.h"
#include "Touchscreen.h"
#include "tft_gfx.h"
#include "tft_master.h" 
#include <plib.h>
#include <stdlib.h>
#include <inttypes.h>
    
//preforms any init and config required before touch screen is read
void ts_lcd_init(){
  SYSTEMConfigPerformance(PBCLK);
  configureADC();
  tft_init_hw();
  tft_begin();
  tft_setRotation(3);
  tft_fillScreen(ILI9341_BLACK);  
}

//return true when display is pressed
//two param shall be assigned the current position of the press on the display in LCD coordinates
uint8_t ts_lcd_get_ts(uint16_t *x, uint16_t *y){
  struct TSPoint p;
  p.x = 0;
  p.y = 0;
  getPoint(&p);
  //interpolation
  *x = 320-((float)(p.y-130)/ 800.0f)) *(320.0f);
  *y = ((float)(p.x-180)/(680.0f))*(240.0f);
}

//checks if screen is pressed
uint8_t screenPress(){
  struct TSPoint p;
  p.x = 0;
  p.y = 0;
  getPoint(&p);
  return(p.z>0);
}

//touch makes cross hair
void test_touch(){
  static char buffer[30];
  static uint16_t newX, newY;
  if(screenPress()){
    tft_drawLine(newY-15, newX,newY+15, newX,0x0000);
    tft_drawLine(newY, newX+15, newY, newX-15, 0x0000);
    ts_lcd_get_ts(&newY, &newX);
    tft_setCursor(10, 10);
    tft_setTextSize(4);
    tft_setTextColor(ILI9341_BLACK);
    tft_writeString(buffer);
    tft_setCursor(10, 10);
    tft_setTextColor(ILI9341_WHITE);
    sprintf(buffer,"x: %d, y: %d", newX,newY);
    tft_writeString(buffer);
    tft_drawLine(newY-15, newX,newY+15, newX,0xffff);
    tft_drawLine(newY,newX+15, newY,newX-15, 0xffff);
  }
}

