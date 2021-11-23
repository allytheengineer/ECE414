#include <xc.h>
#include <inttypes.h>
#include "PIDFSM.h"

static enum PID_STATES { PID_SMStart, PID_Init, PID_Ctrl} PID_STATE;
  int16_t Kp;
  int16_t Ki;
  int16_t Kd;

uint16_t tickFct_PIDFSM(int16_t desired, int16_t actual) {
  static int32_t actuator;
  static int32_t prev;
  int32_t error;
  int32_t deriv;
  int32_t sp, sd, si;
  static int32_t intg;

   switch(PID_STATE) {
      case PID_Init:
         PID_STATE = PID_Ctrl;
         break;
         
      case PID_Ctrl:
         PID_STATE = PID_Ctrl;
         break;
         
      default:
         PID_STATE = PID_Init;
         break;
   }

   switch(PID_STATE) {
      case PID_Init:
         actuator = 0;
         prev = 0;
         break;
         
      case PID_Ctrl:
         error = (int16_t)desired-(int16_t)actual;
         deriv = actual-prev;
         intg = intg + error;
         sp = Kp*error;
         si = Ki*intg;
         sd = Kd*deriv;
         actuator = sp + si - sd;
         prev = actual;
         if(actuator > 0xFFFF){
            return 0xFFFF;
         }
         else{
            return 0;
         }
         break;
   }
   return (uint16_t)actuator;
}

//setter for Kp
void setKp(int16_t newKp){
  Kp = newKp;
}

//setter for Ki
void setKi(int16_t newKi){
  Ki = newKi;
}

//setter for Kd
void setKd(int16_t newKd){
  Kp = newKd;
}