#ifndef _EXECUTER_H
#define _EXECUTER_H

#include "ls1x.h"
#include "Config.h"

void executer_init(void);
void executer_choose_run(void);
void run_function_10ms(void);
void run_function_20ms(void);
void run_function_50ms(void);
void run_function_100ms(void);
void run_function_500ms(void);
void run_function_1000ms(void);

#endif  