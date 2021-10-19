#define _SUPPRESS_PLIB_WARNING
#include "ts_lcd.h"
#include "Touchscreen.h"
#include <plib.h>
#include "tft_gfx.h"
#include "tft_master.h" 
#include <stdlib.h>
#include <inttypes.h>


 
        
  
       
//return true when display is pressed
//two param shall be assigned the current position of the press on the display in LCD coordinates
uint8_t ts_lcd_get_ts(uint16_t *x, uint16_t *y){
    char buffer[30];
 
    struct TSPoint p;
        p.x = 0;
        p.y = 0;
        p.z = 0;
        getPoint(&p);
        tft_setCursor(20, 100);
        tft_setTextColor(ILI9341_WHITE);
        sprintf(buffer,"x: %d, y: %d, z: %d", p.x, p.y, p.z);
        tft_writeString(buffer);
        
     int y1 = 950;
        int x1 = 200;
        int y2 = 320;
        int x2 = 850;
            
      int xPos = (p.y-y1)*(239-0)/(y2-y1)+0;
        int yPos = (p.x-x1)*(319-0)/(x2-x1)+0;    
    uint8_t returnable = 0;
    
    
   
    if(p.z>0){       *y=yPos;
        *x=xPos;
        returnable = 1;
 sprintf(buffer,"x: %d, y: %d, z: %d", p.x, p.y, p.z);
    }
    return returnable;
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
/*void test_touch(){
    if(ts_lcd_get_ts(p.x,p.y)==1)
    {
        tft_drawLine(p.x-5,p.y-5,p.x+5,p.y+5,0x07FF);
    }
    else
    {
        
    }
}
 * */
