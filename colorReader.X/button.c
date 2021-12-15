#include <inttypes.h>
#include <xc.h>

enum L_States {B_N, B_MP, B_P, B_MNP} L_State;
extern int out;
void buttondebounce(uint8_t press){
    uint8_t btn;
    if(press==0){
     btn=1;   
    }
    else {btn=0;
    }

switch (L_State){

case B_N:
	if(!btn){
        out=0;
	L_State=B_N;
}
    else{
    L_State=B_MP;
}
    break;
case B_MP:
	if(!btn){
	L_State=B_N;
}
	else{
     out=1;
	L_State=B_P;
}
	break;


case B_P:
	if(!btn){
	L_State=B_MNP;
}
	else {
        out=1;
	L_State=B_P;
}
break;
case B_MNP:
	if(!btn){
      out=0;  
	L_State=B_N;
}
	else {
	L_State=B_P;
}
break;
default:
	L_State = B_N;
	break;
}
}
