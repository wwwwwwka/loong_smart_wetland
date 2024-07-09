#ifndef _MQTT_ESP_H
#define _MQTT_ESP_H

#include "ls1x.h"
#include "Config.h"
#include "temperature_contrl.h"
#include "soil_hum.h"
#include "cJSON.h"

typedef struct
{
    const humidity_type_t* humidity_type_data;
    const tempareture_type_t* tempareture_type_data;
    json_send_backage_t json_send_backage;
}mqtt_esp_type_t;

void mqtt_process_init(void);
void mqtt_process(void);
void Mqtt_System_Init(mqtt_esp_type_t* mqtt_esp_type_init);
void Mqtt_Data_Feedback(mqtt_esp_type_t* mqtt_esp_type_back);

#endif 
