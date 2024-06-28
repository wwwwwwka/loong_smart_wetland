#ifndef _MQTT_ESP_H
#define _MQTT_ESP_H

#include "ls1x.h"
#include "Config.h"
#include "water_circle.h"
#include "cJSON.h"

extern uint8_t esp_init_flag;
extern uint8_t recieve_flag;

typedef struct
{
    const water_circle_type_t* water_circle_type_data;
    json_send_backage_t json_send_backage;
}mqtt_esp_type_t;

void mqtt_process_init(void);
void mqtt_process(void);
void Mqtt_System_Init(mqtt_esp_type_t* mqtt_esp_type_init);
void Mqtt_Feedback(mqtt_esp_type_t* mqtt_esp_type_back);

#endif 
