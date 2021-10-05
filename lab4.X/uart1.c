#include <xc.h>
#include <plib.h>
#include <inttypes.h>

#define SYSCLK 40000000L
#define Baud2BRG(baudrate)((SYSCLK/(16*baudrate))-1);

//  initialize the UART to communicate using
//eight data bits and no parity bits at a specific baud rate
void uart1_init(uint32_t baudrate){
    U2STA = 0x1400;
    U2BRG = Baud2BRG(baudrate);
    int actualBaudrate = SYSCLK /(16*(U2BRG+1));
    return actualBaudrate;
}

// returns a true value when the UART
//transmitter is ready to accept a character for transmission
uint8_t uart1_txrdy(){
    return U2STAbits.UTXBF;
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
