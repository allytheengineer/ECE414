#include <inttypes.h>


enum R_States {B_N, B_MP, B_P, B_MNP} R_State;
extern int Rout;
void buttondebounceR(uint8_t press){
    uint8_t btn;
    if((press&0x2)==0){
     btn=1;   
    }
    else {btn=0;
    }
    int btnp;
switch (R_State){

case B_N:
	if(!btn){
        Rout=0;
	R_State=B_N;
}
    else{
    R_State=B_MP;
}
    break;
case B_MP:
	if(!btn){
	R_State=B_N;
}
	else{
     Rout=1;
	R_State=B_P;
}
	break;


case B_P:
	if(!btn){
	R_State=B_MNP;
}
	else {
	R_State=B_P;
}
break;
case B_MNP:
	if(!btn){
       
	R_State=B_N;
}
	else {
	R_State=B_P;
}
break;
default:
	R_State = B_N;
	break;
}
}


