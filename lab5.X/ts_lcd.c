#include "ts_lcd.h"
#include "Touchscreen.h"
#include <plib.h>
#include "tft_gfx.h"
#include "tft_master.h" 
#include <stdlib.h>
#include <inttypes.h>
#define _SUPPRESS_PLIB_WARNING

//return true when display is pressed
//two param shall be assigned the current position of the press on the display in LCD coordinates
uint8_t ts_lcd_get_ts(uint16_t *x, uint16_t *y){
    x = interp(*x,0,1023,0,320);
    y = interp(*y,0,1023,0,240);
    
      
}

//preforms any init and config required before touch screen is read
void ts_lcd_init(){
    
    ANSELA = 0; 
    ANSELB = 0; 
    
    
    CM1CON = 0; 
    CM2CON = 0;
    
    
    tft_init_hw();
    tft_begin();

    tft_setRotation(3);  
}

//touch makes cross hair
void test_touch(){
    tft_drawLine(TSPoint.x-5,TSPoint.y-5,TSPoint.x+5,TSPoint.y+5,0x07FF);
}