#define _SUPPRESS_PLIB_WARNING
#include <xc.h>
#include <plib.h>



uint8_t rgb_int(){
    OpenI2C1(RPB2,9600);
    OpenI2C2(RPB3,9600);
}



uint8_t readdata(int *reg){
  uint8_t val;  
  val=MastergetsI2C1(8,reg,152);
  return val;  
}


uint16_t readred(){
uint8_t vall=readdata(*0x96);    
uint8_t valh=readdata(*0x97);
uint16_t red= (valh<<8)+vall;
return red;
}

uint16_t readblue(){
uint8_t vall=readdata(*0x9A);    
uint8_t valh=readdata(*0x9B);
uint16_t blue= (valh<<8)+vall;
return blue;
}

uint16_t readgreen(){
uint8_t vall=readdata(*0x98);    
uint8_t valh=readdata(*0x97);
uint16_t green= (valh<<8)+vall;
return green;
}