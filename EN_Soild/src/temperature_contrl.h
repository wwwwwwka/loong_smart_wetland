#ifndef _TEMPERATURE_CONTRL_H
#define _TEMPERATURE_CONTRL_H

#include "ls1x.h"
#include "Config.h"
#include "Modbus_rtu.h"
#include "pid.h"

typedef struct
{
    const Temp_Hum_Data_t* temp_hum_data;
    const PWM_Back_Data_t* pwm_back_data;
    PID_InitTypeDef temp_hum_pid;
    uint16_t temp_value_set;
    uint16_t temp_value_out;
    uint8_t contrl_package[8];
    uint16_t tempareture_value_show;
    uint16_t humidity_value_show;

}tempareture_type_t;

void tempareture_process_init(void);
void tempareture_process(void);
void Tempareture_System_Init(tempareture_type_t* tempareture_type);
void Tempareture_SHT10_Get(tempareture_type_t* tempareture_type_get);
void Tempareture_value_feedback(tempareture_type_t* tempareture_type_back);
void Tempareture_PID_loop(tempareture_type_t* tempareture_type_loop);  //函数用于进行PID运算
const tempareture_type_t* tempareture_type_Piont(void);

#endif
