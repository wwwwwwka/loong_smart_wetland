#include "light_adc.h"
#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "ls1c102_adc.h"
#include "pid.h"

light_type_t light_type;

void light_process_init(void) {Light_System_Init(&light_type);}

void light_process(void)
{
   Light_TEMT6000_Get(&light_type); 

   Light_value_feedback(&light_type);

   //Light_PID_loop(&light_type);

  
}

void Light_System_Init(light_type_t *light_type_init)
{
   light_type_init->light_value_left_get.GET_AD_MEAN=0;
   light_type_init->light_value_left_get.GET_AD_STORE=0;
   light_type_init->light_value_right_get.GET_AD_MEAN=0;
   light_type_init->light_value_right_get.GET_AD_STORE=0;

   for(int i = 0; i < GET_AD; i++)
   {
      light_type_init->light_value_left_get.GET_AD_VALUE[i]=0;
      light_type_init->light_value_right_get.GET_AD_VALUE[i]=0;
   }
   
   const int16_t pid[3]={LIGHT_PID_Kp,LIGHT_PID_Ki,LIGHT_PID_Kd};
   PID_Init(&light_type_init->light_pid, pid, 10000,-10000);

   printf("#006P1500T0000!");
   printf("#007P1500T0000!");

   Adc_powerOn();//adc电源开启
   Adc_open(ADC_CHANNEL_I6);//打开通道4
   Adc_open(ADC_CHANNEL_I7);//打开通道5
}

void Light_TEMT6000_Get(light_type_t *light_type_get)  //函数用于获取光照传感器的原始数据
{
   int i=0,j=0;
   uint16_t temp=0;

	light_type_get->light_value_left_get.GET_AD_MEAN=0;
   light_type_get->light_value_left_get.GET_AD_STORE=0;
   light_type_get->light_value_right_get.GET_AD_MEAN=0;
   light_type_get->light_value_right_get.GET_AD_STORE=0;
   for(int i = 0; i < GET_AD; i++)
   {
      light_type_get->light_value_left_get.GET_AD_VALUE[i]=0;
      light_type_get->light_value_right_get.GET_AD_VALUE[i]=0;
   }

   for(i = 0;i < GET_AD;i++)
   {
      light_type_get->light_value_left_get.GET_AD_VALUE[i]= Adc_Measure(ADC_CHANNEL_I6);
      light_type_get->light_value_right_get.GET_AD_VALUE[i]= Adc_Measure(ADC_CHANNEL_I7);
   }
   for(i = 0; i < GET_AD; i++)
   {
      for(j = 0; j < GET_AD - i; j++)
      {
         if(light_type_get->light_value_left_get.GET_AD_VALUE[j] > light_type_get->light_value_left_get.GET_AD_VALUE[j + 1])
         {
            temp = light_type_get->light_value_left_get.GET_AD_VALUE[j];
            light_type_get->light_value_left_get.GET_AD_VALUE[j] = light_type_get->light_value_left_get.GET_AD_VALUE[j + 1];
            light_type_get->light_value_left_get.GET_AD_VALUE[j + 1] = temp;
         }
      }
      for(j = 0; j < GET_AD - i; j++)
      {
         if(light_type_get->light_value_right_get.GET_AD_VALUE[j] > light_type_get->light_value_right_get.GET_AD_VALUE[j + 1])
         {
            temp = light_type_get->light_value_right_get.GET_AD_VALUE[j];
            light_type_get->light_value_right_get.GET_AD_VALUE[j] = light_type_get->light_value_right_get.GET_AD_VALUE[j + 1];
            light_type_get->light_value_right_get.GET_AD_VALUE[j + 1] = temp;
         }
      }
   }
     
   for(i = 1;i <GET_AD-1 ;i++)
   {
      light_type_get->light_value_left_get.GET_AD_STORE+= light_type_get->light_value_left_get.GET_AD_VALUE[i];
      light_type_get->light_value_right_get.GET_AD_STORE+= light_type_get->light_value_right_get.GET_AD_VALUE[i];
   }
   light_type_get->light_value_left_get.GET_AD_MEAN = light_type_get->light_value_left_get.GET_AD_STORE/(GET_AD-2);
   light_type_get->light_value_right_get.GET_AD_MEAN = light_type_get->light_value_right_get.GET_AD_STORE/(GET_AD-2);
}

void Light_value_feedback(light_type_t *light_type_back)
{
   light_type_back->light_value_get = (light_type_back->light_value_left_get.GET_AD_MEAN+light_type_back->light_value_right_get.GET_AD_MEAN)/2;
   light_type_back->light_value_show = (light_type_back->light_value_get*1000)/4095;
}

void Light_PID_loop(light_type_t *light_type_loop)  //函数用于进行PID运算
{
   uint16_t num=0,pwm=0,tim=0;

   light_type_loop->light_out = PID_computer(&light_type_loop->light_pid,light_type_loop->light_value_get,2100);
   num = 6;
   pwm = 1000-light_type_loop->light_out;
   tim = 0;

   if(pwm>=1500) pwm=1500;
   if(pwm<=0)    pwm=0;
   
   printf("#006P0500T0000!");
   //printf("#%3dP%4dT%4d!",num,pwm,tim);
}

//返回原始数据
const light_type_t* light_type_value_get(void)
{
   return &light_type;
}
