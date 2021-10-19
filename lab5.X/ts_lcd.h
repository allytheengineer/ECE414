/* 
 * File:   ts_lcd.h
 * Author: phelana
 *
 * Created on October 5, 2021, 2:57 PM
 */

#ifndef TS_LCD_H
#define	TS_LCD_H
#include <xc.h>
#include <plib.h>
#include <inttypes.h>

//return true when display is pressed
//two param shall be assigned the current position of the press on the display in LCD coordinates
uint8_t ts_lcd_get_ts(uint16_t *x, uint16_t *y);

//preforms any init and config required before touch screen is read
void ts_lcd_init();

//touch makes cross hair
void test_touch();


#endif	/* TS_LCD_H */
