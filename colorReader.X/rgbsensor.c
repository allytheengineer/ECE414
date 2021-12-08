#define _SUPPRESS_PLIB_WARNING
#include <xc.h>
#include <plib.h>



uint8_t rgb_int(){
    ANSELB=0;
    TRISB=0x0000;
    LATB=0x0000;
 #define SDA PORTBbits.RB2
 #define SCL PORTBbits.RB3
}



uint8_t readdata(char address){
 uint8_t val;
 StartI2C1();   
 MasterWriteI2C1(0x39);
 MasterWriteI2C1(address);    
 StartI2C1();
 MasterWriteI2C1(0x39);
 val=MasterReadI2C1();
 return val;
}
uint16_t readred(){
uint8_t vall=readdata(0x96);    
uint8_t valh=readdata(0x97);
uint16_t red= (valh<<8)+vall;
return red;
}

uint16_t readblue(){
uint8_t vall=readdata(0x9A);    
uint8_t valh=readdata(0x9B);
uint16_t blue= (valh<<8)+vall;
return blue;
}

uint16_t readgreen(){
uint8_t vall=readdata(0x98);    
uint8_t valh=readdata(0x97);
uint16_t green= (valh<<8)+vall;
return green;
}