#ifndef _LIGHT_PERIP_H
#define _LIGHT_PERIP_H

#include "light_perip.h"
#include "ls1x.h"
#include "config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "light_perip.h"
#include "ls1c102_i2c.h"

#define ADDR 0x23//0100011

#define BHAddWrite     0x46      //从机地址+最后写方向位
#define BHAddRead      0x47      //从机地址+最后读方向位
#define BHPowDown      0x00      //关闭模块
#define BHPowOn        0x01      //打开模块等待测量指令
#define BHReset        0x07      //重置数据寄存器值在PowerOn模式下有效
#define BHModeH1       0x10      //高分辨率 单位1lx 测量时间120ms
#define BHModeH2       0x11      //高分辨率模式2 单位0.5lx 测量时间120ms
#define BHModeL        0x13      //低分辨率 单位4lx 测量时间16ms
#define BHSigModeH     0x20      //一次高分辨率 测量 测量后模块转到 PowerDown模式
#define BHSigModeH2    0x21      //同上类似
#define BHSigModeL     0x23      // 上类似

void Single_Write_BH1750(uint8_t REG_Address);
void bh_data_send(uint8_t command);
uint16_t bh_data_read(void);
void Light_perip_Init(void);

#endif