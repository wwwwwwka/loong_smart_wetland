#ifndef __DS18B20_H
#define __DS18B20_H 

#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"

#define SYSTICK_DelayUs(n) delay_us(n)
								   
#define DS18B20_DQ_OUT(n)   gpio_write_pin(GPIO_PIN_22,n)  //输出 
#define DS18B20_DQ_IN    gpio_get_pin(GPIO_PIN_22)  //输入 
   	
uint8_t DS18B20_Init(void);
short DS18B20_Get_Temp(void);
void DS18B20_Start(void);
void DS18B20_Write_Byte(uint8_t dat);
uint8_t DS18B20_Read_Byte(void);
uint8_t DS18B20_Read_Bit(void);
uint8_t DS18B20_Check(void);
void DS18B20_Rst(void);    
#endif















