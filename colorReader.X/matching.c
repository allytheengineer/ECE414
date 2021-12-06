#include <xc.h>
#include <inttypes.h>

/* Colors are as follows:
 * 1 red
 * 2 purple
 * 3 blue
 * 4 green
 * 5 yellow
 * 6 orange
 * 7 white
 * 8 black
 */

uint8_t testMatch(char color1, char color2){
    if(color1==color2){
        return 1;
    }
    else{
        return 0;
    }
}

