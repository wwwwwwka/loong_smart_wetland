#ifndef _MODBUS_RTU_H
#define _MODBUS_RTU_H

#include "ls1x.h"
#include "Config.h"

#define TEMP_HUM_RECIEVE_LENGTH 9
#define TEMP_HUM_READ_COMMED_LENGTH 8

typedef struct
{    
    //uint8_t read_commed[8];
    uint8_t pbuff[9];
    uint16_t temperature_get;
    uint16_t humidity_get;
} Temp_Hum_Data_t;

typedef struct
{
    //uint8_t write_package[8];
    uint8_t back_package[8];
    uint16_t pwm_value;
} PWM_Back_Data_t;


void RS485_Recieve_Callback(void);
void getModbusCRC16(unsigned char *_pBuf, unsigned short int _usLen);
void Determine_Temp_Hum_Data(uint8_t* buff,uint8_t length,Temp_Hum_Data_t* Temp_Hum);
void Determine_PWM_485_Data(uint8_t* buff,uint8_t length,PWM_Back_Data_t* PWM_485_Data);
const Temp_Hum_Data_t* Temp_Hum_Data_Piont(void);
const PWM_Back_Data_t* PWM_485_Data_Piont(void);
//void RS485_send_readcommed(Temp_Hum_Data_t* Temp_Hum_Send);

#endif