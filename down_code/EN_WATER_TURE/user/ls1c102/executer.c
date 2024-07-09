#include "executer.h"
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
#include "pid.h"
#include "led_show.h"
#include "water_circle.h"
#include "mqtt_esp.h"
#include "cJSON.h"

extern bool flag_10ms;
extern bool flag_20ms;
extern bool flag_50ms;
extern bool flag_100ms;
extern bool flag_500ms;
extern bool flag_1000ms;

void executer_init(void)
{
    led_init();
    mqtt_process_init();
    water_circle_process_init();
    delay_ms(1000);
    timer_init(10);
}

void executer_choose_run(void)
{

    if(flag_10ms==1){run_function_10ms(); flag_10ms=0;}
    if(flag_20ms==1){run_function_20ms(); flag_20ms=0;}
    if(flag_50ms==1){run_function_50ms(); flag_50ms=0;}
    if(flag_100ms==1){run_function_100ms(); flag_100ms=0;}
    if(flag_500ms==1){run_function_500ms(); flag_500ms=0;}
    if(flag_1000ms==1){run_function_1000ms(); flag_1000ms=0;}
}

void run_function_50ms(void)
{
    
}

void run_function_100ms(void)
{
      
}

void run_function_500ms(void)
{

}

void run_function_10ms(void){}
void run_function_20ms(void){}

void run_function_1000ms(void)
{
    water_circle_process();
    mqtt_process();
    led_show();
}
