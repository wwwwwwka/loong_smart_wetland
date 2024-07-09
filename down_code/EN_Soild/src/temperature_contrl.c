#include "temperature_contrl.h"
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
#include "pid.h"

tempareture_type_t tempareture_type;
uint8_t tx_data[8]={0x01,0x04 ,0x00,0x00,0x00,0x02,0x71,0xCB};

void tempareture_process_init(void) {Tempareture_System_Init(&tempareture_type);}

void tempareture_process(void)
{
    Tempareture_SHT10_Get(&tempareture_type); 
    
    Tempareture_value_feedback(&tempareture_type);
}

void Tempareture_System_Init(tempareture_type_t* tempareture_type_init)
{
    tempareture_type_init->temp_hum_data=Temp_Hum_Data_Piont();
    tempareture_type_init->pwm_back_data=PWM_485_Data_Piont();

    // for(int i=0;i<4;i++)
    // {
    //     uint8_t temp=0;
    //     tempareture_type_init->contrl_package[0]=0x02;
    //     tempareture_type_init->contrl_package[1]=0x06;
    //     tempareture_type_init->contrl_package[2]=0x00;
    //     tempareture_type_init->contrl_package[3]=0x0C+i;
    //     tempareture_type_init->contrl_package[4] = 0xFF;
    //     tempareture_type_init->contrl_package[5] = 0xFF;
    //     getModbusCRC16(tempareture_type_init->contrl_package,6);
    //     tempareture_type_init->contrl_package[6] = *(tempareture_type_init->contrl_package + 6);
    //     tempareture_type_init->contrl_package[7] = *(tempareture_type_init->contrl_package + 7);

    //     printf("%x,%x\n",*(tempareture_type_init->contrl_package + 6),*(tempareture_type_init->contrl_package + 7));

    //     for(int i=0;i<8;i++)
    //     {
    //         UART_SendData(UART_485,tempareture_type_init->contrl_package[i]);
    //     }
         
    //     delay_ms(100);
        
    //     for(int i=0;i<8;i++)
    //     {
    //        if(tempareture_type_init->contrl_package[i] == tempareture_type_init->pwm_back_data->back_package[i]) temp = 1;
    //        printf("%x ",tempareture_type_init->pwm_back_data->back_package[i]);
    //     }

    //     if(temp == 0) while(1) {gpio_write_pin(GPIO_PIN_20,1);}
    //     for(int i=0;i<8;i++)
    //     {
    //       if(tempareture_type_init->pwm_back_data->back_package[i] != tempareture_type_init->contrl_package[i]) temp = 1;
    //       //   printf("%x ",tempareture_type_init->pwm_back_data->back_package[i]);
    //     }
    //     //printf("%d",temp);
    //     if(temp==1) while(1) {gpio_write_pin(GPIO_PIN_20,1);}
    // }
}

void Tempareture_SHT10_Get(tempareture_type_t* tempareture_type_get)
{
    for(int i=0;i<8;i++)
    {
        UART_SendData(UART_485,tx_data[i]);
    }
    
    delay_ms(20);
}

void Tempareture_value_feedback(tempareture_type_t* tempareture_type_back)
{
    tempareture_type_back->tempareture_value_show = tempareture_type_back->temp_hum_data->temperature_get;
    tempareture_type_back->humidity_value_show = tempareture_type_back->temp_hum_data->humidity_get;
    //printf("%x,%x\n",tempareture_type_back->tempareture_value_show,tempareture_type_back->humidity_value_show);
}

void Tempareture_PID_loop(tempareture_type_t* tempareture_type_loop)
{
    //tempareture_type_loop->temp_value_out = PID_computer(&tempareture_type_loop->temp_hum_pid,tempareture_type_loop->temp_hum_data->temperature_get,tempareture_type_loop->temp_value_set);
    tempareture_type_loop->temp_value_out=1000;
     
    if(tempareture_type_loop->temp_value_out <= 0) tempareture_type_loop->temp_value_out=0;
    if(tempareture_type_loop->temp_value_out >= 1000) tempareture_type_loop->temp_value_out=1000;

    tempareture_type_loop->contrl_package[0]=0x02;
    tempareture_type_loop->contrl_package[1]=0x06;
    tempareture_type_loop->contrl_package[2]=0x00;
    tempareture_type_loop->contrl_package[3]=0x00;
    tempareture_type_loop->contrl_package[4] = tempareture_type_loop->temp_value_out>>8;
    tempareture_type_loop->contrl_package[5] = tempareture_type_loop->temp_value_out;
	getModbusCRC16(tempareture_type_loop->contrl_package,6);
    
    for(int i=0;i<8;i++)
    {
       UART_SendData(UART_485,tempareture_type_loop->contrl_package[i]);
    }
    delay_ms(20);

    // for(int i=0;i<8;i++)
    // {
    //    //Uart0_send(tempareture_type_loop->contrl_package[i]);
    //    printf("%d ",tempareture_type_loop->pwm_back_data->back_package[i]);
    // }

}

const tempareture_type_t* tempareture_type_Piont(void)
{
    return &tempareture_type;
}
