#include <xc.h>
#include <inttypes.h>

/* Colors are as follows:
 * 1 red
 * 2 plum (red/purple)
 * 3 purple
 * 4 violet (purple/blue)
 * 5 blue
 * 6 aqua (blue/green)
 * 7 green
 * 8 lime (green/yellow)
 * 9 yellow
 * 10 gold (yellow/orange)
 * 11 orange
 * 12 rust (orange/red)
 * 13 white
 * 14 black
 */

uint8_t testMatch(char color1, char color2){
    if(color1==color2){
        return 1;
    }
    else{
        return 0;
    }
}

