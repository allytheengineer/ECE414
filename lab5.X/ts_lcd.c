#include "ts_lcd.h"

//return true when display is pressed
//two param shall be assigned the current position of the press on the display in LCD coordinates
uint8_t ts_lcd_get_ts(uint16_t *x, uint16_t *y){
    x = interp(*x,0,1023,0,320);
    y = interp(*y,0,1023,0,240);
    
      
}

//preforms any init and config required before touch screen is read
void ts_lcd_init(){
    
}

//touch makes cross hair
void test_touch(){
    
}