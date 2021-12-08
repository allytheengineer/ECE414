/* 
 * File:   rgbsensor.h
 * Author: phelana
 *
 * Created on December 8, 2021, 10:32 AM
 */

#ifndef RGBSENSOR_H
#define	RGBSENSOR_H

uint8_t rgbint();

uint8_t readdata(char address);

uint16_t readred();

uint16_t readblue();

uint16_t readgreen();

#endif	/* RGBSENSOR_H */

