#ifndef PID_SM_H
#define PID_SM_H
#include <inttypes.h>

extern uint16_t tickFct_PID_SM(int16_t desired, int16_t actual);
extern void setKp(int16_t newKp);
extern void setKi(int16_t newKi);
extern void setKd(int16_t newKd);

#endif

