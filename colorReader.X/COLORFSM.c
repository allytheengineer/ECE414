#include <xc.h>
#include <inttypes.h>
#include "COLORFSM.h"
#include "matching.h"

static enum COLOR_STATES { COLOR_SMStart, COLOR_Init, COLOR_Scan1, COLOR_Speak, COLOR_Scan2} COLOR_STATE;
uint8_t color1, color2, currentColor = 0;
uint8_t looking4Match = 0;
uint8_t scan, match = 0;
  
uint16_t tickFct_COLORFSM() {


   switch(COLOR_STATE) {
      case COLOR_Init:
          if(scan==0){
            COLOR_STATE = COLOR_Scan1;
          }
          else{
              COLOR_STATE = COLOR_Init;
          }
         break;
         
       case COLOR_Scan1:
           COLOR_STATE = COLOR_Speak;
           break;
           
       case COLOR_Scan2:
           COLOR_STATE = COLOR_Speak;
           break;
      
       case COLOR_Speak:
           if(match==0){
             COLOR_STATE = COLOR_Scan2;  
           }
           else{
             COLOR_STATE = COLOR_Init;
           }
           break; 
           
      default:
         COLOR_STATE = COLOR_Init;
         break;
   }

   switch(COLOR_STATE) {
      case COLOR_Init:
           color1, color2 = 0;
           looking4Match = 0;
         break;
         
       case COLOR_Scan1:
           //color1= scanRGB();  //returns a small number that corresponds to a rgb value color
           looking4Match = 0;
           currentColor = color1;
           break;
           
       case COLOR_Scan2:
           //color2= scanRGB();
           looking4Match = 1;
           currentColor = color2;
           break;
      
       case COLOR_Speak:
           //audioOut(currentColor);  //function should assign a color num to an audio file
           if(looking4Match==1){
               if(testMatch(color1, color2)==1){
               //audioOut(yMatch);
               }
               else if(testMatch(color1, color2)==0){
                   //audioOut(nMatch);
               }
           }
           break; 
           
      default:
         COLOR_STATE = COLOR_Init;
         break; 
   }
}

