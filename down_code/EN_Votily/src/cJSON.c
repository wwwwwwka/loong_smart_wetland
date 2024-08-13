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

uint8_t* mqtt_data;

void json_to_send(json_send_backage_t* json_send_backage_to)
{
    uint8_t temp[4];
    uint8_t us_tem[7][JSON_VALUE_LEN];
    uint8_t* str_tem[7];
    uint8_t len_us=0;
    uint8_t len_te=0;

    for(int i=0;i<7;i++)
    {
        len_us=strlen(json_send_backage_to->key[i]);

        itoa(temp, json_send_backage_to->value[i]);
        len_te=strlen(temp);
        if(i != 6)
        {
            temp[len_te]='\\';
            temp[len_te+1]=',';
            temp[len_te+2]='\0';
        }
        
        us_tem[i][0] = '\\';
        us_tem[i][1] = '\"';

        for(int j=0;j<len_us;j++)
        {
          us_tem[i][j+2] = json_send_backage_to->key[i][j];
        }

        us_tem[i][len_us+2]='\\';
        us_tem[i][len_us+3]='\"';
        us_tem[i][len_us+4]=':';
        us_tem[i][len_us+5]='\0';
        str_tem[i]=strcat(us_tem[i],temp);
    }
    mqtt_data++;
    mqtt_data=strcat(strcat(strcat(str_tem[0],str_tem[1]),strcat(str_tem[2],str_tem[3])),strcat(strcat(str_tem[4],str_tem[5]),str_tem[6]));
    mqtt_data--;
    *(mqtt_data)='{';
    uint8_t mqtt_lenth = strlen(mqtt_data);
    *(mqtt_data+mqtt_lenth)='}';
    *(mqtt_data+mqtt_lenth+1)='\0';
}

void esp8266_send_json(void)
{
    //UART0_RX_STA = 0;
    uint16_t tim=0;
    uint16_t waittime=20;
    //printf("%s\n",mqtt_data);
    myprintf2(0,"AT+MQTTPUB=0,\"/k1dl3eJ2RBB/1c102new/user/update\",\"%s\",0,0\n", mqtt_data);	//发送命令
    while(--waittime)	//等待倒计时
    { 
        if(esp8266_check_cmd(&Circular_queue_send,"OK")) 
        {
            break;//得到有效数据
        }
    }
}

