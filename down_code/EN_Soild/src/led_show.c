#include "led_show.h"
#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"

uint8_t temp=0;

void led_init(void)
{
    gpio_write_pin(GPIO_PIN_20,1);
    
}

void led_show(void)
{
    temp=!temp;
    gpio_write_pin(GPIO_PIN_20,temp);
}