#include "ls1x_printf.h"
#include "ls1x_uart.h"
#include "Config.h"
#include "stdarg.h"
#include "ls1x_string.h"
#include "cJSON.h"
#include "queue.h"
#include "esp8266.h"
#include "ls1x_latimer.h"
#include "ls1x_gpio.h"

uint8_t Json_Read_Buffer[JSON_DATA_LEN];//设置接收缓冲数组
uint8_t Json_Read_length;
// uint8_t Json_value_flag[JSON_VALUE_FLAG_LEN];
// uint8_t Json_value[4][JSON_VALUE_LEN];
uint8_t Json_Comma_Flag[16];
uint8_t* Json_recive_data;
uint8_t* Json_recive_data_lenth;

uint8_t* mqtt_data;

json_backage_t json_backage;

void json_to_send(json_send_backage_t* json_send_backage_to,uint8_t* mqtt_len)
{
    uint8_t temp[5];
    uint8_t us_tem[4][JSON_VALUE_LEN];
    uint8_t* str_tem[4];
    uint8_t len_us=0;
    uint8_t len_te=0;

    for(int i=0;i<4;i++)
    {
        len_us=strlen(json_send_backage_to->key[i]);

        itoa(temp, json_send_backage_to->value[i]);
        len_te=strlen(temp);
        if(i != 3)
        {
            temp[len_te]=',';
            temp[len_te+1]='\0';
        }
        
        us_tem[i][0] = '\"';
        for(int j=0;j<len_us;j++)
        {
          us_tem[i][j+1] = json_send_backage_to->key[i][j];
        }
        us_tem[i][len_us+1]='\"';
        us_tem[i][len_us+2]=':';
        us_tem[i][len_us+3]='\0';
        str_tem[i]=strcat(us_tem[i],temp);
    }
    mqtt_data++;
    mqtt_data=strcat(strcat(str_tem[0],str_tem[1]),strcat(str_tem[2],str_tem[3]));
    mqtt_data--;
    *(mqtt_data)='{';
    uint8_t mqtt_lenth = strlen(mqtt_data);
    *(mqtt_data+mqtt_lenth)='}';
    *(mqtt_data+mqtt_lenth+1)='\0';
    *mqtt_len=mqtt_lenth+1;
}

void esp8266_send_json(uint8_t send_len,char *ack, uint16_t waittime)
{
    char res = 0;
    char* send_len_str;
    itoa(send_len_str,send_len);
    //UART0_RX_STA = 0;
    //esp8266_send_cmd("AT+MQTTPUB=0,\"topic/esp8266\",%s,0,0","OK",300);
    myprintf2(0,"AT+MQTTPUBRAW=0,\"/k1dl3eJ2RBB/1c102t/user/update\",%s,0,0\n", send_len_str);	//发送命令
    while(1)	//等待倒计时
    {
        delay_ms(50);
        if(esp8266_check_cmd(&Circular_queue_send,"OK")) 
        {      
            esp8266_send_isno();
            json_to_callback();
            // if(pstrstr((const char*), (const char*)"+MQTTSUBRECV")) 
            //    Queue_Wirte(&Circular_queue_recv,Circular_queue_send.data,Queue_HadUse(&Circular_queue_send));    
            break;
        }
    }
        
    esp8266_send_data(mqtt_data);
    while(1)
    {
        delay_ms(50);
        if(esp8266_check_cmd(&Circular_queue_send,"+MQTTPUB:OK")) 
        {      
            esp8266_send_isno();
            json_to_callback();
            // if(pstrstr((const char*)&Circular_queue_send.data, (const char*)"+MQTTSUBRECV")) 
            //    Queue_Wirte(&Circular_queue_recv,Circular_queue_send.data,Queue_HadUse(&Circular_queue_recv));
            break;
        }
    }
}

void json_to_callback(void)
{   
    int i=0;
    int j=0;
    int k=0;

    json_backage.value[0]=0;
    json_backage.value[1]=0;
    json_backage.value[2]=0;
    json_backage.value[3]=0;

    if(Queue_isEmpty(&Circular_queue_recv)==0)//判断队列是否为空，即判断是否收到数据
    {
        
        Json_Read_length=Queue_HadUse(&Circular_queue_recv);//返回队列中数据的长度
            {
                memset(Json_Read_Buffer, 0, JSON_DATA_LEN);//填充接收缓冲区为0
                Queue_Read(&Circular_queue_recv,Json_Read_Buffer,Json_Read_length);//读取队列缓冲区的值到接收缓冲区
                Json_Read_Buffer[Json_Read_length]='\0';//字符串接收结束符
                //printf("%s\r\n", Json_Read_Buffer);// 打印正确
                //printf("%d\r\n", Json_Read_length);// 打印正确Json_Read_length
            }

            for(i=0;i<Json_Read_length;i++)
            {  
                if(Json_Read_Buffer[i] == ',')
                {
                    Json_Comma_Flag[k] = i;
                    k++;
                }
            }

            for(i=Json_Comma_Flag[1]+1;i<Json_Comma_Flag[2];i++)
            {
                Json_recive_data_lenth[i-Json_Comma_Flag[1]-1] = Json_Read_Buffer[i];
            }
            //printf("%s\n",Json_recive_data_lenth);

            for(i=Json_Comma_Flag[2]+1;i<Json_Read_length;i++)
            {
                Json_recive_data[i-Json_Comma_Flag[2]-1] = Json_Read_Buffer[i];
            }
            //printf("%s\n",Json_recive_data);
            
    }
}

const json_backage_t* json_backage_value_get(void)
{
    return &json_backage;
}

