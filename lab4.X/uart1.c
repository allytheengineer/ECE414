#define _SUPPRESS_PLIB_WARNING
#include <xc.h>
#include <inttypes.h>
#include "uart1.h"
#include <stdio.h>
#include <stdlib.h>
#include <plib.h>

void uart1_init(uint32_t baudrate) {
  uint32_t newrate = (40000000/(16*baudrate))-1;
  OpenUART1(UART_EN | UART_NO_PAR_8BIT, UART_RX_ENABLE | UART_TX_ENABLE, newrate);
  PPSInput(3, U1RX, RPA2);
  PPSOutput(1, RPA0, U1TX);
  
/*
  ANSELA = 0x000;
  TRISA = 0xFF0;
  U1RXR = 0x0;
  RPA0R = 0x1;
  U1BRG = baudrate;
  U1STA = 0x1400; 
  U1MODE = 0x8000; 
 * */
}

uint8_t uart1_txrdy() {
    if(BusyUART1())
      return 0x00;
    else
      return 0x01;
}

void uart1_txwrite(uint8_t c) {
    WriteUART1(c);
}

void uart1_txwrite_str(char *c) {
  char j = *c;
  int i = 0;
  for(; j != 0; i++, j = *(c + i)){
      uart1_txwrite(j);
      while(!uart1_txrdy());
  }
}

uint8_t uart1_rxrdy() {
  return DataRdyUART1();
}


uint8_t uart1_rxread() {
    return ReadUART1();
}

