#include "mqtt_esp.h"
#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "esp8266.h"
#include "ls1c102_interrupt.h"
#include "ls1x_uart.h"
#include "ls1c102_ptimer.h"
#include "ls1x_printf.h"
#include "ls1c102_adc.h"
#include "led_show.h"
#include "esp8266.h"
#include "water_circle.h"
#include "cJSON.h"
#include "ls1x_string.h"

mqtt_esp_type_t mqtt_esp_type;
uint8_t esp_init_flag=0;
uint8_t esp_count=0;

void mqtt_process_init(void) {Mqtt_System_Init(&mqtt_esp_type);}

void mqtt_process(void)
{

    Mqtt_Feedback(&mqtt_esp_type);

}

void Mqtt_System_Init(mqtt_esp_type_t* mqtt_esp_type_init)
{
    esp8266_init();
    mqtt_esp_type_init->water_circle_type_data = water_circle_type_back();
}


void Mqtt_Feedback(mqtt_esp_type_t* mqtt_esp_type_back)
{
    uint8_t send_package[256];
    uint8_t send_len;
    uint8_t* send_len_str;
    mqtt_esp_type_back->json_send_backage.key[0] = "water_ph";
    mqtt_esp_type_back->json_send_backage.key[1] = "water_level";
    mqtt_esp_type_back->json_send_backage.key[2] = "water_turbidity";
    mqtt_esp_type_back->json_send_backage.key[3] = "water_tempreture";
    mqtt_esp_type_back->json_send_backage.value[0] = mqtt_esp_type_back->water_circle_type_data->PH_value;
    mqtt_esp_type_back->json_send_backage.value[1] = mqtt_esp_type_back->water_circle_type_data->depth_value;
    mqtt_esp_type_back->json_send_backage.value[2] = mqtt_esp_type_back->water_circle_type_data->turbidity_value;
    mqtt_esp_type_back->json_send_backage.value[3] = mqtt_esp_type_back->water_circle_type_data->water_temp_value;

    if(esp_count == 50)
    {
        json_to_send(&mqtt_esp_type_back->json_send_backage,&send_len);
        esp8266_send_json();
        esp_count=0;
    }else
    {
        esp8266_send_isno();
        json_to_callback();
        esp_count++;
    }
}

