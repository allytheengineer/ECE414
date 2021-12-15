
#include <xc.h>
#include <inttypes.h>

int color(uint8_t r, uint8_t b, uint8_t g ){
 
    if((r==b==g)&r==255){
     return 7;     
    }
    else if((r==g==b)&r==0x00){
     return 6;
    }
    else if(r>128&b<60&g<60){
        return 0;
}
    else if(b>128&g<60&r<60){
        return 2;
    }
    else if(g>128&b<60&r<60){
        return 3;
    }
    else if(g>165&r>128&b<60){
        return 4;
    }
    else if(g>125&r>128&b<60){
        return 5;
    }
    else if(b>128&r>128&g<60){
        return 1;
    }
}