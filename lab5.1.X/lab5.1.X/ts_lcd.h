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

extern void ts_lcd_init();
extern uint8_t ts_lcd_get_ts(uint16_t *x, uint16_t *y);
extern uint8_t screenIsPressed();
extern void test_touch();

#endif	/* TS_LCD_H */
