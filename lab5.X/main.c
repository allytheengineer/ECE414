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

#define XM AN0
#define YP AN1


int main(int argc, char** argv) {
    char buffer[30];
    int xPos;
    int yPos;
    int size = 10;
    
    SYSTEMConfigPerformance(PBCLK);
    
    configureADC();
    
    //initialize screen
    tft_init_hw();
    tft_begin();
    tft_setRotation(3); 
    tft_fillScreen(ILI9341_BLACK);  
    
   
   
        tft_setCursor(20, 100);
        tft_setTextColor(ILI9341_WHITE);
       
        tft_writeString(buffer);
        
    while(1){
        //tft_fillScreen(ILI9341_BLACK);
         
        tft_setCursor(20, 100);
        tft_setTextColor(ILI9341_WHITE); 
        tft_setTextSize(2);

        //erase old text
        tft_setTextColor(ILI9341_BLACK);
        tft_writeString(buffer);
        
        //erase old crosshair
        tft_drawLine(xPos-size,yPos,xPos+size,yPos,ILI9341_BLACK);
        tft_drawLine(xPos,yPos-size,xPos,yPos+size,ILI9341_BLACK);
      
        
        //tft_drawLine(p.x-size,p.y,p.x+size,p.y,ILI9341_WHITE);
        //tft_drawLine(p.x,p.y-size,p.x,p.y+size,ILI9341_WHITE);
        
      
        
        tft_drawLine(xPos-size,yPos,xPos+size,yPos,ILI9341_BLACK);
        tft_drawLine(xPos,yPos-size,xPos,yPos+size,ILI9341_BLACK);
       //ts_lcd_get_ts(*xPos,*yPos);
        delay_ms(100);
    }
    return (EXIT_SUCCESS);     
}


