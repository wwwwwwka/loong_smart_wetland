#include "light_perip.h"

/*************************************************************************************/
void bh_data_send(uint8_t command)
{
    I2C_GenerateSTART(I2C,ENABLE);                      //iic起始信号
    I2C_SendData(I2C,BHAddWrite);       //发送器件地址
    I2C_wait(I2C);
    I2C_SendData(I2C,command);          //发送指令
    I2C_wait(I2C);                   //等待从机应答
    I2C_GenerateSTOP(I2C,ENABLE);                       //iic停止信号
}

uint16_t bh_data_read(void)
{
	uint16_t buf;
	I2C_GenerateSTART(I2C,ENABLE);                       //iic起始信号
	I2C_SendData(I2C,BHAddRead);         //发送器件地址+读标志位
	//I2C_wait(I2C);                     //等待从机应答
    // I2C_ReceiveData(I2C,0,0);
	// buf=I2C->CR_SR;          //读取数据
	// buf=buf<<8;                        //读取并保存高八位数据
	// buf+=0x00ff&I2C->CR_SR;      //读取并保存第八位数据
	I2C_GenerateSTOP(I2C,ENABLE);                       //发送停止信号 
	return buf; 
}

void Single_Write_BH1750(uint8_t REG_Address)
{
   I2C_GenerateSTART(I2C,ENABLE);                  //起始信号
   I2C_SendData(I2C,BHAddWrite);   //发送设备地址+写信号
   I2C_SendData(I2C,REG_Address);    //内部寄存器地址，
  //  BH1750_SendByte(REG_data);       //内部寄存器数据，
   I2C_GenerateSTOP(I2C,ENABLE);                  //发送停止信号
}

void Light_perip_Init(void)
{
    gpio_pin_remap(GPIO_PIN_4,GPIO_FUNC_MAIN);//引脚复用4：scl
    gpio_pin_remap(GPIO_PIN_5,GPIO_FUNC_MAIN);//引脚复用5：sda
    
    I2C_InitTypeDef I2C_InitStruct0;
    I2C_StructInit(&I2C_InitStruct0);
    
    I2C_Init(I2C, &I2C_InitStruct0);
    gpio_write_pin(20,1);
    delay_ms(100);
    Single_Write_BH1750(0x01);
    delay_ms(100);
    bh_data_send(BHPowOn);   
    delay_ms(100);
	bh_data_send(BHReset);    
    delay_ms(100);
	bh_data_send(BHModeH1);
}

