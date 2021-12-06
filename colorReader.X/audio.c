#include "audio.h"
#include "timer1.h"

#define SOUND_BUS 0x0380  //RB7,RB8,RB9
#define SOUND_EN 0x0500  //RB10

#define S0 0x0380  // Sound 0 (red)--> Gets &~ to turn all 0 
#define S1 0x0080  // Sound 1 (purple)
#define S2 0x0100  // Sound 2 (blue)
#define S3 0x0180  // Sound 3 (green)
#define S4 0x0200  // Sound 4 (yellow)
#define S5 0x0280  // Sound 5 (orange)
#define S6 0x0300  // Sound 6 (white)
#define S7 0x0380  // Sound 7 (black)
#define S8 0x0400  // Sound 8 (Match)
#define S9 0x0480  // Sound 9 (No Match)

void init_sounds() {
    ANSELB = 0;
    ANSELB=ANSELB|0xA000;
    TRISB = TRISB & ~SOUND_BUS;  
    TRISB = TRISB & ~SOUND_EN;
    PORTB = PORTB & ~SOUND_BUS;
}

void audioOut(int sound) {
    PORTB = PORTB & ~S0;
    // Prep which sound is going to play
    switch(sound){
        case 0:
            PORTB = PORTB & ~S0;  //0000
            break;
        case 1:
            PORTB = PORTB | S1;  //0001
            break;
        case 2:
            PORTB = PORTB | S2;  //0010
            break;
        case 3:
            PORTB = PORTB | S3;  //0011
            break;
        case 4:
            PORTB = PORTB | S4;  //0100
            break;
        case 5:
            PORTB = PORTB | S5;  //0101
            break;
        case 6:
            PORTB = PORTB | S6;  //0110
            break;
        case 7:
            PORTB = PORTB | S7;  //0111
            break;
        case 8:
            PORTB = PORTB | S8;  //1000
            break;
        case 9:
            PORTB = PORTB | S9;  //1001
            break;
        default:
            PORTB = PORTB | S0;  //0001
            break;
    }
    
    //Enable the sound to be produced
    PORTB = PORTB | SOUND_EN;
    timer1_ms_delay(250);  //200 known working
    PORTB = PORTB & ~SOUND_EN;
}