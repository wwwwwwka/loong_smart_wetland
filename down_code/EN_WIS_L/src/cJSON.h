#ifndef _CJSON_H
#define _CJSON_H

#define JSON_DATA_LEN 1024
#define JSON_VALUE_FLAG_LEN 3
#define JSON_VALUE_LEN 256

typedef struct 
{
    uint8_t key[4][JSON_VALUE_LEN];
    uint8_t value[4];
}json_backage_t;

typedef struct 
{
    uint8_t* key[4];
    uint16_t value[4];
}json_send_backage_t;

void json_to_send(json_send_backage_t* json_send_backage_to,uint8_t* mqtt_len);
void esp8266_send_json(void);
void json_to_callback(void);
const json_backage_t* json_backage_value_get(void);

#endif 
