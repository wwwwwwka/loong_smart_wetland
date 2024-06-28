#include "soil_hum.h"
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

humidity_type_t humidity_type;

void Humidity_process_init(void) {Humidity_System_Init(&humidity_type);}

void Humidity_process(void)
{
    Humidity_SHT10_Get(&humidity_type);

    Humidity_SHT10_Get(&humidity_type);

    Humidity_value_feedback(&humidity_type);

}

void Humidity_System_Init(humidity_type_t* humidity_type_init)
{
    humidity_type_init->humidity_adc_type.GET_AD_MEAN=0;
    humidity_type_init->humidity_adc_type.GET_AD_STORE=0;
   
    for(int i = 0; i < GET_AD; i++)
    {
       humidity_type_init->humidity_adc_type.GET_AD_VALUE[i]=0;
    }
    Adc_powerOn();
    Adc_open(ADC_CHANNEL_I0);
    
}
void Humidity_SHT10_Get(humidity_type_t* humidity_type_get)
{
    int i=0,j=0;
   uint16_t temp=0 ;

   humidity_type_get->humidity_adc_type.GET_AD_MEAN=0;
   humidity_type_get->humidity_adc_type.GET_AD_STORE=0;
   
   for(int i = 0; i < GET_AD; i++)
   {
      humidity_type_get->humidity_adc_type.GET_AD_VALUE[i]=0;
   }

   for(i = 0;i < GET_AD;i++)
   {
      humidity_type_get->humidity_adc_type.GET_AD_VALUE[i]= Adc_Measure(ADC_CHANNEL_I0);
   }

   for(i = 0; i < GET_AD; i++)
   {
      for(j = 0; j < GET_AD - i; j++)
      {
         if(humidity_type_get->humidity_adc_type.GET_AD_VALUE[j] > humidity_type_get->humidity_adc_type.GET_AD_VALUE[j + 1])
         {
            temp = humidity_type_get->humidity_adc_type.GET_AD_VALUE[j];
            humidity_type_get->humidity_adc_type.GET_AD_VALUE[j] =humidity_type_get->humidity_adc_type.GET_AD_VALUE[j + 1];
            humidity_type_get->humidity_adc_type.GET_AD_VALUE[j + 1] = temp;
         }
      }
   }
     
   for(i = 1;i <GET_AD-1 ;i++)
   {
      humidity_type_get->humidity_adc_type.GET_AD_STORE+= humidity_type_get->humidity_adc_type.GET_AD_VALUE[i];
   }
   humidity_type_get->humidity_adc_type.GET_AD_MEAN = humidity_type_get->humidity_adc_type.GET_AD_STORE/(GET_AD-2);
}

void Humidity_value_feedback(humidity_type_t *humidity_type_back)
{
   humidity_type_back->humidity_value_get = 4095-humidity_type_back->humidity_adc_type.GET_AD_MEAN;
   humidity_type_back->humidity_value_show = (humidity_type_back->humidity_value_get*1000)/4095;
}

const humidity_type_t* humidity_type_Piont(void)
{
   return &humidity_type;
}
