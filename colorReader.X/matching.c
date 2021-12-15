#include <xc.h>
#include <inttypes.h>

/* Colors are as follows:
 * 0 red
 * 1 purple
 * 2 blue
 * 3 green
 * 4 yellow
 * 5 orange
 * 6 white
 * 7 black
 */

uint8_t testMatch(char color1, char color2){
    if(color1==color2){
        return 8;
    }
    else{
        return 9;
    }
}

