#include "light_perip.h"

/*************************************************************************************/
void bh_data_send(uint8_t command)
{
    I2C_GenerateSTART(I2C,ENABLE);                      //iic��ʼ�ź�
    I2C_SendData(I2C,BHAddWrite);       //����������ַ
    I2C_wait(I2C);
    I2C_SendData(I2C,command);          //����ָ��
    I2C_wait(I2C);                   //�ȴ��ӻ�Ӧ��
    I2C_GenerateSTOP(I2C,ENABLE);                       //iicֹͣ�ź�
}

uint16_t bh_data_read(void)
{
	uint16_t buf;
	I2C_GenerateSTART(I2C,ENABLE);                       //iic��ʼ�ź�
	I2C_SendData(I2C,BHAddRead);         //����������ַ+����־λ
	//I2C_wait(I2C);                     //�ȴ��ӻ�Ӧ��
    // I2C_ReceiveData(I2C,0,0);
	// buf=I2C->CR_SR;          //��ȡ����
	// buf=buf<<8;                        //��ȡ������߰�λ����
	// buf+=0x00ff&I2C->CR_SR;      //��ȡ������ڰ�λ����
	I2C_GenerateSTOP(I2C,ENABLE);                       //����ֹͣ�ź� 
	return buf; 
}

void Single_Write_BH1750(uint8_t REG_Address)
{
   I2C_GenerateSTART(I2C,ENABLE);                  //��ʼ�ź�
   I2C_SendData(I2C,BHAddWrite);   //�����豸��ַ+д�ź�
   I2C_SendData(I2C,REG_Address);    //�ڲ��Ĵ�����ַ��
  //  BH1750_SendByte(REG_data);       //�ڲ��Ĵ������ݣ�
   I2C_GenerateSTOP(I2C,ENABLE);                  //����ֹͣ�ź�
}

void Light_perip_Init(void)
{
    gpio_pin_remap(GPIO_PIN_4,GPIO_FUNC_MAIN);//���Ÿ���4��scl
    gpio_pin_remap(GPIO_PIN_5,GPIO_FUNC_MAIN);//���Ÿ���5��sda
    
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

