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
#include "executer.h"
#include "led_show.h"

uint16_t value_4=0;
uint16_t value_5=0;

int main(int arg, char *args[])
{
    //esp8266_init();
    //Light_perip_Init();
    //Adc_powerOn();//adc电源开�?
    executer_init();
    
    // Adc_open(ADC_CHANNEL_I0);//打开通道0
    // Adc_open(ADC_CHANNEL_I5);//打开通道0

    while(1)
    {
        executer_choose_run();
        // value_4=Adc_Measure(ADC_CHANNEL_I0);
        // value_5=Adc_Measure(ADC_CHANNEL_I5);
        //printf("%d,%d\n",value_4,value_5);

        // led_show();
        // delay_ms(500);
    }
    return 0;
}


