#include <xc.h>
#include <plib.h>
#include <inttypes.h>
#include "uart1.h"

//  initialize the UART to communicate using
//eight data bits and no parity bits at a specific baud rate
void uart1_init(uint32_t baudrate){
  uint32_t newrate = (0x02625A00/(0x00000010*baudrate))-1;
  ANSELA = 0x000;
  PPSInput(3, U1RX, RPA2);
  PPSOutput(1, RPA0, U1TX);
  OpenUART1(UART_EN, UART_RX_ENABLE | UART_TX_ENABLE, newrate);
}

// returns a true value when the UART
//transmitter is ready to accept a character for transmission
uint8_t uart1_txrdy(){
    if(BusyUART1())
      return 0x00;
    else
      return 0x01;
}

//write a character to the UART
void uart1_txwrite(char c){
    unsigned int size = strlen(c);
    while(size){
        while(uart1_txrdy);
        U2TXREG = *c;
        
        c++;
        size--;
    }
    while(!U2STAbits.TRMT);
}

//write a null-terminated string to the UART
void uart1_txwrite_str(char c){
    
}

//returns true when the UART receiver has
//a character ready for reading:
uint8_t uart1_rxrdy(){
    
}

//reads a received character from the UART.
uint8_t uart1_rxread(){
    
}
