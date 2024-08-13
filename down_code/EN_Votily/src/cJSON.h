#ifndef _CJSON_H
#define _CJSON_H

#define JSON_DATA_LEN 1024
#define JSON_VALUE_FLAG_LEN 3
#define JSON_VALUE_LEN 256

typedef struct 
{
    uint8_t* key[7];
    uint16_t value[7];
}json_send_backage_t;

void json_to_send(json_send_backage_t* json_send_backage_to);
void esp8266_send_json(void);

#endif 
