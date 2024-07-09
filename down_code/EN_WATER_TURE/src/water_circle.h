#ifndef _WATER_CIRCLE_H
#define _WATER_CIRCLE_H

#include "ls1x.h"
#include "Config.h"
#include "cJSON.h"

#define GET_AD 5

typedef struct
{
    uint16_t GET_AD_VALUE[GET_AD];    
    uint16_t GET_AD_MEAN;    
    uint32_t GET_AD_STORE;    
    
}water_circle_adc_type_t;

typedef struct
{
    water_circle_adc_type_t PH_value_get;
    water_circle_adc_type_t depth_value_get;
    water_circle_adc_type_t turbidity_value_get;
    water_circle_adc_type_t water_temp_value_get;
    uint16_t PH_value;
    uint16_t depth_value;
    uint16_t turbidity_value;
    uint16_t water_temp_value;
    const json_backage_t* json_backage;
    
}water_circle_type_t;

void water_circle_process_init(void);
void water_circle_process(void);
void Water_Circle_Init(water_circle_type_t* water_circle_type_init);
void Water_Circle_Get(water_circle_type_t* water_circle_type_get); //函数用于获取光照传感器的原始数据
void Water_Circle_value_feedback(water_circle_type_t* water_circle_type_back);
void Water_Circle_Contrl(water_circle_type_t* water_circle_type_contrl);  //函数用于进行控制
const water_circle_type_t* water_circle_type_back(void);

#endif