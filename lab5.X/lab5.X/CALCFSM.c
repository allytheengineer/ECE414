#define _SUPPRESS_PLIB_WARNING
#include <xc.h>
#include <inttypes.h>
#include "CALCFSM.h"

static enum CALC_States { CALC_SMStart, CALC_Init, CALC_Num1, CALC_Op, CALC_Num2, CALC_Solving, CALC_Solved, CALC_TooBig, CALC_Div0} CALC_State;


int64_t tickFct_CALCULATOR(uint8_t btn) {

   switch(CALC_State) {
      case CALC_SMStart:
         CALC_State = CALC_Init;
         break;

      case CALC_Init:
         CALC_State = CALC_Num1;
         break;

      case CALC_Num1:
         if(btn>=10 && btn<=13) // operator pressed?
            CALC_State = CALC_Num2;
         else if(btn==14) //clr
            CALC_State = CALC_Init;
         else if((currentNum>0x10000000 && currentNum*10+btn < 0x10000000)) // too big
            CALC_State = CALC_TooBig;
         else
            CALC_State = CALC_Num1;
         break;

      case CALC_Op:
            if(newOp==13 && currentNum==0) //checks for division by zero
              CALC_State = CALC_Div0;
            else
              CALC_State = CALC_Solved;
         break;

      case CALC_Num2:
        
         if(btn==14) // clr and move back to init
           CALC_State = CALC_Num1;
        else if((currentNum > 0x10000000 && currentNum*10+btn < 0x10000000)) // checks if number is too big
           CALC_State = CALC_TooBig;
        else if(btn==15) // = is pressed so we begin solving
           CALC_State = CALC_Op;
        else
           CALC_State = CALC_Num2;
        break;

      case CALC_Solving: //checking for div by 0
          if(newOp==13 && currentNum==0)
            CALC_State = CALC_Div0;
          else
            CALC_State = CALC_Solved;
         break;

      case CALC_Solved: //displays answer until cleared
        if(btn==14) // clr and move back to init
          CALC_State = CALC_Init;
        else
          CALC_State = CALC_Solved;
      break;

      case CALC_TooBig: // Number is too big
        if(btn==14) // clr and move back to init
          CALC_State = CALC_Init;
        else
          CALC_State = CALC_TooBig;
        break;

      case CALC_Div0: //Number is divided by zero
        if(btn==14) // clr and move back to init
          CALC_State = CALC_Init;
        else
          CALC_State = CALC_Div0;
        break;

      default: //default state
          CALC_State = CALC_Init;
         break;
   }

   switch(CALC_State) {
      case CALC_SMStart:
         break;
      case CALC_Init:
         val = 0;
         currentNum = 0;
         op = 0;
         break;
      case CALC_Num1:
        if(btn<10) // another number?
          if( !(currentNum > 0x10000000 && currentNum * 10 + btn < 0x10000000)) // check if too big
            currentNum = currentNum * 10 + btn;

        if(btn >= 10 && btn <= 13){ // operator?
            op = btn;
            val = currentNum;
            currentNum = 0;
        }
         break;
         
      case CALC_Op:
        if(val==0){ // No previous val
          val = currentNum;
        }
        else{
          if(op==10) // add
            val = val + currentNum;
          else if(op==11) // subtract
            val = val - currentNum;
          else if(op==12) // multiply
            val = val * currentNum;
          else if(op==13 && currentNum != 0) // divide not by 0
            val = val / currentNum;
        }
        currentNum = 0;
        op = newOp;
        break;
        
      case CALC_Num2:
        if(btn < 10){ // another number?
          if(!(currentNum>0x10000000 && currentNum*10+btn<0x10000000)) // check if too big
            currentNum = currentNum * 10 + btn;
        }
        if(btn >= 10 && btn <= 13) // operator?
        {
            newOp = btn;

        }
        break;
         
      case CALC_Solving:
        if(op==10) // add
          currentNum = val + currentNum;
        else if(op==11) // subtract
          currentNum = val - currentNum;
        else if(op==12) // multiply
          currentNum = val * currentNum;
        else if(op==13 && currentNum!=0) // divide not by 0
          currentNum = val / currentNum;
         break;

      case CALC_TooBig:
        currentNum = -1001;
         break;

       case CALC_Div0:
         currentNum = -1002;
          break;

      default:
         break;
   }
   
   return currentNum;
}
