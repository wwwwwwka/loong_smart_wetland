#ifndef _VENTILATE_H
#define _VENTILATE_H

#include "ls1x.h"
#include "Config.h"
#include "pid.h"

#define GET_AD 5

typedef struct
{
    uint16_t GET_AD_VALUE[GET_AD];     //来自光照传感器的原始数据
    uint16_t GET_AD_MEAN;     //最终得到的参与控制的光照值
    uint32_t GET_AD_STORE;     //光照的中间变量
    
}ventilate_adc_type_t;

typedef struct
{
    ventilate_adc_type_t co2_adc_get;
    ventilate_adc_type_t smoke_adc_get;
    uint16_t co2_adc_value;
    uint16_t smoke_adc_value;
    
}ventilate_type_t;

void ventilate_process_init(void);
void ventilate_light_process(void);

void Ventilate_System_Init(ventilate_type_t* ventilate_type);
void Ventilate_Get(ventilate_type_t* ventilate_type_get);
void Ventilate_Value_Feedback(ventilate_type_t* ventilate_type_back);
void Ventilate_Contrl(ventilate_type_t* ventilate_type_contrl);
const ventilate_type_t* ventilate_type_value_get(void);

#endif