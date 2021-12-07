#include "audio.h"
#include "timer1.h"
#include <plib.h>

#define _SUPPRESS_PLIB_WARNING

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
    LATB =0x0000;
}

void audioOut(int sound) {
    switch(sound){
        case 0:
            PORTBbits.RB2 = 1; // Sound 0 (red)
            break;
        case 1:
            PORTBbits.RB3 = 1; // Sound 1 (purple)
            break;
        case 2:
            PORTBbits.RB4 = 1; // Sound 2 (blue)
            break;
        case 3:
            PORTBbits.RB7 = 1; // Sound 3 (green)
            break;
        case 4:
            PORTBbits.RB8 = 1; // Sound 4 (yellow)
            break;
        case 5:
            PORTBbits.RB9 = 1; // Sound 5 (orange)
            break;
        case 6:
            PORTBbits.RB10 = 1; // Sound 6 (white)
            break;
        case 7:
            PORTBbits.RB11 = 1; // Sound 7 (black)
            break;
        case 8:
            PORTBbits.RB13 = 1; // Sound 8 (Match)
            break;
        case 9:
            PORTBbits.RB14 = 1; // Sound 9 (No Match)
            break;
        default:
            PORTBbits.RB2 = 1;
            break;
    }
    PORTB =0x0000;
    timer1_ms_delay(250);  
}