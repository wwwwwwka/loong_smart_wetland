#include "ventilate.h"
#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "ls1c102_adc.h"
#include "pid.h"

ventilate_type_t ventilate_type;

void ventilate_process_init(void) {Ventilate_System_Init(&ventilate_type);}

void ventilate_light_process(void)
{
    Ventilate_Get(&ventilate_type);

    Ventilate_Value_Feedback(&ventilate_type);

    Ventilate_Contrl(&ventilate_type);

}

void Ventilate_System_Init(ventilate_type_t* ventilate_type_init)
{
    ventilate_type_init->co2_adc_get.GET_AD_MEAN=0;
    ventilate_type_init->co2_adc_get.GET_AD_STORE=0;
    ventilate_type_init->smoke_adc_get.GET_AD_MEAN=0;
    ventilate_type_init->smoke_adc_get.GET_AD_STORE=0;

    for(int i = 0; i < GET_AD; i++)
    {
        ventilate_type_init->co2_adc_get.GET_AD_VALUE[i]=0;
        ventilate_type_init->smoke_adc_get.GET_AD_VALUE[i]=0;
    }

}

void Ventilate_Get(ventilate_type_t* ventilate_type_get)
{
    int i=0,j=0;
    uint16_t temp=0;

    ventilate_type_get->co2_adc_get.GET_AD_MEAN=0;
    ventilate_type_get->co2_adc_get.GET_AD_STORE=0;
    ventilate_type_get->smoke_adc_get.GET_AD_MEAN=0;
    ventilate_type_get->smoke_adc_get.GET_AD_STORE=0;

    for(int i = 0; i < GET_AD; i++)
    {
        ventilate_type_get->co2_adc_get.GET_AD_VALUE[i]=0;
        ventilate_type_get->smoke_adc_get.GET_AD_VALUE[i]=0;
    }

    for(i = 0;i < GET_AD;i++)
    {
        ventilate_type_get->co2_adc_get.GET_AD_VALUE[i]= Adc_Measure(ADC_CHANNEL_I0);
        ventilate_type_get->smoke_adc_get.GET_AD_VALUE[i]= Adc_Measure(ADC_CHANNEL_I1);
    }
    for(i = 0; i < GET_AD; i++)
    {
      for(j = 0; j < GET_AD - i; j++)
      {
         if(ventilate_type_get->co2_adc_get.GET_AD_VALUE[j] > ventilate_type_get->co2_adc_get.GET_AD_VALUE[j + 1])
         {
            temp = ventilate_type_get->co2_adc_get.GET_AD_VALUE[j];
            ventilate_type_get->co2_adc_get.GET_AD_VALUE[j] = ventilate_type_get->co2_adc_get.GET_AD_VALUE[j + 1];
            ventilate_type_get->co2_adc_get.GET_AD_VALUE[j + 1] = temp;
         }
      }
      for(j = 0; j < GET_AD - i; j++)
      {
         if(ventilate_type_get->smoke_adc_get.GET_AD_VALUE[j] >ventilate_type_get->smoke_adc_get.GET_AD_VALUE[j + 1])
         {
            temp = ventilate_type_get->smoke_adc_get.GET_AD_VALUE[j];
            ventilate_type_get->smoke_adc_get.GET_AD_VALUE[j] = ventilate_type_get->smoke_adc_get.GET_AD_VALUE[j + 1];
            ventilate_type_get->smoke_adc_get.GET_AD_VALUE[j + 1] = temp;
         }
      }
   }
     
   for(i = 1;i <GET_AD-1 ;i++)
   {
      ventilate_type_get->co2_adc_get.GET_AD_STORE+= ventilate_type_get->co2_adc_get.GET_AD_VALUE[i];
      ventilate_type_get->smoke_adc_get.GET_AD_STORE+= ventilate_type_get->smoke_adc_get.GET_AD_VALUE[i];
   }
   ventilate_type_get->co2_adc_get.GET_AD_MEAN = ventilate_type_get->co2_adc_get.GET_AD_STORE/(GET_AD-2);
   ventilate_type_get->smoke_adc_get.GET_AD_MEAN =ventilate_type_get->smoke_adc_get.GET_AD_STORE/(GET_AD-2);

}

void Ventilate_Value_Feedback(ventilate_type_t* ventilate_type_back)
{
    ventilate_type_back->co2_adc_value = ventilate_type_back->co2_adc_get.GET_AD_MEAN;
    ventilate_type_back->smoke_adc_value = ventilate_type_back->smoke_adc_get.GET_AD_MEAN;
    //printf("%d,%d\n",ventilate_type_back->co2_adc_value,ventilate_type_back->smoke_adc_value);

}

void Ventilate_Contrl(ventilate_type_t* ventilate_type_contrl)
{



}

const ventilate_type_t* ventilate_type_value_get(void)
{
    return &ventilate_type;

}