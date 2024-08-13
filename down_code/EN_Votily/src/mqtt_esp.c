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
#include "cJSON.h"
#include "ls1x_string.h"

mqtt_esp_type_t mqtt_esp_type;
uint8_t send_package[DATA_LEN];
uint8_t send_len;
uint8_t send_contrl[7];

void mqtt_process_init(void) {Mqtt_System_Init(&mqtt_esp_type);}

void mqtt_process(void)
{
    Mqtt_Feedback(&mqtt_esp_type);
}

void Mqtt_System_Init(mqtt_esp_type_t* mqtt_esp_type_init)
{
    esp8266_init();
    for(int i=0;i<7;i++)
    {
        send_contrl[i]=0;
    }
}

void Mqtt_Feedback(mqtt_esp_type_t* mqtt_esp_type_back)
{
    if(Queue_isEmpty(&Circular_queue_asrpro)==0)//判断队列是否为空，即判断是否收到数据
    {
        send_len=Queue_HadUse(&Circular_queue_asrpro);//返回队列中数据的长度
        {
            memset(send_package, 0, DATA_LEN);//填充接收缓冲区为0
            Queue_Read(&Circular_queue_asrpro, send_package,send_len);//读取队列缓冲区的值到接收缓冲区
            send_package[send_len]='\0';//字符串接收结束符
            //printf("%s\r\n", send_package);// 打印正确
        }

        //printf("%s",pstrstr((const char*)send_package, (const char*)"Filter_On"));

        if(pstrstr((const char*)send_package, (const char*)"Filter_On")) send_contrl[0]=1;
        else if(pstrstr((const char*)send_package, (const char*)"Filter_Off")) send_contrl[0]=0;

        if(pstrstr((const char*)send_package, (const char*)"Light_On")) send_contrl[1]=1;
        else if(pstrstr((const char*)send_package, (const char*)"Light_Off")) send_contrl[1]=0;

        if(pstrstr((const char*)send_package, (const char*)"Oxygen_On")) send_contrl[2]=1;
        else if(pstrstr((const char*)send_package, (const char*)"Oxygen_Off")) send_contrl[2]=0;

        if(pstrstr((const char*)send_package, (const char*)"Ventilate_On")) send_contrl[3]=1;
        else if(pstrstr((const char*)send_package, (const char*)"Ventilate_Off")) send_contrl[3]=0;

        if(pstrstr((const char*)send_package, (const char*)"Water0_On")) send_contrl[4]=1;
        else if(pstrstr((const char*)send_package, (const char*)"Water0_Off")) send_contrl[4]=0;

        if(pstrstr((const char*)send_package, (const char*)"Water1_On")) send_contrl[5]=1;
        else if(pstrstr((const char*)send_package, (const char*)"Water1_Off")) send_contrl[5]=0;

        if(pstrstr((const char*)send_package, (const char*)"Water2_On")) send_contrl[6]=1;
        else if(pstrstr((const char*)send_package, (const char*)"Water2_Off")) send_contrl[6]=0;

        // if(pstrstr((const char*)send_package, (const char*)"All_On")) 
        // {
        //     for(int i=0;i<7;i++) send_contrl[i]=1; 
        // }
        // else if(pstrstr((const char*)send_package, (const char*)"All_Off")) send_contrl[6]=0;
        // {
        //     for(int i=0;i<7;i++) send_contrl[i]=0; 
        // }

        for(int i = 0; i < 7; i++)
        {
            printf("%d",send_contrl[i]);
        }
        
        mqtt_esp_type_back->json_send_backage.key[0] = "water_1";
        mqtt_esp_type_back->json_send_backage.key[1] = "water_2";
        mqtt_esp_type_back->json_send_backage.key[2] = "water_filter";
        mqtt_esp_type_back->json_send_backage.key[3] = "oxyen_on";
        mqtt_esp_type_back->json_send_backage.key[4] = "water_on";
        mqtt_esp_type_back->json_send_backage.key[5] = "light_on";
        mqtt_esp_type_back->json_send_backage.key[6] = "fan_on";
        mqtt_esp_type_back->json_send_backage.value[0] = send_contrl[5];
        mqtt_esp_type_back->json_send_backage.value[1] = send_contrl[6];
        mqtt_esp_type_back->json_send_backage.value[2] = send_contrl[0];
        mqtt_esp_type_back->json_send_backage.value[3] = send_contrl[2];
        mqtt_esp_type_back->json_send_backage.value[4] = send_contrl[4];
        mqtt_esp_type_back->json_send_backage.value[5] = send_contrl[1];
        mqtt_esp_type_back->json_send_backage.value[6] = send_contrl[3];
        json_to_send(&mqtt_esp_type_back->json_send_backage);
        esp8266_send_json();
        
    }else
        return;
}

