#include <inttypes.h>


enum B_States {B_N, B_MP, B_P, B_MNP} B_State;

void buttondebounceR(uint8_t press){
    int btn= press&0x1D;
    int btnp;
switch (B_State){

case B_N:
	if(!btn==0x1D){
	B_State=B_N;
}
else if (btn==0x1D){
B_State=B_MP;
}
break;
case B_MP:
	if(!btn==0x1D){
	B_State=B_N;
}
	else if(btn==0x1D){
     btnp=1;
	B_State=B_P;
}
	break;


case B_P:
	if(!btn==0x1D){
	B_State=B_MNP;
}
	else if(btn==0x1D){
	B_State=B_P;
}
break;
case B_MNP:
	if(!btn==0x1D){
	B_State=B_N;
}
	else if(btn==0x1D){
	B_State=B_P;
}
break;
default:
	B_State = B_N;
	break;
}
}


