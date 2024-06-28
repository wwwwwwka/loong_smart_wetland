#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "esp8266.h"
#include "ls1c102_interrupt.h"
#include "ls1x_uart.h"
#include "ls1x_string.h"
#include "ls1x_printf.h"
#include "executer.h"
#include "led_show.h"
#include "ls1c102_adc.h"
#include "cJSON.h"
#include "water_circle.h"
#include "mqtt_esp.h"


int main(int arg, char *args[])
{
    executer_init();

    while(1)
    {
        executer_choose_run();
    }
    return 0;
}


