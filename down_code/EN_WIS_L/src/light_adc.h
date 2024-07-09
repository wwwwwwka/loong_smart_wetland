#ifndef _LIGHT_ADC_H
#define _LIGHT_ADC_H

#include "ls1x.h"
#include "Config.h"
#include "pid.h"

#define GET_AD 5
#define AD_MIN 30
#define AD_MAX 4095
#define LIGHT_PID_Kp 2
#define LIGHT_PID_Ki 0
#define LIGHT_PID_Kd 0

typedef struct
{
    uint16_t GET_AD_VALUE[GET_AD];     //来自光照传感器的原始数据
    uint16_t GET_AD_MEAN;     //最终得到的参与控制的光照值
    uint32_t GET_AD_STORE;     //光照的中间变量
    
}light_adc_type_t;

typedef struct
{
    light_adc_type_t light_value_left_get;
    light_adc_type_t light_value_right_get;
    uint16_t light_value_get;
    PID_InitTypeDef light_pid;
    uint16_t light_value_set;
    uint32_t light_value_show;
    int16_t light_out;
}light_type_t;

void light_process(void);
void light_process_init(void);

void Light_System_Init(light_type_t *light_type_init);  //数据初始化
void Light_TEMT6000_Get(light_type_t *light_type_get);  //函数用于获取光照传感器的原始数据
void Light_value_feedback(light_type_t *light_type_back);
void Light_PID_loop(light_type_t *light_type_loop);  //函数用于进行PID运算
const light_type_t* light_type_value_get(void);

#endif  