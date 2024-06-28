#include "Modbus_rtu.h"
#include "ls1x.h"
#include "Config.h"
#include "ls1c102_interrupt.h"
#include "ls1x_uart.h"
#include "ls1c102_ptimer.h"
#include "ls1x_printf.h"
#include "ls1x_latimer.h"

uint8_t Serial_RxPacket[9];       //9个字节
uint8_t Serial_TxPacket[8];       //8个字节
uint8_t Serial_RxFlag;            //接收完成的标识符
uint8_t Serial_TxFlag;            //发送完成的标识符
uint8_t RxState = 0;
uint8_t pRxPacket = 0;

Temp_Hum_Data_t Temp_Hum;
PWM_Back_Data_t PWM_485_Data;

void RS485_Recieve_Callback(void)
{
    uint8_t RxData=0;
    RxData = UART_ReceiveData(UART1);     //回传数据赋给RxData
    //printf("1\n");
	if (RxState == 0)
	{
	    if (RxData == 0x01)      //帧头判断
		{
            Serial_RxPacket[0] = RxData;         //RxData分别赋给Serial_RxPacket[0]*Serial_RxPacket[3]
            pRxPacket=1;
			RxState=1;           //帧头无误标志位
		
		}else if(RxData == 0x02)
        {
            Serial_RxPacket[0] = RxData;
            pRxPacket=1;
			RxState=2;           //帧头无误标志位
        }
	}else if (RxState == 1)
	{
		Serial_RxPacket[pRxPacket] = RxData;         //RxData分别赋给Serial_RxPacket[0]*Serial_RxPacket[3]
		pRxPacket ++;
		if (pRxPacket > 8)
		{
			RxState = 10;           //数据接收完毕标志位
		}
        
	}else if(RxState == 2)
    {
        Serial_RxPacket[pRxPacket] = RxData;         //RxData分别赋给Serial_RxPacket[0]*Serial_RxPacket[3]
		pRxPacket ++;
		if (pRxPacket > 7)
		{
			RxState = 20;           //数据接收完毕标志位
		}
    }
    
	if (RxState == 10)
	{
        // for(int i=0;i<9;i++)
        // {
        //    printf("%x ",Serial_RxPacket[i]);
        // }
        // printf("\n");

        uint8_t CRC1 = *(Serial_RxPacket + 7);
        uint8_t CRC2 = *(Serial_RxPacket  + 8);
	    getModbusCRC16(Serial_RxPacket,7);
        
	    if(CRC1 == *(Serial_RxPacket + 7) && CRC2 == *(Serial_RxPacket + 8))
        {
          Determine_Temp_Hum_Data(Serial_RxPacket,pRxPacket,&Temp_Hum);
          //printf("%d,%d\n",Temp_Hum.temperature_get,Temp_Hum.humidity_get);

        }

        //printf("%x,%x\n",*(Serial_RxPacket + 7),*(Serial_RxPacket + 8));
		pRxPacket = 0;  
        RxState = 0;               //pRxPacket、RxState重新赋值方便下次接收数据
	}
    else if(RxState == 20)
    {
        
        // for(int i=0;i<8;i++)
        // {
        //    printf("%x ",Serial_RxPacket[i]);
        // }
        // printf("\n");

        uint8_t CRC1 = *(Serial_RxPacket + 6);
        uint8_t CRC2 = *(Serial_RxPacket  + 7);
	    getModbusCRC16(Serial_RxPacket,6);
        
	    if(CRC1 == *(Serial_RxPacket + 6) && CRC2 == *(Serial_RxPacket + 7))
        {
          Determine_PWM_485_Data(Serial_RxPacket,pRxPacket,&PWM_485_Data);
        }

        //printf("%x,%x\n",*(Serial_RxPacket + 6),*(Serial_RxPacket + 7));
		pRxPacket = 0;  
        RxState = 0;               //pRxPacket、RxState重新赋值方便下次接收数据
    }
    
}

void Determine_Temp_Hum_Data(uint8_t* buff,uint8_t length,Temp_Hum_Data_t* Temp_Hum)
{
      for(int i=0;i<TEMP_HUM_RECIEVE_LENGTH;i++)
      {
        Temp_Hum->pbuff[i]=buff[i];
      }
      Temp_Hum->temperature_get=(Temp_Hum->pbuff[3]<<8)+Temp_Hum->pbuff[4];
      Temp_Hum->humidity_get=(Temp_Hum->pbuff[5]<<8)+Temp_Hum->pbuff[6];
}

void Determine_PWM_485_Data(uint8_t* buff,uint8_t length,PWM_Back_Data_t* PWM_485_Data)
{
      for(int i=0;i<TEMP_HUM_READ_COMMED_LENGTH;i++)
      {
        PWM_485_Data->back_package[i]=buff[i];
      }
      PWM_485_Data->pwm_value = (PWM_485_Data->back_package[4]<<8)+PWM_485_Data->back_package[5];
}

// //用于发送相关的读写指令,没有用到
// void RS485_send_readcommed(Temp_Hum_Data_t* Temp_Hum_Send)
// {
//     for(int i=0;i<8;i++)
//     {
//         Uart0_send(Temp_Hum_Send->read_commed[i]);
//     }
// }

/**
 * @brief	计算 CRC 校验码
 * @param	_pBuf	待计算的数组指针
 * @param	_usLen	待计算的数据长度
 * @return 	void
 */
void getModbusCRC16(unsigned char *_pBuf, unsigned short int _usLen)
{
    unsigned short int CRCValue = 0xFFFF;
    unsigned char i,j;

    for(i=0;i<_usLen;++i)
    {
        CRCValue  ^= *(_pBuf+i);
        for(j=0;j<8;++j)
        {
            if((CRCValue & 0x01) == 0x01)
            {
                CRCValue = (CRCValue >> 1)^0xA001;
            }
            else
            {
                CRCValue >>= 1;
            }           
        }
    }
    *(_pBuf + _usLen + 1) = (CRCValue & 0xFF00) >> 8; 		// CRC 校验码高位
    *(_pBuf + _usLen) = CRCValue & 0x00FF;			// CRC 校验码低位
    return;            
}

//用指针来获取原始数据
const Temp_Hum_Data_t* Temp_Hum_Data_Piont(void)
{
    return &Temp_Hum;
}

const PWM_Back_Data_t* PWM_485_Data_Piont(void)
{
    return &PWM_485_Data;
}
//以上是接收相关的函数
//下面是485发送相关的函数