#ifndef _MQTT_ESP_H
#define _MQTT_ESP_H

#include "ls1x.h"
#include "Config.h"
#include "cJSON.h"
#include "light_adc.h"
#include "ventilate.h"

extern uint8_t esp_init_flag;

typedef struct
{
    const light_type_t* light_type;
    const ventilate_type_t* ventilate_type;
    json_send_backage_t json_send_backage;
}mqtt_esp_type_t;

void mqtt_process_init(void);
void mqtt_process(void);
void Mqtt_System_Init(mqtt_esp_type_t* mqtt_esp_type_init);
void Mqtt_Feedback(mqtt_esp_type_t* mqtt_esp_type_back);

#endif 
