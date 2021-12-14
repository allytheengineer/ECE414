
#include <xc.h>
#include <plib.h>

 #define SDA PORTAbits.RA0
 #define SCL PORTAbits.RA1     
                                                 
                                                                                                  
                                                                    
                                     
 unsigned int config1 = (I2C_ON                                  
            & I2C_IDLE_CON                                          
            & I2C_CLK_HOLD                                           
            & I2C_STRICT_DIS                                          
            & I2C_7BIT_ADD                                          
            & I2C_SLW_DIS                                           
            & I2C_SM_DIS                                            
            & I2C_GC_DIS                                         
            & I2C1_STR_DIS                                           
            & I2C_NACK                                              
            & I2C_ACK_DIS                                           
            & I2C_RCV_DIS                                           
            & I2C_STOP_DIS                                          
            & I2C_RESTART_DIS                                       
            & I2C_START_DIS);                                       
                                                                     
                                                                                                                  
                                  
void porta_in_init(){
 OpenI2C1(config1,9600);
 IdleI2C1();
 ANSELA=0;   
 TRISA=0x1F;
 CNPUA=0x1F;
         
    
}

uint8_t porta_checkC(){
   uint8_t check;
   check=PORTAbits.RA2;
   return check;
}
uint8_t porta_checkM(){
   uint8_t match;
   match=PORTAbits.RA3;
   return match;
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