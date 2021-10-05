/* 
 * File:   uart1.h
 * Author: phelana
 *
 * Created on October 5, 2021, 1:26 PM
 */

#ifndef UART1_H
#define	UART1_H

//  initialize the UART to communicate using
//eight data bits and no parity bits at a specific baud rate
void uart1_init(uint32_t baudrate);

// returns a true value when the UART
//transmitter is ready to accept a character for transmission
uint8_t uart1_txrdy();

//write a character to the UART
void uart1_txwrite(char c);

//write a null-terminated string to the UART
void uart1_txwrite_str(char c);

//returns true when the UART receiver has
//a character ready for reading:
uint8_t uart1_rxrdy();

//reads a received character from the UART.
uint8_t uart1_rxread();

#endif	/* UART1_H */

