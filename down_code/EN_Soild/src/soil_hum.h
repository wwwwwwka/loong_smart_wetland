#ifndef _SOIL_HUM_H
#define _SOIL_HUM_H

#include "ls1x.h"
#include "Config.h"
#include "Modbus_rtu.h"

#define GET_AD 5
#define AD_MIN 30
#define AD_MAX 4095

typedef struct
{
    uint16_t GET_AD_VALUE[GET_AD];     //来自光照传感器的原始数据
    uint16_t GET_AD_MEAN;     //最终得到的参与控制的光照值
    uint32_t GET_AD_STORE;     //光照的中间变量
    
}humidity_adc_type_t;

typedef struct
{
    humidity_adc_type_t humidity_adc_type;
    uint16_t humidity_value_get;
    uint32_t humidity_value_show;

}humidity_type_t;

void Humidity_process_init(void);
void Humidity_process(void);
void Humidity_System_Init(humidity_type_t* humidity_type_init);
void Humidity_SHT10_Get(humidity_type_t* humidity_type_get);
void Humidity_value_feedback(humidity_type_t *humidity_type_back);
const humidity_type_t* humidity_type_Piont(void);

#endif