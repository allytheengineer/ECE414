#define _SUPPRESS_PLIB_WARNING
#include <xc.h>
#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <plib.h>
#include "uart1.h"


void uart1_init(uint32_t baudrate) {
  uint32_t newrate = (40000000/(16*baudrate))-1;
  OpenUART1(UART_EN | UART_NO_PAR_8BIT, UART_RX_ENABLE | UART_TX_ENABLE, newrate);
  PPSInput(3, U1RX, RPA2);
  PPSOutput(1, RPB3, U1TX);
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
