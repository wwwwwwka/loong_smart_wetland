#include "pid.h"
#include "ls1x.h"
#include "Config.h"

void PID_Init(PID_InitTypeDef* PIDStructer,const int16_t PID[3], int16_t max_out, int16_t min_out)
{
	PIDStructer->err_last = 0;
	PIDStructer->err_sum = 0;
	PIDStructer->err_now = 0;
	PIDStructer->Kp = PID[0];
	PIDStructer->Ki = PID[1];
	PIDStructer->Kd = PID[2];
	PIDStructer->out_value = 0;
	PIDStructer->standard = 0;
	PIDStructer->max_out=max_out;
	PIDStructer->min_out=min_out;
}

int16_t PID_computer(PID_InitTypeDef* PIDStructer,int16_t get_senor,int16_t set_senor)
{
	PIDStructer->err_now = set_senor - get_senor;
	PIDStructer->err_sum += PIDStructer->err_now;
	PIDStructer->out_value = PIDStructer->Kd * (PIDStructer->err_now - PIDStructer->err_last) + PIDStructer->Kp * PIDStructer->err_now+PIDStructer->Ki * PIDStructer->err_sum;
	PIDStructer->err_last= PIDStructer->err_now;
    return PIDStructer->out_value;
}
