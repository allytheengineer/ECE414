#include "audio.h"
#include "timer1.h"
#include <plib.h>



// Sound 0 (red)
// Sound 1 (purple)
// Sound 2 (blue)
// Sound 3 (green)
// Sound 4 (yellow)
// Sound 5 (orange)
// Sound 6 (white)
// Sound 7 (black)
// Sound 8 (Match)
// Sound 9 (No Match)

void init_sounds() {
    ANSELB = 0;
    TRISB = 0x0000;
    LATB =0xFFFF;
}

void audioOut(int sound) {
    switch(sound){
        case 0:
            PORTBbits.RB2 = 0; // Sound 0 (red)
            break;
        case 1:
            PORTBbits.RB3 = 0; // Sound 1 (purple)
            break;
        case 2:
            PORTBbits.RB4 = 0; // Sound 2 (blue)
            break;
        case 3:
            PORTBbits.RB7 = 0; // Sound 3 (green)
            break;
        case 4:
            PORTBbits.RB8 = 0; // Sound 4 (yellow)
            break;
        case 5:
            PORTBbits.RB9 = 0; // Sound 5 (orange)
            break;
        case 6:
            PORTBbits.RB10 = 0; // Sound 6 (white)
            break;
        case 7:
            PORTBbits.RB11 = 0; // Sound 7 (black)
            break;
        case 8:
            PORTBbits.RB13 = 0; // Sound 8 (Match)
            break;
        case 9:
            PORTBbits.RB14 = 0; // Sound 9 (No Match)
            break;
        default:
            PORTBbits.RB2 = 0;
            break;
    }
    timer1_ms_delay(250);  
}