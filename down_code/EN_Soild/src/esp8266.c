#include "esp8266.h"
#include "Config.h"
#include "ls1x_string.h"
#include "ls1x_printf.h"
#include "ls1x_latimer.h"

#include "queue.h"

uint8_t Read_Buffer[DATA_LEN];//设置接收缓冲数组
uint8_t Read_length;
/*
    在进行esp8266试验过程中prinf对应于上位机发送
                           myprintf2(0,#fmt,..)用于发送
*/

// ESP8266 发送命令后，检测接收到的应答
// str：期待的应答结果
// 返回值：0，没有得到期待的应答结果；其他，期待应答结果的位置(str的位置)
char* esp8266_check_cmd(Circular_queue_t *circular_queue,char *str)//
{
    char *strx = NULL;

    if(Queue_isEmpty(circular_queue)==0)//判断队列是否为空，即判断是否收到数据
    {
        Read_length=Queue_HadUse(circular_queue);//返回队列中数据的长度
        {
            memset(Read_Buffer, 0, DATA_LEN);//填充接收缓冲区为0
            Queue_Read(circular_queue, Read_Buffer,Read_length);//读取队列缓冲区的值到接收缓冲区
            Read_Buffer[Read_length]='\0';//字符串接收结束符
            //printf("%s\r\n", Read_Buffer);// 打印正确
        }
    }
    
    strx = pstrstr((const char*)Read_Buffer, (const char*)str);
    return strx;
}

// 向 ESP8266 发送命令
// cmd：发送的命令字符串。
// ack：期待的应答结果，如果为空，则表示不需要等待应答
// waittime：等待时间
// 返回值：0，发送成功(得到了期待的应答结果)；1，发送失败
char esp8266_send_cmd(Circular_queue_t *circular_queue,char *cmd, char *ack, uint16_t waittime)
{
    char res = 0;
    //UART0_RX_STA = 0;
    printf("cmd:%s\r\n", cmd);
    
    myprintf2(0,"%s\n", cmd);	//发送命令
    if(ack && waittime)		//需要等待应答
    {
        //printf("check UART0_RX_BUF:%s\r\n", Read_Buffer);// 打印正确
        while(--waittime)	//等待倒计时
        {

            delay_ms(1000);
            //printf("等待倒计时\r\n");
            
            if(esp8266_check_cmd(circular_queue,ack))
            {
                printf("ack:%s\r\n", ack);
                break;//得到有效数据
            }

        }
        if(waittime == 0)
        {
            res = 1;
        }
        else printf("res:%d\r\n", res);
    }
    return res;
}

// ESP8266 模块进入透传模式
void esp8266_init(void)
{
    // printf("AT+RST\r\n");
    // while(esp8266_send_cmd("AT+RST", "OK", 150));
    // delay_ms(500);

    printf("AT\r\n");
    esp8266_send_cmd(&Circular_queue_send,"AT", "OK", 150);
    delay_ms(100);
    
    //设置工作模式 1：station模式   2：AP模式   3：兼容 AP+station模式
    printf("AT+CWMODE=1\r\n");
    while(esp8266_send_cmd(&Circular_queue_send,"AT+CWMODE=1", "OK", 150));
    delay_ms(100);

    //让模块连接上自己的手机热点
    printf("AT+CWJAP=yx-iphone,12345678\r\n");
    while(esp8266_send_cmd(&Circular_queue_send,"AT+CWJAP=\"Tenda_BC79E0\",\"stm32f103c8t6\"","OK", 300));
    delay_ms(100);
    
    // =0：单路连接模式；=1：多路连接模式
    printf("AT+MQTTUSERCFG=1,NULL,1c102s&k1dl3eJ2RBB,d0429ef848411ae9cd72ba5e57e07033556b901671c6825b2f75a5aeb6c57c6d,0,0,\"\"\r\n");
    while(esp8266_send_cmd(&Circular_queue_send,"AT+MQTTUSERCFG=0,1,\"NULL\",\"""1c102s&k1dl3eJ2RBB""\",\"""7c65545db981f25b377503f63fd2b9700e345a62177f2fda6c3b5d8e452cfd12""\",0,0,\"\"","OK",150));
    delay_ms(100);

    printf("AT+MQTTCLIENTID=0,k1dl3eJ2RBB.1c102s|securemode=2,signmethod=hmacsha256,timestamp=1719636740199|\r\n");
    esp8266_send_cmd(&Circular_queue_send,"AT+MQTTCLIENTID=0,\"k1dl3eJ2RBB.1c102s|securemode=2\\,signmethod=hmacsha256\\,timestamp=1719989707921|\"","OK",300);
    delay_ms(100);

    // 建立TCP连接  这三项分别代表：连接类型、远程服务器IP地址、远程服务器端口号
    printf("AT+MQTTCONN=0,\"iot-06z00bz9674xbev.mqtt.iothub.aliyuncs.com\",1883,1\r\n");
    esp8266_send_cmd(&Circular_queue_send,"AT+MQTTCONN=0,\"iot-06z00bz9674xbev.mqtt.iothub.aliyuncs.com\",1883,1","OK",300);
    delay_ms(100);

    printf("AT+MQTTSUB=0,,1\r\n");
    esp8266_send_cmd(&Circular_queue_send,"AT+MQTTSUB=0,\"/k1dl3eJ2RBB/1c102s/user/get\",1","OK",300);
    delay_ms(100);
    
    // printf("AT+MQTTUNSUB=0,\"/k1dl3eJ2RBB/1c102f/user/get\"\r\n");
    // esp8266_send_cmd("AT+MQTTUNSUB=0,\"/k1dl3eJ2RBB/1c102f/user/get\"","OK",300);
    // delay_ms(100);
}

// 向 ESP8266 发送数据
// cmd：发送的命令字符串
// waittime：等待时间
// 返回值：发送数据后，服务器的返回验证码
void esp8266_send_data(char *cmd)
{
    myprintf2(0,"%s",cmd);// 发送数据
}

void esp8266_send_isno(void)
{
    
    if(esp8266_check_cmd(&Circular_queue_send,"+MQTTSUBRECV"))
    {
        Queue_Wirte(&Circular_queue_recv,Read_Buffer,strlen(Read_Buffer));  
        printf("the data from recv");
    }
    memset(Read_Buffer, 0, DATA_LEN);//填充接收缓冲区为0
}

void esp8266_send_isno_2(void)
{
    if(pstrstr((const char*)Read_Buffer,"+MQTTSUBRECV"))
    {
        Queue_Wirte(&Circular_queue_recv,Read_Buffer,strlen(Read_Buffer));  
        printf("the data from recv");
    }
    memset(Read_Buffer, 0, DATA_LEN);//填充接收缓冲区为0
}





