#include "water_circle.h"
#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "ls1c102_interrupt.h"
#include "ls1x_uart.h"
#include "ls1x_string.h"
#include "ls1x_printf.h"
#include "led_show.h"
#include "ls1c102_adc.h"
#include "cJSON.h"

water_circle_type_t water_circle_type;

void water_circle_process_init(void) {Water_Circle_Init(&water_circle_type);}

void water_circle_process(void)
{
   Water_Circle_Get(&water_circle_type); 

   Water_Circle_value_feedback(&water_circle_type);

   Water_Circle_Contrl(&water_circle_type);

}

void Water_Circle_Init(water_circle_type_t* water_circle_type_init)
{
   water_circle_type_init->json_backage = json_backage_value_get();
   water_circle_type_init->PH_value_get.GET_AD_MEAN=0;
   water_circle_type_init->PH_value_get.GET_AD_STORE=0;
   water_circle_type_init->depth_value_get.GET_AD_MEAN=0;
   water_circle_type_init->depth_value_get.GET_AD_STORE=0;
   water_circle_type_init->turbidity_value_get.GET_AD_MEAN=0;
   water_circle_type_init->turbidity_value_get.GET_AD_STORE=0;

   for(int i = 0; i < GET_AD; i++)
   {
    water_circle_type_init->PH_value_get.GET_AD_VALUE[i]=0;
    water_circle_type_init->depth_value_get.GET_AD_VALUE[i]=0;
    water_circle_type_init->turbidity_value_get.GET_AD_VALUE[i]=0;
   }
   
   Adc_powerOn();//adc电源开启
   Adc_open(ADC_CHANNEL_I0);//打开通道0
   Adc_open(ADC_CHANNEL_I4);//打开通道4
   Adc_open(ADC_CHANNEL_I6);//打开通道6
   Adc_open(ADC_CHANNEL_I7);//打开通道7
   
}

void Water_Circle_Get(water_circle_type_t* water_circle_type_get)  //函数用于获取光照传感器的原始数据
{
   int i=0,j=0;
   uint16_t temp=0 ;
   water_circle_type_get->PH_value_get.GET_AD_MEAN=0;
   water_circle_type_get->PH_value_get.GET_AD_STORE=0;
   water_circle_type_get->depth_value_get.GET_AD_MEAN=0;
   water_circle_type_get->depth_value_get.GET_AD_STORE=0;
   water_circle_type_get->turbidity_value_get.GET_AD_MEAN=0;
   water_circle_type_get->turbidity_value_get.GET_AD_STORE=0;
   water_circle_type_get->water_temp_value_get.GET_AD_MEAN=0;
   water_circle_type_get->water_temp_value_get.GET_AD_STORE=0;

   for(int i = 0; i < GET_AD; i++)
   {
    water_circle_type_get->PH_value_get.GET_AD_VALUE[i]=0;
    water_circle_type_get->depth_value_get.GET_AD_VALUE[i]=0;
    water_circle_type_get->turbidity_value_get.GET_AD_VALUE[i]=0;
   }

   for(i = 0;i < GET_AD;i++)
   {
      water_circle_type_get->PH_value_get.GET_AD_VALUE[i]= 4096-Adc_Measure(ADC_CHANNEL_I4);
      water_circle_type_get->depth_value_get.GET_AD_VALUE[i]= Adc_Measure(ADC_CHANNEL_I0);
      water_circle_type_get->turbidity_value_get.GET_AD_VALUE[i]=Adc_Measure(ADC_CHANNEL_I7);
      water_circle_type_get->water_temp_value_get.GET_AD_VALUE[i]=Adc_Measure(ADC_CHANNEL_I6);
      
   }
      
   for(i = 1;i <GET_AD-1 ;i++)
   {
      water_circle_type_get->PH_value_get.GET_AD_STORE = water_circle_type_get->PH_value_get.GET_AD_STORE+water_circle_type_get->PH_value_get.GET_AD_VALUE[i];
      water_circle_type_get->depth_value_get.GET_AD_STORE = water_circle_type_get->depth_value_get.GET_AD_STORE+water_circle_type_get->depth_value_get.GET_AD_VALUE[i];
      water_circle_type_get->turbidity_value_get.GET_AD_STORE = water_circle_type_get->turbidity_value_get.GET_AD_STORE+water_circle_type_get->turbidity_value_get.GET_AD_VALUE[i];
      water_circle_type_get->water_temp_value_get.GET_AD_STORE = water_circle_type_get->water_temp_value_get.GET_AD_STORE+water_circle_type_get->water_temp_value_get.GET_AD_VALUE[i];
   }
   
   water_circle_type_get->PH_value_get.GET_AD_MEAN = water_circle_type_get->PH_value_get.GET_AD_STORE/(GET_AD-2);
   water_circle_type_get->depth_value_get.GET_AD_MEAN = water_circle_type_get->depth_value_get.GET_AD_STORE/(GET_AD-2);
   water_circle_type_get->turbidity_value_get.GET_AD_MEAN = water_circle_type_get->turbidity_value_get.GET_AD_STORE/(GET_AD-2);
   water_circle_type_get->water_temp_value_get.GET_AD_MEAN = water_circle_type_get->water_temp_value_get.GET_AD_STORE/(GET_AD-2);
}

void Water_Circle_value_feedback(water_circle_type_t* water_circle_type_back)
{
   water_circle_type_back->PH_value = water_circle_type_back->PH_value_get.GET_AD_MEAN;
   water_circle_type_back->depth_value =  water_circle_type_back->depth_value_get.GET_AD_MEAN;
   water_circle_type_back->turbidity_value =  water_circle_type_back->turbidity_value_get.GET_AD_MEAN;
   water_circle_type_back->water_temp_value = water_circle_type_back->water_temp_value_get.GET_AD_MEAN;
   //printf("%d\n",water_circle_type_back->water_temp_value);
}

void Water_Circle_Contrl(water_circle_type_t* water_circle_type_contrl)  
{
   
}

const water_circle_type_t* water_circle_type_back(void)
{
   return &water_circle_type;
}
