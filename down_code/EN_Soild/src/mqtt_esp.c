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
#include "temperature_contrl.h"
#include "soil_hum.h"

mqtt_esp_type_t mqtt_esp_type;

uint8_t esp_count = 0;

void mqtt_process_init(void) {Mqtt_System_Init(&mqtt_esp_type);}

void mqtt_process(void)
{
    Mqtt_Data_Feedback(&mqtt_esp_type);
}

void Mqtt_System_Init(mqtt_esp_type_t* mqtt_esp_type_init)
{
    esp8266_init();
    
    mqtt_esp_type_init->tempareture_type_data= tempareture_type_Piont();
    mqtt_esp_type_init->humidity_type_data = humidity_type_Piont();

}

void Mqtt_Data_Feedback(mqtt_esp_type_t* mqtt_esp_type_back)
{
    uint8_t send_package[256];
    uint8_t send_len;
    uint8_t* send_len_str;
    mqtt_esp_type_back->json_send_backage.key[0] = "soil_temperature";
    mqtt_esp_type_back->json_send_backage.key[1] = "soil_moisture";
    mqtt_esp_type_back->json_send_backage.key[2] = "";
    mqtt_esp_type_back->json_send_backage.key[3] = "";
    mqtt_esp_type_back->json_send_backage.value[0] = mqtt_esp_type_back->tempareture_type_data->tempareture_value_show;
    mqtt_esp_type_back->json_send_backage.value[1] = mqtt_esp_type_back->humidity_type_data->humidity_value_show;
    mqtt_esp_type_back->json_send_backage.value[2] = 0;
    mqtt_esp_type_back->json_send_backage.value[3] = 0;
    
    if(esp_count == 50)
    {
        tempareture_process();
        Humidity_process();
        // esp8266_send_isno();
        // json_to_callback();
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