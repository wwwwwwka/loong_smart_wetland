#ifndef _LS1X_PRINTF_H_
#define _LS1X_PRINTF_H_

#include "test.h"


#define max(a,b) (((a)>(b))?(a):(b))

int sprintf(char *str, const char *format, ...) ;
int myprintf(char *fmt,...);
int myprintf2(unsigned char uarttype, char *fmt, ...);
void myputchar(unsigned char chr);

INT8U  mygetchar(void);

int vsprintf(char *str, const char *format, __builtin_va_list ap);

#endif
