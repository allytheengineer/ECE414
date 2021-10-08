#ifndef UART_H
#define UART_H

#define _SUPPRESS_PLIB_WARNING
#include <xc.h>
#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <plib.h>

extern void uart1_init(uint32_t baudrate);
extern uint8_t uart1_txrdy();
extern void uart1_txwrite(uint8_t c);
extern void uart1_txwrite_str(char *c);
extern uint8_t uart1_rxrdy();
extern uint8_t uart1_rxread();

#endif