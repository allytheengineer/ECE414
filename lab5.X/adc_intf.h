#ifndef adc_int_h
#define	adc_int_h
#include <xc.h>
#include <plib.h>
#include <inttypes.h>

int analogRead(char analogPIN);

void configureADC();

int readADC(int an);

#endif