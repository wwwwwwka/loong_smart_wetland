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
#include "pid.h"
#include "esp8266.h"
#include "cJSON.h"
#include "ls1x_string.h"
#include "ventilate.h"
#include "light_adc.h"

mqtt_esp_type_t mqtt_esp_type;

uint8_t esp_init_flag=0;

void mqtt_process_init(void) {Mqtt_System_Init(&mqtt_esp_type);}

void mqtt_process(void)
{
    Mqtt_Feedback(&mqtt_esp_type);
}

void Mqtt_System_Init(mqtt_esp_type_t* mqtt_esp_type_init)
{
    esp_init_flag=0;
    esp8266_init();
    esp_init_flag=1;
    mqtt_esp_type_init->light_type = light_type_value_get();
    mqtt_esp_type_init->ventilate_type = ventilate_type_value_get();

}

void Mqtt_Feedback(mqtt_esp_type_t* mqtt_esp_type_back)
{
    uint8_t send_package[256];
    uint8_t send_len;
    uint8_t* send_len_str;
    mqtt_esp_type_back->json_send_backage.key[0] = "light_intensity";
    mqtt_esp_type_back->json_send_backage.key[1] = "CO2";
    mqtt_esp_type_back->json_send_backage.key[2] = "smoke";
    mqtt_esp_type_back->json_send_backage.key[3] = "";
    mqtt_esp_type_back->json_send_backage.value[0] = mqtt_esp_type_back->light_type->light_value_show;
    mqtt_esp_type_back->json_send_backage.value[1] = mqtt_esp_type_back->ventilate_type->co2_adc_value;
    mqtt_esp_type_back->json_send_backage.value[2] = mqtt_esp_type_back->ventilate_type->smoke_adc_value;
    mqtt_esp_type_back->json_send_backage.value[3] = 0;
    
    json_to_send(&mqtt_esp_type_back->json_send_backage,&send_len);
    esp8266_send_json(send_len,"OK",50);

    //json_to_callback();
    
}

