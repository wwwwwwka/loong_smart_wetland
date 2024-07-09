#ifndef _PID_H
#define _PID_H

#include "ls1x.h"
#include "Config.h"

typedef struct {      
	int32_t  standard;   
	int32_t  out_value;   
	int32_t  err_now;	  
	int32_t  err_last;
	int32_t  err_sum; 	  	  
	int16_t Kp, Ki, Kd;
	int32_t max_out;
	int32_t min_out;
} PID_InitTypeDef;

void PID_Init(PID_InitTypeDef* PIDStructer,const int16_t PID[3], int16_t max_out, int16_t min_out);
int16_t PID_computer(PID_InitTypeDef* PIDStructer,int16_t get_senor,int16_t set_senor);

#endif

