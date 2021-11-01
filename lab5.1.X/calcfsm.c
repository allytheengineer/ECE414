#define _SUPPRESS_PLIB_WARNING
#include <xc.h>
#include <inttypes.h>
#include "calcfsm.h"

static enum CALC_States{CALC_SMStart, CALC_Init, CALC_Num1, CALC_Op, CALC_Num2, CALC_Solving, CALC_TooBig, CALC_Solved, CALC_Div0}CALC_State, NEXT_State;

int64_t tickFct_CALCFSM(uint8_t btn) {
    static int32_t num, currentNum, op, newOp;

   switch(CALC_State) {
      case CALC_SMStart:
         NEXT_State = CALC_Init;
         break;

      case CALC_Init:
         NEXT_State = CALC_Num1;
         break;

      case CALC_Num1:
         if(btn==14){ // clearing number
            NEXT_State = CALC_Init;
         }
         else if(btn>=10 && btn<=13){ // operator was pressed
            NEXT_State = CALC_Num2;
         }
         else if(currentNum>0x10000000 && currentNum*10+btn<0x10000000){ // too big
            NEXT_State = CALC_TooBig;
         }
         else{
            NEXT_State = CALC_Num1;
         }
         break;

      case CALC_Op:
            if(newOp==13 && currentNum==0){
              NEXT_State = CALC_Div0;
            }
            else{
              NEXT_State = CALC_Num2;
            }
         break;

      case CALC_Num2:
        if(btn==14){ // Clearing number
           NEXT_State = CALC_Init;
        }
        else if(btn>= 10 && btn<=13){ // Another number is pressed
           NEXT_State = CALC_Op;
        }
        else if(currentNum>0x10000000 && currentNum*10+btn<0x10000000){ // Number is too big
           NEXT_State = CALC_TooBig;
        }
        else if(btn==15){ //equal is pressed
           NEXT_State = CALC_Solving;
        }
        else if(btn==13 && currentNum==0){// attempt to div by 0
            NEXT_State = CALC_Div0;
          }
        else{
           NEXT_State = CALC_Num2;
        }
        break;

      case CALC_Solving:
          if(newOp==13 && currentNum==0){// attempt to div by 0
            NEXT_State = CALC_Div0;
          } 
          else{
            NEXT_State = CALC_Solved;
          }
         break;

      case CALC_Solved:
        if(btn==14){ // C
          NEXT_State = CALC_Init;
        }
        else{
          NEXT_State = CALC_Solved;
        }
      break;

      case CALC_TooBig:
        if(btn==14){ // C
          NEXT_State = CALC_Init;
        }
        else{
          NEXT_State = CALC_TooBig;
        }
        break;

      case CALC_Div0:
        if(btn==14){ // C
          NEXT_State = CALC_Init;
        }
        else{
          NEXT_State = CALC_Div0;
        }
        break;

      default:
          NEXT_State = CALC_Init;
         break;
   }

   switch(CALC_State) {
      case CALC_SMStart:
         break;
         
      case CALC_Init:
         num = 0;
         currentNum = 0;
         op = 0;
         break;
         
      case CALC_Num1:
        if(btn<10){ // Another number is pressed
          if(!(currentNum>0x10000000 && currentNum*10+ btn<0x10000000)){ // number is too big
            currentNum = currentNum*10+btn;
          }
        }
        if(btn>=10 && btn<=13){ // If an operator has been pressed.
            op = btn;
            num = currentNum;
            currentNum = 0;
        }
         break;
         
      case CALC_Op:
        if(num==0){ // No saved number to operate on
          num = currentNum;
        }
        else{
          if(op==10){ // add
            num = num+currentNum;
          }
          else if(op==11){ // subtract
            num = num-currentNum;
          }
          else if(op==12){ // multiply
            num = num*currentNum;
          }
          else if(op==13 && currentNum!=0){ // divide
            num = num/currentNum;
          }
        }
        currentNum = 0;
        op = newOp;
        break;
        
      case CALC_Num2:
        if(btn<10){ // Another number pressed
          if(!(currentNum>0x10000000 && currentNum*10+btn<0x10000000)) // number is too big
            currentNum = currentNum*10+btn;
        }
        if(btn>=10 && btn<=13){
            newOp = btn;
        }
        break;
         
      case CALC_Solving:
        if(op==10){ // add
          currentNum = num+currentNum;
        }
        else if(op==11){ // subtract
          currentNum = num-currentNum;
        }
        else if(op==12){ // multiply
          currentNum = num*currentNum;
        }
        else if(op==13 && currentNum!=0){ // divide
          currentNum = num/currentNum;
        }
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
   CALC_State = NEXT_State;
   return currentNum;
}
