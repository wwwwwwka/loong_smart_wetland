
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438010f 	lu12i.w	$r15,114696(0x1c008)
1c00000c:	038171ef 	ori	$r15,$r15,0x5c
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	038191ef 	ori	$r15,$r15,0x64
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	03b201ad 	ori	$r13,$r13,0xc80
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54132400 	bl	4900(0x1324) # 1c0013c4 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	543ce800 	bl	15592(0x3ce8) # 1c004d78 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	543d3000 	bl	15664(0x3d30) # 1c004dc8 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	543dbc00 	bl	15804(0x3dbc) # 1c004e5c <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	543df000 	bl	15856(0x3df0) # 1c004e98 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	543c1000 	bl	15376(0x3c10) # 1c004cc0 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	5441b800 	bl	16824(0x41b8) # 1c005270 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543ea800 	bl	16040(0x3ea8) # 1c004f70 <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b70084 	ld.w	$r4,$r4,-576(0xdc0)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <GPIOInit>:
GPIOInit():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	29802076 	st.w	$r22,$r3,8(0x8)
1c001338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00133c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001340:	140001ec 	lu12i.w	$r12,15(0xf)
1c001344:	03bffd85 	ori	$r5,$r12,0xfff
1c001348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00134c:	03804184 	ori	$r4,$r12,0x10
1c001350:	54018800 	bl	392(0x188) # 1c0014d8 <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54017000 	bl	368(0x170) # 1c0014d8 <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54015800 	bl	344(0x158) # 1c0014d8 <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54014400 	bl	324(0x144) # 1c0014d8 <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54012c00 	bl	300(0x12c) # 1c0014d8 <AFIO_RemapConfig>
1c0013b0:	03400000 	andi	$r0,$r0,0x0
1c0013b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0013b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013c0:	4c000020 	jirl	$r0,$r1,0

1c0013c4 <bsp_init>:
bsp_init():
1c0013c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0013cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0013d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013d4:	541dc400 	bl	7620(0x1dc4) # 1c003198 <DisableInt>
1c0013d8:	541cec00 	bl	7404(0x1cec) # 1c0030c4 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	54271400 	bl	10004(0x2714) # 1c003af4 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54265400 	bl	9812(0x2654) # 1c003a3c <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	54151400 	bl	5396(0x1514) # 1c002908 <Uart0_init>
1c0013f8:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013fc:	03880184 	ori	$r4,$r12,0x200
1c001400:	5415cc00 	bl	5580(0x15cc) # 1c0029cc <Uart1_init>
1c001404:	1400004c 	lu12i.w	$r12,2(0x2)
1c001408:	03960184 	ori	$r4,$r12,0x580
1c00140c:	54164400 	bl	5700(0x1644) # 1c002a50 <Uart2_init>
1c001410:	541f7c00 	bl	8060(0x1f7c) # 1c00338c <ls1x_logo>
1c001414:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001418:	0380118c 	ori	$r12,$r12,0x4
1c00141c:	2880018e 	ld.w	$r14,$r12,0
1c001420:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001424:	0380118c 	ori	$r12,$r12,0x4
1c001428:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c00142c:	001535cd 	or	$r13,$r14,$r13
1c001430:	2980018d 	st.w	$r13,$r12,0
1c001434:	541d8800 	bl	7560(0x1d88) # 1c0031bc <EnableInt>
1c001438:	54201c00 	bl	8220(0x201c) # 1c003454 <open_count>
1c00143c:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001440:	541de400 	bl	7652(0x1de4) # 1c003224 <Wake_Set>
1c001444:	54268400 	bl	9860(0x2684) # 1c003ac8 <WDG_DogFeed>
1c001448:	541e8800 	bl	7816(0x1e88) # 1c0032d0 <PMU_GetRstRrc>
1c00144c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001454:	44003180 	bnez	$r12,48(0x30) # 1c001484 <bsp_init+0xc0>
1c001458:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c00145c:	02b21084 	addi.w	$r4,$r4,-892(0xc84)
1c001460:	54085800 	bl	2136(0x858) # 1c001cb8 <myprintf>
1c001464:	541ed800 	bl	7896(0x1ed8) # 1c00333c <PMU_GetBootSpiStatus>
1c001468:	0015008c 	move	$r12,$r4
1c00146c:	40001180 	beqz	$r12,16(0x10) # 1c00147c <bsp_init+0xb8>
1c001470:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c001474:	02b1f084 	addi.w	$r4,$r4,-900(0xc7c)
1c001478:	54084000 	bl	2112(0x840) # 1c001cb8 <myprintf>
1c00147c:	54402c00 	bl	16428(0x402c) # 1c0054a8 <main>
1c001480:	50004000 	b	64(0x40) # 1c0014c0 <bsp_init+0xfc>
1c001484:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001488:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00148c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0014a4 <bsp_init+0xe0>
1c001490:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c001494:	02b1a084 	addi.w	$r4,$r4,-920(0xc68)
1c001498:	54082000 	bl	2080(0x820) # 1c001cb8 <myprintf>
1c00149c:	54400c00 	bl	16396(0x400c) # 1c0054a8 <main>
1c0014a0:	50002000 	b	32(0x20) # 1c0014c0 <bsp_init+0xfc>
1c0014a4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0014a8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0014ac:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014c0 <bsp_init+0xfc>
1c0014b0:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c0014b4:	02b16084 	addi.w	$r4,$r4,-936(0xc58)
1c0014b8:	54080000 	bl	2048(0x800) # 1c001cb8 <myprintf>
1c0014bc:	57fd2bff 	bl	-728(0xffffd28) # 1c0011e4 <cpu_sleep>
1c0014c0:	0015000c 	move	$r12,$r0
1c0014c4:	00150184 	move	$r4,$r12
1c0014c8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014cc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014d0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014d4:	4c000020 	jirl	$r0,$r1,0

1c0014d8 <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014d8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014dc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014e0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014e4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014e8:	001500ac 	move	$r12,$r5
1c0014ec:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014f0:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014f4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014f8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014fc:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c001500:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001504:	2880018c 	ld.w	$r12,$r12,0
1c001508:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00150c:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c001510:	50006c00 	b	108(0x6c) # 1c00157c <AFIO_RemapConfig+0xa4>
1c001514:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c001518:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00151c:	001831ac 	sra.w	$r12,$r13,$r12
1c001520:	0340058c 	andi	$r12,$r12,0x1
1c001524:	40004d80 	beqz	$r12,76(0x4c) # 1c001570 <AFIO_RemapConfig+0x98>
1c001528:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00152c:	0040858c 	slli.w	$r12,$r12,0x1
1c001530:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001534:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001538:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00153c:	001731ac 	sll.w	$r12,$r13,$r12
1c001540:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001544:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001548:	0014300c 	nor	$r12,$r0,$r12
1c00154c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001550:	0014b1ac 	and	$r12,$r13,$r12
1c001554:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001558:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c00155c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001560:	001731ac 	sll.w	$r12,$r13,$r12
1c001564:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001568:	001531ac 	or	$r12,$r13,$r12
1c00156c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001570:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001574:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001578:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c00157c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001580:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c001584:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c001514 <AFIO_RemapConfig+0x3c>
1c001588:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00158c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001590:	2980018d 	st.w	$r13,$r12,0
1c001594:	03400000 	andi	$r0,$r0,0x0
1c001598:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00159c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0015a0:	4c000020 	jirl	$r0,$r1,0

1c0015a4 <gpio_write_pin>:
gpio_write_pin():
1c0015a4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0015a8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015ac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015b0:	0015008c 	move	$r12,$r4
1c0015b4:	001500ad 	move	$r13,$r5
1c0015b8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015bc:	001501ac 	move	$r12,$r13
1c0015c0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0015c4:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0015c8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0015cc:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c0015f0 <gpio_write_pin+0x4c>
1c0015d0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015d8:	0382018c 	ori	$r12,$r12,0x80
1c0015dc:	001031ac 	add.w	$r12,$r13,$r12
1c0015e0:	0015018d 	move	$r13,$r12
1c0015e4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0015e8:	290001ac 	st.b	$r12,$r13,0
1c0015ec:	50002000 	b	32(0x20) # 1c00160c <gpio_write_pin+0x68>
1c0015f0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015f8:	0382018c 	ori	$r12,$r12,0x80
1c0015fc:	001031ac 	add.w	$r12,$r13,$r12
1c001600:	0015018d 	move	$r13,$r12
1c001604:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001608:	290001ac 	st.b	$r12,$r13,0
1c00160c:	03400000 	andi	$r0,$r0,0x0
1c001610:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001614:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001618:	4c000020 	jirl	$r0,$r1,0

1c00161c <gpio_pin_remap>:
gpio_pin_remap():
1c00161c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001620:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001624:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001628:	0015008c 	move	$r12,$r4
1c00162c:	001500ad 	move	$r13,$r5
1c001630:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001634:	001501ac 	move	$r12,$r13
1c001638:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c00163c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001640:	0044918c 	srli.w	$r12,$r12,0x4
1c001644:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001648:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00164c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001650:	03403d8c 	andi	$r12,$r12,0xf
1c001654:	0040858c 	slli.w	$r12,$r12,0x1
1c001658:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00165c:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001660:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c001664:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c001818 <gpio_pin_remap+0x1fc>
1c001668:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00166c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001670:	580089ac 	beq	$r13,$r12,136(0x88) # 1c0016f8 <gpio_pin_remap+0xdc>
1c001674:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001678:	40002180 	beqz	$r12,32(0x20) # 1c001698 <gpio_pin_remap+0x7c>
1c00167c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001680:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001684:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c001758 <gpio_pin_remap+0x13c>
1c001688:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00168c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001690:	580129ac 	beq	$r13,$r12,296(0x128) # 1c0017b8 <gpio_pin_remap+0x19c>
1c001694:	50018800 	b	392(0x188) # 1c00181c <gpio_pin_remap+0x200>
1c001698:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00169c:	0380418c 	ori	$r12,$r12,0x10
1c0016a0:	2880018d 	ld.w	$r13,$r12,0
1c0016a4:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016a8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016ac:	001731cc 	sll.w	$r12,$r14,$r12
1c0016b0:	0014300c 	nor	$r12,$r0,$r12
1c0016b4:	0015018e 	move	$r14,$r12
1c0016b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016bc:	0380418c 	ori	$r12,$r12,0x10
1c0016c0:	0014b9ad 	and	$r13,$r13,$r14
1c0016c4:	2980018d 	st.w	$r13,$r12,0
1c0016c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016cc:	0380418c 	ori	$r12,$r12,0x10
1c0016d0:	2880018d 	ld.w	$r13,$r12,0
1c0016d4:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0016d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016dc:	001731cc 	sll.w	$r12,$r14,$r12
1c0016e0:	0015018e 	move	$r14,$r12
1c0016e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016e8:	0380418c 	ori	$r12,$r12,0x10
1c0016ec:	001539ad 	or	$r13,$r13,$r14
1c0016f0:	2980018d 	st.w	$r13,$r12,0
1c0016f4:	50012800 	b	296(0x128) # 1c00181c <gpio_pin_remap+0x200>
1c0016f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016fc:	0380518c 	ori	$r12,$r12,0x14
1c001700:	2880018d 	ld.w	$r13,$r12,0
1c001704:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001708:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00170c:	001731cc 	sll.w	$r12,$r14,$r12
1c001710:	0014300c 	nor	$r12,$r0,$r12
1c001714:	0015018e 	move	$r14,$r12
1c001718:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00171c:	0380518c 	ori	$r12,$r12,0x14
1c001720:	0014b9ad 	and	$r13,$r13,$r14
1c001724:	2980018d 	st.w	$r13,$r12,0
1c001728:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00172c:	0380518c 	ori	$r12,$r12,0x14
1c001730:	2880018d 	ld.w	$r13,$r12,0
1c001734:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001738:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00173c:	001731cc 	sll.w	$r12,$r14,$r12
1c001740:	0015018e 	move	$r14,$r12
1c001744:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001748:	0380518c 	ori	$r12,$r12,0x14
1c00174c:	001539ad 	or	$r13,$r13,$r14
1c001750:	2980018d 	st.w	$r13,$r12,0
1c001754:	5000c800 	b	200(0xc8) # 1c00181c <gpio_pin_remap+0x200>
1c001758:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00175c:	0380618c 	ori	$r12,$r12,0x18
1c001760:	2880018d 	ld.w	$r13,$r12,0
1c001764:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001768:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00176c:	001731cc 	sll.w	$r12,$r14,$r12
1c001770:	0014300c 	nor	$r12,$r0,$r12
1c001774:	0015018e 	move	$r14,$r12
1c001778:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00177c:	0380618c 	ori	$r12,$r12,0x18
1c001780:	0014b9ad 	and	$r13,$r13,$r14
1c001784:	2980018d 	st.w	$r13,$r12,0
1c001788:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00178c:	0380618c 	ori	$r12,$r12,0x18
1c001790:	2880018d 	ld.w	$r13,$r12,0
1c001794:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001798:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00179c:	001731cc 	sll.w	$r12,$r14,$r12
1c0017a0:	0015018e 	move	$r14,$r12
1c0017a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017a8:	0380618c 	ori	$r12,$r12,0x18
1c0017ac:	001539ad 	or	$r13,$r13,$r14
1c0017b0:	2980018d 	st.w	$r13,$r12,0
1c0017b4:	50006800 	b	104(0x68) # 1c00181c <gpio_pin_remap+0x200>
1c0017b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017bc:	0380718c 	ori	$r12,$r12,0x1c
1c0017c0:	2880018d 	ld.w	$r13,$r12,0
1c0017c4:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017c8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017cc:	001731cc 	sll.w	$r12,$r14,$r12
1c0017d0:	0014300c 	nor	$r12,$r0,$r12
1c0017d4:	0015018e 	move	$r14,$r12
1c0017d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017dc:	0380718c 	ori	$r12,$r12,0x1c
1c0017e0:	0014b9ad 	and	$r13,$r13,$r14
1c0017e4:	2980018d 	st.w	$r13,$r12,0
1c0017e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017ec:	0380718c 	ori	$r12,$r12,0x1c
1c0017f0:	2880018d 	ld.w	$r13,$r12,0
1c0017f4:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017f8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017fc:	001731cc 	sll.w	$r12,$r14,$r12
1c001800:	0015018e 	move	$r14,$r12
1c001804:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001808:	0380718c 	ori	$r12,$r12,0x1c
1c00180c:	001539ad 	or	$r13,$r13,$r14
1c001810:	2980018d 	st.w	$r13,$r12,0
1c001814:	50000800 	b	8(0x8) # 1c00181c <gpio_pin_remap+0x200>
1c001818:	03400000 	andi	$r0,$r0,0x0
1c00181c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001820:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001824:	4c000020 	jirl	$r0,$r1,0

1c001828 <myputchar>:
myputchar():
1c001828:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00182c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001830:	29806076 	st.w	$r22,$r3,24(0x18)
1c001834:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001838:	0015008c 	move	$r12,$r4
1c00183c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001840:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001844:	00150185 	move	$r5,$r12
1c001848:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c00184c:	54102400 	bl	4132(0x1024) # 1c002870 <UART_SendData>
1c001850:	03400000 	andi	$r0,$r0,0x0
1c001854:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c001858:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00185c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001860:	4c000020 	jirl	$r0,$r1,0

1c001864 <myputchar2>:
myputchar2():
1c001864:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001868:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00186c:	29806076 	st.w	$r22,$r3,24(0x18)
1c001870:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001874:	0015008c 	move	$r12,$r4
1c001878:	001500ad 	move	$r13,$r5
1c00187c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001880:	001501ac 	move	$r12,$r13
1c001884:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c001888:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00188c:	44001580 	bnez	$r12,20(0x14) # 1c0018a0 <myputchar2+0x3c>
1c001890:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c001894:	00150184 	move	$r4,$r12
1c001898:	54123c00 	bl	4668(0x123c) # 1c002ad4 <Uart0_send>
1c00189c:	50003800 	b	56(0x38) # 1c0018d4 <myputchar2+0x70>
1c0018a0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0018a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0018a8:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0018bc <myputchar2+0x58>
1c0018ac:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0018b0:	00150184 	move	$r4,$r12
1c0018b4:	54125c00 	bl	4700(0x125c) # 1c002b10 <Uart1_send>
1c0018b8:	50001c00 	b	28(0x1c) # 1c0018d4 <myputchar2+0x70>
1c0018bc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0018c0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0018c4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0018d4 <myputchar2+0x70>
1c0018c8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0018cc:	00150184 	move	$r4,$r12
1c0018d0:	54127c00 	bl	4732(0x127c) # 1c002b4c <Uart2_send>
1c0018d4:	03400000 	andi	$r0,$r0,0x0
1c0018d8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0018dc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0018e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0018e4:	4c000020 	jirl	$r0,$r1,0

1c0018e8 <printbase>:
printbase():
1c0018e8:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0018ec:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0018f0:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0018f4:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0018f8:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0018fc:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001900:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001904:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001908:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c00190c:	40002580 	beqz	$r12,36(0x24) # 1c001930 <printbase+0x48>
1c001910:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001914:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001930 <printbase+0x48>
1c001918:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c00191c:	0011300c 	sub.w	$r12,$r0,$r12
1c001920:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001924:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001928:	57ff03ff 	bl	-256(0xfffff00) # 1c001828 <myputchar>
1c00192c:	50000c00 	b	12(0xc) # 1c001938 <printbase+0x50>
1c001930:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001934:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001938:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00193c:	50005000 	b	80(0x50) # 1c00198c <printbase+0xa4>
1c001940:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001944:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001948:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c00194c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001954 <printbase+0x6c>
1c001950:	002a0007 	break	0x7
1c001954:	00005dcc 	ext.w.b	$r12,$r14
1c001958:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00195c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001960:	001035cd 	add.w	$r13,$r14,$r13
1c001964:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001968:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c00196c:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001970:	002135cc 	div.wu	$r12,$r14,$r13
1c001974:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00197c <printbase+0x94>
1c001978:	002a0007 	break	0x7
1c00197c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001980:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001984:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001988:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00198c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001990:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001940 <printbase+0x58>
1c001994:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001998:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00199c:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c0019a0:	001231ad 	slt	$r13,$r13,$r12
1c0019a4:	0013b5ce 	masknez	$r14,$r14,$r13
1c0019a8:	0013358c 	maskeqz	$r12,$r12,$r13
1c0019ac:	001531cc 	or	$r12,$r14,$r12
1c0019b0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0019b4:	50007400 	b	116(0x74) # 1c001a28 <printbase+0x140>
1c0019b8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0019bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019c0:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0019dc <printbase+0xf4>
1c0019c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0019c8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0019cc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0019d0:	001031ac 	add.w	$r12,$r13,$r12
1c0019d4:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c0019d8:	50000800 	b	8(0x8) # 1c0019e0 <printbase+0xf8>
1c0019dc:	0015000c 	move	$r12,$r0
1c0019e0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0019e4:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0019e8:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0019ec:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001a04 <printbase+0x11c>
1c0019f0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0019f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019f8:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0019fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001a00:	50001400 	b	20(0x14) # 1c001a14 <printbase+0x12c>
1c001a04:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001a08:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001a0c:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001a10:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001a14:	00150184 	move	$r4,$r12
1c001a18:	57fe13ff 	bl	-496(0xffffe10) # 1c001828 <myputchar>
1c001a1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a20:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001a24:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a28:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a2c:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c0019b8 <printbase+0xd0>
1c001a30:	0015000c 	move	$r12,$r0
1c001a34:	00150184 	move	$r4,$r12
1c001a38:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001a3c:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001a40:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001a44:	4c000020 	jirl	$r0,$r1,0

1c001a48 <printbase2>:
printbase2():
1c001a48:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c001a4c:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c001a50:	2981e076 	st.w	$r22,$r3,120(0x78)
1c001a54:	02820076 	addi.w	$r22,$r3,128(0x80)
1c001a58:	0015008c 	move	$r12,$r4
1c001a5c:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001a60:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001a64:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001a68:	29be32c8 	st.w	$r8,$r22,-116(0xf8c)
1c001a6c:	293e7ecc 	st.b	$r12,$r22,-97(0xf9f)
1c001a70:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c001a74:	40002d80 	beqz	$r12,44(0x2c) # 1c001aa0 <printbase2+0x58>
1c001a78:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a7c:	64002580 	bge	$r12,$r0,36(0x24) # 1c001aa0 <printbase2+0x58>
1c001a80:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a84:	0011300c 	sub.w	$r12,$r0,$r12
1c001a88:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a8c:	2a3e7ecc 	ld.bu	$r12,$r22,-97(0xf9f)
1c001a90:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c001a94:	00150184 	move	$r4,$r12
1c001a98:	57fdcfff 	bl	-564(0xffffdcc) # 1c001864 <myputchar2>
1c001a9c:	50000c00 	b	12(0xc) # 1c001aa8 <printbase2+0x60>
1c001aa0:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001aa4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001aa8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001aac:	50005000 	b	80(0x50) # 1c001afc <printbase2+0xb4>
1c001ab0:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c001ab4:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001ab8:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001abc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001ac4 <printbase2+0x7c>
1c001ac0:	002a0007 	break	0x7
1c001ac4:	00005dcc 	ext.w.b	$r12,$r14
1c001ac8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001acc:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001ad0:	001035cd 	add.w	$r13,$r14,$r13
1c001ad4:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001ad8:	28be42cd 	ld.w	$r13,$r22,-112(0xf90)
1c001adc:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001ae0:	002135cc 	div.wu	$r12,$r14,$r13
1c001ae4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001aec <printbase2+0xa4>
1c001ae8:	002a0007 	break	0x7
1c001aec:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001af0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001af4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001af8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001afc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001b00:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001ab0 <printbase2+0x68>
1c001b04:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001b08:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001b0c:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001b10:	001231ad 	slt	$r13,$r13,$r12
1c001b14:	0013b5ce 	masknez	$r14,$r14,$r13
1c001b18:	0013358c 	maskeqz	$r12,$r12,$r13
1c001b1c:	001531cc 	or	$r12,$r14,$r12
1c001b20:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b24:	50007c00 	b	124(0x7c) # 1c001ba0 <printbase2+0x158>
1c001b28:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001b2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b30:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001b4c <printbase2+0x104>
1c001b34:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b38:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b3c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001b40:	001031ac 	add.w	$r12,$r13,$r12
1c001b44:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001b48:	50000800 	b	8(0x8) # 1c001b50 <printbase2+0x108>
1c001b4c:	0015000c 	move	$r12,$r0
1c001b50:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001b54:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001b58:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001b5c:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001b74 <printbase2+0x12c>
1c001b60:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001b64:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b68:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001b6c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b70:	50001400 	b	20(0x14) # 1c001b84 <printbase2+0x13c>
1c001b74:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001b78:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b7c:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001b80:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b84:	2a3e7ecd 	ld.bu	$r13,$r22,-97(0xf9f)
1c001b88:	00150185 	move	$r5,$r12
1c001b8c:	001501a4 	move	$r4,$r13
1c001b90:	57fcd7ff 	bl	-812(0xffffcd4) # 1c001864 <myputchar2>
1c001b94:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b98:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b9c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ba0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ba4:	63ff840c 	blt	$r0,$r12,-124(0x3ff84) # 1c001b28 <printbase2+0xe0>
1c001ba8:	0015000c 	move	$r12,$r0
1c001bac:	00150184 	move	$r4,$r12
1c001bb0:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c001bb4:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c001bb8:	02820063 	addi.w	$r3,$r3,128(0x80)
1c001bbc:	4c000020 	jirl	$r0,$r1,0

1c001bc0 <puts>:
puts():
1c001bc0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001bc4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001bc8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001bcc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001bd0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001bd4:	50003000 	b	48(0x30) # 1c001c04 <puts+0x44>
1c001bd8:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001bdc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001be0:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001bec <puts+0x2c>
1c001be4:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001be8:	57fc43ff 	bl	-960(0xffffc40) # 1c001828 <myputchar>
1c001bec:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001bf0:	00150184 	move	$r4,$r12
1c001bf4:	57fc37ff 	bl	-972(0xffffc34) # 1c001828 <myputchar>
1c001bf8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bfc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c00:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001c04:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001c08:	2a00018c 	ld.bu	$r12,$r12,0
1c001c0c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001c10:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001c14:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001bd8 <puts+0x18>
1c001c18:	0015000c 	move	$r12,$r0
1c001c1c:	00150184 	move	$r4,$r12
1c001c20:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001c24:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001c28:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001c2c:	4c000020 	jirl	$r0,$r1,0

1c001c30 <puts2>:
puts2():
1c001c30:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001c34:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001c38:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001c3c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001c40:	0015008c 	move	$r12,$r4
1c001c44:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001c48:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001c4c:	50004000 	b	64(0x40) # 1c001c8c <puts2+0x5c>
1c001c50:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001c54:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001c58:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c001c6c <puts2+0x3c>
1c001c5c:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001c60:	02803405 	addi.w	$r5,$r0,13(0xd)
1c001c64:	00150184 	move	$r4,$r12
1c001c68:	57fbffff 	bl	-1028(0xffffbfc) # 1c001864 <myputchar2>
1c001c6c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001c70:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001c74:	001501a5 	move	$r5,$r13
1c001c78:	00150184 	move	$r4,$r12
1c001c7c:	57fbebff 	bl	-1048(0xffffbe8) # 1c001864 <myputchar2>
1c001c80:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001c84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c88:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c001c8c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001c90:	2a00018c 	ld.bu	$r12,$r12,0
1c001c94:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001c98:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001c9c:	47ffb59f 	bnez	$r12,-76(0x7fffb4) # 1c001c50 <puts2+0x20>
1c001ca0:	0015000c 	move	$r12,$r0
1c001ca4:	00150184 	move	$r4,$r12
1c001ca8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001cac:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001cb0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001cb4:	4c000020 	jirl	$r0,$r1,0

1c001cb8 <myprintf>:
myprintf():
1c001cb8:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001cbc:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001cc0:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001cc4:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001cc8:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001ccc:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001cd0:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001cd4:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001cd8:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001cdc:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001ce0:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001ce4:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001ce8:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001cec:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001cf0:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001cf4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001cf8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cfc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001d00:	50033000 	b	816(0x330) # 1c002030 <myprintf+0x378>
1c001d04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d08:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d0c:	001031ac 	add.w	$r12,$r13,$r12
1c001d10:	2a00018c 	ld.bu	$r12,$r12,0
1c001d14:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001d18:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001d1c:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001d20:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c002004 <myprintf+0x34c>
1c001d24:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001d28:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001d2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d30:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d34:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d38:	001031ac 	add.w	$r12,$r13,$r12
1c001d3c:	2800018c 	ld.b	$r12,$r12,0
1c001d40:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001d44:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001d48:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001ff4 <myprintf+0x33c>
1c001d4c:	0040898d 	slli.w	$r13,$r12,0x2
1c001d50:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c001d54:	028f118c 	addi.w	$r12,$r12,964(0x3c4)
1c001d58:	001031ac 	add.w	$r12,$r13,$r12
1c001d5c:	2880018c 	ld.w	$r12,$r12,0
1c001d60:	4c000180 	jirl	$r0,$r12,0
1c001d64:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d68:	2880018c 	ld.w	$r12,$r12,0
1c001d6c:	00150184 	move	$r4,$r12
1c001d70:	57fe53ff 	bl	-432(0xffffe50) # 1c001bc0 <puts>
1c001d74:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d78:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d7c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d88:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d8c:	50029800 	b	664(0x298) # 1c002024 <myprintf+0x36c>
1c001d90:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d94:	2880018c 	ld.w	$r12,$r12,0
1c001d98:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001d9c:	00150184 	move	$r4,$r12
1c001da0:	57fa8bff 	bl	-1400(0xffffa88) # 1c001828 <myputchar>
1c001da4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001da8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001dac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001db0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001db4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001db8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dbc:	50026800 	b	616(0x268) # 1c002024 <myprintf+0x36c>
1c001dc0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dc4:	2880018c 	ld.w	$r12,$r12,0
1c001dc8:	00150007 	move	$r7,$r0
1c001dcc:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001dd0:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001dd4:	00150184 	move	$r4,$r12
1c001dd8:	57fb13ff 	bl	-1264(0xffffb10) # 1c0018e8 <printbase>
1c001ddc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001de0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001de4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001de8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001df0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001df4:	50023000 	b	560(0x230) # 1c002024 <myprintf+0x36c>
1c001df8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dfc:	2880018c 	ld.w	$r12,$r12,0
1c001e00:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001e04:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001e08:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e0c:	00150184 	move	$r4,$r12
1c001e10:	57fadbff 	bl	-1320(0xffffad8) # 1c0018e8 <printbase>
1c001e14:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e18:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e1c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e28:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e2c:	5001f800 	b	504(0x1f8) # 1c002024 <myprintf+0x36c>
1c001e30:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e34:	2880018c 	ld.w	$r12,$r12,0
1c001e38:	00150007 	move	$r7,$r0
1c001e3c:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001e40:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e44:	00150184 	move	$r4,$r12
1c001e48:	57faa3ff 	bl	-1376(0xffffaa0) # 1c0018e8 <printbase>
1c001e4c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e50:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e54:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e5c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e64:	5001c000 	b	448(0x1c0) # 1c002024 <myprintf+0x36c>
1c001e68:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e6c:	2880018c 	ld.w	$r12,$r12,0
1c001e70:	00150007 	move	$r7,$r0
1c001e74:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001e78:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e7c:	00150184 	move	$r4,$r12
1c001e80:	57fa6bff 	bl	-1432(0xffffa68) # 1c0018e8 <printbase>
1c001e84:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e88:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e8c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e94:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e98:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e9c:	50018800 	b	392(0x188) # 1c002024 <myprintf+0x36c>
1c001ea0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ea4:	2880018c 	ld.w	$r12,$r12,0
1c001ea8:	00150007 	move	$r7,$r0
1c001eac:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001eb0:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001eb4:	00150184 	move	$r4,$r12
1c001eb8:	57fa33ff 	bl	-1488(0xffffa30) # 1c0018e8 <printbase>
1c001ebc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ec0:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001ec4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ec8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ecc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ed0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ed4:	50015000 	b	336(0x150) # 1c002024 <myprintf+0x36c>
1c001ed8:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001edc:	57f94fff 	bl	-1716(0xffff94c) # 1c001828 <myputchar>
1c001ee0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ee4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ee8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001eec:	50013800 	b	312(0x138) # 1c002024 <myprintf+0x36c>
1c001ef0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ef4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ef8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001efc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001f00:	50003c00 	b	60(0x3c) # 1c001f3c <myprintf+0x284>
1c001f04:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001f08:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001f0c:	001c31ad 	mul.w	$r13,$r13,$r12
1c001f10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f14:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f18:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001f1c:	001031cc 	add.w	$r12,$r14,$r12
1c001f20:	2800018c 	ld.b	$r12,$r12,0
1c001f24:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001f28:	001031ac 	add.w	$r12,$r13,$r12
1c001f2c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001f30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f34:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f38:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f44:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f48:	001031ac 	add.w	$r12,$r13,$r12
1c001f4c:	2800018d 	ld.b	$r13,$r12,0
1c001f50:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001f54:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001d2c <myprintf+0x74>
1c001f58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f5c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f60:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f64:	001031ac 	add.w	$r12,$r13,$r12
1c001f68:	2800018d 	ld.b	$r13,$r12,0
1c001f6c:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001f70:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001f04 <myprintf+0x24c>
1c001f74:	53fdbbff 	b	-584(0xffffdb8) # 1c001d2c <myprintf+0x74>
1c001f78:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001f7c:	50003c00 	b	60(0x3c) # 1c001fb8 <myprintf+0x300>
1c001f80:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001f84:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001f88:	001c31ad 	mul.w	$r13,$r13,$r12
1c001f8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f94:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001f98:	001031cc 	add.w	$r12,$r14,$r12
1c001f9c:	2800018c 	ld.b	$r12,$r12,0
1c001fa0:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001fa4:	001031ac 	add.w	$r12,$r13,$r12
1c001fa8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001fac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fb0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fb4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fbc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fc0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001fc4:	001031ac 	add.w	$r12,$r13,$r12
1c001fc8:	2800018d 	ld.b	$r13,$r12,0
1c001fcc:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001fd0:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001d2c <myprintf+0x74>
1c001fd4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fd8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fdc:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001fe0:	001031ac 	add.w	$r12,$r13,$r12
1c001fe4:	2800018d 	ld.b	$r13,$r12,0
1c001fe8:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001fec:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001f80 <myprintf+0x2c8>
1c001ff0:	53fd3fff 	b	-708(0xffffd3c) # 1c001d2c <myprintf+0x74>
1c001ff4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001ff8:	57f833ff 	bl	-2000(0xffff830) # 1c001828 <myputchar>
1c001ffc:	03400000 	andi	$r0,$r0,0x0
1c002000:	50002400 	b	36(0x24) # 1c002024 <myprintf+0x36c>
1c002004:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c002008:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00200c:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c002018 <myprintf+0x360>
1c002010:	02803404 	addi.w	$r4,$r0,13(0xd)
1c002014:	57f817ff 	bl	-2028(0xffff814) # 1c001828 <myputchar>
1c002018:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c00201c:	00150184 	move	$r4,$r12
1c002020:	57f80bff 	bl	-2040(0xffff808) # 1c001828 <myputchar>
1c002024:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002028:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00202c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002030:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002034:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c002038:	001031ac 	add.w	$r12,$r13,$r12
1c00203c:	2800018c 	ld.b	$r12,$r12,0
1c002040:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001d04 <myprintf+0x4c>
1c002044:	0015000c 	move	$r12,$r0
1c002048:	00150184 	move	$r4,$r12
1c00204c:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c002050:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c002054:	02818063 	addi.w	$r3,$r3,96(0x60)
1c002058:	4c000020 	jirl	$r0,$r1,0

1c00205c <myprintf2>:
myprintf2():
1c00205c:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c002060:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c002064:	2980e076 	st.w	$r22,$r3,56(0x38)
1c002068:	02810076 	addi.w	$r22,$r3,64(0x40)
1c00206c:	0015008c 	move	$r12,$r4
1c002070:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c002074:	298022c6 	st.w	$r6,$r22,8(0x8)
1c002078:	298032c7 	st.w	$r7,$r22,12(0xc)
1c00207c:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002080:	298052c9 	st.w	$r9,$r22,20(0x14)
1c002084:	298062ca 	st.w	$r10,$r22,24(0x18)
1c002088:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c00208c:	293f3ecc 	st.b	$r12,$r22,-49(0xfcf)
1c002090:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c002094:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c002098:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c00209c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0020a0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0020a4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0020a8:	50039c00 	b	924(0x39c) # 1c002444 <myprintf2+0x3e8>
1c0020ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020b0:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0020b4:	001031ac 	add.w	$r12,$r13,$r12
1c0020b8:	2a00018c 	ld.bu	$r12,$r12,0
1c0020bc:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0020c0:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c0020c4:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c0020c8:	5c0341ac 	bne	$r13,$r12,832(0x340) # 1c002408 <myprintf2+0x3ac>
1c0020cc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0020d0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0020d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0020dc:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0020e0:	001031ac 	add.w	$r12,$r13,$r12
1c0020e4:	2800018c 	ld.b	$r12,$r12,0
1c0020e8:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0020ec:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0020f0:	680301ac 	bltu	$r13,$r12,768(0x300) # 1c0023f0 <myprintf2+0x394>
1c0020f4:	0040898d 	slli.w	$r13,$r12,0x2
1c0020f8:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c0020fc:	0285b18c 	addi.w	$r12,$r12,364(0x16c)
1c002100:	001031ac 	add.w	$r12,$r13,$r12
1c002104:	2880018c 	ld.w	$r12,$r12,0
1c002108:	4c000180 	jirl	$r0,$r12,0
1c00210c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002110:	2880018d 	ld.w	$r13,$r12,0
1c002114:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002118:	001501a5 	move	$r5,$r13
1c00211c:	00150184 	move	$r4,$r12
1c002120:	57fb13ff 	bl	-1264(0xffffb10) # 1c001c30 <puts2>
1c002124:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002128:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00212c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002130:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002134:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002138:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00213c:	5002fc00 	b	764(0x2fc) # 1c002438 <myprintf2+0x3dc>
1c002140:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002144:	2880018c 	ld.w	$r12,$r12,0
1c002148:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00214c:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002150:	001501a5 	move	$r5,$r13
1c002154:	00150184 	move	$r4,$r12
1c002158:	57f70fff 	bl	-2292(0xffff70c) # 1c001864 <myputchar2>
1c00215c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002160:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002164:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002168:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00216c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002170:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002174:	5002c400 	b	708(0x2c4) # 1c002438 <myprintf2+0x3dc>
1c002178:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00217c:	2880018c 	ld.w	$r12,$r12,0
1c002180:	0015018d 	move	$r13,$r12
1c002184:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002188:	00150008 	move	$r8,$r0
1c00218c:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002190:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c002194:	001501a5 	move	$r5,$r13
1c002198:	00150184 	move	$r4,$r12
1c00219c:	57f8afff 	bl	-1876(0xffff8ac) # 1c001a48 <printbase2>
1c0021a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021a4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0021a8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0021b8:	50028000 	b	640(0x280) # 1c002438 <myprintf2+0x3dc>
1c0021bc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021c0:	2880018c 	ld.w	$r12,$r12,0
1c0021c4:	0015018d 	move	$r13,$r12
1c0021c8:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0021cc:	02800408 	addi.w	$r8,$r0,1(0x1)
1c0021d0:	02802807 	addi.w	$r7,$r0,10(0xa)
1c0021d4:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c0021d8:	001501a5 	move	$r5,$r13
1c0021dc:	00150184 	move	$r4,$r12
1c0021e0:	57f86bff 	bl	-1944(0xffff868) # 1c001a48 <printbase2>
1c0021e4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021e8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0021ec:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021f8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0021fc:	50023c00 	b	572(0x23c) # 1c002438 <myprintf2+0x3dc>
1c002200:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002204:	2880018c 	ld.w	$r12,$r12,0
1c002208:	0015018d 	move	$r13,$r12
1c00220c:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002210:	00150008 	move	$r8,$r0
1c002214:	02802007 	addi.w	$r7,$r0,8(0x8)
1c002218:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c00221c:	001501a5 	move	$r5,$r13
1c002220:	00150184 	move	$r4,$r12
1c002224:	57f827ff 	bl	-2012(0xffff824) # 1c001a48 <printbase2>
1c002228:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00222c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002230:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002234:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002238:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00223c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002240:	5001f800 	b	504(0x1f8) # 1c002438 <myprintf2+0x3dc>
1c002244:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002248:	2880018c 	ld.w	$r12,$r12,0
1c00224c:	0015018d 	move	$r13,$r12
1c002250:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002254:	00150008 	move	$r8,$r0
1c002258:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00225c:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c002260:	001501a5 	move	$r5,$r13
1c002264:	00150184 	move	$r4,$r12
1c002268:	57f7e3ff 	bl	-2080(0xffff7e0) # 1c001a48 <printbase2>
1c00226c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002270:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002274:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002278:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00227c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002280:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002284:	5001b400 	b	436(0x1b4) # 1c002438 <myprintf2+0x3dc>
1c002288:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00228c:	2880018c 	ld.w	$r12,$r12,0
1c002290:	0015018d 	move	$r13,$r12
1c002294:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002298:	00150008 	move	$r8,$r0
1c00229c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0022a0:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c0022a4:	001501a5 	move	$r5,$r13
1c0022a8:	00150184 	move	$r4,$r12
1c0022ac:	57f79fff 	bl	-2148(0xffff79c) # 1c001a48 <printbase2>
1c0022b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0022b4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0022b8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0022bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022c8:	50017000 	b	368(0x170) # 1c002438 <myprintf2+0x3dc>
1c0022cc:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0022d0:	02809405 	addi.w	$r5,$r0,37(0x25)
1c0022d4:	00150184 	move	$r4,$r12
1c0022d8:	57f58fff 	bl	-2676(0xffff58c) # 1c001864 <myputchar2>
1c0022dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022e0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022e8:	50015000 	b	336(0x150) # 1c002438 <myprintf2+0x3dc>
1c0022ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022f8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0022fc:	50003c00 	b	60(0x3c) # 1c002338 <myprintf2+0x2dc>
1c002300:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002304:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002308:	001c31ad 	mul.w	$r13,$r13,$r12
1c00230c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002310:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002314:	28bf22ce 	ld.w	$r14,$r22,-56(0xfc8)
1c002318:	001031cc 	add.w	$r12,$r14,$r12
1c00231c:	2800018c 	ld.b	$r12,$r12,0
1c002320:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c002324:	001031ac 	add.w	$r12,$r13,$r12
1c002328:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00232c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002330:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002334:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002338:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00233c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002340:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002344:	001031ac 	add.w	$r12,$r13,$r12
1c002348:	2800018d 	ld.b	$r13,$r12,0
1c00234c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002350:	67fd858d 	bge	$r12,$r13,-636(0x3fd84) # 1c0020d4 <myprintf2+0x78>
1c002354:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002358:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00235c:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002360:	001031ac 	add.w	$r12,$r13,$r12
1c002364:	2800018d 	ld.b	$r13,$r12,0
1c002368:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c00236c:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c002300 <myprintf2+0x2a4>
1c002370:	53fd67ff 	b	-668(0xffffd64) # 1c0020d4 <myprintf2+0x78>
1c002374:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002378:	50003c00 	b	60(0x3c) # 1c0023b4 <myprintf2+0x358>
1c00237c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002380:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002384:	001c31ad 	mul.w	$r13,$r13,$r12
1c002388:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00238c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002390:	28bf22ce 	ld.w	$r14,$r22,-56(0xfc8)
1c002394:	001031cc 	add.w	$r12,$r14,$r12
1c002398:	2800018c 	ld.b	$r12,$r12,0
1c00239c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0023a0:	001031ac 	add.w	$r12,$r13,$r12
1c0023a4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0023a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023bc:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0023c0:	001031ac 	add.w	$r12,$r13,$r12
1c0023c4:	2800018d 	ld.b	$r13,$r12,0
1c0023c8:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0023cc:	67fd098d 	bge	$r12,$r13,-760(0x3fd08) # 1c0020d4 <myprintf2+0x78>
1c0023d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023d8:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0023dc:	001031ac 	add.w	$r12,$r13,$r12
1c0023e0:	2800018d 	ld.b	$r13,$r12,0
1c0023e4:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c0023e8:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c00237c <myprintf2+0x320>
1c0023ec:	53fcebff 	b	-792(0xffffce8) # 1c0020d4 <myprintf2+0x78>
1c0023f0:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0023f4:	02809405 	addi.w	$r5,$r0,37(0x25)
1c0023f8:	00150184 	move	$r4,$r12
1c0023fc:	57f46bff 	bl	-2968(0xffff468) # 1c001864 <myputchar2>
1c002400:	03400000 	andi	$r0,$r0,0x0
1c002404:	50003400 	b	52(0x34) # 1c002438 <myprintf2+0x3dc>
1c002408:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c00240c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002410:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c002424 <myprintf2+0x3c8>
1c002414:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002418:	02803405 	addi.w	$r5,$r0,13(0xd)
1c00241c:	00150184 	move	$r4,$r12
1c002420:	57f447ff 	bl	-3004(0xffff444) # 1c001864 <myputchar2>
1c002424:	2a3f8ecd 	ld.bu	$r13,$r22,-29(0xfe3)
1c002428:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c00242c:	001501a5 	move	$r5,$r13
1c002430:	00150184 	move	$r4,$r12
1c002434:	57f433ff 	bl	-3024(0xffff430) # 1c001864 <myputchar2>
1c002438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00243c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002440:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002448:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c00244c:	001031ac 	add.w	$r12,$r13,$r12
1c002450:	2800018c 	ld.b	$r12,$r12,0
1c002454:	47fc599f 	bnez	$r12,-936(0x7ffc58) # 1c0020ac <myprintf2+0x50>
1c002458:	0015000c 	move	$r12,$r0
1c00245c:	00150184 	move	$r4,$r12
1c002460:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c002464:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c002468:	02818063 	addi.w	$r3,$r3,96(0x60)
1c00246c:	4c000020 	jirl	$r0,$r1,0

1c002470 <UART_Init>:
UART_Init():
1c002470:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002474:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002478:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00247c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002480:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002484:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002488:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00248c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002490:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c002494:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002498:	03403d8c 	andi	$r12,$r12,0xf
1c00249c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024a0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024a4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0024a8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024ac:	0044918c 	srli.w	$r12,$r12,0x4
1c0024b0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0024b4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0024b8:	40000d80 	beqz	$r12,12(0xc) # 1c0024c4 <UART_Init+0x54>
1c0024bc:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0024c0:	44001980 	bnez	$r12,24(0x18) # 1c0024d8 <UART_Init+0x68>
1c0024c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024c8:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c0024cc:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0024d0:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0024d4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024d8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0024dc:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0024e0:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0024f8 <UART_Init+0x88>
1c0024e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024e8:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c0024ec:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0024f0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0024f4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024fc:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c002500:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002504:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002508:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00250c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00251c <UART_Init+0xac>
1c002510:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002514:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002518:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c002578 <UART_Init+0x108>
1c00251c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002520:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002524:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002528:	2880018c 	ld.w	$r12,$r12,0
1c00252c:	002131ae 	div.wu	$r14,$r13,$r12
1c002530:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002538 <UART_Init+0xc8>
1c002534:	002a0007 	break	0x7
1c002538:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00253c:	002135cc 	div.wu	$r12,$r14,$r13
1c002540:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002548 <UART_Init+0xd8>
1c002544:	002a0007 	break	0x7
1c002548:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00254c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002550:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002554:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002558:	2880018e 	ld.w	$r14,$r12,0
1c00255c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002560:	001c31ce 	mul.w	$r14,$r14,$r12
1c002564:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002568:	001c31cc 	mul.w	$r12,$r14,$r12
1c00256c:	001131ac 	sub.w	$r12,$r13,$r12
1c002570:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002574:	50005400 	b	84(0x54) # 1c0025c8 <UART_Init+0x158>
1c002578:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00257c:	2880018c 	ld.w	$r12,$r12,0
1c002580:	1400010d 	lu12i.w	$r13,8(0x8)
1c002584:	002131ae 	div.wu	$r14,$r13,$r12
1c002588:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002590 <UART_Init+0x120>
1c00258c:	002a0007 	break	0x7
1c002590:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002594:	002135cc 	div.wu	$r12,$r14,$r13
1c002598:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0025a0 <UART_Init+0x130>
1c00259c:	002a0007 	break	0x7
1c0025a0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0025a4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0025a8:	2880018d 	ld.w	$r13,$r12,0
1c0025ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025b0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0025b4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025b8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0025bc:	1400010d 	lu12i.w	$r13,8(0x8)
1c0025c0:	001131ac 	sub.w	$r12,$r13,$r12
1c0025c4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0025c8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0025cc:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0025d0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0025d4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0025d8:	2880018c 	ld.w	$r12,$r12,0
1c0025dc:	002131ae 	div.wu	$r14,$r13,$r12
1c0025e0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0025e8 <UART_Init+0x178>
1c0025e4:	002a0007 	break	0x7
1c0025e8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0025ec:	002135cc 	div.wu	$r12,$r14,$r13
1c0025f0:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0025f8 <UART_Init+0x188>
1c0025f4:	002a0007 	break	0x7
1c0025f8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0025fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002600:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002604:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002608:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c00260c:	001531ac 	or	$r12,$r13,$r12
1c002610:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002614:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002618:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00261c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002620:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002624:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002628:	2900018d 	st.b	$r13,$r12,0
1c00262c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002630:	0044a18c 	srli.w	$r12,$r12,0x8
1c002634:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002638:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00263c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002640:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002644:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002648:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00264c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002650:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002654:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002658:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00265c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002660:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002664:	0341fd8c 	andi	$r12,$r12,0x7f
1c002668:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00266c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002670:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002674:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002678:	29000580 	st.b	$r0,$r12,1(0x1)
1c00267c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002680:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002684:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002688:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00268c:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c002690:	001531ac 	or	$r12,$r13,$r12
1c002694:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002698:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00269c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0026a0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026a4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026a8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026ac:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026b0:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c0026b4:	001531ac 	or	$r12,$r13,$r12
1c0026b8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026bc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026c0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0026c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026c8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026cc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026d0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026d4:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c0026d8:	001531ac 	or	$r12,$r13,$r12
1c0026dc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026e4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0026e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026ec:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026f0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026f4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026f8:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c0026fc:	001531ac 	or	$r12,$r13,$r12
1c002700:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002704:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002708:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00270c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002710:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002714:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002718:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00271c:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c002720:	001531ac 	or	$r12,$r13,$r12
1c002724:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002728:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00272c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002730:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002734:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002738:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00273c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002740:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c002744:	001531ac 	or	$r12,$r13,$r12
1c002748:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00274c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002750:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002754:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002758:	2a00018c 	ld.bu	$r12,$r12,0
1c00275c:	03400000 	andi	$r0,$r0,0x0
1c002760:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002764:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002768:	4c000020 	jirl	$r0,$r1,0

1c00276c <UART_StructInit>:
UART_StructInit():
1c00276c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002770:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002774:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002778:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00277c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002780:	1400038d 	lu12i.w	$r13,28(0x1c)
1c002784:	038801ad 	ori	$r13,$r13,0x200
1c002788:	2980018d 	st.w	$r13,$r12,0
1c00278c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002790:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002794:	038801ad 	ori	$r13,$r13,0x200
1c002798:	2980118d 	st.w	$r13,$r12,4(0x4)
1c00279c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027a0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0027a4:	2900298d 	st.b	$r13,$r12,10(0xa)
1c0027a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027ac:	29002d80 	st.b	$r0,$r12,11(0xb)
1c0027b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027b4:	29003580 	st.b	$r0,$r12,13(0xd)
1c0027b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027bc:	29003180 	st.b	$r0,$r12,12(0xc)
1c0027c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027c4:	29003d80 	st.b	$r0,$r12,15(0xf)
1c0027c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027cc:	29003980 	st.b	$r0,$r12,14(0xe)
1c0027d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027d4:	29402180 	st.h	$r0,$r12,8(0x8)
1c0027d8:	03400000 	andi	$r0,$r0,0x0
1c0027dc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0027e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0027e4:	4c000020 	jirl	$r0,$r1,0

1c0027e8 <UART_ITConfig>:
UART_ITConfig():
1c0027e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0027ec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0027f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0027f4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0027f8:	001500ac 	move	$r12,$r5
1c0027fc:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c002800:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002804:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002808:	40002980 	beqz	$r12,40(0x28) # 1c002830 <UART_ITConfig+0x48>
1c00280c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002810:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002814:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002818:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00281c:	001531ac 	or	$r12,$r13,$r12
1c002820:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002824:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002828:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00282c:	50003400 	b	52(0x34) # 1c002860 <UART_ITConfig+0x78>
1c002830:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002834:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002838:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00283c:	00005d8d 	ext.w.b	$r13,$r12
1c002840:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c002844:	0014300c 	nor	$r12,$r0,$r12
1c002848:	00005d8c 	ext.w.b	$r12,$r12
1c00284c:	0014b1ac 	and	$r12,$r13,$r12
1c002850:	00005d8c 	ext.w.b	$r12,$r12
1c002854:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002858:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00285c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002860:	03400000 	andi	$r0,$r0,0x0
1c002864:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002868:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00286c:	4c000020 	jirl	$r0,$r1,0

1c002870 <UART_SendData>:
UART_SendData():
1c002870:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002874:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002878:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00287c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002880:	001500ac 	move	$r12,$r5
1c002884:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002888:	03400000 	andi	$r0,$r0,0x0
1c00288c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002890:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002894:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002898:	0340818c 	andi	$r12,$r12,0x20
1c00289c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c00288c <UART_SendData+0x1c>
1c0028a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028a4:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0028a8:	2900018d 	st.b	$r13,$r12,0
1c0028ac:	03400000 	andi	$r0,$r0,0x0
1c0028b0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0028b4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0028b8:	4c000020 	jirl	$r0,$r1,0

1c0028bc <UART_ReceiveData>:
UART_ReceiveData():
1c0028bc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0028c0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0028c4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0028c8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0028cc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0028d0:	03400000 	andi	$r0,$r0,0x0
1c0028d4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028d8:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0028dc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0028e0:	0340058c 	andi	$r12,$r12,0x1
1c0028e4:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0028d4 <UART_ReceiveData+0x18>
1c0028e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028ec:	2a00018c 	ld.bu	$r12,$r12,0
1c0028f0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0028f4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0028f8:	00150184 	move	$r4,$r12
1c0028fc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002900:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002904:	4c000020 	jirl	$r0,$r1,0

1c002908 <Uart0_init>:
Uart0_init():
1c002908:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00290c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002910:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002914:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002918:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00291c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002920:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002924:	57ecfbff 	bl	-4872(0xfffecf8) # 1c00161c <gpio_pin_remap>
1c002928:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00292c:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002930:	57ecefff 	bl	-4884(0xfffecec) # 1c00161c <gpio_pin_remap>
1c002934:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002938:	00150184 	move	$r4,$r12
1c00293c:	57fe33ff 	bl	-464(0xffffe30) # 1c00276c <UART_StructInit>
1c002940:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002944:	289b918c 	ld.w	$r12,$r12,1764(0x6e4)
1c002948:	2880018c 	ld.w	$r12,$r12,0
1c00294c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002950:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002954:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002958:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c00295c:	00150185 	move	$r5,$r12
1c002960:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002964:	57fb0fff 	bl	-1268(0xffffb0c) # 1c002470 <UART_Init>
1c002968:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00296c:	0380098c 	ori	$r12,$r12,0x2
1c002970:	2a00018c 	ld.bu	$r12,$r12,0
1c002974:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002978:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00297c:	0380098c 	ori	$r12,$r12,0x2
1c002980:	038021ad 	ori	$r13,$r13,0x8
1c002984:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002988:	2900018d 	st.b	$r13,$r12,0
1c00298c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002990:	2a00018c 	ld.bu	$r12,$r12,0
1c002994:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002998:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00299c:	038021ad 	ori	$r13,$r13,0x8
1c0029a0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0029a4:	2900018d 	st.b	$r13,$r12,0
1c0029a8:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0029ac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0029b0:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0029b4:	57fe37ff 	bl	-460(0xffffe34) # 1c0027e8 <UART_ITConfig>
1c0029b8:	03400000 	andi	$r0,$r0,0x0
1c0029bc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0029c0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0029c4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0029c8:	4c000020 	jirl	$r0,$r1,0

1c0029cc <Uart1_init>:
Uart1_init():
1c0029cc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0029d0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0029d4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0029d8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0029dc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0029e0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0029e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0029e8:	57ec37ff 	bl	-5068(0xfffec34) # 1c00161c <gpio_pin_remap>
1c0029ec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0029f0:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0029f4:	57ec2bff 	bl	-5080(0xfffec28) # 1c00161c <gpio_pin_remap>
1c0029f8:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c0029fc:	00150184 	move	$r4,$r12
1c002a00:	57fd6fff 	bl	-660(0xffffd6c) # 1c00276c <UART_StructInit>
1c002a04:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002a08:	2898818c 	ld.w	$r12,$r12,1568(0x620)
1c002a0c:	2880018c 	ld.w	$r12,$r12,0
1c002a10:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002a14:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a18:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002a1c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002a20:	00150185 	move	$r5,$r12
1c002a24:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a28:	57fa4bff 	bl	-1464(0xffffa48) # 1c002470 <UART_Init>
1c002a2c:	00150006 	move	$r6,$r0
1c002a30:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a34:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a38:	57fdb3ff 	bl	-592(0xffffdb0) # 1c0027e8 <UART_ITConfig>
1c002a3c:	03400000 	andi	$r0,$r0,0x0
1c002a40:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002a44:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002a48:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a4c:	4c000020 	jirl	$r0,$r1,0

1c002a50 <Uart2_init>:
Uart2_init():
1c002a50:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a54:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002a58:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002a5c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a60:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002a64:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002a68:	02809804 	addi.w	$r4,$r0,38(0x26)
1c002a6c:	57ebb3ff 	bl	-5200(0xfffebb0) # 1c00161c <gpio_pin_remap>
1c002a70:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002a74:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c002a78:	57eba7ff 	bl	-5212(0xfffeba4) # 1c00161c <gpio_pin_remap>
1c002a7c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002a80:	00150184 	move	$r4,$r12
1c002a84:	57fcebff 	bl	-792(0xffffce8) # 1c00276c <UART_StructInit>
1c002a88:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002a8c:	2896718c 	ld.w	$r12,$r12,1436(0x59c)
1c002a90:	2880018c 	ld.w	$r12,$r12,0
1c002a94:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002a98:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a9c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002aa0:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002aa4:	00150185 	move	$r5,$r12
1c002aa8:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c002aac:	57f9c7ff 	bl	-1596(0xffff9c4) # 1c002470 <UART_Init>
1c002ab0:	00150006 	move	$r6,$r0
1c002ab4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002ab8:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c002abc:	57fd2fff 	bl	-724(0xffffd2c) # 1c0027e8 <UART_ITConfig>
1c002ac0:	03400000 	andi	$r0,$r0,0x0
1c002ac4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002ac8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002acc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002ad0:	4c000020 	jirl	$r0,$r1,0

1c002ad4 <Uart0_send>:
Uart0_send():
1c002ad4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002ad8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002adc:	29806076 	st.w	$r22,$r3,24(0x18)
1c002ae0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002ae4:	0015008c 	move	$r12,$r4
1c002ae8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002aec:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002af0:	00150185 	move	$r5,$r12
1c002af4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002af8:	57fd7bff 	bl	-648(0xffffd78) # 1c002870 <UART_SendData>
1c002afc:	03400000 	andi	$r0,$r0,0x0
1c002b00:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002b04:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002b08:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002b0c:	4c000020 	jirl	$r0,$r1,0

1c002b10 <Uart1_send>:
Uart1_send():
1c002b10:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b14:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002b18:	29806076 	st.w	$r22,$r3,24(0x18)
1c002b1c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b20:	0015008c 	move	$r12,$r4
1c002b24:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002b28:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002b2c:	00150185 	move	$r5,$r12
1c002b30:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002b34:	57fd3fff 	bl	-708(0xffffd3c) # 1c002870 <UART_SendData>
1c002b38:	03400000 	andi	$r0,$r0,0x0
1c002b3c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002b40:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002b44:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002b48:	4c000020 	jirl	$r0,$r1,0

1c002b4c <Uart2_send>:
Uart2_send():
1c002b4c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b50:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002b54:	29806076 	st.w	$r22,$r3,24(0x18)
1c002b58:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b5c:	0015008c 	move	$r12,$r4
1c002b60:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002b64:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002b68:	00150185 	move	$r5,$r12
1c002b6c:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c002b70:	57fd03ff 	bl	-768(0xffffd00) # 1c002870 <UART_SendData>
1c002b74:	03400000 	andi	$r0,$r0,0x0
1c002b78:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002b7c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002b80:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002b84:	4c000020 	jirl	$r0,$r1,0

1c002b88 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002b88:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b8c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002b90:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b94:	1400006c 	lu12i.w	$r12,3(0x3)
1c002b98:	03ba018c 	ori	$r12,$r12,0xe80
1c002b9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002ba0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002ba4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ba8:	2880018d 	ld.w	$r13,$r12,0
1c002bac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bb0:	038101ad 	ori	$r13,$r13,0x40
1c002bb4:	2980018d 	st.w	$r13,$r12,0
1c002bb8:	03400000 	andi	$r0,$r0,0x0
1c002bbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002bc0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002bc4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002bc8:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002bbc <CLOCK_WaitForHSEStartUp+0x34>
1c002bcc:	50001c00 	b	28(0x1c) # 1c002be8 <CLOCK_WaitForHSEStartUp+0x60>
1c002bd0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bd4:	2880018e 	ld.w	$r14,$r12,0
1c002bd8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bdc:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002be0:	0014b5cd 	and	$r13,$r14,$r13
1c002be4:	2980018d 	st.w	$r13,$r12,0
1c002be8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bec:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002bf0:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002bd0 <CLOCK_WaitForHSEStartUp+0x48>
1c002bf4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bf8:	2880018d 	ld.w	$r13,$r12,0
1c002bfc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c00:	038201ad 	ori	$r13,$r13,0x80
1c002c04:	2980018d 	st.w	$r13,$r12,0
1c002c08:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c0c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c10:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c14:	00150184 	move	$r4,$r12
1c002c18:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c1c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c20:	4c000020 	jirl	$r0,$r1,0

1c002c24 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002c24:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002c28:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002c2c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c30:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002c34:	50008800 	b	136(0x88) # 1c002cbc <CLOCK_WaitForLSEStartUp+0x98>
1c002c38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c3c:	2880018e 	ld.w	$r14,$r12,0
1c002c40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c44:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002c48:	0014b5cd 	and	$r13,$r14,$r13
1c002c4c:	2980018d 	st.w	$r13,$r12,0
1c002c50:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002c54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c58:	50001400 	b	20(0x14) # 1c002c6c <CLOCK_WaitForLSEStartUp+0x48>
1c002c5c:	03400000 	andi	$r0,$r0,0x0
1c002c60:	03400000 	andi	$r0,$r0,0x0
1c002c64:	03400000 	andi	$r0,$r0,0x0
1c002c68:	03400000 	andi	$r0,$r0,0x0
1c002c6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c70:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c74:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002c78:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c5c <CLOCK_WaitForLSEStartUp+0x38>
1c002c7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c80:	2880018d 	ld.w	$r13,$r12,0
1c002c84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c88:	038081ad 	ori	$r13,$r13,0x20
1c002c8c:	2980018d 	st.w	$r13,$r12,0
1c002c90:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002c94:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c98:	50001400 	b	20(0x14) # 1c002cac <CLOCK_WaitForLSEStartUp+0x88>
1c002c9c:	03400000 	andi	$r0,$r0,0x0
1c002ca0:	03400000 	andi	$r0,$r0,0x0
1c002ca4:	03400000 	andi	$r0,$r0,0x0
1c002ca8:	03400000 	andi	$r0,$r0,0x0
1c002cac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002cb0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002cb4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002cb8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c9c <CLOCK_WaitForLSEStartUp+0x78>
1c002cbc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cc0:	0380118c 	ori	$r12,$r12,0x4
1c002cc4:	2880018d 	ld.w	$r13,$r12,0
1c002cc8:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002ccc:	0014b1ac 	and	$r12,$r13,$r12
1c002cd0:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002c38 <CLOCK_WaitForLSEStartUp+0x14>
1c002cd4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cd8:	0380118c 	ori	$r12,$r12,0x4
1c002cdc:	2880018d 	ld.w	$r13,$r12,0
1c002ce0:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002ce4:	0014b1ac 	and	$r12,$r13,$r12
1c002ce8:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002c38 <CLOCK_WaitForLSEStartUp+0x14>
1c002cec:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002cf0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002cf4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002cf8:	00150184 	move	$r4,$r12
1c002cfc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d00:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d04:	4c000020 	jirl	$r0,$r1,0

1c002d08 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002d08:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d0c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d10:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d14:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d18:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d1c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d20:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d24:	2880018e 	ld.w	$r14,$r12,0
1c002d28:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d2c:	0014300d 	nor	$r13,$r0,$r12
1c002d30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d34:	0014b5cd 	and	$r13,$r14,$r13
1c002d38:	2980018d 	st.w	$r13,$r12,0
1c002d3c:	1400002c 	lu12i.w	$r12,1(0x1)
1c002d40:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002d44:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d48:	50001400 	b	20(0x14) # 1c002d5c <CLOCK_HSEConfig+0x54>
1c002d4c:	03400000 	andi	$r0,$r0,0x0
1c002d50:	03400000 	andi	$r0,$r0,0x0
1c002d54:	03400000 	andi	$r0,$r0,0x0
1c002d58:	03400000 	andi	$r0,$r0,0x0
1c002d5c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002d60:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002d64:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002d68:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002d4c <CLOCK_HSEConfig+0x44>
1c002d6c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002d70:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002d74:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002d84 <CLOCK_HSEConfig+0x7c>
1c002d78:	57fe13ff 	bl	-496(0xffffe10) # 1c002b88 <CLOCK_WaitForHSEStartUp>
1c002d7c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002d80:	50002400 	b	36(0x24) # 1c002da4 <CLOCK_HSEConfig+0x9c>
1c002d84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d88:	2880018e 	ld.w	$r14,$r12,0
1c002d8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d90:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002d94:	0014b5cd 	and	$r13,$r14,$r13
1c002d98:	2980018d 	st.w	$r13,$r12,0
1c002d9c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002da0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002da8:	00150184 	move	$r4,$r12
1c002dac:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002db0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002db4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002db8:	4c000020 	jirl	$r0,$r1,0

1c002dbc <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002dbc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002dc0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002dc4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002dc8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002dcc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002dd0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002dd4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002dd8:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002ddc:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002dec <CLOCK_LSEConfig+0x30>
1c002de0:	57fe47ff 	bl	-444(0xffffe44) # 1c002c24 <CLOCK_WaitForLSEStartUp>
1c002de4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002de8:	50002400 	b	36(0x24) # 1c002e0c <CLOCK_LSEConfig+0x50>
1c002dec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002df0:	2880018e 	ld.w	$r14,$r12,0
1c002df4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002df8:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002dfc:	0014b5cd 	and	$r13,$r14,$r13
1c002e00:	2980018d 	st.w	$r13,$r12,0
1c002e04:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e08:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e10:	00150184 	move	$r4,$r12
1c002e14:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e18:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e1c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e20:	4c000020 	jirl	$r0,$r1,0

1c002e24 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002e24:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002e28:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002e2c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002e30:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e38:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002e3c:	2980018d 	st.w	$r13,$r12,0
1c002e40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e44:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002e48:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002e4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e50:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002e54:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002e58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e5c:	29803180 	st.w	$r0,$r12,12(0xc)
1c002e60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e64:	29804180 	st.w	$r0,$r12,16(0x10)
1c002e68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e6c:	29805180 	st.w	$r0,$r12,20(0x14)
1c002e70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e74:	29806180 	st.w	$r0,$r12,24(0x18)
1c002e78:	03400000 	andi	$r0,$r0,0x0
1c002e7c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002e80:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002e84:	4c000020 	jirl	$r0,$r1,0

1c002e88 <CLOCK_Init>:
CLOCK_Init():
1c002e88:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e8c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e90:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e94:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e98:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e9c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002ea0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ea4:	2880018e 	ld.w	$r14,$r12,0
1c002ea8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002eac:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002eb0:	0014b5cd 	and	$r13,$r14,$r13
1c002eb4:	2980018d 	st.w	$r13,$r12,0
1c002eb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ebc:	2880018e 	ld.w	$r14,$r12,0
1c002ec0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ec4:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002ec8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ecc:	001535cd 	or	$r13,$r14,$r13
1c002ed0:	2980018d 	st.w	$r13,$r12,0
1c002ed4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ed8:	2880018e 	ld.w	$r14,$r12,0
1c002edc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ee0:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002ee4:	0014b5cd 	and	$r13,$r14,$r13
1c002ee8:	2980018d 	st.w	$r13,$r12,0
1c002eec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ef0:	2880018e 	ld.w	$r14,$r12,0
1c002ef4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ef8:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002efc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f00:	001535cd 	or	$r13,$r14,$r13
1c002f04:	2980018d 	st.w	$r13,$r12,0
1c002f08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f0c:	2880018e 	ld.w	$r14,$r12,0
1c002f10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f14:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002f18:	039ffdad 	ori	$r13,$r13,0x7ff
1c002f1c:	0014b5cd 	and	$r13,$r14,$r13
1c002f20:	2980018d 	st.w	$r13,$r12,0
1c002f24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f28:	2880018e 	ld.w	$r14,$r12,0
1c002f2c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f30:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002f34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f38:	001535cd 	or	$r13,$r14,$r13
1c002f3c:	2980018d 	st.w	$r13,$r12,0
1c002f40:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f44:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002f48:	00150184 	move	$r4,$r12
1c002f4c:	57fdbfff 	bl	-580(0xffffdbc) # 1c002d08 <CLOCK_HSEConfig>
1c002f50:	0015008d 	move	$r13,$r4
1c002f54:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002f58:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002f64 <CLOCK_Init+0xdc>
1c002f5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f60:	50015000 	b	336(0x150) # 1c0030b0 <CLOCK_Init+0x228>
1c002f64:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f68:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002f6c:	00150184 	move	$r4,$r12
1c002f70:	57fe4fff 	bl	-436(0xffffe4c) # 1c002dbc <CLOCK_LSEConfig>
1c002f74:	0015008d 	move	$r13,$r4
1c002f78:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002f7c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002f88 <CLOCK_Init+0x100>
1c002f80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f84:	50012c00 	b	300(0x12c) # 1c0030b0 <CLOCK_Init+0x228>
1c002f88:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f8c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002f90:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002f94:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c003090 <CLOCK_Init+0x208>
1c002f98:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f9c:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002fa0:	4000a180 	beqz	$r12,160(0xa0) # 1c003040 <CLOCK_Init+0x1b8>
1c002fa4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fa8:	2880018e 	ld.w	$r14,$r12,0
1c002fac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fb0:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002fb4:	03bffdad 	ori	$r13,$r13,0xfff
1c002fb8:	0014b5cd 	and	$r13,$r14,$r13
1c002fbc:	2980018d 	st.w	$r13,$r12,0
1c002fc0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fc4:	2880018e 	ld.w	$r14,$r12,0
1c002fc8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fcc:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c002fd0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fd4:	001535cd 	or	$r13,$r14,$r13
1c002fd8:	2980018d 	st.w	$r13,$r12,0
1c002fdc:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002fe0:	0386c18c 	ori	$r12,$r12,0x1b0
1c002fe4:	2880018c 	ld.w	$r12,$r12,0
1c002fe8:	40004180 	beqz	$r12,64(0x40) # 1c003028 <CLOCK_Init+0x1a0>
1c002fec:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002ff0:	0386c18c 	ori	$r12,$r12,0x1b0
1c002ff4:	2880018c 	ld.w	$r12,$r12,0
1c002ff8:	0040898e 	slli.w	$r14,$r12,0x2
1c002ffc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003000:	002031cd 	div.w	$r13,$r14,$r12
1c003004:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00300c <CLOCK_Init+0x184>
1c003008:	002a0007 	break	0x7
1c00300c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c003010:	001c31ac 	mul.w	$r12,$r13,$r12
1c003014:	0015018d 	move	$r13,$r12
1c003018:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00301c:	0281218c 	addi.w	$r12,$r12,72(0x48)
1c003020:	2980018d 	st.w	$r13,$r12,0
1c003024:	50008000 	b	128(0x80) # 1c0030a4 <CLOCK_Init+0x21c>
1c003028:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00302c:	0280e18c 	addi.w	$r12,$r12,56(0x38)
1c003030:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c003034:	038fe1ad 	ori	$r13,$r13,0x3f8
1c003038:	2980018d 	st.w	$r13,$r12,0
1c00303c:	50006800 	b	104(0x68) # 1c0030a4 <CLOCK_Init+0x21c>
1c003040:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003044:	0386c18c 	ori	$r12,$r12,0x1b0
1c003048:	2880018c 	ld.w	$r12,$r12,0
1c00304c:	40002d80 	beqz	$r12,44(0x2c) # 1c003078 <CLOCK_Init+0x1f0>
1c003050:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003054:	0386c18c 	ori	$r12,$r12,0x1b0
1c003058:	2880018d 	ld.w	$r13,$r12,0
1c00305c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c003060:	001c31ac 	mul.w	$r12,$r13,$r12
1c003064:	0015018d 	move	$r13,$r12
1c003068:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00306c:	02bfe18c 	addi.w	$r12,$r12,-8(0xff8)
1c003070:	2980018d 	st.w	$r13,$r12,0
1c003074:	50003000 	b	48(0x30) # 1c0030a4 <CLOCK_Init+0x21c>
1c003078:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00307c:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c003080:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003084:	038801ad 	ori	$r13,$r13,0x200
1c003088:	2980018d 	st.w	$r13,$r12,0
1c00308c:	50001800 	b	24(0x18) # 1c0030a4 <CLOCK_Init+0x21c>
1c003090:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003094:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c003098:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c00309c:	038801ad 	ori	$r13,$r13,0x200
1c0030a0:	2980018d 	st.w	$r13,$r12,0
1c0030a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0030a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0030ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030b0:	00150184 	move	$r4,$r12
1c0030b4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0030b8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0030bc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0030c0:	4c000020 	jirl	$r0,$r1,0

1c0030c4 <SystemClockInit>:
SystemClockInit():
1c0030c4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0030c8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0030cc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0030d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0030d4:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c0030d8:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c0030dc:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c0030e0:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0030e4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0030e8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0030ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0030f0:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0030f4:	00150184 	move	$r4,$r12
1c0030f8:	57fd2fff 	bl	-724(0xffffd2c) # 1c002e24 <CLOCK_StructInit>
1c0030fc:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c003100:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003104:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003108:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00310c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c003110:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003114:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003118:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c00311c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003120:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003124:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003128:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c00312c:	00150184 	move	$r4,$r12
1c003130:	57fd5bff 	bl	-680(0xffffd58) # 1c002e88 <CLOCK_Init>
1c003134:	0015008d 	move	$r13,$r4
1c003138:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00313c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c003148 <SystemClockInit+0x84>
1c003140:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003144:	50000800 	b	8(0x8) # 1c00314c <SystemClockInit+0x88>
1c003148:	0015000c 	move	$r12,$r0
1c00314c:	00150184 	move	$r4,$r12
1c003150:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003154:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003158:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00315c:	4c000020 	jirl	$r0,$r1,0

1c003160 <IsGlobalIntOpen>:
IsGlobalIntOpen():
1c003160:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003164:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003168:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00316c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003170:	0400000c 	csrrd	$r12,0x0
1c003174:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003178:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00317c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003180:	0340118c 	andi	$r12,$r12,0x4
1c003184:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003188:	00150184 	move	$r4,$r12
1c00318c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003190:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003194:	4c000020 	jirl	$r0,$r1,0

1c003198 <DisableInt>:
DisableInt():
1c003198:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00319c:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031a4:	0380100c 	ori	$r12,$r0,0x4
1c0031a8:	04000180 	csrxchg	$r0,$r12,0x0
1c0031ac:	03400000 	andi	$r0,$r0,0x0
1c0031b0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031b8:	4c000020 	jirl	$r0,$r1,0

1c0031bc <EnableInt>:
EnableInt():
1c0031bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031c0:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031c8:	0380100c 	ori	$r12,$r0,0x4
1c0031cc:	0400018c 	csrxchg	$r12,$r12,0x0
1c0031d0:	03400000 	andi	$r0,$r0,0x0
1c0031d4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031dc:	4c000020 	jirl	$r0,$r1,0

1c0031e0 <Set_Timer_stop>:
Set_Timer_stop():
1c0031e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031e4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031ec:	04010420 	csrwr	$r0,0x41
1c0031f0:	03400000 	andi	$r0,$r0,0x0
1c0031f4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031fc:	4c000020 	jirl	$r0,$r1,0

1c003200 <Set_Timer_clear>:
Set_Timer_clear():
1c003200:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003204:	29803076 	st.w	$r22,$r3,12(0xc)
1c003208:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00320c:	0380040c 	ori	$r12,$r0,0x1
1c003210:	0401102c 	csrwr	$r12,0x44
1c003214:	03400000 	andi	$r0,$r0,0x0
1c003218:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00321c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003220:	4c000020 	jirl	$r0,$r1,0

1c003224 <Wake_Set>:
Wake_Set():
1c003224:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003228:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00322c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003230:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003234:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003238:	40006980 	beqz	$r12,104(0x68) # 1c0032a0 <Wake_Set+0x7c>
1c00323c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003240:	0040a18c 	slli.w	$r12,$r12,0x8
1c003244:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003248:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00324c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003250:	0380218c 	ori	$r12,$r12,0x8
1c003254:	2880018d 	ld.w	$r13,$r12,0
1c003258:	14001fec 	lu12i.w	$r12,255(0xff)
1c00325c:	03bffd8c 	ori	$r12,$r12,0xfff
1c003260:	0014b1ac 	and	$r12,$r13,$r12
1c003264:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003268:	001031ac 	add.w	$r12,$r13,$r12
1c00326c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003270:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003274:	0380318c 	ori	$r12,$r12,0xc
1c003278:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00327c:	2980018d 	st.w	$r13,$r12,0
1c003280:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003284:	0380118c 	ori	$r12,$r12,0x4
1c003288:	2880018d 	ld.w	$r13,$r12,0
1c00328c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003290:	0380118c 	ori	$r12,$r12,0x4
1c003294:	038601ad 	ori	$r13,$r13,0x180
1c003298:	2980018d 	st.w	$r13,$r12,0
1c00329c:	50002400 	b	36(0x24) # 1c0032c0 <Wake_Set+0x9c>
1c0032a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032a4:	0380118c 	ori	$r12,$r12,0x4
1c0032a8:	2880018e 	ld.w	$r14,$r12,0
1c0032ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032b0:	0380118c 	ori	$r12,$r12,0x4
1c0032b4:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c0032b8:	0014b5cd 	and	$r13,$r14,$r13
1c0032bc:	2980018d 	st.w	$r13,$r12,0
1c0032c0:	03400000 	andi	$r0,$r0,0x0
1c0032c4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0032c8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0032cc:	4c000020 	jirl	$r0,$r1,0

1c0032d0 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c0032d0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0032d4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0032d8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0032dc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0032e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032e4:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0032e8:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0032ec:	0014b1ac 	and	$r12,$r13,$r12
1c0032f0:	44000d80 	bnez	$r12,12(0xc) # 1c0032fc <PMU_GetRstRrc+0x2c>
1c0032f4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0032f8:	50003000 	b	48(0x30) # 1c003328 <PMU_GetRstRrc+0x58>
1c0032fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003300:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003304:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003308:	0014b1ad 	and	$r13,$r13,$r12
1c00330c:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003310:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c003320 <PMU_GetRstRrc+0x50>
1c003314:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003318:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00331c:	50000c00 	b	12(0xc) # 1c003328 <PMU_GetRstRrc+0x58>
1c003320:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003324:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003328:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00332c:	00150184 	move	$r4,$r12
1c003330:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003334:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003338:	4c000020 	jirl	$r0,$r1,0

1c00333c <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c00333c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003340:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003344:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003348:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00334c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003350:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003354:	0380198c 	ori	$r12,$r12,0x6
1c003358:	2a00018c 	ld.bu	$r12,$r12,0
1c00335c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003360:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003364:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003368:	0340058c 	andi	$r12,$r12,0x1
1c00336c:	40000d80 	beqz	$r12,12(0xc) # 1c003378 <PMU_GetBootSpiStatus+0x3c>
1c003370:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003374:	50000800 	b	8(0x8) # 1c00337c <PMU_GetBootSpiStatus+0x40>
1c003378:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00337c:	00150184 	move	$r4,$r12
1c003380:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003384:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003388:	4c000020 	jirl	$r0,$r1,0

1c00338c <ls1x_logo>:
ls1x_logo():
1c00338c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003390:	29803061 	st.w	$r1,$r3,12(0xc)
1c003394:	29802076 	st.w	$r22,$r3,8(0x8)
1c003398:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00339c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033a0:	02806084 	addi.w	$r4,$r4,24(0x18)
1c0033a4:	57e917ff 	bl	-5868(0xfffe914) # 1c001cb8 <myprintf>
1c0033a8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033ac:	02804084 	addi.w	$r4,$r4,16(0x10)
1c0033b0:	57e90bff 	bl	-5880(0xfffe908) # 1c001cb8 <myprintf>
1c0033b4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033b8:	0281a084 	addi.w	$r4,$r4,104(0x68)
1c0033bc:	57e8ffff 	bl	-5892(0xfffe8fc) # 1c001cb8 <myprintf>
1c0033c0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033c4:	02830084 	addi.w	$r4,$r4,192(0xc0)
1c0033c8:	57e8f3ff 	bl	-5904(0xfffe8f0) # 1c001cb8 <myprintf>
1c0033cc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033d0:	02846084 	addi.w	$r4,$r4,280(0x118)
1c0033d4:	57e8e7ff 	bl	-5916(0xfffe8e4) # 1c001cb8 <myprintf>
1c0033d8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033dc:	0285c084 	addi.w	$r4,$r4,368(0x170)
1c0033e0:	57e8dbff 	bl	-5928(0xfffe8d8) # 1c001cb8 <myprintf>
1c0033e4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033e8:	02872084 	addi.w	$r4,$r4,456(0x1c8)
1c0033ec:	57e8cfff 	bl	-5940(0xfffe8cc) # 1c001cb8 <myprintf>
1c0033f0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033f4:	02888084 	addi.w	$r4,$r4,544(0x220)
1c0033f8:	57e8c3ff 	bl	-5952(0xfffe8c0) # 1c001cb8 <myprintf>
1c0033fc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003400:	0289e084 	addi.w	$r4,$r4,632(0x278)
1c003404:	57e8b7ff 	bl	-5964(0xfffe8b4) # 1c001cb8 <myprintf>
1c003408:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00340c:	028b4084 	addi.w	$r4,$r4,720(0x2d0)
1c003410:	57e8abff 	bl	-5976(0xfffe8a8) # 1c001cb8 <myprintf>
1c003414:	03400000 	andi	$r0,$r0,0x0
1c003418:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00341c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003420:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003424:	4c000020 	jirl	$r0,$r1,0

1c003428 <get_count>:
get_count():
1c003428:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00342c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003430:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003434:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003438:	0000600c 	rdtimel.w	$r12,$r0
1c00343c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003440:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003444:	00150184 	move	$r4,$r12
1c003448:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00344c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003450:	4c000020 	jirl	$r0,$r1,0

1c003454 <open_count>:
open_count():
1c003454:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003458:	29803076 	st.w	$r22,$r3,12(0xc)
1c00345c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003460:	0380400c 	ori	$r12,$r0,0x10
1c003464:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c003468:	03400000 	andi	$r0,$r0,0x0
1c00346c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003470:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003474:	4c000020 	jirl	$r0,$r1,0

1c003478 <start_count>:
start_count():
1c003478:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00347c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003480:	29806076 	st.w	$r22,$r3,24(0x18)
1c003484:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003488:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00348c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003490:	29800180 	st.w	$r0,$r12,0
1c003494:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003498:	29801180 	st.w	$r0,$r12,4(0x4)
1c00349c:	57ff8fff 	bl	-116(0xfffff8c) # 1c003428 <get_count>
1c0034a0:	0015008d 	move	$r13,$r4
1c0034a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034a8:	2980018d 	st.w	$r13,$r12,0
1c0034ac:	03400000 	andi	$r0,$r0,0x0
1c0034b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0034b4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0034b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0034bc:	4c000020 	jirl	$r0,$r1,0

1c0034c0 <stop_count>:
stop_count():
1c0034c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0034c4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0034c8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0034cc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0034d0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0034d4:	57ff57ff 	bl	-172(0xfffff54) # 1c003428 <get_count>
1c0034d8:	0015008d 	move	$r13,$r4
1c0034dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034e0:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0034e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034e8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0034ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034f0:	2880018c 	ld.w	$r12,$r12,0
1c0034f4:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c003510 <stop_count+0x50>
1c0034f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034fc:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003500:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003504:	2880018c 	ld.w	$r12,$r12,0
1c003508:	001131ac 	sub.w	$r12,$r13,$r12
1c00350c:	50002800 	b	40(0x28) # 1c003534 <stop_count+0x74>
1c003510:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003514:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003518:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00351c:	2880018c 	ld.w	$r12,$r12,0
1c003520:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003524:	001131ad 	sub.w	$r13,$r13,$r12
1c003528:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00352c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c003530:	001031ac 	add.w	$r12,$r13,$r12
1c003534:	00150184 	move	$r4,$r12
1c003538:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00353c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003540:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003544:	4c000020 	jirl	$r0,$r1,0

1c003548 <delay_cycle>:
delay_cycle():
1c003548:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00354c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003550:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003554:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003558:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00355c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003560:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003564:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003568:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c00356c:	00150184 	move	$r4,$r12
1c003570:	57ff0bff 	bl	-248(0xfffff08) # 1c003478 <start_count>
1c003574:	50001400 	b	20(0x14) # 1c003588 <delay_cycle+0x40>
1c003578:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c00357c:	00150184 	move	$r4,$r12
1c003580:	57ff43ff 	bl	-192(0xfffff40) # 1c0034c0 <stop_count>
1c003584:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003588:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00358c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003590:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c003578 <delay_cycle+0x30>
1c003594:	03400000 	andi	$r0,$r0,0x0
1c003598:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00359c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0035a0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0035a4:	4c000020 	jirl	$r0,$r1,0

1c0035a8 <delay_ms>:
delay_ms():
1c0035a8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0035ac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0035b0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0035b4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0035b8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0035bc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0035c0:	1400002c 	lu12i.w	$r12,1(0x1)
1c0035c4:	03bd018c 	ori	$r12,$r12,0xf40
1c0035c8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0035cc:	00150184 	move	$r4,$r12
1c0035d0:	57ff7bff 	bl	-136(0xfffff78) # 1c003548 <delay_cycle>
1c0035d4:	03400000 	andi	$r0,$r0,0x0
1c0035d8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0035dc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0035e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0035e4:	4c000020 	jirl	$r0,$r1,0

1c0035e8 <memset>:
memset():
1c0035e8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035ec:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0035f0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035f4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0035f8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0035fc:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c003600:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003604:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003608:	50001c00 	b	28(0x1c) # 1c003624 <memset+0x3c>
1c00360c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003610:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003614:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003618:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00361c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003620:	2900018d 	st.b	$r13,$r12,0
1c003624:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003628:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00362c:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c003630:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c00360c <memset+0x24>
1c003634:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003638:	00150184 	move	$r4,$r12
1c00363c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003640:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003644:	4c000020 	jirl	$r0,$r1,0

1c003648 <pstrstr>:
pstrstr():
1c003648:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00364c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003650:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003654:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003658:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00365c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003660:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003664:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003668:	2800018c 	ld.b	$r12,$r12,0
1c00366c:	44008580 	bnez	$r12,132(0x84) # 1c0036f0 <pstrstr+0xa8>
1c003670:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003674:	50008c00 	b	140(0x8c) # 1c003700 <pstrstr+0xb8>
1c003678:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00367c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003680:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003684:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003688:	50001c00 	b	28(0x1c) # 1c0036a4 <pstrstr+0x5c>
1c00368c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003690:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003694:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003698:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00369c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0036a0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0036a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036a8:	2800018c 	ld.b	$r12,$r12,0
1c0036ac:	40002580 	beqz	$r12,36(0x24) # 1c0036d0 <pstrstr+0x88>
1c0036b0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0036b4:	2800018c 	ld.b	$r12,$r12,0
1c0036b8:	40001980 	beqz	$r12,24(0x18) # 1c0036d0 <pstrstr+0x88>
1c0036bc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036c0:	2800018d 	ld.b	$r13,$r12,0
1c0036c4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0036c8:	2800018c 	ld.b	$r12,$r12,0
1c0036cc:	5bffc1ac 	beq	$r13,$r12,-64(0x3ffc0) # 1c00368c <pstrstr+0x44>
1c0036d0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0036d4:	2800018c 	ld.b	$r12,$r12,0
1c0036d8:	44000d80 	bnez	$r12,12(0xc) # 1c0036e4 <pstrstr+0x9c>
1c0036dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036e0:	50002000 	b	32(0x20) # 1c003700 <pstrstr+0xb8>
1c0036e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0036ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036f4:	2800018c 	ld.b	$r12,$r12,0
1c0036f8:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c003678 <pstrstr+0x30>
1c0036fc:	0015000c 	move	$r12,$r0
1c003700:	00150184 	move	$r4,$r12
1c003704:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003708:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00370c:	4c000020 	jirl	$r0,$r1,0

1c003710 <itoa>:
itoa():
1c003710:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003714:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003718:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00371c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003720:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003724:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003728:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00372c:	4400a180 	bnez	$r12,160(0xa0) # 1c0037cc <itoa+0xbc>
1c003730:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003734:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c003738:	0020b1ae 	mod.w	$r14,$r13,$r12
1c00373c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003744 <itoa+0x34>
1c003740:	002a0007 	break	0x7
1c003744:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c003748:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c00374c:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003750:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003754:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003758:	001031ac 	add.w	$r12,$r13,$r12
1c00375c:	00005dcd 	ext.w.b	$r13,$r14
1c003760:	2900018d 	st.b	$r13,$r12,0
1c003764:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003768:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00376c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003770:	50005c00 	b	92(0x5c) # 1c0037cc <itoa+0xbc>
1c003774:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003778:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00377c:	0020b1ae 	mod.w	$r14,$r13,$r12
1c003780:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003788 <itoa+0x78>
1c003784:	002a0007 	break	0x7
1c003788:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c00378c:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c003790:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003794:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003798:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00379c:	001031ac 	add.w	$r12,$r13,$r12
1c0037a0:	00005dcd 	ext.w.b	$r13,$r14
1c0037a4:	2900018d 	st.b	$r13,$r12,0
1c0037a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0037b0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037b4:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c0037b8:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0037bc:	002035cc 	div.w	$r12,$r14,$r13
1c0037c0:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0037c8 <itoa+0xb8>
1c0037c4:	002a0007 	break	0x7
1c0037c8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0037cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0037d0:	47ffa59f 	bnez	$r12,-92(0x7fffa4) # 1c003774 <itoa+0x64>
1c0037d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037d8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0037dc:	001031ac 	add.w	$r12,$r13,$r12
1c0037e0:	29000180 	st.b	$r0,$r12,0
1c0037e4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0037e8:	50007800 	b	120(0x78) # 1c003860 <itoa+0x150>
1c0037ec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037f0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0037f4:	001031ac 	add.w	$r12,$r13,$r12
1c0037f8:	2a00018c 	ld.bu	$r12,$r12,0
1c0037fc:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c003800:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003804:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003808:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00380c:	001131ac 	sub.w	$r12,$r13,$r12
1c003810:	0015018d 	move	$r13,$r12
1c003814:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003818:	0010358d 	add.w	$r13,$r12,$r13
1c00381c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003820:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c003824:	001031cc 	add.w	$r12,$r14,$r12
1c003828:	280001ad 	ld.b	$r13,$r13,0
1c00382c:	2900018d 	st.b	$r13,$r12,0
1c003830:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003834:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003838:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00383c:	001131ac 	sub.w	$r12,$r13,$r12
1c003840:	0015018d 	move	$r13,$r12
1c003844:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003848:	0010358c 	add.w	$r12,$r12,$r13
1c00384c:	2a3f9ecd 	ld.bu	$r13,$r22,-25(0xfe7)
1c003850:	2900018d 	st.b	$r13,$r12,0
1c003854:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003858:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00385c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003860:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003864:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c003868:	001031ac 	add.w	$r12,$r13,$r12
1c00386c:	0048858c 	srai.w	$r12,$r12,0x1
1c003870:	0015018d 	move	$r13,$r12
1c003874:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003878:	63ff758d 	blt	$r12,$r13,-140(0x3ff74) # 1c0037ec <itoa+0xdc>
1c00387c:	03400000 	andi	$r0,$r0,0x0
1c003880:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003884:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003888:	4c000020 	jirl	$r0,$r1,0

1c00388c <strcat>:
strcat():
1c00388c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003890:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003894:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003898:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00389c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0038a0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038a4:	40000d80 	beqz	$r12,12(0xc) # 1c0038b0 <strcat+0x24>
1c0038a8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0038ac:	44000d80 	bnez	$r12,12(0xc) # 1c0038b8 <strcat+0x2c>
1c0038b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038b4:	50006800 	b	104(0x68) # 1c00391c <strcat+0x90>
1c0038b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038c0:	50001000 	b	16(0x10) # 1c0038d0 <strcat+0x44>
1c0038c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0038cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038d4:	2800018c 	ld.b	$r12,$r12,0
1c0038d8:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c0038c4 <strcat+0x38>
1c0038dc:	50002800 	b	40(0x28) # 1c003904 <strcat+0x78>
1c0038e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038e4:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0038e8:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0038ec:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0038f0:	280001ad 	ld.b	$r13,$r13,0
1c0038f4:	2900018d 	st.b	$r13,$r12,0
1c0038f8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0038fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003900:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003904:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003908:	2800018c 	ld.b	$r12,$r12,0
1c00390c:	47ffd59f 	bnez	$r12,-44(0x7fffd4) # 1c0038e0 <strcat+0x54>
1c003910:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003914:	29000180 	st.b	$r0,$r12,0
1c003918:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00391c:	00150184 	move	$r4,$r12
1c003920:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003924:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003928:	4c000020 	jirl	$r0,$r1,0

1c00392c <strlen>:
strlen():
1c00392c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003930:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003934:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003938:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00393c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003940:	50001000 	b	16(0x10) # 1c003950 <strlen+0x24>
1c003944:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003948:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00394c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003950:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003954:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003958:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c00395c:	2800018c 	ld.b	$r12,$r12,0
1c003960:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c003944 <strlen+0x18>
1c003964:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003968:	00150184 	move	$r4,$r12
1c00396c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003970:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003974:	4c000020 	jirl	$r0,$r1,0

1c003978 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c003978:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00397c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003980:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003984:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003988:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c00398c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003990:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003994:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003998:	001531ad 	or	$r13,$r13,$r12
1c00399c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039a0:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0039a4:	03400000 	andi	$r0,$r0,0x0
1c0039a8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0039ac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0039b0:	4c000020 	jirl	$r0,$r1,0

1c0039b4 <WDG_getOddValue>:
WDG_getOddValue():
1c0039b4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0039b8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0039bc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0039c0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0039c4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0039c8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0039cc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0039d0:	50003800 	b	56(0x38) # 1c003a08 <WDG_getOddValue+0x54>
1c0039d4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0039d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039dc:	001731ac 	sll.w	$r12,$r13,$r12
1c0039e0:	0015018d 	move	$r13,$r12
1c0039e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0039e8:	0014b1ac 	and	$r12,$r13,$r12
1c0039ec:	40001180 	beqz	$r12,16(0x10) # 1c0039fc <WDG_getOddValue+0x48>
1c0039f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0039f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0039f8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0039fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003a04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a08:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a0c:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003a10:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c0039d4 <WDG_getOddValue+0x20>
1c003a14:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003a18:	0340058c 	andi	$r12,$r12,0x1
1c003a1c:	44000d80 	bnez	$r12,12(0xc) # 1c003a28 <WDG_getOddValue+0x74>
1c003a20:	1400010c 	lu12i.w	$r12,8(0x8)
1c003a24:	50000800 	b	8(0x8) # 1c003a2c <WDG_getOddValue+0x78>
1c003a28:	0015000c 	move	$r12,$r0
1c003a2c:	00150184 	move	$r4,$r12
1c003a30:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003a34:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003a38:	4c000020 	jirl	$r0,$r1,0

1c003a3c <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c003a3c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a40:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003a44:	29806076 	st.w	$r22,$r3,24(0x18)
1c003a48:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a4c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003a50:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a54:	140000ec 	lu12i.w	$r12,7(0x7)
1c003a58:	03bffd8c 	ori	$r12,$r12,0xfff
1c003a5c:	0014b1ac 	and	$r12,$r13,$r12
1c003a60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a64:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003a68:	57ff4fff 	bl	-180(0xfffff4c) # 1c0039b4 <WDG_getOddValue>
1c003a6c:	0015008c 	move	$r12,$r4
1c003a70:	0015018d 	move	$r13,$r12
1c003a74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a78:	0015358c 	or	$r12,$r12,$r13
1c003a7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a84:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003a88:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003a8c:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003a90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a94:	0014300c 	nor	$r12,$r0,$r12
1c003a98:	0040c18c 	slli.w	$r12,$r12,0x10
1c003a9c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003aa0:	001531ac 	or	$r12,$r13,$r12
1c003aa4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003aa8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003aac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ab0:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c003ab4:	03400000 	andi	$r0,$r0,0x0
1c003ab8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003abc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003ac0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ac4:	4c000020 	jirl	$r0,$r1,0

1c003ac8 <WDG_DogFeed>:
WDG_DogFeed():
1c003ac8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003acc:	29803076 	st.w	$r22,$r3,12(0xc)
1c003ad0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ad4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003ad8:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003adc:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003ae0:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003ae4:	03400000 	andi	$r0,$r0,0x0
1c003ae8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003aec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003af0:	4c000020 	jirl	$r0,$r1,0

1c003af4 <WdgInit>:
WdgInit():
1c003af4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003af8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003afc:	29802076 	st.w	$r22,$r3,8(0x8)
1c003b00:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003b04:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003b08:	03bffd84 	ori	$r4,$r12,0xfff
1c003b0c:	57ff33ff 	bl	-208(0xfffff30) # 1c003a3c <WDG_SetWatchDog>
1c003b10:	03400000 	andi	$r0,$r0,0x0
1c003b14:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003b18:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003b1c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003b20:	4c000020 	jirl	$r0,$r1,0

1c003b24 <Adc_powerOn>:
Adc_powerOn():
1c003b24:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b28:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003b2c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003b30:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b34:	57f62fff 	bl	-2516(0xffff62c) # 1c003160 <IsGlobalIntOpen>
1c003b38:	0015008c 	move	$r12,$r4
1c003b3c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003b40:	57f65bff 	bl	-2472(0xffff658) # 1c003198 <DisableInt>
1c003b44:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003b48:	288001ac 	ld.w	$r12,$r13,0
1c003b4c:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c003b50:	007041cc 	bstrins.w	$r12,$r14,0x10,0x10
1c003b54:	298001ac 	st.w	$r12,$r13,0
1c003b58:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003b5c:	40000980 	beqz	$r12,8(0x8) # 1c003b64 <Adc_powerOn+0x40>
1c003b60:	57f65fff 	bl	-2468(0xffff65c) # 1c0031bc <EnableInt>
1c003b64:	03400000 	andi	$r0,$r0,0x0
1c003b68:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003b6c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003b70:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b74:	4c000020 	jirl	$r0,$r1,0

1c003b78 <Adc_open>:
Adc_open():
1c003b78:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003b7c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003b80:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003b84:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003b88:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003b8c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003b90:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003b94:	001731ac 	sll.w	$r12,$r13,$r12
1c003b98:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ba0:	0340058c 	andi	$r12,$r12,0x1
1c003ba4:	40003580 	beqz	$r12,52(0x34) # 1c003bd8 <Adc_open+0x60>
1c003ba8:	57f5bbff 	bl	-2632(0xffff5b8) # 1c003160 <IsGlobalIntOpen>
1c003bac:	0015008c 	move	$r12,$r4
1c003bb0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003bb4:	57f5e7ff 	bl	-2588(0xffff5e4) # 1c003198 <DisableInt>
1c003bb8:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003bbc:	288001ac 	ld.w	$r12,$r13,0
1c003bc0:	0071440c 	bstrins.w	$r12,$r0,0x11,0x11
1c003bc4:	298001ac 	st.w	$r12,$r13,0
1c003bc8:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c003bcc:	40004980 	beqz	$r12,72(0x48) # 1c003c14 <Adc_open+0x9c>
1c003bd0:	57f5efff 	bl	-2580(0xffff5ec) # 1c0031bc <EnableInt>
1c003bd4:	50004000 	b	64(0x40) # 1c003c14 <Adc_open+0x9c>
1c003bd8:	57f58bff 	bl	-2680(0xffff588) # 1c003160 <IsGlobalIntOpen>
1c003bdc:	0015008c 	move	$r12,$r4
1c003be0:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c003be4:	57f5b7ff 	bl	-2636(0xffff5b4) # 1c003198 <DisableInt>
1c003be8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bec:	0044918c 	srli.w	$r12,$r12,0x4
1c003bf0:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003bf4:	03403d8c 	andi	$r12,$r12,0xf
1c003bf8:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003bfc:	288001ac 	ld.w	$r12,$r13,0
1c003c00:	007751cc 	bstrins.w	$r12,$r14,0x17,0x14
1c003c04:	298001ac 	st.w	$r12,$r13,0
1c003c08:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c003c0c:	40000980 	beqz	$r12,8(0x8) # 1c003c14 <Adc_open+0x9c>
1c003c10:	57f5afff 	bl	-2644(0xffff5ac) # 1c0031bc <EnableInt>
1c003c14:	03400000 	andi	$r0,$r0,0x0
1c003c18:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003c1c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003c20:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003c24:	4c000020 	jirl	$r0,$r1,0

1c003c28 <Adc_Measure>:
Adc_Measure():
1c003c28:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003c2c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003c30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003c34:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003c38:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c003c3c:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c003c40:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c003c44:	50008400 	b	132(0x84) # 1c003cc8 <Adc_Measure+0xa0>
1c003c48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c4c:	0381b18c 	ori	$r12,$r12,0x6c
1c003c50:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003c54:	038401ad 	ori	$r13,$r13,0x100
1c003c58:	2980018d 	st.w	$r13,$r12,0
1c003c5c:	03400000 	andi	$r0,$r0,0x0
1c003c60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c64:	0381b18c 	ori	$r12,$r12,0x6c
1c003c68:	2880018c 	ld.w	$r12,$r12,0
1c003c6c:	0344018c 	andi	$r12,$r12,0x100
1c003c70:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c003c60 <Adc_Measure+0x38>
1c003c74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c78:	0381c18c 	ori	$r12,$r12,0x70
1c003c7c:	2880018c 	ld.w	$r12,$r12,0
1c003c80:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c84:	037ffd8c 	andi	$r12,$r12,0xfff
1c003c88:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c003c8c:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003c90:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003c94:	6c00298d 	bgeu	$r12,$r13,40(0x28) # 1c003cbc <Adc_Measure+0x94>
1c003c98:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003c9c:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003ca0:	001031ac 	add.w	$r12,$r13,$r12
1c003ca4:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c003ca8:	2a7fa2cd 	ld.hu	$r13,$r22,-24(0xfe8)
1c003cac:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003cb0:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c003cbc <Adc_Measure+0x94>
1c003cb4:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003cb8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c003cbc:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003cc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003cc4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003cc8:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003ccc:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c003cd0:	6fff798d 	bgeu	$r12,$r13,-136(0x3ff78) # 1c003c48 <Adc_Measure+0x20>
1c003cd4:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003cd8:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003cdc:	001131ad 	sub.w	$r13,$r13,$r12
1c003ce0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003ce4:	002031ae 	div.w	$r14,$r13,$r12
1c003ce8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003cf0 <Adc_Measure+0xc8>
1c003cec:	002a0007 	break	0x7
1c003cf0:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c003cf4:	00150184 	move	$r4,$r12
1c003cf8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003cfc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003d00:	4c000020 	jirl	$r0,$r1,0

1c003d04 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003d04:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003d08:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003d0c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003d10:	0015008c 	move	$r12,$r4
1c003d14:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003d18:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003d1c:	0040898c 	slli.w	$r12,$r12,0x2
1c003d20:	0015018d 	move	$r13,$r12
1c003d24:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003d28:	0381018c 	ori	$r12,$r12,0x40
1c003d2c:	001031ac 	add.w	$r12,$r13,$r12
1c003d30:	2880018c 	ld.w	$r12,$r12,0
1c003d34:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d38:	037ffd8c 	andi	$r12,$r12,0xfff
1c003d3c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d40:	00150184 	move	$r4,$r12
1c003d44:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003d48:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003d4c:	4c000020 	jirl	$r0,$r1,0

1c003d50 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003d50:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003d54:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003d58:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003d5c:	0015008c 	move	$r12,$r4
1c003d60:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003d64:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003d68:	0040898c 	slli.w	$r12,$r12,0x2
1c003d6c:	0015018d 	move	$r13,$r12
1c003d70:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003d74:	0382018c 	ori	$r12,$r12,0x80
1c003d78:	001031ac 	add.w	$r12,$r13,$r12
1c003d7c:	2880018c 	ld.w	$r12,$r12,0
1c003d80:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d84:	037ffd8c 	andi	$r12,$r12,0xfff
1c003d88:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d8c:	00150184 	move	$r4,$r12
1c003d90:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003d94:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003d98:	4c000020 	jirl	$r0,$r1,0

1c003d9c <Printf_KeyChannel>:
Printf_KeyChannel():
1c003d9c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003da0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003da4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003da8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003dac:	0015008c 	move	$r12,$r4
1c003db0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003db4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003db8:	50003400 	b	52(0x34) # 1c003dec <Printf_KeyChannel+0x50>
1c003dbc:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003dc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003dc4:	001831ac 	sra.w	$r12,$r13,$r12
1c003dc8:	0340058c 	andi	$r12,$r12,0x1
1c003dcc:	40001580 	beqz	$r12,20(0x14) # 1c003de0 <Printf_KeyChannel+0x44>
1c003dd0:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003dd4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003dd8:	02a5a084 	addi.w	$r4,$r4,-1688(0x968)
1c003ddc:	57dedfff 	bl	-8484(0xfffdedc) # 1c001cb8 <myprintf>
1c003de0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003de4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003de8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003dec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003df0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003df4:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003dbc <Printf_KeyChannel+0x20>
1c003df8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003dfc:	02a52084 	addi.w	$r4,$r4,-1720(0x948)
1c003e00:	57debbff 	bl	-8520(0xfffdeb8) # 1c001cb8 <myprintf>
1c003e04:	03400000 	andi	$r0,$r0,0x0
1c003e08:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003e0c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003e10:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003e14:	4c000020 	jirl	$r0,$r1,0

1c003e18 <Printf_KeyType>:
Printf_KeyType():
1c003e18:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003e1c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003e20:	29806076 	st.w	$r22,$r3,24(0x18)
1c003e24:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003e28:	0015008c 	move	$r12,$r4
1c003e2c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003e30:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003e34:	0340058c 	andi	$r12,$r12,0x1
1c003e38:	40001180 	beqz	$r12,16(0x10) # 1c003e48 <Printf_KeyType+0x30>
1c003e3c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e40:	02a42084 	addi.w	$r4,$r4,-1784(0x908)
1c003e44:	57de77ff 	bl	-8588(0xfffde74) # 1c001cb8 <myprintf>
1c003e48:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003e4c:	0340098c 	andi	$r12,$r12,0x2
1c003e50:	40001180 	beqz	$r12,16(0x10) # 1c003e60 <Printf_KeyType+0x48>
1c003e54:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e58:	02a3e084 	addi.w	$r4,$r4,-1800(0x8f8)
1c003e5c:	57de5fff 	bl	-8612(0xfffde5c) # 1c001cb8 <myprintf>
1c003e60:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003e64:	0340118c 	andi	$r12,$r12,0x4
1c003e68:	40001180 	beqz	$r12,16(0x10) # 1c003e78 <Printf_KeyType+0x60>
1c003e6c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e70:	02a3a084 	addi.w	$r4,$r4,-1816(0x8e8)
1c003e74:	57de47ff 	bl	-8636(0xfffde44) # 1c001cb8 <myprintf>
1c003e78:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003e7c:	0340218c 	andi	$r12,$r12,0x8
1c003e80:	40001180 	beqz	$r12,16(0x10) # 1c003e90 <Printf_KeyType+0x78>
1c003e84:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e88:	02a37084 	addi.w	$r4,$r4,-1828(0x8dc)
1c003e8c:	57de2fff 	bl	-8660(0xfffde2c) # 1c001cb8 <myprintf>
1c003e90:	03400000 	andi	$r0,$r0,0x0
1c003e94:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003e98:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003e9c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ea0:	4c000020 	jirl	$r0,$r1,0

1c003ea4 <Printf_KeyVal>:
Printf_KeyVal():
1c003ea4:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003ea8:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003eac:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003eb0:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003eb4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003eb8:	5000d800 	b	216(0xd8) # 1c003f90 <Printf_KeyVal+0xec>
1c003ebc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ec0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ec4:	00150184 	move	$r4,$r12
1c003ec8:	57fe8bff 	bl	-376(0xffffe88) # 1c003d50 <TOUCH_GetCountValue>
1c003ecc:	0015008c 	move	$r12,$r4
1c003ed0:	0015018d 	move	$r13,$r12
1c003ed4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ed8:	0040898c 	slli.w	$r12,$r12,0x2
1c003edc:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003ee0:	001031cc 	add.w	$r12,$r14,$r12
1c003ee4:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003ee8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003eec:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ef0:	00150184 	move	$r4,$r12
1c003ef4:	57fe13ff 	bl	-496(0xffffe10) # 1c003d04 <TOUCH_GetBaseVal>
1c003ef8:	0015008c 	move	$r12,$r4
1c003efc:	0015018d 	move	$r13,$r12
1c003f00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f04:	0040898c 	slli.w	$r12,$r12,0x2
1c003f08:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003f0c:	001031cc 	add.w	$r12,$r14,$r12
1c003f10:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003f14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f18:	0040898c 	slli.w	$r12,$r12,0x2
1c003f1c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003f20:	001031ac 	add.w	$r12,$r13,$r12
1c003f24:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003f28:	40004980 	beqz	$r12,72(0x48) # 1c003f70 <Printf_KeyVal+0xcc>
1c003f2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f30:	0040898c 	slli.w	$r12,$r12,0x2
1c003f34:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003f38:	001031ac 	add.w	$r12,$r13,$r12
1c003f3c:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003f40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f44:	0040898c 	slli.w	$r12,$r12,0x2
1c003f48:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003f4c:	001031cc 	add.w	$r12,$r14,$r12
1c003f50:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003f54:	001131ad 	sub.w	$r13,$r13,$r12
1c003f58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f5c:	0040898c 	slli.w	$r12,$r12,0x2
1c003f60:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003f64:	001031cc 	add.w	$r12,$r14,$r12
1c003f68:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003f6c:	50001800 	b	24(0x18) # 1c003f84 <Printf_KeyVal+0xe0>
1c003f70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f74:	0040898c 	slli.w	$r12,$r12,0x2
1c003f78:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003f7c:	001031ac 	add.w	$r12,$r13,$r12
1c003f80:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003f84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003f8c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003f90:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003f94:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003f98:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003ebc <Printf_KeyVal+0x18>
1c003f9c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003fa0:	029f4084 	addi.w	$r4,$r4,2000(0x7d0)
1c003fa4:	57dd17ff 	bl	-8940(0xfffdd14) # 1c001cb8 <myprintf>
1c003fa8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003fac:	029fb084 	addi.w	$r4,$r4,2028(0x7ec)
1c003fb0:	57dd0bff 	bl	-8952(0xfffdd08) # 1c001cb8 <myprintf>
1c003fb4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003fb8:	50003400 	b	52(0x34) # 1c003fec <Printf_KeyVal+0x148>
1c003fbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fc0:	0040898c 	slli.w	$r12,$r12,0x2
1c003fc4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003fc8:	001031ac 	add.w	$r12,$r13,$r12
1c003fcc:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003fd0:	00150185 	move	$r5,$r12
1c003fd4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003fd8:	029f2084 	addi.w	$r4,$r4,1992(0x7c8)
1c003fdc:	57dcdfff 	bl	-8996(0xfffdcdc) # 1c001cb8 <myprintf>
1c003fe0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fe4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003fe8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003fec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ff0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003ff4:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003fbc <Printf_KeyVal+0x118>
1c003ff8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ffc:	029eb084 	addi.w	$r4,$r4,1964(0x7ac)
1c004000:	57dcbbff 	bl	-9032(0xfffdcb8) # 1c001cb8 <myprintf>
1c004004:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004008:	50003400 	b	52(0x34) # 1c00403c <Printf_KeyVal+0x198>
1c00400c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004010:	0040898c 	slli.w	$r12,$r12,0x2
1c004014:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004018:	001031ac 	add.w	$r12,$r13,$r12
1c00401c:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c004020:	00150185 	move	$r5,$r12
1c004024:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004028:	029de084 	addi.w	$r4,$r4,1912(0x778)
1c00402c:	57dc8fff 	bl	-9076(0xfffdc8c) # 1c001cb8 <myprintf>
1c004030:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004034:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004038:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00403c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004040:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004044:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c00400c <Printf_KeyVal+0x168>
1c004048:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00404c:	029da084 	addi.w	$r4,$r4,1896(0x768)
1c004050:	57dc6bff 	bl	-9112(0xfffdc68) # 1c001cb8 <myprintf>
1c004054:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004058:	50007400 	b	116(0x74) # 1c0040cc <Printf_KeyVal+0x228>
1c00405c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004060:	0040898c 	slli.w	$r12,$r12,0x2
1c004064:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004068:	001031ac 	add.w	$r12,$r13,$r12
1c00406c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c004070:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c00409c <Printf_KeyVal+0x1f8>
1c004074:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004078:	0040898c 	slli.w	$r12,$r12,0x2
1c00407c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004080:	001031ac 	add.w	$r12,$r13,$r12
1c004084:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c004088:	00150185 	move	$r5,$r12
1c00408c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004090:	029cc084 	addi.w	$r4,$r4,1840(0x730)
1c004094:	57dc27ff 	bl	-9180(0xfffdc24) # 1c001cb8 <myprintf>
1c004098:	50002800 	b	40(0x28) # 1c0040c0 <Printf_KeyVal+0x21c>
1c00409c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0040a0:	0040898c 	slli.w	$r12,$r12,0x2
1c0040a4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0040a8:	001031ac 	add.w	$r12,$r13,$r12
1c0040ac:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c0040b0:	00150185 	move	$r5,$r12
1c0040b4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0040b8:	029c4084 	addi.w	$r4,$r4,1808(0x710)
1c0040bc:	57dbffff 	bl	-9220(0xfffdbfc) # 1c001cb8 <myprintf>
1c0040c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0040c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0040c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0040cc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0040d0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0040d4:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c00405c <Printf_KeyVal+0x1b8>
1c0040d8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0040dc:	0299a084 	addi.w	$r4,$r4,1640(0x668)
1c0040e0:	57dbdbff 	bl	-9256(0xfffdbd8) # 1c001cb8 <myprintf>
1c0040e4:	03400000 	andi	$r0,$r0,0x0
1c0040e8:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c0040ec:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c0040f0:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c0040f4:	4c000020 	jirl	$r0,$r1,0

1c0040f8 <TIM_Init>:
TIM_Init():
1c0040f8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0040fc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004100:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004104:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004108:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00410c:	29800180 	st.w	$r0,$r12,0
1c004110:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004114:	0380118c 	ori	$r12,$r12,0x4
1c004118:	29800180 	st.w	$r0,$r12,0
1c00411c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004120:	0380218c 	ori	$r12,$r12,0x8
1c004124:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004128:	288011ad 	ld.w	$r13,$r13,4(0x4)
1c00412c:	2980018d 	st.w	$r13,$r12,0
1c004130:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004134:	0380318c 	ori	$r12,$r12,0xc
1c004138:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00413c:	288021ad 	ld.w	$r13,$r13,8(0x8)
1c004140:	2980018d 	st.w	$r13,$r12,0
1c004144:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004148:	2880018e 	ld.w	$r14,$r12,0
1c00414c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004150:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c004154:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004158:	001535cd 	or	$r13,$r14,$r13
1c00415c:	2980018d 	st.w	$r13,$r12,0
1c004160:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004164:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c004168:	40002180 	beqz	$r12,32(0x20) # 1c004188 <TIM_Init+0x90>
1c00416c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004170:	2a00018c 	ld.bu	$r12,$r12,0
1c004174:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004178:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00417c:	038005ad 	ori	$r13,$r13,0x1
1c004180:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c004184:	2900018d 	st.b	$r13,$r12,0
1c004188:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00418c:	2880018e 	ld.w	$r14,$r12,0
1c004190:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004194:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c004198:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00419c:	001535cd 	or	$r13,$r14,$r13
1c0041a0:	2980018d 	st.w	$r13,$r12,0
1c0041a4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0041a8:	2880018e 	ld.w	$r14,$r12,0
1c0041ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041b0:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c0041b4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0041b8:	001535cd 	or	$r13,$r14,$r13
1c0041bc:	2980018d 	st.w	$r13,$r12,0
1c0041c0:	03400000 	andi	$r0,$r0,0x0
1c0041c4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0041c8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0041cc:	4c000020 	jirl	$r0,$r1,0

1c0041d0 <TIM_StructInit>:
TIM_StructInit():
1c0041d0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0041d4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0041d8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0041dc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0041e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041e4:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0041e8:	038801ad 	ori	$r13,$r13,0x200
1c0041ec:	2980018d 	st.w	$r13,$r12,0
1c0041f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041f4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0041f8:	2980618d 	st.w	$r13,$r12,24(0x18)
1c0041fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004200:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c004204:	2980518d 	st.w	$r13,$r12,20(0x14)
1c004208:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00420c:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004210:	2980418d 	st.w	$r13,$r12,16(0x10)
1c004214:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004218:	1400002d 	lu12i.w	$r13,1(0x1)
1c00421c:	03bcfdad 	ori	$r13,$r13,0xf3f
1c004220:	2980118d 	st.w	$r13,$r12,4(0x4)
1c004224:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004228:	29802180 	st.w	$r0,$r12,8(0x8)
1c00422c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004230:	29803180 	st.w	$r0,$r12,12(0xc)
1c004234:	03400000 	andi	$r0,$r0,0x0
1c004238:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00423c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004240:	4c000020 	jirl	$r0,$r1,0

1c004244 <timer_init>:
timer_init():
1c004244:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c004248:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c00424c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c004250:	02810076 	addi.w	$r22,$r3,64(0x40)
1c004254:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c004258:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c00425c:	00150184 	move	$r4,$r12
1c004260:	57ff73ff 	bl	-144(0xfffff70) # 1c0041d0 <TIM_StructInit>
1c004264:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c004268:	1400002c 	lu12i.w	$r12,1(0x1)
1c00426c:	03bd018c 	ori	$r12,$r12,0xf40
1c004270:	001c31ac 	mul.w	$r12,$r13,$r12
1c004274:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c004278:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c00427c:	00150184 	move	$r4,$r12
1c004280:	57fe7bff 	bl	-392(0xffffe78) # 1c0040f8 <TIM_Init>
1c004284:	03400000 	andi	$r0,$r0,0x0
1c004288:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c00428c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c004290:	02810063 	addi.w	$r3,$r3,64(0x40)
1c004294:	4c000020 	jirl	$r0,$r1,0

1c004298 <TIM_GetITStatus>:
TIM_GetITStatus():
1c004298:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00429c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0042a0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0042a4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0042a8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0042ac:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0042b0:	2880018d 	ld.w	$r13,$r12,0
1c0042b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0042b8:	0014b1ac 	and	$r12,$r13,$r12
1c0042bc:	40001180 	beqz	$r12,16(0x10) # 1c0042cc <TIM_GetITStatus+0x34>
1c0042c0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0042c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0042c8:	50000800 	b	8(0x8) # 1c0042d0 <TIM_GetITStatus+0x38>
1c0042cc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0042d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0042d4:	00150184 	move	$r4,$r12
1c0042d8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0042dc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0042e0:	4c000020 	jirl	$r0,$r1,0

1c0042e4 <TIM_ClearIT>:
TIM_ClearIT():
1c0042e4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0042e8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0042ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0042f0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0042f4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0042f8:	2880018e 	ld.w	$r14,$r12,0
1c0042fc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004300:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004304:	001535cd 	or	$r13,$r14,$r13
1c004308:	2980018d 	st.w	$r13,$r12,0
1c00430c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004310:	03800d8c 	ori	$r12,$r12,0x3
1c004314:	2a00018c 	ld.bu	$r12,$r12,0
1c004318:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00431c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004320:	03800d8c 	ori	$r12,$r12,0x3
1c004324:	038005ad 	ori	$r13,$r13,0x1
1c004328:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00432c:	2900018d 	st.b	$r13,$r12,0
1c004330:	03400000 	andi	$r0,$r0,0x0
1c004334:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004338:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00433c:	4c000020 	jirl	$r0,$r1,0

1c004340 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c004340:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004344:	29803061 	st.w	$r1,$r3,12(0xc)
1c004348:	29802076 	st.w	$r22,$r3,8(0x8)
1c00434c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004350:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004354:	0297c0c6 	addi.w	$r6,$r6,1520(0x5f0)
1c004358:	02805005 	addi.w	$r5,$r0,20(0x14)
1c00435c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004360:	0291c084 	addi.w	$r4,$r4,1136(0x470)
1c004364:	57d957ff 	bl	-9900(0xfffd954) # 1c001cb8 <myprintf>
1c004368:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00436c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004370:	03808184 	ori	$r4,$r12,0x20
1c004374:	57f607ff 	bl	-2556(0xffff604) # 1c003978 <EXTI_ClearITPendingBit>
1c004378:	03400000 	andi	$r0,$r0,0x0
1c00437c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004380:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004384:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004388:	4c000020 	jirl	$r0,$r1,0

1c00438c <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c00438c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004390:	29803061 	st.w	$r1,$r3,12(0xc)
1c004394:	29802076 	st.w	$r22,$r3,8(0x8)
1c004398:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00439c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043a0:	0296f0c6 	addi.w	$r6,$r6,1468(0x5bc)
1c0043a4:	02806405 	addi.w	$r5,$r0,25(0x19)
1c0043a8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043ac:	02909084 	addi.w	$r4,$r4,1060(0x424)
1c0043b0:	57d90bff 	bl	-9976(0xfffd908) # 1c001cb8 <myprintf>
1c0043b4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0043b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043bc:	03808184 	ori	$r4,$r12,0x20
1c0043c0:	57f5bbff 	bl	-2632(0xffff5b8) # 1c003978 <EXTI_ClearITPendingBit>
1c0043c4:	03400000 	andi	$r0,$r0,0x0
1c0043c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043d4:	4c000020 	jirl	$r0,$r1,0

1c0043d8 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c0043d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043e8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043ec:	029620c6 	addi.w	$r6,$r6,1416(0x588)
1c0043f0:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c0043f4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043f8:	028f6084 	addi.w	$r4,$r4,984(0x3d8)
1c0043fc:	57d8bfff 	bl	-10052(0xfffd8bc) # 1c001cb8 <myprintf>
1c004400:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004404:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004408:	03808184 	ori	$r4,$r12,0x20
1c00440c:	57f56fff 	bl	-2708(0xffff56c) # 1c003978 <EXTI_ClearITPendingBit>
1c004410:	03400000 	andi	$r0,$r0,0x0
1c004414:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004418:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00441c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004420:	4c000020 	jirl	$r0,$r1,0

1c004424 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c004424:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004428:	29803061 	st.w	$r1,$r3,12(0xc)
1c00442c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004430:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004434:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004438:	029550c6 	addi.w	$r6,$r6,1364(0x554)
1c00443c:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c004440:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004444:	028e3084 	addi.w	$r4,$r4,908(0x38c)
1c004448:	57d873ff 	bl	-10128(0xfffd870) # 1c001cb8 <myprintf>
1c00444c:	02802005 	addi.w	$r5,$r0,8(0x8)
1c004450:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004454:	03808184 	ori	$r4,$r12,0x20
1c004458:	57f523ff 	bl	-2784(0xffff520) # 1c003978 <EXTI_ClearITPendingBit>
1c00445c:	03400000 	andi	$r0,$r0,0x0
1c004460:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004464:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004468:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00446c:	4c000020 	jirl	$r0,$r1,0

1c004470 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c004470:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004474:	29803061 	st.w	$r1,$r3,12(0xc)
1c004478:	29802076 	st.w	$r22,$r3,8(0x8)
1c00447c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004480:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004484:	029480c6 	addi.w	$r6,$r6,1312(0x520)
1c004488:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c00448c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004490:	028d0084 	addi.w	$r4,$r4,832(0x340)
1c004494:	57d827ff 	bl	-10204(0xfffd824) # 1c001cb8 <myprintf>
1c004498:	02804005 	addi.w	$r5,$r0,16(0x10)
1c00449c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044a0:	03808184 	ori	$r4,$r12,0x20
1c0044a4:	57f4d7ff 	bl	-2860(0xffff4d4) # 1c003978 <EXTI_ClearITPendingBit>
1c0044a8:	03400000 	andi	$r0,$r0,0x0
1c0044ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044b8:	4c000020 	jirl	$r0,$r1,0

1c0044bc <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c0044bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044cc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044d0:	0293b0c6 	addi.w	$r6,$r6,1260(0x4ec)
1c0044d4:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c0044d8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0044dc:	028bd084 	addi.w	$r4,$r4,756(0x2f4)
1c0044e0:	57d7dbff 	bl	-10280(0xfffd7d8) # 1c001cb8 <myprintf>
1c0044e4:	02808005 	addi.w	$r5,$r0,32(0x20)
1c0044e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044ec:	03808184 	ori	$r4,$r12,0x20
1c0044f0:	57f48bff 	bl	-2936(0xffff488) # 1c003978 <EXTI_ClearITPendingBit>
1c0044f4:	03400000 	andi	$r0,$r0,0x0
1c0044f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004500:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004504:	4c000020 	jirl	$r0,$r1,0

1c004508 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c004508:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00450c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004510:	29802076 	st.w	$r22,$r3,8(0x8)
1c004514:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004518:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00451c:	0292e0c6 	addi.w	$r6,$r6,1208(0x4b8)
1c004520:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c004524:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004528:	028aa084 	addi.w	$r4,$r4,680(0x2a8)
1c00452c:	57d78fff 	bl	-10356(0xfffd78c) # 1c001cb8 <myprintf>
1c004530:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004534:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004538:	03808184 	ori	$r4,$r12,0x20
1c00453c:	57f43fff 	bl	-3012(0xffff43c) # 1c003978 <EXTI_ClearITPendingBit>
1c004540:	03400000 	andi	$r0,$r0,0x0
1c004544:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004548:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00454c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004550:	4c000020 	jirl	$r0,$r1,0

1c004554 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c004554:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004558:	29803061 	st.w	$r1,$r3,12(0xc)
1c00455c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004560:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004564:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004568:	029210c6 	addi.w	$r6,$r6,1156(0x484)
1c00456c:	0280dc05 	addi.w	$r5,$r0,55(0x37)
1c004570:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004574:	02897084 	addi.w	$r4,$r4,604(0x25c)
1c004578:	57d743ff 	bl	-10432(0xfffd740) # 1c001cb8 <myprintf>
1c00457c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c004580:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004584:	03808184 	ori	$r4,$r12,0x20
1c004588:	57f3f3ff 	bl	-3088(0xffff3f0) # 1c003978 <EXTI_ClearITPendingBit>
1c00458c:	03400000 	andi	$r0,$r0,0x0
1c004590:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004594:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004598:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00459c:	4c000020 	jirl	$r0,$r1,0

1c0045a0 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0045a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045b0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045b4:	029140c6 	addi.w	$r6,$r6,1104(0x450)
1c0045b8:	0280f005 	addi.w	$r5,$r0,60(0x3c)
1c0045bc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0045c0:	02884084 	addi.w	$r4,$r4,528(0x210)
1c0045c4:	57d6f7ff 	bl	-10508(0xfffd6f4) # 1c001cb8 <myprintf>
1c0045c8:	02840005 	addi.w	$r5,$r0,256(0x100)
1c0045cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045d0:	03808184 	ori	$r4,$r12,0x20
1c0045d4:	57f3a7ff 	bl	-3164(0xffff3a4) # 1c003978 <EXTI_ClearITPendingBit>
1c0045d8:	03400000 	andi	$r0,$r0,0x0
1c0045dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045e8:	4c000020 	jirl	$r0,$r1,0

1c0045ec <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c0045ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045fc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004600:	029070c6 	addi.w	$r6,$r6,1052(0x41c)
1c004604:	02810405 	addi.w	$r5,$r0,65(0x41)
1c004608:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00460c:	02871084 	addi.w	$r4,$r4,452(0x1c4)
1c004610:	57d6abff 	bl	-10584(0xfffd6a8) # 1c001cb8 <myprintf>
1c004614:	02880005 	addi.w	$r5,$r0,512(0x200)
1c004618:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00461c:	03808184 	ori	$r4,$r12,0x20
1c004620:	57f35bff 	bl	-3240(0xffff358) # 1c003978 <EXTI_ClearITPendingBit>
1c004624:	03400000 	andi	$r0,$r0,0x0
1c004628:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00462c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004630:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004634:	4c000020 	jirl	$r0,$r1,0

1c004638 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c004638:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00463c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004640:	29802076 	st.w	$r22,$r3,8(0x8)
1c004644:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004648:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00464c:	028fa0c6 	addi.w	$r6,$r6,1000(0x3e8)
1c004650:	02811805 	addi.w	$r5,$r0,70(0x46)
1c004654:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004658:	0285e084 	addi.w	$r4,$r4,376(0x178)
1c00465c:	57d65fff 	bl	-10660(0xfffd65c) # 1c001cb8 <myprintf>
1c004660:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c004664:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004668:	03808184 	ori	$r4,$r12,0x20
1c00466c:	57f30fff 	bl	-3316(0xffff30c) # 1c003978 <EXTI_ClearITPendingBit>
1c004670:	03400000 	andi	$r0,$r0,0x0
1c004674:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004678:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00467c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004680:	4c000020 	jirl	$r0,$r1,0

1c004684 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c004684:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004688:	29803061 	st.w	$r1,$r3,12(0xc)
1c00468c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004690:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004694:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004698:	028ed0c6 	addi.w	$r6,$r6,948(0x3b4)
1c00469c:	02812c05 	addi.w	$r5,$r0,75(0x4b)
1c0046a0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046a4:	0284b084 	addi.w	$r4,$r4,300(0x12c)
1c0046a8:	57d613ff 	bl	-10736(0xfffd610) # 1c001cb8 <myprintf>
1c0046ac:	03a00005 	ori	$r5,$r0,0x800
1c0046b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046b4:	03808184 	ori	$r4,$r12,0x20
1c0046b8:	57f2c3ff 	bl	-3392(0xffff2c0) # 1c003978 <EXTI_ClearITPendingBit>
1c0046bc:	03400000 	andi	$r0,$r0,0x0
1c0046c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046c4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046cc:	4c000020 	jirl	$r0,$r1,0

1c0046d0 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c0046d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046d8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046e0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0046e4:	028e00c6 	addi.w	$r6,$r6,896(0x380)
1c0046e8:	02814005 	addi.w	$r5,$r0,80(0x50)
1c0046ec:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046f0:	02838084 	addi.w	$r4,$r4,224(0xe0)
1c0046f4:	57d5c7ff 	bl	-10812(0xfffd5c4) # 1c001cb8 <myprintf>
1c0046f8:	14000025 	lu12i.w	$r5,1(0x1)
1c0046fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004700:	03808184 	ori	$r4,$r12,0x20
1c004704:	57f277ff 	bl	-3468(0xffff274) # 1c003978 <EXTI_ClearITPendingBit>
1c004708:	03400000 	andi	$r0,$r0,0x0
1c00470c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004710:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004714:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004718:	4c000020 	jirl	$r0,$r1,0

1c00471c <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c00471c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004720:	29803061 	st.w	$r1,$r3,12(0xc)
1c004724:	29802076 	st.w	$r22,$r3,8(0x8)
1c004728:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00472c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004730:	028d30c6 	addi.w	$r6,$r6,844(0x34c)
1c004734:	02815405 	addi.w	$r5,$r0,85(0x55)
1c004738:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00473c:	02825084 	addi.w	$r4,$r4,148(0x94)
1c004740:	57d57bff 	bl	-10888(0xfffd578) # 1c001cb8 <myprintf>
1c004744:	14000045 	lu12i.w	$r5,2(0x2)
1c004748:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00474c:	03808184 	ori	$r4,$r12,0x20
1c004750:	57f22bff 	bl	-3544(0xffff228) # 1c003978 <EXTI_ClearITPendingBit>
1c004754:	03400000 	andi	$r0,$r0,0x0
1c004758:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00475c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004760:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004764:	4c000020 	jirl	$r0,$r1,0

1c004768 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c004768:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00476c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004770:	29802076 	st.w	$r22,$r3,8(0x8)
1c004774:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004778:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00477c:	028c60c6 	addi.w	$r6,$r6,792(0x318)
1c004780:	02816805 	addi.w	$r5,$r0,90(0x5a)
1c004784:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004788:	02812084 	addi.w	$r4,$r4,72(0x48)
1c00478c:	57d52fff 	bl	-10964(0xfffd52c) # 1c001cb8 <myprintf>
1c004790:	14000085 	lu12i.w	$r5,4(0x4)
1c004794:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004798:	03808184 	ori	$r4,$r12,0x20
1c00479c:	57f1dfff 	bl	-3620(0xffff1dc) # 1c003978 <EXTI_ClearITPendingBit>
1c0047a0:	03400000 	andi	$r0,$r0,0x0
1c0047a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047b0:	4c000020 	jirl	$r0,$r1,0

1c0047b4 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c0047b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047b8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047bc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047c4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0047c8:	028b90c6 	addi.w	$r6,$r6,740(0x2e4)
1c0047cc:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c0047d0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0047d4:	02bff084 	addi.w	$r4,$r4,-4(0xffc)
1c0047d8:	57d4e3ff 	bl	-11040(0xfffd4e0) # 1c001cb8 <myprintf>
1c0047dc:	14000105 	lu12i.w	$r5,8(0x8)
1c0047e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047e4:	03808184 	ori	$r4,$r12,0x20
1c0047e8:	57f193ff 	bl	-3696(0xffff190) # 1c003978 <EXTI_ClearITPendingBit>
1c0047ec:	03400000 	andi	$r0,$r0,0x0
1c0047f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047fc:	4c000020 	jirl	$r0,$r1,0

1c004800 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c004800:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004804:	29803061 	st.w	$r1,$r3,12(0xc)
1c004808:	29802076 	st.w	$r22,$r3,8(0x8)
1c00480c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004810:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004814:	028ac0c6 	addi.w	$r6,$r6,688(0x2b0)
1c004818:	02819405 	addi.w	$r5,$r0,101(0x65)
1c00481c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004820:	02bec084 	addi.w	$r4,$r4,-80(0xfb0)
1c004824:	57d497ff 	bl	-11116(0xfffd494) # 1c001cb8 <myprintf>
1c004828:	14000205 	lu12i.w	$r5,16(0x10)
1c00482c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004830:	03808184 	ori	$r4,$r12,0x20
1c004834:	57f147ff 	bl	-3772(0xffff144) # 1c003978 <EXTI_ClearITPendingBit>
1c004838:	03400000 	andi	$r0,$r0,0x0
1c00483c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004840:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004844:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004848:	4c000020 	jirl	$r0,$r1,0

1c00484c <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c00484c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004850:	29803061 	st.w	$r1,$r3,12(0xc)
1c004854:	29802076 	st.w	$r22,$r3,8(0x8)
1c004858:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00485c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004860:	0289f0c6 	addi.w	$r6,$r6,636(0x27c)
1c004864:	0281a805 	addi.w	$r5,$r0,106(0x6a)
1c004868:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00486c:	02bd9084 	addi.w	$r4,$r4,-156(0xf64)
1c004870:	57d44bff 	bl	-11192(0xfffd448) # 1c001cb8 <myprintf>
1c004874:	14000405 	lu12i.w	$r5,32(0x20)
1c004878:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00487c:	03808184 	ori	$r4,$r12,0x20
1c004880:	57f0fbff 	bl	-3848(0xffff0f8) # 1c003978 <EXTI_ClearITPendingBit>
1c004884:	03400000 	andi	$r0,$r0,0x0
1c004888:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00488c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004890:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004894:	4c000020 	jirl	$r0,$r1,0

1c004898 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c004898:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00489c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048a8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0048ac:	028920c6 	addi.w	$r6,$r6,584(0x248)
1c0048b0:	0281bc05 	addi.w	$r5,$r0,111(0x6f)
1c0048b4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0048b8:	02bc6084 	addi.w	$r4,$r4,-232(0xf18)
1c0048bc:	57d3ffff 	bl	-11268(0xfffd3fc) # 1c001cb8 <myprintf>
1c0048c0:	14000805 	lu12i.w	$r5,64(0x40)
1c0048c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048c8:	03808184 	ori	$r4,$r12,0x20
1c0048cc:	57f0afff 	bl	-3924(0xffff0ac) # 1c003978 <EXTI_ClearITPendingBit>
1c0048d0:	03400000 	andi	$r0,$r0,0x0
1c0048d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048e0:	4c000020 	jirl	$r0,$r1,0

1c0048e4 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c0048e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048f4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0048f8:	028850c6 	addi.w	$r6,$r6,532(0x214)
1c0048fc:	0281d005 	addi.w	$r5,$r0,116(0x74)
1c004900:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004904:	02bb3084 	addi.w	$r4,$r4,-308(0xecc)
1c004908:	57d3b3ff 	bl	-11344(0xfffd3b0) # 1c001cb8 <myprintf>
1c00490c:	14001005 	lu12i.w	$r5,128(0x80)
1c004910:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004914:	03808184 	ori	$r4,$r12,0x20
1c004918:	57f063ff 	bl	-4000(0xffff060) # 1c003978 <EXTI_ClearITPendingBit>
1c00491c:	03400000 	andi	$r0,$r0,0x0
1c004920:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004924:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004928:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00492c:	4c000020 	jirl	$r0,$r1,0

1c004930 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c004930:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004934:	29803061 	st.w	$r1,$r3,12(0xc)
1c004938:	29802076 	st.w	$r22,$r3,8(0x8)
1c00493c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004940:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004944:	028780c6 	addi.w	$r6,$r6,480(0x1e0)
1c004948:	0281e405 	addi.w	$r5,$r0,121(0x79)
1c00494c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004950:	02ba0084 	addi.w	$r4,$r4,-384(0xe80)
1c004954:	57d367ff 	bl	-11420(0xfffd364) # 1c001cb8 <myprintf>
1c004958:	14002005 	lu12i.w	$r5,256(0x100)
1c00495c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004960:	03808184 	ori	$r4,$r12,0x20
1c004964:	57f017ff 	bl	-4076(0xffff014) # 1c003978 <EXTI_ClearITPendingBit>
1c004968:	03400000 	andi	$r0,$r0,0x0
1c00496c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004970:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004974:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004978:	4c000020 	jirl	$r0,$r1,0

1c00497c <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c00497c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004980:	29803061 	st.w	$r1,$r3,12(0xc)
1c004984:	29802076 	st.w	$r22,$r3,8(0x8)
1c004988:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00498c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004990:	0286b0c6 	addi.w	$r6,$r6,428(0x1ac)
1c004994:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c004998:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00499c:	02b8d084 	addi.w	$r4,$r4,-460(0xe34)
1c0049a0:	57d31bff 	bl	-11496(0xfffd318) # 1c001cb8 <myprintf>
1c0049a4:	14004005 	lu12i.w	$r5,512(0x200)
1c0049a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049ac:	03808184 	ori	$r4,$r12,0x20
1c0049b0:	57efcbff 	bl	-4152(0xfffefc8) # 1c003978 <EXTI_ClearITPendingBit>
1c0049b4:	03400000 	andi	$r0,$r0,0x0
1c0049b8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049bc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049c4:	4c000020 	jirl	$r0,$r1,0

1c0049c8 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c0049c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049d0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049d8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0049dc:	0285e0c6 	addi.w	$r6,$r6,376(0x178)
1c0049e0:	02820c05 	addi.w	$r5,$r0,131(0x83)
1c0049e4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0049e8:	02b7a084 	addi.w	$r4,$r4,-536(0xde8)
1c0049ec:	57d2cfff 	bl	-11572(0xfffd2cc) # 1c001cb8 <myprintf>
1c0049f0:	14008005 	lu12i.w	$r5,1024(0x400)
1c0049f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049f8:	03808184 	ori	$r4,$r12,0x20
1c0049fc:	57ef7fff 	bl	-4228(0xfffef7c) # 1c003978 <EXTI_ClearITPendingBit>
1c004a00:	03400000 	andi	$r0,$r0,0x0
1c004a04:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a08:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a0c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a10:	4c000020 	jirl	$r0,$r1,0

1c004a14 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c004a14:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a18:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a1c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a20:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a24:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004a28:	028510c6 	addi.w	$r6,$r6,324(0x144)
1c004a2c:	02822005 	addi.w	$r5,$r0,136(0x88)
1c004a30:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004a34:	02b67084 	addi.w	$r4,$r4,-612(0xd9c)
1c004a38:	57d283ff 	bl	-11648(0xfffd280) # 1c001cb8 <myprintf>
1c004a3c:	14010005 	lu12i.w	$r5,2048(0x800)
1c004a40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a44:	03808184 	ori	$r4,$r12,0x20
1c004a48:	57ef33ff 	bl	-4304(0xfffef30) # 1c003978 <EXTI_ClearITPendingBit>
1c004a4c:	03400000 	andi	$r0,$r0,0x0
1c004a50:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a54:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a58:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a5c:	4c000020 	jirl	$r0,$r1,0

1c004a60 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c004a60:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a64:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a68:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a6c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a70:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004a74:	028440c6 	addi.w	$r6,$r6,272(0x110)
1c004a78:	02823405 	addi.w	$r5,$r0,141(0x8d)
1c004a7c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004a80:	02b54084 	addi.w	$r4,$r4,-688(0xd50)
1c004a84:	57d237ff 	bl	-11724(0xfffd234) # 1c001cb8 <myprintf>
1c004a88:	14020005 	lu12i.w	$r5,4096(0x1000)
1c004a8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a90:	03808184 	ori	$r4,$r12,0x20
1c004a94:	57eee7ff 	bl	-4380(0xfffeee4) # 1c003978 <EXTI_ClearITPendingBit>
1c004a98:	03400000 	andi	$r0,$r0,0x0
1c004a9c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004aa0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004aa4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004aa8:	4c000020 	jirl	$r0,$r1,0

1c004aac <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c004aac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ab0:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ab4:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ab8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004abc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004ac0:	028370c6 	addi.w	$r6,$r6,220(0xdc)
1c004ac4:	02824805 	addi.w	$r5,$r0,146(0x92)
1c004ac8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004acc:	02b41084 	addi.w	$r4,$r4,-764(0xd04)
1c004ad0:	57d1ebff 	bl	-11800(0xfffd1e8) # 1c001cb8 <myprintf>
1c004ad4:	14040005 	lu12i.w	$r5,8192(0x2000)
1c004ad8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004adc:	03808184 	ori	$r4,$r12,0x20
1c004ae0:	57ee9bff 	bl	-4456(0xfffee98) # 1c003978 <EXTI_ClearITPendingBit>
1c004ae4:	03400000 	andi	$r0,$r0,0x0
1c004ae8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004aec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004af0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004af4:	4c000020 	jirl	$r0,$r1,0

1c004af8 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004af8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004afc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b00:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b04:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b08:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004b0c:	0282a0c6 	addi.w	$r6,$r6,168(0xa8)
1c004b10:	02825c05 	addi.w	$r5,$r0,151(0x97)
1c004b14:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004b18:	02b2e084 	addi.w	$r4,$r4,-840(0xcb8)
1c004b1c:	57d19fff 	bl	-11876(0xfffd19c) # 1c001cb8 <myprintf>
1c004b20:	14080005 	lu12i.w	$r5,16384(0x4000)
1c004b24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b28:	03808184 	ori	$r4,$r12,0x20
1c004b2c:	57ee4fff 	bl	-4532(0xfffee4c) # 1c003978 <EXTI_ClearITPendingBit>
1c004b30:	03400000 	andi	$r0,$r0,0x0
1c004b34:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b38:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b3c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b40:	4c000020 	jirl	$r0,$r1,0

1c004b44 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004b44:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b48:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b4c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b50:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b54:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004b58:	0281d0c6 	addi.w	$r6,$r6,116(0x74)
1c004b5c:	02827005 	addi.w	$r5,$r0,156(0x9c)
1c004b60:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004b64:	02b1b084 	addi.w	$r4,$r4,-916(0xc6c)
1c004b68:	57d153ff 	bl	-11952(0xfffd150) # 1c001cb8 <myprintf>
1c004b6c:	14100005 	lu12i.w	$r5,32768(0x8000)
1c004b70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b74:	03808184 	ori	$r4,$r12,0x20
1c004b78:	57ee03ff 	bl	-4608(0xfffee00) # 1c003978 <EXTI_ClearITPendingBit>
1c004b7c:	03400000 	andi	$r0,$r0,0x0
1c004b80:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b84:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b88:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b8c:	4c000020 	jirl	$r0,$r1,0

1c004b90 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c004b90:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b94:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b98:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b9c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ba0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004ba4:	028100c6 	addi.w	$r6,$r6,64(0x40)
1c004ba8:	02828405 	addi.w	$r5,$r0,161(0xa1)
1c004bac:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004bb0:	02b08084 	addi.w	$r4,$r4,-992(0xc20)
1c004bb4:	57d107ff 	bl	-12028(0xfffd104) # 1c001cb8 <myprintf>
1c004bb8:	14200005 	lu12i.w	$r5,65536(0x10000)
1c004bbc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bc0:	03808184 	ori	$r4,$r12,0x20
1c004bc4:	57edb7ff 	bl	-4684(0xfffedb4) # 1c003978 <EXTI_ClearITPendingBit>
1c004bc8:	03400000 	andi	$r0,$r0,0x0
1c004bcc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004bd0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004bd4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004bd8:	4c000020 	jirl	$r0,$r1,0

1c004bdc <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004bdc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004be0:	29803061 	st.w	$r1,$r3,12(0xc)
1c004be4:	29802076 	st.w	$r22,$r3,8(0x8)
1c004be8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004bec:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004bf0:	028030c6 	addi.w	$r6,$r6,12(0xc)
1c004bf4:	02829c05 	addi.w	$r5,$r0,167(0xa7)
1c004bf8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004bfc:	02af5084 	addi.w	$r4,$r4,-1068(0xbd4)
1c004c00:	57d0bbff 	bl	-12104(0xfffd0b8) # 1c001cb8 <myprintf>
1c004c04:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004c08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c0c:	03808184 	ori	$r4,$r12,0x20
1c004c10:	57ed6bff 	bl	-4760(0xfffed68) # 1c003978 <EXTI_ClearITPendingBit>
1c004c14:	03400000 	andi	$r0,$r0,0x0
1c004c18:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c1c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c20:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c24:	4c000020 	jirl	$r0,$r1,0

1c004c28 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004c28:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c2c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c30:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c34:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c38:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004c3c:	02bf60c6 	addi.w	$r6,$r6,-40(0xfd8)
1c004c40:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c004c44:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004c48:	02ae2084 	addi.w	$r4,$r4,-1144(0xb88)
1c004c4c:	57d06fff 	bl	-12180(0xfffd06c) # 1c001cb8 <myprintf>
1c004c50:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004c54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c58:	03808184 	ori	$r4,$r12,0x20
1c004c5c:	57ed1fff 	bl	-4836(0xfffed1c) # 1c003978 <EXTI_ClearITPendingBit>
1c004c60:	03400000 	andi	$r0,$r0,0x0
1c004c64:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c68:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c6c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c70:	4c000020 	jirl	$r0,$r1,0

1c004c74 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c004c74:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c78:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c7c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c80:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c84:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004c88:	02be90c6 	addi.w	$r6,$r6,-92(0xfa4)
1c004c8c:	0282c405 	addi.w	$r5,$r0,177(0xb1)
1c004c90:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004c94:	02acf084 	addi.w	$r4,$r4,-1220(0xb3c)
1c004c98:	57d023ff 	bl	-12256(0xfffd020) # 1c001cb8 <myprintf>
1c004c9c:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c004ca0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ca4:	03808184 	ori	$r4,$r12,0x20
1c004ca8:	57ecd3ff 	bl	-4912(0xfffecd0) # 1c003978 <EXTI_ClearITPendingBit>
1c004cac:	03400000 	andi	$r0,$r0,0x0
1c004cb0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004cb4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004cb8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004cbc:	4c000020 	jirl	$r0,$r1,0

1c004cc0 <ext_handler>:
ext_handler():
1c004cc0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004cc4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004cc8:	29806076 	st.w	$r22,$r3,24(0x18)
1c004ccc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004cd0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004cd4:	0380f18c 	ori	$r12,$r12,0x3c
1c004cd8:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004cdc:	2980018d 	st.w	$r13,$r12,0
1c004ce0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ce4:	0380818c 	ori	$r12,$r12,0x20
1c004ce8:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004cec:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004cf0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004cf4:	0380818c 	ori	$r12,$r12,0x20
1c004cf8:	2880018c 	ld.w	$r12,$r12,0
1c004cfc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004d00:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004d04:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004d08:	0014b1ac 	and	$r12,$r13,$r12
1c004d0c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004d10:	03400000 	andi	$r0,$r0,0x0
1c004d14:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004d18:	50004000 	b	64(0x40) # 1c004d58 <ext_handler+0x98>
1c004d1c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004d20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004d24:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004d28:	0340058c 	andi	$r12,$r12,0x1
1c004d2c:	40002180 	beqz	$r12,32(0x20) # 1c004d4c <ext_handler+0x8c>
1c004d30:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c004d34:	02ad31ad 	addi.w	$r13,$r13,-1204(0xb4c)
1c004d38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004d3c:	0040898c 	slli.w	$r12,$r12,0x2
1c004d40:	001031ac 	add.w	$r12,$r13,$r12
1c004d44:	2880018c 	ld.w	$r12,$r12,0
1c004d48:	4c000181 	jirl	$r1,$r12,0
1c004d4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004d50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004d54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004d58:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004d5c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c004d60:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c004d1c <ext_handler+0x5c>
1c004d64:	03400000 	andi	$r0,$r0,0x0
1c004d68:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004d6c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004d70:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004d74:	4c000020 	jirl	$r0,$r1,0

1c004d78 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004d78:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004d7c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004d80:	29806076 	st.w	$r22,$r3,24(0x18)
1c004d84:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004d88:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d8c:	0380f18c 	ori	$r12,$r12,0x3c
1c004d90:	1400020d 	lu12i.w	$r13,16(0x10)
1c004d94:	2980018d 	st.w	$r13,$r12,0
1c004d98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d9c:	0380118c 	ori	$r12,$r12,0x4
1c004da0:	2880018c 	ld.w	$r12,$r12,0
1c004da4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004da8:	57ed23ff 	bl	-4832(0xfffed20) # 1c003ac8 <WDG_DogFeed>
1c004dac:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004db0:	57e477ff 	bl	-7052(0xfffe474) # 1c003224 <Wake_Set>
1c004db4:	03400000 	andi	$r0,$r0,0x0
1c004db8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004dbc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004dc0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004dc4:	4c000020 	jirl	$r0,$r1,0

1c004dc8 <TOUCH>:
TOUCH():
1c004dc8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004dcc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004dd0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004dd4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004dd8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004ddc:	0380118c 	ori	$r12,$r12,0x4
1c004de0:	2880018c 	ld.w	$r12,$r12,0
1c004de4:	0044c18c 	srli.w	$r12,$r12,0x10
1c004de8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004dec:	037ffd8c 	andi	$r12,$r12,0xfff
1c004df0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004df4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004df8:	0380118c 	ori	$r12,$r12,0x4
1c004dfc:	2880018c 	ld.w	$r12,$r12,0
1c004e00:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004e04:	03403d8c 	andi	$r12,$r12,0xf
1c004e08:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004e0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e10:	0380f18c 	ori	$r12,$r12,0x3c
1c004e14:	1400040d 	lu12i.w	$r13,32(0x20)
1c004e18:	2980018d 	st.w	$r13,$r12,0
1c004e1c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004e20:	0380118c 	ori	$r12,$r12,0x4
1c004e24:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004e28:	2980018d 	st.w	$r13,$r12,0
1c004e2c:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004e30:	00150184 	move	$r4,$r12
1c004e34:	57efe7ff 	bl	-4124(0xfffefe4) # 1c003e18 <Printf_KeyType>
1c004e38:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004e3c:	00150184 	move	$r4,$r12
1c004e40:	57ef5fff 	bl	-4260(0xfffef5c) # 1c003d9c <Printf_KeyChannel>
1c004e44:	57f063ff 	bl	-4000(0xffff060) # 1c003ea4 <Printf_KeyVal>
1c004e48:	03400000 	andi	$r0,$r0,0x0
1c004e4c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004e50:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004e54:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004e58:	4c000020 	jirl	$r0,$r1,0

1c004e5c <UART2_INT>:
UART2_INT():
1c004e5c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004e60:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004e64:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004e68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e6c:	0380f18c 	ori	$r12,$r12,0x3c
1c004e70:	1400080d 	lu12i.w	$r13,64(0x40)
1c004e74:	2980018d 	st.w	$r13,$r12,0
1c004e78:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004e7c:	0380098c 	ori	$r12,$r12,0x2
1c004e80:	2a00018c 	ld.bu	$r12,$r12,0
1c004e84:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004e88:	03400000 	andi	$r0,$r0,0x0
1c004e8c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004e90:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004e94:	4c000020 	jirl	$r0,$r1,0

1c004e98 <BAT_FAIL>:
BAT_FAIL():
1c004e98:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004e9c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004ea0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004ea4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004ea8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004eac:	0380118c 	ori	$r12,$r12,0x4
1c004eb0:	2880018c 	ld.w	$r12,$r12,0
1c004eb4:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004eb8:	03407d8c 	andi	$r12,$r12,0x1f
1c004ebc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004ec0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ec4:	0380118c 	ori	$r12,$r12,0x4
1c004ec8:	2880018e 	ld.w	$r14,$r12,0
1c004ecc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ed0:	0380f18c 	ori	$r12,$r12,0x3c
1c004ed4:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004ed8:	0014b5cd 	and	$r13,$r14,$r13
1c004edc:	2980018d 	st.w	$r13,$r12,0
1c004ee0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004ee4:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004ee8:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004f58 <BAT_FAIL+0xc0>
1c004eec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004ef0:	0040898d 	slli.w	$r13,$r12,0x2
1c004ef4:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c004ef8:	02a8218c 	addi.w	$r12,$r12,-1528(0xa08)
1c004efc:	001031ac 	add.w	$r12,$r13,$r12
1c004f00:	2880018c 	ld.w	$r12,$r12,0
1c004f04:	4c000180 	jirl	$r0,$r12,0
1c004f08:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f0c:	02a42084 	addi.w	$r4,$r4,-1784(0x908)
1c004f10:	57cdabff 	bl	-12888(0xfffcda8) # 1c001cb8 <myprintf>
1c004f14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004f18:	0380118c 	ori	$r12,$r12,0x4
1c004f1c:	29800180 	st.w	$r0,$r12,0
1c004f20:	50003c00 	b	60(0x3c) # 1c004f5c <BAT_FAIL+0xc4>
1c004f24:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004f28:	02a45084 	addi.w	$r4,$r4,-1772(0x914)
1c004f2c:	57cd8fff 	bl	-12916(0xfffcd8c) # 1c001cb8 <myprintf>
1c004f30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004f34:	0380118c 	ori	$r12,$r12,0x4
1c004f38:	2880018e 	ld.w	$r14,$r12,0
1c004f3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004f40:	0380118c 	ori	$r12,$r12,0x4
1c004f44:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004f48:	03bffdad 	ori	$r13,$r13,0xfff
1c004f4c:	0014b5cd 	and	$r13,$r14,$r13
1c004f50:	2980018d 	st.w	$r13,$r12,0
1c004f54:	50000800 	b	8(0x8) # 1c004f5c <BAT_FAIL+0xc4>
1c004f58:	03400000 	andi	$r0,$r0,0x0
1c004f5c:	03400000 	andi	$r0,$r0,0x0
1c004f60:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004f64:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004f68:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004f6c:	4c000020 	jirl	$r0,$r1,0

1c004f70 <intc_handler>:
intc_handler():
1c004f70:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004f74:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004f78:	29806076 	st.w	$r22,$r3,24(0x18)
1c004f7c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004f80:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004f84:	0380158c 	ori	$r12,$r12,0x5
1c004f88:	2a00018c 	ld.bu	$r12,$r12,0
1c004f8c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004f90:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004f94:	0340058c 	andi	$r12,$r12,0x1
1c004f98:	4001fd80 	beqz	$r12,508(0x1fc) # 1c005194 <intc_handler+0x224>
1c004f9c:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004fa0:	57f2fbff 	bl	-3336(0xffff2f8) # 1c004298 <TIM_GetITStatus>
1c004fa4:	0015008c 	move	$r12,$r4
1c004fa8:	4001ed80 	beqz	$r12,492(0x1ec) # 1c005194 <intc_handler+0x224>
1c004fac:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fb0:	0281518c 	addi.w	$r12,$r12,84(0x54)
1c004fb4:	2a00018c 	ld.bu	$r12,$r12,0
1c004fb8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004fbc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004fc0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fc4:	0281018c 	addi.w	$r12,$r12,64(0x40)
1c004fc8:	2900018d 	st.b	$r13,$r12,0
1c004fcc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fd0:	0280f18c 	addi.w	$r12,$r12,60(0x3c)
1c004fd4:	2a00018c 	ld.bu	$r12,$r12,0
1c004fd8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004fdc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004fe0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fe4:	0280a18c 	addi.w	$r12,$r12,40(0x28)
1c004fe8:	2900018d 	st.b	$r13,$r12,0
1c004fec:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ff0:	0280918c 	addi.w	$r12,$r12,36(0x24)
1c004ff4:	2a00018c 	ld.bu	$r12,$r12,0
1c004ff8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004ffc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005000:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005004:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c005008:	2900018d 	st.b	$r13,$r12,0
1c00500c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005010:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c005014:	2a00018c 	ld.bu	$r12,$r12,0
1c005018:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00501c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005020:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005024:	02bfe18c 	addi.w	$r12,$r12,-8(0xff8)
1c005028:	2900018d 	st.b	$r13,$r12,0
1c00502c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005030:	02bfd18c 	addi.w	$r12,$r12,-12(0xff4)
1c005034:	2a00018c 	ld.bu	$r12,$r12,0
1c005038:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00503c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005040:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005044:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c005048:	2900018d 	st.b	$r13,$r12,0
1c00504c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005050:	02bf718c 	addi.w	$r12,$r12,-36(0xfdc)
1c005054:	2a00018c 	ld.bu	$r12,$r12,0
1c005058:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00505c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005060:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005064:	02bf218c 	addi.w	$r12,$r12,-56(0xfc8)
1c005068:	2900018d 	st.b	$r13,$r12,0
1c00506c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005070:	02be518c 	addi.w	$r12,$r12,-108(0xf94)
1c005074:	2a00018d 	ld.bu	$r13,$r12,0
1c005078:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00507c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00509c <intc_handler+0x12c>
1c005080:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005084:	02be118c 	addi.w	$r12,$r12,-124(0xf84)
1c005088:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00508c:	2980018d 	st.w	$r13,$r12,0
1c005090:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005094:	02bdc18c 	addi.w	$r12,$r12,-144(0xf70)
1c005098:	29000180 	st.b	$r0,$r12,0
1c00509c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050a0:	02bdb18c 	addi.w	$r12,$r12,-148(0xf6c)
1c0050a4:	2a00018d 	ld.bu	$r13,$r12,0
1c0050a8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0050ac:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c0050cc <intc_handler+0x15c>
1c0050b0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050b4:	02bd718c 	addi.w	$r12,$r12,-164(0xf5c)
1c0050b8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0050bc:	2980018d 	st.w	$r13,$r12,0
1c0050c0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050c4:	02bd218c 	addi.w	$r12,$r12,-184(0xf48)
1c0050c8:	29000180 	st.b	$r0,$r12,0
1c0050cc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050d0:	02bd118c 	addi.w	$r12,$r12,-188(0xf44)
1c0050d4:	2a00018d 	ld.bu	$r13,$r12,0
1c0050d8:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c0050dc:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c0050fc <intc_handler+0x18c>
1c0050e0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050e4:	02bcd18c 	addi.w	$r12,$r12,-204(0xf34)
1c0050e8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0050ec:	2980018d 	st.w	$r13,$r12,0
1c0050f0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050f4:	02bc818c 	addi.w	$r12,$r12,-224(0xf20)
1c0050f8:	29000180 	st.b	$r0,$r12,0
1c0050fc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005100:	02bc718c 	addi.w	$r12,$r12,-228(0xf1c)
1c005104:	2a00018d 	ld.bu	$r13,$r12,0
1c005108:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00510c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00512c <intc_handler+0x1bc>
1c005110:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005114:	02bc318c 	addi.w	$r12,$r12,-244(0xf0c)
1c005118:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00511c:	2980018d 	st.w	$r13,$r12,0
1c005120:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005124:	02bbe18c 	addi.w	$r12,$r12,-264(0xef8)
1c005128:	29000180 	st.b	$r0,$r12,0
1c00512c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005130:	02bbd18c 	addi.w	$r12,$r12,-268(0xef4)
1c005134:	2a00018d 	ld.bu	$r13,$r12,0
1c005138:	0280c80c 	addi.w	$r12,$r0,50(0x32)
1c00513c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00515c <intc_handler+0x1ec>
1c005140:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005144:	02bb918c 	addi.w	$r12,$r12,-284(0xee4)
1c005148:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00514c:	2980018d 	st.w	$r13,$r12,0
1c005150:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005154:	02bb418c 	addi.w	$r12,$r12,-304(0xed0)
1c005158:	29000180 	st.b	$r0,$r12,0
1c00515c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005160:	02bb318c 	addi.w	$r12,$r12,-308(0xecc)
1c005164:	2a00018d 	ld.bu	$r13,$r12,0
1c005168:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c00516c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00518c <intc_handler+0x21c>
1c005170:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005174:	02baf18c 	addi.w	$r12,$r12,-324(0xebc)
1c005178:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00517c:	2980018d 	st.w	$r13,$r12,0
1c005180:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005184:	02baa18c 	addi.w	$r12,$r12,-344(0xea8)
1c005188:	29000180 	st.b	$r0,$r12,0
1c00518c:	02840004 	addi.w	$r4,$r0,256(0x100)
1c005190:	57f157ff 	bl	-3756(0xffff154) # 1c0042e4 <TIM_ClearIT>
1c005194:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005198:	0340118c 	andi	$r12,$r12,0x4
1c00519c:	40002d80 	beqz	$r12,44(0x2c) # 1c0051c8 <intc_handler+0x258>
1c0051a0:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c0051a4:	2a00018c 	ld.bu	$r12,$r12,0
1c0051a8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0051ac:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0051b0:	02ba118c 	addi.w	$r12,$r12,-380(0xe84)
1c0051b4:	2900018d 	st.b	$r13,$r12,0
1c0051b8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0051bc:	03800d8c 	ori	$r12,$r12,0x3
1c0051c0:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c0051c4:	2900018d 	st.b	$r13,$r12,0
1c0051c8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0051cc:	0340218c 	andi	$r12,$r12,0x8
1c0051d0:	40007d80 	beqz	$r12,124(0x7c) # 1c00524c <intc_handler+0x2dc>
1c0051d4:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0051d8:	0380098c 	ori	$r12,$r12,0x2
1c0051dc:	2a00018c 	ld.bu	$r12,$r12,0
1c0051e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0051e4:	0340118c 	andi	$r12,$r12,0x4
1c0051e8:	40005580 	beqz	$r12,84(0x54) # 1c00523c <intc_handler+0x2cc>
1c0051ec:	50003800 	b	56(0x38) # 1c005224 <intc_handler+0x2b4>
1c0051f0:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0051f4:	57d6cbff 	bl	-10552(0xfffd6c8) # 1c0028bc <UART_ReceiveData>
1c0051f8:	0015008c 	move	$r12,$r4
1c0051fc:	0015018d 	move	$r13,$r12
1c005200:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005204:	02b8c58c 	addi.w	$r12,$r12,-463(0xe31)
1c005208:	2900018d 	st.b	$r13,$r12,0
1c00520c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005210:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c005214:	02b884a5 	addi.w	$r5,$r5,-479(0xe21)
1c005218:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c00521c:	28b90084 	ld.w	$r4,$r4,-448(0xe40)
1c005220:	54161c00 	bl	5660(0x161c) # 1c00683c <Queue_Wirte>
1c005224:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c005228:	0380158c 	ori	$r12,$r12,0x5
1c00522c:	2a00018c 	ld.bu	$r12,$r12,0
1c005230:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005234:	0340058c 	andi	$r12,$r12,0x1
1c005238:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c0051f0 <intc_handler+0x280>
1c00523c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005240:	03800d8c 	ori	$r12,$r12,0x3
1c005244:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c005248:	2900018d 	st.b	$r13,$r12,0
1c00524c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005250:	03800d8c 	ori	$r12,$r12,0x3
1c005254:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c005258:	2900018d 	st.b	$r13,$r12,0
1c00525c:	03400000 	andi	$r0,$r0,0x0
1c005260:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005264:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005268:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00526c:	4c000020 	jirl	$r0,$r1,0

1c005270 <TIMER_HANDLER>:
TIMER_HANDLER():
1c005270:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005274:	29803061 	st.w	$r1,$r3,12(0xc)
1c005278:	29802076 	st.w	$r22,$r3,8(0x8)
1c00527c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005280:	57df83ff 	bl	-8320(0xfffdf80) # 1c003200 <Set_Timer_clear>
1c005284:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005288:	02976084 	addi.w	$r4,$r4,1496(0x5d8)
1c00528c:	57ca2fff 	bl	-13780(0xfffca2c) # 1c001cb8 <myprintf>
1c005290:	57df53ff 	bl	-8368(0xfffdf50) # 1c0031e0 <Set_Timer_stop>
1c005294:	03400000 	andi	$r0,$r0,0x0
1c005298:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00529c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0052a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0052a4:	4c000020 	jirl	$r0,$r1,0

1c0052a8 <executer_init>:
executer_init():
1c0052a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0052ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0052b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0052b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0052b8:	54021400 	bl	532(0x214) # 1c0054cc <led_init>
1c0052bc:	541c4c00 	bl	7244(0x1c4c) # 1c006f08 <mqtt_process_init>
1c0052c0:	540ac400 	bl	2756(0xac4) # 1c005d84 <light_process_init>
1c0052c4:	54173000 	bl	5936(0x1730) # 1c0069f4 <ventilate_process_init>
1c0052c8:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c0052cc:	57e2dfff 	bl	-7460(0xfffe2dc) # 1c0035a8 <delay_ms>
1c0052d0:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0052d4:	57ef73ff 	bl	-4240(0xfffef70) # 1c004244 <timer_init>
1c0052d8:	03400000 	andi	$r0,$r0,0x0
1c0052dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0052e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0052e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0052e8:	4c000020 	jirl	$r0,$r1,0

1c0052ec <executer_choose_run>:
executer_choose_run():
1c0052ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0052f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0052f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0052f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0052fc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005300:	28b5518c 	ld.w	$r12,$r12,-684(0xd54)
1c005304:	2880018d 	ld.w	$r13,$r12,0
1c005308:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00530c:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c005320 <executer_choose_run+0x34>
1c005310:	54012c00 	bl	300(0x12c) # 1c00543c <run_function_10ms>
1c005314:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005318:	28b4f18c 	ld.w	$r12,$r12,-708(0xd3c)
1c00531c:	29800180 	st.w	$r0,$r12,0
1c005320:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005324:	28b4418c 	ld.w	$r12,$r12,-752(0xd10)
1c005328:	2880018d 	ld.w	$r13,$r12,0
1c00532c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005330:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c005344 <executer_choose_run+0x58>
1c005334:	54012400 	bl	292(0x124) # 1c005458 <run_function_20ms>
1c005338:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00533c:	28b3e18c 	ld.w	$r12,$r12,-776(0xcf8)
1c005340:	29800180 	st.w	$r0,$r12,0
1c005344:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005348:	28b3218c 	ld.w	$r12,$r12,-824(0xcc8)
1c00534c:	2880018d 	ld.w	$r13,$r12,0
1c005350:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005354:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c005368 <executer_choose_run+0x7c>
1c005358:	54009000 	bl	144(0x90) # 1c0053e8 <run_function_50ms>
1c00535c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005360:	28b2c18c 	ld.w	$r12,$r12,-848(0xcb0)
1c005364:	29800180 	st.w	$r0,$r12,0
1c005368:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00536c:	28b3618c 	ld.w	$r12,$r12,-808(0xcd8)
1c005370:	2880018d 	ld.w	$r13,$r12,0
1c005374:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005378:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c00538c <executer_choose_run+0xa0>
1c00537c:	54008800 	bl	136(0x88) # 1c005404 <run_function_100ms>
1c005380:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005384:	28b3018c 	ld.w	$r12,$r12,-832(0xcc0)
1c005388:	29800180 	st.w	$r0,$r12,0
1c00538c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005390:	28b2318c 	ld.w	$r12,$r12,-884(0xc8c)
1c005394:	2880018d 	ld.w	$r13,$r12,0
1c005398:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00539c:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0053b0 <executer_choose_run+0xc4>
1c0053a0:	54008000 	bl	128(0x80) # 1c005420 <run_function_500ms>
1c0053a4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0053a8:	28b1d18c 	ld.w	$r12,$r12,-908(0xc74)
1c0053ac:	29800180 	st.w	$r0,$r12,0
1c0053b0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0053b4:	28b2918c 	ld.w	$r12,$r12,-860(0xca4)
1c0053b8:	2880018d 	ld.w	$r13,$r12,0
1c0053bc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0053c0:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0053d4 <executer_choose_run+0xe8>
1c0053c4:	5400b000 	bl	176(0xb0) # 1c005474 <run_function_1000ms>
1c0053c8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0053cc:	28b2318c 	ld.w	$r12,$r12,-884(0xc8c)
1c0053d0:	29800180 	st.w	$r0,$r12,0
1c0053d4:	03400000 	andi	$r0,$r0,0x0
1c0053d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0053dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0053e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0053e4:	4c000020 	jirl	$r0,$r1,0

1c0053e8 <run_function_50ms>:
run_function_50ms():
1c0053e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0053ec:	29803076 	st.w	$r22,$r3,12(0xc)
1c0053f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0053f4:	03400000 	andi	$r0,$r0,0x0
1c0053f8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0053fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005400:	4c000020 	jirl	$r0,$r1,0

1c005404 <run_function_100ms>:
run_function_100ms():
1c005404:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005408:	29803076 	st.w	$r22,$r3,12(0xc)
1c00540c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005410:	03400000 	andi	$r0,$r0,0x0
1c005414:	28803076 	ld.w	$r22,$r3,12(0xc)
1c005418:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00541c:	4c000020 	jirl	$r0,$r1,0

1c005420 <run_function_500ms>:
run_function_500ms():
1c005420:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005424:	29803076 	st.w	$r22,$r3,12(0xc)
1c005428:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00542c:	03400000 	andi	$r0,$r0,0x0
1c005430:	28803076 	ld.w	$r22,$r3,12(0xc)
1c005434:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005438:	4c000020 	jirl	$r0,$r1,0

1c00543c <run_function_10ms>:
run_function_10ms():
1c00543c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005440:	29803076 	st.w	$r22,$r3,12(0xc)
1c005444:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005448:	03400000 	andi	$r0,$r0,0x0
1c00544c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c005450:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005454:	4c000020 	jirl	$r0,$r1,0

1c005458 <run_function_20ms>:
run_function_20ms():
1c005458:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00545c:	29803076 	st.w	$r22,$r3,12(0xc)
1c005460:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005464:	03400000 	andi	$r0,$r0,0x0
1c005468:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00546c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005470:	4c000020 	jirl	$r0,$r1,0

1c005474 <run_function_1000ms>:
run_function_1000ms():
1c005474:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005478:	29803061 	st.w	$r1,$r3,12(0xc)
1c00547c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005480:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005484:	54093000 	bl	2352(0x930) # 1c005db4 <light_process>
1c005488:	54159c00 	bl	5532(0x159c) # 1c006a24 <ventilate_light_process>
1c00548c:	541aac00 	bl	6828(0x1aac) # 1c006f38 <mqtt_process>
1c005490:	54006c00 	bl	108(0x6c) # 1c0054fc <led_show>
1c005494:	03400000 	andi	$r0,$r0,0x0
1c005498:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00549c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0054a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0054a4:	4c000020 	jirl	$r0,$r1,0

1c0054a8 <main>:
main():
1c0054a8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0054ac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0054b0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0054b4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0054b8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0054bc:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0054c0:	57fdebff 	bl	-536(0xffffde8) # 1c0052a8 <executer_init>
1c0054c4:	57fe2bff 	bl	-472(0xffffe28) # 1c0052ec <executer_choose_run>
1c0054c8:	53ffffff 	b	-4(0xffffffc) # 1c0054c4 <main+0x1c>

1c0054cc <led_init>:
led_init():
1c0054cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0054d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0054d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0054d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0054dc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0054e0:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0054e4:	57c0c3ff 	bl	-16192(0xfffc0c0) # 1c0015a4 <gpio_write_pin>
1c0054e8:	03400000 	andi	$r0,$r0,0x0
1c0054ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0054f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0054f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0054f8:	4c000020 	jirl	$r0,$r1,0

1c0054fc <led_show>:
led_show():
1c0054fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005500:	29803061 	st.w	$r1,$r3,12(0xc)
1c005504:	29802076 	st.w	$r22,$r3,8(0x8)
1c005508:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00550c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005510:	02ac998c 	addi.w	$r12,$r12,-1242(0xb26)
1c005514:	2a00018c 	ld.bu	$r12,$r12,0
1c005518:	0240058c 	sltui	$r12,$r12,1(0x1)
1c00551c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005520:	0015018d 	move	$r13,$r12
1c005524:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005528:	02ac398c 	addi.w	$r12,$r12,-1266(0xb0e)
1c00552c:	2900018d 	st.b	$r13,$r12,0
1c005530:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005534:	02ac098c 	addi.w	$r12,$r12,-1278(0xb02)
1c005538:	2a00018c 	ld.bu	$r12,$r12,0
1c00553c:	00150185 	move	$r5,$r12
1c005540:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005544:	57c063ff 	bl	-16288(0xfffc060) # 1c0015a4 <gpio_write_pin>
1c005548:	03400000 	andi	$r0,$r0,0x0
1c00554c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005550:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005554:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005558:	4c000020 	jirl	$r0,$r1,0

1c00555c <json_to_send>:
json_to_send():
1c00555c:	02af0063 	addi.w	$r3,$r3,-1088(0xbc0)
1c005560:	2990f061 	st.w	$r1,$r3,1084(0x43c)
1c005564:	2990e076 	st.w	$r22,$r3,1080(0x438)
1c005568:	2990d077 	st.w	$r23,$r3,1076(0x434)
1c00556c:	02910076 	addi.w	$r22,$r3,1088(0x440)
1c005570:	29af32c4 	st.w	$r4,$r22,-1076(0xbcc)
1c005574:	29af22c5 	st.w	$r5,$r22,-1080(0xbc8)
1c005578:	293f9ec0 	st.b	$r0,$r22,-25(0xfe7)
1c00557c:	293f9ac0 	st.b	$r0,$r22,-26(0xfe6)
1c005580:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005584:	5001bc00 	b	444(0x1bc) # 1c005740 <json_to_send+0x1e4>
1c005588:	28af32cd 	ld.w	$r13,$r22,-1076(0xbcc)
1c00558c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005590:	0040898c 	slli.w	$r12,$r12,0x2
1c005594:	001031ac 	add.w	$r12,$r13,$r12
1c005598:	2880018c 	ld.w	$r12,$r12,0
1c00559c:	00150184 	move	$r4,$r12
1c0055a0:	57e38fff 	bl	-7284(0xfffe38c) # 1c00392c <strlen>
1c0055a4:	0015008c 	move	$r12,$r4
1c0055a8:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c0055ac:	28af32cd 	ld.w	$r13,$r22,-1076(0xbcc)
1c0055b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0055b4:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0055b8:	0040858c 	slli.w	$r12,$r12,0x1
1c0055bc:	001031ac 	add.w	$r12,$r13,$r12
1c0055c0:	2a40018c 	ld.hu	$r12,$r12,0
1c0055c4:	02bf82cd 	addi.w	$r13,$r22,-32(0xfe0)
1c0055c8:	00150185 	move	$r5,$r12
1c0055cc:	001501a4 	move	$r4,$r13
1c0055d0:	57e143ff 	bl	-7872(0xfffe140) # 1c003710 <itoa>
1c0055d4:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c0055d8:	00150184 	move	$r4,$r12
1c0055dc:	57e353ff 	bl	-7344(0xfffe350) # 1c00392c <strlen>
1c0055e0:	0015008c 	move	$r12,$r4
1c0055e4:	293f9acc 	st.b	$r12,$r22,-26(0xfe6)
1c0055e8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0055ec:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0055f0:	58002dac 	beq	$r13,$r12,44(0x2c) # 1c00561c <json_to_send+0xc0>
1c0055f4:	2a3f9acc 	ld.bu	$r12,$r22,-26(0xfe6)
1c0055f8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0055fc:	001031ad 	add.w	$r13,$r13,$r12
1c005600:	0280b00c 	addi.w	$r12,$r0,44(0x2c)
1c005604:	293fc1ac 	st.b	$r12,$r13,-16(0xff0)
1c005608:	2a3f9acc 	ld.bu	$r12,$r22,-26(0xfe6)
1c00560c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005610:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005614:	001031ac 	add.w	$r12,$r13,$r12
1c005618:	293fc180 	st.b	$r0,$r12,-16(0xff0)
1c00561c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005620:	0040a18c 	slli.w	$r12,$r12,0x8
1c005624:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005628:	001031ac 	add.w	$r12,$r13,$r12
1c00562c:	0280880d 	addi.w	$r13,$r0,34(0x22)
1c005630:	292fc18d 	st.b	$r13,$r12,-1040(0xbf0)
1c005634:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005638:	50005000 	b	80(0x50) # 1c005688 <json_to_send+0x12c>
1c00563c:	28af32cd 	ld.w	$r13,$r22,-1076(0xbcc)
1c005640:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005644:	0040898c 	slli.w	$r12,$r12,0x2
1c005648:	001031ac 	add.w	$r12,$r13,$r12
1c00564c:	2880018d 	ld.w	$r13,$r12,0
1c005650:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005654:	001031ac 	add.w	$r12,$r13,$r12
1c005658:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00565c:	028005ae 	addi.w	$r14,$r13,1(0x1)
1c005660:	2a00018d 	ld.bu	$r13,$r12,0
1c005664:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005668:	0040a18c 	slli.w	$r12,$r12,0x8
1c00566c:	02bfc2cf 	addi.w	$r15,$r22,-16(0xff0)
1c005670:	001031ec 	add.w	$r12,$r15,$r12
1c005674:	0010398c 	add.w	$r12,$r12,$r14
1c005678:	292fc18d 	st.b	$r13,$r12,-1040(0xbf0)
1c00567c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005680:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005684:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005688:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c00568c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005690:	63ffadac 	blt	$r13,$r12,-84(0x3ffac) # 1c00563c <json_to_send+0xe0>
1c005694:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c005698:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00569c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056a0:	0040a18c 	slli.w	$r12,$r12,0x8
1c0056a4:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0056a8:	001031cc 	add.w	$r12,$r14,$r12
1c0056ac:	0010358c 	add.w	$r12,$r12,$r13
1c0056b0:	0280880d 	addi.w	$r13,$r0,34(0x22)
1c0056b4:	292fc18d 	st.b	$r13,$r12,-1040(0xbf0)
1c0056b8:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c0056bc:	0280098d 	addi.w	$r13,$r12,2(0x2)
1c0056c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056c4:	0040a18c 	slli.w	$r12,$r12,0x8
1c0056c8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0056cc:	001031cc 	add.w	$r12,$r14,$r12
1c0056d0:	0010358c 	add.w	$r12,$r12,$r13
1c0056d4:	0280e80d 	addi.w	$r13,$r0,58(0x3a)
1c0056d8:	292fc18d 	st.b	$r13,$r12,-1040(0xbf0)
1c0056dc:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c0056e0:	02800d8d 	addi.w	$r13,$r12,3(0x3)
1c0056e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056e8:	0040a18c 	slli.w	$r12,$r12,0x8
1c0056ec:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0056f0:	001031cc 	add.w	$r12,$r14,$r12
1c0056f4:	0010358c 	add.w	$r12,$r12,$r13
1c0056f8:	292fc180 	st.b	$r0,$r12,-1040(0xbf0)
1c0056fc:	02af82cd 	addi.w	$r13,$r22,-1056(0xbe0)
1c005700:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005704:	0040a18c 	slli.w	$r12,$r12,0x8
1c005708:	001031ac 	add.w	$r12,$r13,$r12
1c00570c:	02bf82cd 	addi.w	$r13,$r22,-32(0xfe0)
1c005710:	001501a5 	move	$r5,$r13
1c005714:	00150184 	move	$r4,$r12
1c005718:	57e177ff 	bl	-7820(0xfffe174) # 1c00388c <strcat>
1c00571c:	0015008d 	move	$r13,$r4
1c005720:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005724:	0040898c 	slli.w	$r12,$r12,0x2
1c005728:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c00572c:	001031cc 	add.w	$r12,$r14,$r12
1c005730:	29af818d 	st.w	$r13,$r12,-1056(0xbe0)
1c005734:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005738:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00573c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005740:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005744:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005748:	67fe418d 	bge	$r12,$r13,-448(0x3fe40) # 1c005588 <json_to_send+0x2c>
1c00574c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005750:	28a3e18c 	ld.w	$r12,$r12,-1800(0x8f8)
1c005754:	2880018c 	ld.w	$r12,$r12,0
1c005758:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00575c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005760:	28a3a18c 	ld.w	$r12,$r12,-1816(0x8e8)
1c005764:	2980018d 	st.w	$r13,$r12,0
1c005768:	28af42cc 	ld.w	$r12,$r22,-1072(0xbd0)
1c00576c:	28af52cd 	ld.w	$r13,$r22,-1068(0xbd4)
1c005770:	001501a5 	move	$r5,$r13
1c005774:	00150184 	move	$r4,$r12
1c005778:	57e117ff 	bl	-7916(0xfffe114) # 1c00388c <strcat>
1c00577c:	00150097 	move	$r23,$r4
1c005780:	28af62cc 	ld.w	$r12,$r22,-1064(0xbd8)
1c005784:	28af72cd 	ld.w	$r13,$r22,-1060(0xbdc)
1c005788:	001501a5 	move	$r5,$r13
1c00578c:	00150184 	move	$r4,$r12
1c005790:	57e0ffff 	bl	-7940(0xfffe0fc) # 1c00388c <strcat>
1c005794:	0015008c 	move	$r12,$r4
1c005798:	00150185 	move	$r5,$r12
1c00579c:	001502e4 	move	$r4,$r23
1c0057a0:	57e0efff 	bl	-7956(0xfffe0ec) # 1c00388c <strcat>
1c0057a4:	0015008d 	move	$r13,$r4
1c0057a8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057ac:	28a2718c 	ld.w	$r12,$r12,-1892(0x89c)
1c0057b0:	2980018d 	st.w	$r13,$r12,0
1c0057b4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057b8:	28a2418c 	ld.w	$r12,$r12,-1904(0x890)
1c0057bc:	2880018c 	ld.w	$r12,$r12,0
1c0057c0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0057c4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057c8:	28a2018c 	ld.w	$r12,$r12,-1920(0x880)
1c0057cc:	2980018d 	st.w	$r13,$r12,0
1c0057d0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057d4:	28a1d18c 	ld.w	$r12,$r12,-1932(0x874)
1c0057d8:	2880018c 	ld.w	$r12,$r12,0
1c0057dc:	0281ec0d 	addi.w	$r13,$r0,123(0x7b)
1c0057e0:	2900018d 	st.b	$r13,$r12,0
1c0057e4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057e8:	28a1818c 	ld.w	$r12,$r12,-1952(0x860)
1c0057ec:	2880018c 	ld.w	$r12,$r12,0
1c0057f0:	00150184 	move	$r4,$r12
1c0057f4:	57e13bff 	bl	-7880(0xfffe138) # 1c00392c <strlen>
1c0057f8:	0015008c 	move	$r12,$r4
1c0057fc:	293f96cc 	st.b	$r12,$r22,-27(0xfe5)
1c005800:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005804:	28a1118c 	ld.w	$r12,$r12,-1980(0x844)
1c005808:	2880018d 	ld.w	$r13,$r12,0
1c00580c:	2a3f96cc 	ld.bu	$r12,$r22,-27(0xfe5)
1c005810:	001031ac 	add.w	$r12,$r13,$r12
1c005814:	0281f40d 	addi.w	$r13,$r0,125(0x7d)
1c005818:	2900018d 	st.b	$r13,$r12,0
1c00581c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005820:	28a0a18c 	ld.w	$r12,$r12,-2008(0x828)
1c005824:	2880018d 	ld.w	$r13,$r12,0
1c005828:	2a3f96cc 	ld.bu	$r12,$r22,-27(0xfe5)
1c00582c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005830:	001031ac 	add.w	$r12,$r13,$r12
1c005834:	29000180 	st.b	$r0,$r12,0
1c005838:	2a3f96cc 	ld.bu	$r12,$r22,-27(0xfe5)
1c00583c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005840:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005844:	28af22cc 	ld.w	$r12,$r22,-1080(0xbc8)
1c005848:	2900018d 	st.b	$r13,$r12,0
1c00584c:	03400000 	andi	$r0,$r0,0x0
1c005850:	2890f061 	ld.w	$r1,$r3,1084(0x43c)
1c005854:	2890e076 	ld.w	$r22,$r3,1080(0x438)
1c005858:	2890d077 	ld.w	$r23,$r3,1076(0x434)
1c00585c:	02910063 	addi.w	$r3,$r3,1088(0x440)
1c005860:	4c000020 	jirl	$r0,$r1,0

1c005864 <esp8266_send_json>:
esp8266_send_json():
1c005864:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005868:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00586c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005870:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005874:	0015008c 	move	$r12,$r4
1c005878:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00587c:	001500cd 	move	$r13,$r6
1c005880:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005884:	001501ac 	move	$r12,$r13
1c005888:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c00588c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005890:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005894:	00150185 	move	$r5,$r12
1c005898:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c00589c:	57de77ff 	bl	-8588(0xfffde74) # 1c003710 <itoa>
1c0058a0:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c0058a4:	1c000045 	pcaddu12i	$r5,2(0x2)
1c0058a8:	028e70a5 	addi.w	$r5,$r5,924(0x39c)
1c0058ac:	00150004 	move	$r4,$r0
1c0058b0:	57c7afff 	bl	-14420(0xfffc7ac) # 1c00205c <myprintf2>
1c0058b4:	0280c804 	addi.w	$r4,$r0,50(0x32)
1c0058b8:	57dcf3ff 	bl	-8976(0xfffdcf0) # 1c0035a8 <delay_ms>
1c0058bc:	1c000045 	pcaddu12i	$r5,2(0x2)
1c0058c0:	028f00a5 	addi.w	$r5,$r5,960(0x3c0)
1c0058c4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0058c8:	289e5084 	ld.w	$r4,$r4,1940(0x794)
1c0058cc:	540a3400 	bl	2612(0xa34) # 1c006300 <esp8266_check_cmd>
1c0058d0:	0015008c 	move	$r12,$r4
1c0058d4:	43ffe19f 	beqz	$r12,-32(0x7fffe0) # 1c0058b4 <esp8266_send_json+0x50>
1c0058d8:	540dc800 	bl	3528(0xdc8) # 1c0066a0 <esp8266_send_isno>
1c0058dc:	54006000 	bl	96(0x60) # 1c00593c <json_to_callback>
1c0058e0:	03400000 	andi	$r0,$r0,0x0
1c0058e4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0058e8:	289d818c 	ld.w	$r12,$r12,1888(0x760)
1c0058ec:	2880018c 	ld.w	$r12,$r12,0
1c0058f0:	00150184 	move	$r4,$r12
1c0058f4:	540d7000 	bl	3440(0xd70) # 1c006664 <esp8266_send_data>
1c0058f8:	0280c804 	addi.w	$r4,$r0,50(0x32)
1c0058fc:	57dcafff 	bl	-9044(0xfffdcac) # 1c0035a8 <delay_ms>
1c005900:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005904:	028e00a5 	addi.w	$r5,$r5,896(0x380)
1c005908:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00590c:	289d4084 	ld.w	$r4,$r4,1872(0x750)
1c005910:	5409f000 	bl	2544(0x9f0) # 1c006300 <esp8266_check_cmd>
1c005914:	0015008c 	move	$r12,$r4
1c005918:	43ffe19f 	beqz	$r12,-32(0x7fffe0) # 1c0058f8 <esp8266_send_json+0x94>
1c00591c:	540d8400 	bl	3460(0xd84) # 1c0066a0 <esp8266_send_isno>
1c005920:	54001c00 	bl	28(0x1c) # 1c00593c <json_to_callback>
1c005924:	03400000 	andi	$r0,$r0,0x0
1c005928:	03400000 	andi	$r0,$r0,0x0
1c00592c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005930:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005934:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005938:	4c000020 	jirl	$r0,$r1,0

1c00593c <json_to_callback>:
json_to_callback():
1c00593c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005940:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005944:	29806076 	st.w	$r22,$r3,24(0x18)
1c005948:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00594c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005950:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c005954:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005958:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00595c:	289ac18c 	ld.w	$r12,$r12,1712(0x6b0)
1c005960:	29100180 	st.b	$r0,$r12,1024(0x400)
1c005964:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005968:	289a918c 	ld.w	$r12,$r12,1700(0x6a4)
1c00596c:	29100580 	st.b	$r0,$r12,1025(0x401)
1c005970:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005974:	289a618c 	ld.w	$r12,$r12,1688(0x698)
1c005978:	29100980 	st.b	$r0,$r12,1026(0x402)
1c00597c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005980:	289a318c 	ld.w	$r12,$r12,1676(0x68c)
1c005984:	29100d80 	st.b	$r0,$r12,1027(0x403)
1c005988:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00598c:	289a6084 	ld.w	$r4,$r4,1688(0x698)
1c005990:	540d8c00 	bl	3468(0xd8c) # 1c00671c <Queue_isEmpty>
1c005994:	0015008c 	move	$r12,$r4
1c005998:	44033180 	bnez	$r12,816(0x330) # 1c005cc8 <json_to_callback+0x38c>
1c00599c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0059a0:	289a1084 	ld.w	$r4,$r4,1668(0x684)
1c0059a4:	540dc800 	bl	3528(0xdc8) # 1c00676c <Queue_HadUse>
1c0059a8:	0015008c 	move	$r12,$r4
1c0059ac:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0059b0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0059b4:	2899e18c 	ld.w	$r12,$r12,1656(0x678)
1c0059b8:	2900018d 	st.b	$r13,$r12,0
1c0059bc:	02900006 	addi.w	$r6,$r0,1024(0x400)
1c0059c0:	00150005 	move	$r5,$r0
1c0059c4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0059c8:	2899d084 	ld.w	$r4,$r4,1652(0x674)
1c0059cc:	57dc1fff 	bl	-9188(0xfffdc1c) # 1c0035e8 <memset>
1c0059d0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0059d4:	2899618c 	ld.w	$r12,$r12,1624(0x658)
1c0059d8:	2a00018c 	ld.bu	$r12,$r12,0
1c0059dc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0059e0:	00150186 	move	$r6,$r12
1c0059e4:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0059e8:	289950a5 	ld.w	$r5,$r5,1620(0x654)
1c0059ec:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0059f0:	2898d084 	ld.w	$r4,$r4,1588(0x634)
1c0059f4:	540f2400 	bl	3876(0xf24) # 1c006918 <Queue_Read>
1c0059f8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0059fc:	2898c18c 	ld.w	$r12,$r12,1584(0x630)
1c005a00:	2a00018c 	ld.bu	$r12,$r12,0
1c005a04:	0015018d 	move	$r13,$r12
1c005a08:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005a0c:	2898c18c 	ld.w	$r12,$r12,1584(0x630)
1c005a10:	0010358c 	add.w	$r12,$r12,$r13
1c005a14:	29000180 	st.b	$r0,$r12,0
1c005a18:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005a1c:	50005400 	b	84(0x54) # 1c005a70 <json_to_callback+0x134>
1c005a20:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c005a24:	289861ad 	ld.w	$r13,$r13,1560(0x618)
1c005a28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a2c:	001031ac 	add.w	$r12,$r13,$r12
1c005a30:	2a00018d 	ld.bu	$r13,$r12,0
1c005a34:	0280b00c 	addi.w	$r12,$r0,44(0x2c)
1c005a38:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c005a64 <json_to_callback+0x128>
1c005a3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a40:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005a44:	1cc7ff6e 	pcaddu12i	$r14,409595(0x63ffb)
1c005a48:	2897e1ce 	ld.w	$r14,$r14,1528(0x5f8)
1c005a4c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005a50:	001031cc 	add.w	$r12,$r14,$r12
1c005a54:	2900018d 	st.b	$r13,$r12,0
1c005a58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005a5c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a60:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005a64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a68:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a6c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005a70:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005a74:	2896e18c 	ld.w	$r12,$r12,1464(0x5b8)
1c005a78:	2a00018c 	ld.bu	$r12,$r12,0
1c005a7c:	0015018d 	move	$r13,$r12
1c005a80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a84:	63ff9d8d 	blt	$r12,$r13,-100(0x3ff9c) # 1c005a20 <json_to_callback+0xe4>
1c005a88:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005a8c:	2896d18c 	ld.w	$r12,$r12,1460(0x5b4)
1c005a90:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005a94:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005a98:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005a9c:	50005400 	b	84(0x54) # 1c005af0 <json_to_callback+0x1b4>
1c005aa0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005aa4:	2896a18c 	ld.w	$r12,$r12,1448(0x5a8)
1c005aa8:	2880018d 	ld.w	$r13,$r12,0
1c005aac:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ab0:	2896418c 	ld.w	$r12,$r12,1424(0x590)
1c005ab4:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005ab8:	0015018e 	move	$r14,$r12
1c005abc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ac0:	0011398c 	sub.w	$r12,$r12,$r14
1c005ac4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005ac8:	001031ac 	add.w	$r12,$r13,$r12
1c005acc:	1cc7ff6e 	pcaddu12i	$r14,409595(0x63ffb)
1c005ad0:	2895b1ce 	ld.w	$r14,$r14,1388(0x56c)
1c005ad4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005ad8:	001035cd 	add.w	$r13,$r14,$r13
1c005adc:	2a0001ad 	ld.bu	$r13,$r13,0
1c005ae0:	2900018d 	st.b	$r13,$r12,0
1c005ae4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ae8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005aec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005af0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005af4:	2895318c 	ld.w	$r12,$r12,1356(0x54c)
1c005af8:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005afc:	0015018d 	move	$r13,$r12
1c005b00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b04:	63ff9d8d 	blt	$r12,$r13,-100(0x3ff9c) # 1c005aa0 <json_to_callback+0x164>
1c005b08:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005b0c:	2894d18c 	ld.w	$r12,$r12,1332(0x534)
1c005b10:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005b14:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b18:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005b1c:	50005400 	b	84(0x54) # 1c005b70 <json_to_callback+0x234>
1c005b20:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005b24:	2894318c 	ld.w	$r12,$r12,1292(0x50c)
1c005b28:	2880018d 	ld.w	$r13,$r12,0
1c005b2c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005b30:	2894418c 	ld.w	$r12,$r12,1296(0x510)
1c005b34:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005b38:	0015018e 	move	$r14,$r12
1c005b3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b40:	0011398c 	sub.w	$r12,$r12,$r14
1c005b44:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005b48:	001031ac 	add.w	$r12,$r13,$r12
1c005b4c:	1cc7ff6e 	pcaddu12i	$r14,409595(0x63ffb)
1c005b50:	2893b1ce 	ld.w	$r14,$r14,1260(0x4ec)
1c005b54:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005b58:	001035cd 	add.w	$r13,$r14,$r13
1c005b5c:	2a0001ad 	ld.bu	$r13,$r13,0
1c005b60:	2900018d 	st.b	$r13,$r12,0
1c005b64:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b68:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b6c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005b70:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005b74:	2892e18c 	ld.w	$r12,$r12,1208(0x4b8)
1c005b78:	2a00018c 	ld.bu	$r12,$r12,0
1c005b7c:	0015018d 	move	$r13,$r12
1c005b80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b84:	63ff9d8d 	blt	$r12,$r13,-100(0x3ff9c) # 1c005b20 <json_to_callback+0x1e4>
1c005b88:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005b8c:	2892918c 	ld.w	$r12,$r12,1188(0x4a4)
1c005b90:	2880018c 	ld.w	$r12,$r12,0
1c005b94:	0280158c 	addi.w	$r12,$r12,5(0x5)
1c005b98:	2a00018d 	ld.bu	$r13,$r12,0
1c005b9c:	0280c40c 	addi.w	$r12,$r0,49(0x31)
1c005ba0:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c005c4c <json_to_callback+0x310>
1c005ba4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ba8:	2892218c 	ld.w	$r12,$r12,1160(0x488)
1c005bac:	2880018c 	ld.w	$r12,$r12,0
1c005bb0:	02801d8c 	addi.w	$r12,$r12,7(0x7)
1c005bb4:	2a00018c 	ld.bu	$r12,$r12,0
1c005bb8:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c005bbc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005bc0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c005bc4:	001c31ac 	mul.w	$r12,$r13,$r12
1c005bc8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005bcc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005bd0:	2891818c 	ld.w	$r12,$r12,1120(0x460)
1c005bd4:	2880018c 	ld.w	$r12,$r12,0
1c005bd8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005bdc:	2a00018c 	ld.bu	$r12,$r12,0
1c005be0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005be4:	001031ac 	add.w	$r12,$r13,$r12
1c005be8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005bec:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c005bf0:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c005bf4:	2a7f9acd 	ld.hu	$r13,$r22,-26(0xfe6)
1c005bf8:	02bfd80c 	addi.w	$r12,$r0,-10(0xff6)
1c005bfc:	001c31ac 	mul.w	$r12,$r13,$r12
1c005c00:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005c04:	0297718c 	addi.w	$r12,$r12,1500(0x5dc)
1c005c08:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c005c0c:	2a7f9acd 	ld.hu	$r13,$r22,-26(0xfe6)
1c005c10:	02976c0c 	addi.w	$r12,$r0,1499(0x5db)
1c005c14:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c005c20 <json_to_callback+0x2e4>
1c005c18:	0297700c 	addi.w	$r12,$r0,1500(0x5dc)
1c005c1c:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c005c20:	2a7f9acd 	ld.hu	$r13,$r22,-26(0xfe6)
1c005c24:	0287d00c 	addi.w	$r12,$r0,500(0x1f4)
1c005c28:	68000d8d 	bltu	$r12,$r13,12(0xc) # 1c005c34 <json_to_callback+0x2f8>
1c005c2c:	0287d00c 	addi.w	$r12,$r0,500(0x1f4)
1c005c30:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c005c34:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c005c38:	00150185 	move	$r5,$r12
1c005c3c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005c40:	02814084 	addi.w	$r4,$r4,80(0x50)
1c005c44:	57c077ff 	bl	-16268(0xfffc074) # 1c001cb8 <myprintf>
1c005c48:	50002c00 	b	44(0x2c) # 1c005c74 <json_to_callback+0x338>
1c005c4c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c50:	288f818c 	ld.w	$r12,$r12,992(0x3e0)
1c005c54:	2880018c 	ld.w	$r12,$r12,0
1c005c58:	0280158c 	addi.w	$r12,$r12,5(0x5)
1c005c5c:	2a00018d 	ld.bu	$r13,$r12,0
1c005c60:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c005c64:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c005c74 <json_to_callback+0x338>
1c005c68:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005c6c:	0280d084 	addi.w	$r4,$r4,52(0x34)
1c005c70:	57c04bff 	bl	-16312(0xfffc048) # 1c001cb8 <myprintf>
1c005c74:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c78:	288ee18c 	ld.w	$r12,$r12,952(0x3b8)
1c005c7c:	2880018c 	ld.w	$r12,$r12,0
1c005c80:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c005c84:	2a00018d 	ld.bu	$r13,$r12,0
1c005c88:	0280c40c 	addi.w	$r12,$r0,49(0x31)
1c005c8c:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c005ca0 <json_to_callback+0x364>
1c005c90:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005c94:	02807084 	addi.w	$r4,$r4,28(0x1c)
1c005c98:	57c023ff 	bl	-16352(0xfffc020) # 1c001cb8 <myprintf>
1c005c9c:	50002c00 	b	44(0x2c) # 1c005cc8 <json_to_callback+0x38c>
1c005ca0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ca4:	288e318c 	ld.w	$r12,$r12,908(0x38c)
1c005ca8:	2880018c 	ld.w	$r12,$r12,0
1c005cac:	0280198c 	addi.w	$r12,$r12,6(0x6)
1c005cb0:	2a00018d 	ld.bu	$r13,$r12,0
1c005cb4:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c005cb8:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c005cc8 <json_to_callback+0x38c>
1c005cbc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005cc0:	02800084 	addi.w	$r4,$r4,0
1c005cc4:	57bff7ff 	bl	-16396(0xfffbff4) # 1c001cb8 <myprintf>
1c005cc8:	03400000 	andi	$r0,$r0,0x0
1c005ccc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005cd0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005cd4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005cd8:	4c000020 	jirl	$r0,$r1,0

1c005cdc <PID_Init>:
PID_Init():
1c005cdc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005ce0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005ce4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005ce8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005cec:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c005cf0:	001500cc 	move	$r12,$r6
1c005cf4:	001500ed 	move	$r13,$r7
1c005cf8:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c005cfc:	001501ac 	move	$r12,$r13
1c005d00:	297f92cc 	st.h	$r12,$r22,-28(0xfe4)
1c005d04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d08:	29803180 	st.w	$r0,$r12,12(0xc)
1c005d0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d10:	29804180 	st.w	$r0,$r12,16(0x10)
1c005d14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d18:	29802180 	st.w	$r0,$r12,8(0x8)
1c005d1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005d20:	2840018d 	ld.h	$r13,$r12,0
1c005d24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d28:	2940518d 	st.h	$r13,$r12,20(0x14)
1c005d2c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005d30:	2840098d 	ld.h	$r13,$r12,2(0x2)
1c005d34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d38:	2940598d 	st.h	$r13,$r12,22(0x16)
1c005d3c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005d40:	2840118d 	ld.h	$r13,$r12,4(0x4)
1c005d44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d48:	2940618d 	st.h	$r13,$r12,24(0x18)
1c005d4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d50:	29801180 	st.w	$r0,$r12,4(0x4)
1c005d54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d58:	29800180 	st.w	$r0,$r12,0
1c005d5c:	287f9acd 	ld.h	$r13,$r22,-26(0xfe6)
1c005d60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d64:	2980718d 	st.w	$r13,$r12,28(0x1c)
1c005d68:	287f92cd 	ld.h	$r13,$r22,-28(0xfe4)
1c005d6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d70:	2980818d 	st.w	$r13,$r12,32(0x20)
1c005d74:	03400000 	andi	$r0,$r0,0x0
1c005d78:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005d7c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005d80:	4c000020 	jirl	$r0,$r1,0

1c005d84 <light_process_init>:
light_process_init():
1c005d84:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005d88:	29803061 	st.w	$r1,$r3,12(0xc)
1c005d8c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005d90:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005d94:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005d98:	288a8084 	ld.w	$r4,$r4,672(0x2a0)
1c005d9c:	54005400 	bl	84(0x54) # 1c005df0 <Light_System_Init>
1c005da0:	03400000 	andi	$r0,$r0,0x0
1c005da4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005da8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005dac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005db0:	4c000020 	jirl	$r0,$r1,0

1c005db4 <light_process>:
light_process():
1c005db4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005db8:	29803061 	st.w	$r1,$r3,12(0xc)
1c005dbc:	29802076 	st.w	$r22,$r3,8(0x8)
1c005dc0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005dc4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005dc8:	2889c084 	ld.w	$r4,$r4,624(0x270)
1c005dcc:	54011c00 	bl	284(0x11c) # 1c005ee8 <Light_TEMT6000_Get>
1c005dd0:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005dd4:	28899084 	ld.w	$r4,$r4,612(0x264)
1c005dd8:	54048400 	bl	1156(0x484) # 1c00625c <Light_value_feedback>
1c005ddc:	03400000 	andi	$r0,$r0,0x0
1c005de0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005de4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005de8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005dec:	4c000020 	jirl	$r0,$r1,0

1c005df0 <Light_System_Init>:
Light_System_Init():
1c005df0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005df4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005df8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005dfc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005e00:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005e04:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005e08:	29402980 	st.h	$r0,$r12,10(0xa)
1c005e0c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005e10:	29803180 	st.w	$r0,$r12,12(0xc)
1c005e14:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005e18:	29406980 	st.h	$r0,$r12,26(0x1a)
1c005e1c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005e20:	29807180 	st.w	$r0,$r12,28(0x1c)
1c005e24:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005e28:	50003c00 	b	60(0x3c) # 1c005e64 <Light_System_Init+0x74>
1c005e2c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005e30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e34:	0040858c 	slli.w	$r12,$r12,0x1
1c005e38:	001031ac 	add.w	$r12,$r13,$r12
1c005e3c:	29400180 	st.h	$r0,$r12,0
1c005e40:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005e44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e48:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005e4c:	0040858c 	slli.w	$r12,$r12,0x1
1c005e50:	001031ac 	add.w	$r12,$r13,$r12
1c005e54:	29400180 	st.h	$r0,$r12,0
1c005e58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e5c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005e64:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005e68:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005e6c:	67ffc18d 	bge	$r12,$r13,-64(0x3ffc0) # 1c005e2c <Light_System_Init+0x3c>
1c005e70:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c005e74:	297f92cc 	st.h	$r12,$r22,-28(0xfe4)
1c005e78:	297f9ac0 	st.h	$r0,$r22,-26(0xfe6)
1c005e7c:	297fa2c0 	st.h	$r0,$r22,-24(0xfe8)
1c005e80:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005e84:	0280918d 	addi.w	$r13,$r12,36(0x24)
1c005e88:	02bf92ce 	addi.w	$r14,$r22,-28(0xfe4)
1c005e8c:	15ffffac 	lu12i.w	$r12,-3(0xffffd)
1c005e90:	03a3c187 	ori	$r7,$r12,0x8f0
1c005e94:	1400004c 	lu12i.w	$r12,2(0x2)
1c005e98:	039c4186 	ori	$r6,$r12,0x710
1c005e9c:	001501c5 	move	$r5,$r14
1c005ea0:	001501a4 	move	$r4,$r13
1c005ea4:	57fe3bff 	bl	-456(0xffffe38) # 1c005cdc <PID_Init>
1c005ea8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005eac:	02b89084 	addi.w	$r4,$r4,-476(0xe24)
1c005eb0:	57be0bff 	bl	-16888(0xfffbe08) # 1c001cb8 <myprintf>
1c005eb4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005eb8:	02b8a084 	addi.w	$r4,$r4,-472(0xe28)
1c005ebc:	57bdffff 	bl	-16900(0xfffbdfc) # 1c001cb8 <myprintf>
1c005ec0:	57dc67ff 	bl	-9116(0xfffdc64) # 1c003b24 <Adc_powerOn>
1c005ec4:	02801804 	addi.w	$r4,$r0,6(0x6)
1c005ec8:	57dcb3ff 	bl	-9040(0xfffdcb0) # 1c003b78 <Adc_open>
1c005ecc:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c005ed0:	57dcabff 	bl	-9048(0xfffdca8) # 1c003b78 <Adc_open>
1c005ed4:	03400000 	andi	$r0,$r0,0x0
1c005ed8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005edc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005ee0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005ee4:	4c000020 	jirl	$r0,$r1,0

1c005ee8 <Light_TEMT6000_Get>:
Light_TEMT6000_Get():
1c005ee8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005eec:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005ef0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005ef4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005ef8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005efc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005f00:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005f04:	297f8ac0 	st.h	$r0,$r22,-30(0xfe2)
1c005f08:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005f0c:	29402980 	st.h	$r0,$r12,10(0xa)
1c005f10:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005f14:	29803180 	st.w	$r0,$r12,12(0xc)
1c005f18:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005f1c:	29406980 	st.h	$r0,$r12,26(0x1a)
1c005f20:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005f24:	29807180 	st.w	$r0,$r12,28(0x1c)
1c005f28:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c005f2c:	50003c00 	b	60(0x3c) # 1c005f68 <Light_TEMT6000_Get+0x80>
1c005f30:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005f34:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005f38:	0040858c 	slli.w	$r12,$r12,0x1
1c005f3c:	001031ac 	add.w	$r12,$r13,$r12
1c005f40:	29400180 	st.h	$r0,$r12,0
1c005f44:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005f48:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005f4c:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005f50:	0040858c 	slli.w	$r12,$r12,0x1
1c005f54:	001031ac 	add.w	$r12,$r13,$r12
1c005f58:	29400180 	st.h	$r0,$r12,0
1c005f5c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005f60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f64:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005f68:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c005f6c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005f70:	67ffc18d 	bge	$r12,$r13,-64(0x3ffc0) # 1c005f30 <Light_TEMT6000_Get+0x48>
1c005f74:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005f78:	50005c00 	b	92(0x5c) # 1c005fd4 <Light_TEMT6000_Get+0xec>
1c005f7c:	02801804 	addi.w	$r4,$r0,6(0x6)
1c005f80:	57dcabff 	bl	-9048(0xfffdca8) # 1c003c28 <Adc_Measure>
1c005f84:	0015008c 	move	$r12,$r4
1c005f88:	0015018e 	move	$r14,$r12
1c005f8c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005f90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f94:	0040858c 	slli.w	$r12,$r12,0x1
1c005f98:	001031ac 	add.w	$r12,$r13,$r12
1c005f9c:	2940018e 	st.h	$r14,$r12,0
1c005fa0:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c005fa4:	57dc87ff 	bl	-9084(0xfffdc84) # 1c003c28 <Adc_Measure>
1c005fa8:	0015008c 	move	$r12,$r4
1c005fac:	0015018e 	move	$r14,$r12
1c005fb0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005fb4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005fb8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005fbc:	0040858c 	slli.w	$r12,$r12,0x1
1c005fc0:	001031ac 	add.w	$r12,$r13,$r12
1c005fc4:	2940018e 	st.h	$r14,$r12,0
1c005fc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005fcc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005fd0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005fd4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005fd8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005fdc:	67ffa18d 	bge	$r12,$r13,-96(0x3ffa0) # 1c005f7c <Light_TEMT6000_Get+0x94>
1c005fe0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005fe4:	50019800 	b	408(0x198) # 1c00617c <Light_TEMT6000_Get+0x294>
1c005fe8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005fec:	5000a000 	b	160(0xa0) # 1c00608c <Light_TEMT6000_Get+0x1a4>
1c005ff0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005ff4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005ff8:	0040858c 	slli.w	$r12,$r12,0x1
1c005ffc:	001031ac 	add.w	$r12,$r13,$r12
1c006000:	2a40018d 	ld.hu	$r13,$r12,0
1c006004:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006008:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00600c:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c006010:	0040858c 	slli.w	$r12,$r12,0x1
1c006014:	001031cc 	add.w	$r12,$r14,$r12
1c006018:	2a40018c 	ld.hu	$r12,$r12,0
1c00601c:	6c00658d 	bgeu	$r12,$r13,100(0x64) # 1c006080 <Light_TEMT6000_Get+0x198>
1c006020:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006024:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006028:	0040858c 	slli.w	$r12,$r12,0x1
1c00602c:	001031ac 	add.w	$r12,$r13,$r12
1c006030:	2a40018c 	ld.hu	$r12,$r12,0
1c006034:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c006038:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00603c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006040:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006044:	0040858c 	slli.w	$r12,$r12,0x1
1c006048:	001031ac 	add.w	$r12,$r13,$r12
1c00604c:	2a40018d 	ld.hu	$r13,$r12,0
1c006050:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c006054:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006058:	0040858c 	slli.w	$r12,$r12,0x1
1c00605c:	001031cc 	add.w	$r12,$r14,$r12
1c006060:	2940018d 	st.h	$r13,$r12,0
1c006064:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006068:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00606c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006070:	0040858c 	slli.w	$r12,$r12,0x1
1c006074:	001031ac 	add.w	$r12,$r13,$r12
1c006078:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c00607c:	2940018d 	st.h	$r13,$r12,0
1c006080:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006084:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006088:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00608c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006090:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006094:	001131ac 	sub.w	$r12,$r13,$r12
1c006098:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00609c:	63ff55ac 	blt	$r13,$r12,-172(0x3ff54) # 1c005ff0 <Light_TEMT6000_Get+0x108>
1c0060a0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0060a4:	5000b800 	b	184(0xb8) # 1c00615c <Light_TEMT6000_Get+0x274>
1c0060a8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0060ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0060b0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0060b4:	0040858c 	slli.w	$r12,$r12,0x1
1c0060b8:	001031ac 	add.w	$r12,$r13,$r12
1c0060bc:	2a40018d 	ld.hu	$r13,$r12,0
1c0060c0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0060c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0060c8:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c0060cc:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0060d0:	0040858c 	slli.w	$r12,$r12,0x1
1c0060d4:	001031cc 	add.w	$r12,$r14,$r12
1c0060d8:	2a40018c 	ld.hu	$r12,$r12,0
1c0060dc:	6c00758d 	bgeu	$r12,$r13,116(0x74) # 1c006150 <Light_TEMT6000_Get+0x268>
1c0060e0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0060e4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0060e8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0060ec:	0040858c 	slli.w	$r12,$r12,0x1
1c0060f0:	001031ac 	add.w	$r12,$r13,$r12
1c0060f4:	2a40018c 	ld.hu	$r12,$r12,0
1c0060f8:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c0060fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006100:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006104:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006108:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c00610c:	0040858c 	slli.w	$r12,$r12,0x1
1c006110:	001031ac 	add.w	$r12,$r13,$r12
1c006114:	2a40018d 	ld.hu	$r13,$r12,0
1c006118:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c00611c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006120:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c006124:	0040858c 	slli.w	$r12,$r12,0x1
1c006128:	001031cc 	add.w	$r12,$r14,$r12
1c00612c:	2940018d 	st.h	$r13,$r12,0
1c006130:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006134:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006138:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00613c:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c006140:	0040858c 	slli.w	$r12,$r12,0x1
1c006144:	001031ac 	add.w	$r12,$r13,$r12
1c006148:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c00614c:	2940018d 	st.h	$r13,$r12,0
1c006150:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006154:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006158:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00615c:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006160:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006164:	001131ac 	sub.w	$r12,$r13,$r12
1c006168:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00616c:	63ff3dac 	blt	$r13,$r12,-196(0x3ff3c) # 1c0060a8 <Light_TEMT6000_Get+0x1c0>
1c006170:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006174:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006178:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00617c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006180:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006184:	67fe658d 	bge	$r12,$r13,-412(0x3fe64) # 1c005fe8 <Light_TEMT6000_Get+0x100>
1c006188:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00618c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006190:	50006400 	b	100(0x64) # 1c0061f4 <Light_TEMT6000_Get+0x30c>
1c006194:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006198:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c00619c:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c0061a0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0061a4:	004085ad 	slli.w	$r13,$r13,0x1
1c0061a8:	001035cd 	add.w	$r13,$r14,$r13
1c0061ac:	2a4001ad 	ld.hu	$r13,$r13,0
1c0061b0:	0010358d 	add.w	$r13,$r12,$r13
1c0061b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0061b8:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0061bc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0061c0:	2880718c 	ld.w	$r12,$r12,28(0x1c)
1c0061c4:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c0061c8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0061cc:	028021ad 	addi.w	$r13,$r13,8(0x8)
1c0061d0:	004085ad 	slli.w	$r13,$r13,0x1
1c0061d4:	001035cd 	add.w	$r13,$r14,$r13
1c0061d8:	2a4001ad 	ld.hu	$r13,$r13,0
1c0061dc:	0010358d 	add.w	$r13,$r12,$r13
1c0061e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0061e4:	2980718d 	st.w	$r13,$r12,28(0x1c)
1c0061e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0061ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0061f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0061f4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0061f8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0061fc:	67ff998d 	bge	$r12,$r13,-104(0x3ff98) # 1c006194 <Light_TEMT6000_Get+0x2ac>
1c006200:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006204:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c006208:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00620c:	002131ae 	div.wu	$r14,$r13,$r12
1c006210:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006218 <Light_TEMT6000_Get+0x330>
1c006214:	002a0007 	break	0x7
1c006218:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c00621c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006220:	2940298d 	st.h	$r13,$r12,10(0xa)
1c006224:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006228:	2880718d 	ld.w	$r13,$r12,28(0x1c)
1c00622c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006230:	002131ae 	div.wu	$r14,$r13,$r12
1c006234:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00623c <Light_TEMT6000_Get+0x354>
1c006238:	002a0007 	break	0x7
1c00623c:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c006240:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006244:	2940698d 	st.h	$r13,$r12,26(0x1a)
1c006248:	03400000 	andi	$r0,$r0,0x0
1c00624c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006250:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006254:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006258:	4c000020 	jirl	$r0,$r1,0

1c00625c <Light_value_feedback>:
Light_value_feedback():
1c00625c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006260:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006264:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006268:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00626c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006270:	2a40298c 	ld.hu	$r12,$r12,10(0xa)
1c006274:	0015018d 	move	$r13,$r12
1c006278:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00627c:	2a40698c 	ld.hu	$r12,$r12,26(0x1a)
1c006280:	001031ac 	add.w	$r12,$r13,$r12
1c006284:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c006288:	001031ac 	add.w	$r12,$r13,$r12
1c00628c:	0048858c 	srai.w	$r12,$r12,0x1
1c006290:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006294:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006298:	2940818d 	st.h	$r13,$r12,32(0x20)
1c00629c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0062a0:	2a40818c 	ld.hu	$r12,$r12,32(0x20)
1c0062a4:	0015018d 	move	$r13,$r12
1c0062a8:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c0062ac:	001c31ad 	mul.w	$r13,$r13,$r12
1c0062b0:	03bffc0c 	ori	$r12,$r0,0xfff
1c0062b4:	002031ae 	div.w	$r14,$r13,$r12
1c0062b8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0062c0 <Light_value_feedback+0x64>
1c0062bc:	002a0007 	break	0x7
1c0062c0:	001501cd 	move	$r13,$r14
1c0062c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0062c8:	2981318d 	st.w	$r13,$r12,76(0x4c)
1c0062cc:	03400000 	andi	$r0,$r0,0x0
1c0062d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0062d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0062d8:	4c000020 	jirl	$r0,$r1,0

1c0062dc <light_type_value_get>:
light_type_value_get():
1c0062dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0062e0:	29803076 	st.w	$r22,$r3,12(0xc)
1c0062e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0062e8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062ec:	28b5318c 	ld.w	$r12,$r12,-692(0xd4c)
1c0062f0:	00150184 	move	$r4,$r12
1c0062f4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0062f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0062fc:	4c000020 	jirl	$r0,$r1,0

1c006300 <esp8266_check_cmd>:
esp8266_check_cmd():
1c006300:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006304:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006308:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00630c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006310:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006314:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006318:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00631c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c006320:	5403fc00 	bl	1020(0x3fc) # 1c00671c <Queue_isEmpty>
1c006324:	0015008c 	move	$r12,$r4
1c006328:	44007980 	bnez	$r12,120(0x78) # 1c0063a0 <esp8266_check_cmd+0xa0>
1c00632c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c006330:	54043c00 	bl	1084(0x43c) # 1c00676c <Queue_HadUse>
1c006334:	0015008c 	move	$r12,$r4
1c006338:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00633c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006340:	28b3618c 	ld.w	$r12,$r12,-808(0xcd8)
1c006344:	2900018d 	st.b	$r13,$r12,0
1c006348:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c00634c:	00150005 	move	$r5,$r0
1c006350:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006354:	28b43084 	ld.w	$r4,$r4,-756(0xd0c)
1c006358:	57d293ff 	bl	-11632(0xfffd290) # 1c0035e8 <memset>
1c00635c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006360:	28b2e18c 	ld.w	$r12,$r12,-840(0xcb8)
1c006364:	2a00018c 	ld.bu	$r12,$r12,0
1c006368:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00636c:	00150186 	move	$r6,$r12
1c006370:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c006374:	28b3b0a5 	ld.w	$r5,$r5,-788(0xcec)
1c006378:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00637c:	54059c00 	bl	1436(0x59c) # 1c006918 <Queue_Read>
1c006380:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006384:	28b2518c 	ld.w	$r12,$r12,-876(0xc94)
1c006388:	2a00018c 	ld.bu	$r12,$r12,0
1c00638c:	0015018d 	move	$r13,$r12
1c006390:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006394:	28b3318c 	ld.w	$r12,$r12,-820(0xccc)
1c006398:	0010358c 	add.w	$r12,$r12,$r13
1c00639c:	29000180 	st.b	$r0,$r12,0
1c0063a0:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0063a4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0063a8:	28b2e084 	ld.w	$r4,$r4,-840(0xcb8)
1c0063ac:	57d29fff 	bl	-11620(0xfffd29c) # 1c003648 <pstrstr>
1c0063b0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0063b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0063b8:	00150184 	move	$r4,$r12
1c0063bc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0063c0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0063c4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0063c8:	4c000020 	jirl	$r0,$r1,0

1c0063cc <esp8266_send_cmd>:
esp8266_send_cmd():
1c0063cc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0063d0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0063d4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0063d8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0063dc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0063e0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0063e4:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0063e8:	001500ec 	move	$r12,$r7
1c0063ec:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c0063f0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0063f4:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0063f8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0063fc:	02a41084 	addi.w	$r4,$r4,-1788(0x904)
1c006400:	57b8bbff 	bl	-18248(0xfffb8b8) # 1c001cb8 <myprintf>
1c006404:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c006408:	1c000045 	pcaddu12i	$r5,2(0x2)
1c00640c:	02a400a5 	addi.w	$r5,$r5,-1792(0x900)
1c006410:	00150004 	move	$r4,$r0
1c006414:	57bc4bff 	bl	-17336(0xfffbc48) # 1c00205c <myprintf2>
1c006418:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00641c:	40007d80 	beqz	$r12,124(0x7c) # 1c006498 <esp8266_send_cmd+0xcc>
1c006420:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c006424:	40007580 	beqz	$r12,116(0x74) # 1c006498 <esp8266_send_cmd+0xcc>
1c006428:	50003400 	b	52(0x34) # 1c00645c <esp8266_send_cmd+0x90>
1c00642c:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c006430:	57d17bff 	bl	-11912(0xfffd178) # 1c0035a8 <delay_ms>
1c006434:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c006438:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00643c:	57fec7ff 	bl	-316(0xffffec4) # 1c006300 <esp8266_check_cmd>
1c006440:	0015008c 	move	$r12,$r4
1c006444:	40001980 	beqz	$r12,24(0x18) # 1c00645c <esp8266_send_cmd+0x90>
1c006448:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c00644c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006450:	02a30084 	addi.w	$r4,$r4,-1856(0x8c0)
1c006454:	57b867ff 	bl	-18332(0xfffb864) # 1c001cb8 <myprintf>
1c006458:	50001800 	b	24(0x18) # 1c006470 <esp8266_send_cmd+0xa4>
1c00645c:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c006460:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006464:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c006468:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c00646c:	47ffc19f 	bnez	$r12,-64(0x7fffc0) # 1c00642c <esp8266_send_cmd+0x60>
1c006470:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c006474:	44001180 	bnez	$r12,16(0x10) # 1c006484 <esp8266_send_cmd+0xb8>
1c006478:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00647c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006480:	50001800 	b	24(0x18) # 1c006498 <esp8266_send_cmd+0xcc>
1c006484:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c006488:	00150185 	move	$r5,$r12
1c00648c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006490:	02a23084 	addi.w	$r4,$r4,-1908(0x88c)
1c006494:	57b827ff 	bl	-18396(0xfffb824) # 1c001cb8 <myprintf>
1c006498:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c00649c:	00150184 	move	$r4,$r12
1c0064a0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0064a4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0064a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0064ac:	4c000020 	jirl	$r0,$r1,0

1c0064b0 <esp8266_init>:
esp8266_init():
1c0064b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0064b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0064b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0064bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0064c0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0064c4:	02a19084 	addi.w	$r4,$r4,-1948(0x864)
1c0064c8:	57b7f3ff 	bl	-18448(0xfffb7f0) # 1c001cb8 <myprintf>
1c0064cc:	02825807 	addi.w	$r7,$r0,150(0x96)
1c0064d0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0064d4:	02a170c6 	addi.w	$r6,$r6,-1956(0x85c)
1c0064d8:	1c000045 	pcaddu12i	$r5,2(0x2)
1c0064dc:	02a160a5 	addi.w	$r5,$r5,-1960(0x858)
1c0064e0:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0064e4:	28ade084 	ld.w	$r4,$r4,-1160(0xb78)
1c0064e8:	57fee7ff 	bl	-284(0xffffee4) # 1c0063cc <esp8266_send_cmd>
1c0064ec:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0064f0:	57d0bbff 	bl	-12104(0xfffd0b8) # 1c0035a8 <delay_ms>
1c0064f4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0064f8:	02a10084 	addi.w	$r4,$r4,-1984(0x840)
1c0064fc:	57b7bfff 	bl	-18500(0xfffb7bc) # 1c001cb8 <myprintf>
1c006500:	03400000 	andi	$r0,$r0,0x0
1c006504:	02825807 	addi.w	$r7,$r0,150(0x96)
1c006508:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00650c:	02a090c6 	addi.w	$r6,$r6,-2012(0x824)
1c006510:	1c000045 	pcaddu12i	$r5,2(0x2)
1c006514:	02a0d0a5 	addi.w	$r5,$r5,-1996(0x834)
1c006518:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00651c:	28ad0084 	ld.w	$r4,$r4,-1216(0xb40)
1c006520:	57feafff 	bl	-340(0xffffeac) # 1c0063cc <esp8266_send_cmd>
1c006524:	0015008c 	move	$r12,$r4
1c006528:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c006504 <esp8266_init+0x54>
1c00652c:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006530:	57d07bff 	bl	-12168(0xfffd078) # 1c0035a8 <delay_ms>
1c006534:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006538:	02a07084 	addi.w	$r4,$r4,-2020(0x81c)
1c00653c:	57b77fff 	bl	-18564(0xfffb77c) # 1c001cb8 <myprintf>
1c006540:	03400000 	andi	$r0,$r0,0x0
1c006544:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c006548:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00654c:	029f90c6 	addi.w	$r6,$r6,2020(0x7e4)
1c006550:	1c000045 	pcaddu12i	$r5,2(0x2)
1c006554:	02a080a5 	addi.w	$r5,$r5,-2016(0x820)
1c006558:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00655c:	28ac0084 	ld.w	$r4,$r4,-1280(0xb00)
1c006560:	57fe6fff 	bl	-404(0xffffe6c) # 1c0063cc <esp8266_send_cmd>
1c006564:	0015008c 	move	$r12,$r4
1c006568:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c006544 <esp8266_init+0x94>
1c00656c:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006570:	57d03bff 	bl	-12232(0xfffd038) # 1c0035a8 <delay_ms>
1c006574:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006578:	02a09084 	addi.w	$r4,$r4,-2012(0x824)
1c00657c:	57b73fff 	bl	-18628(0xfffb73c) # 1c001cb8 <myprintf>
1c006580:	03400000 	andi	$r0,$r0,0x0
1c006584:	02825807 	addi.w	$r7,$r0,150(0x96)
1c006588:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00658c:	029e90c6 	addi.w	$r6,$r6,1956(0x7a4)
1c006590:	1c000045 	pcaddu12i	$r5,2(0x2)
1c006594:	02a1f0a5 	addi.w	$r5,$r5,-1924(0x87c)
1c006598:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00659c:	28ab0084 	ld.w	$r4,$r4,-1344(0xac0)
1c0065a0:	57fe2fff 	bl	-468(0xffffe2c) # 1c0063cc <esp8266_send_cmd>
1c0065a4:	0015008c 	move	$r12,$r4
1c0065a8:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c006584 <esp8266_init+0xd4>
1c0065ac:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0065b0:	57cffbff 	bl	-12296(0xfffcff8) # 1c0035a8 <delay_ms>
1c0065b4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0065b8:	02a35084 	addi.w	$r4,$r4,-1836(0x8d4)
1c0065bc:	57b6ffff 	bl	-18692(0xfffb6fc) # 1c001cb8 <myprintf>
1c0065c0:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c0065c4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0065c8:	029da0c6 	addi.w	$r6,$r6,1896(0x768)
1c0065cc:	1c000045 	pcaddu12i	$r5,2(0x2)
1c0065d0:	02a480a5 	addi.w	$r5,$r5,-1760(0x920)
1c0065d4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0065d8:	28aa1084 	ld.w	$r4,$r4,-1404(0xa84)
1c0065dc:	57fdf3ff 	bl	-528(0xffffdf0) # 1c0063cc <esp8266_send_cmd>
1c0065e0:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0065e4:	57cfc7ff 	bl	-12348(0xfffcfc4) # 1c0035a8 <delay_ms>
1c0065e8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0065ec:	02a5b084 	addi.w	$r4,$r4,-1684(0x96c)
1c0065f0:	57b6cbff 	bl	-18744(0xfffb6c8) # 1c001cb8 <myprintf>
1c0065f4:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c0065f8:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0065fc:	029cd0c6 	addi.w	$r6,$r6,1844(0x734)
1c006600:	1c000045 	pcaddu12i	$r5,2(0x2)
1c006604:	02a670a5 	addi.w	$r5,$r5,-1636(0x99c)
1c006608:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00660c:	28a94084 	ld.w	$r4,$r4,-1456(0xa50)
1c006610:	57fdbfff 	bl	-580(0xffffdbc) # 1c0063cc <esp8266_send_cmd>
1c006614:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006618:	57cf93ff 	bl	-12400(0xfffcf90) # 1c0035a8 <delay_ms>
1c00661c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006620:	02a71084 	addi.w	$r4,$r4,-1596(0x9c4)
1c006624:	57b697ff 	bl	-18796(0xfffb694) # 1c001cb8 <myprintf>
1c006628:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c00662c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c006630:	029c00c6 	addi.w	$r6,$r6,1792(0x700)
1c006634:	1c000045 	pcaddu12i	$r5,2(0x2)
1c006638:	02a700a5 	addi.w	$r5,$r5,-1600(0x9c0)
1c00663c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006640:	28a87084 	ld.w	$r4,$r4,-1508(0xa1c)
1c006644:	57fd8bff 	bl	-632(0xffffd88) # 1c0063cc <esp8266_send_cmd>
1c006648:	02819004 	addi.w	$r4,$r0,100(0x64)
1c00664c:	57cf5fff 	bl	-12452(0xfffcf5c) # 1c0035a8 <delay_ms>
1c006650:	03400000 	andi	$r0,$r0,0x0
1c006654:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006658:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00665c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006660:	4c000020 	jirl	$r0,$r1,0

1c006664 <esp8266_send_data>:
esp8266_send_data():
1c006664:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006668:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00666c:	29806076 	st.w	$r22,$r3,24(0x18)
1c006670:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006674:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006678:	28bfb2c6 	ld.w	$r6,$r22,-20(0xfec)
1c00667c:	1c000045 	pcaddu12i	$r5,2(0x2)
1c006680:	02a6a0a5 	addi.w	$r5,$r5,-1624(0x9a8)
1c006684:	00150004 	move	$r4,$r0
1c006688:	57b9d7ff 	bl	-17964(0xfffb9d4) # 1c00205c <myprintf2>
1c00668c:	03400000 	andi	$r0,$r0,0x0
1c006690:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006694:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006698:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00669c:	4c000020 	jirl	$r0,$r1,0

1c0066a0 <esp8266_send_isno>:
esp8266_send_isno():
1c0066a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0066a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0066a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0066ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0066b0:	1c000045 	pcaddu12i	$r5,2(0x2)
1c0066b4:	02a5e0a5 	addi.w	$r5,$r5,-1672(0x978)
1c0066b8:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0066bc:	28a69084 	ld.w	$r4,$r4,-1628(0x9a4)
1c0066c0:	57cf8bff 	bl	-12408(0xfffcf88) # 1c003648 <pstrstr>
1c0066c4:	0015008c 	move	$r12,$r4
1c0066c8:	40002d80 	beqz	$r12,44(0x2c) # 1c0066f4 <esp8266_send_isno+0x54>
1c0066cc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0066d0:	28a5218c 	ld.w	$r12,$r12,-1720(0x948)
1c0066d4:	2a00018c 	ld.bu	$r12,$r12,0
1c0066d8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0066dc:	00150186 	move	$r6,$r12
1c0066e0:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0066e4:	28a5f0a5 	ld.w	$r5,$r5,-1668(0x97c)
1c0066e8:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0066ec:	28a4e084 	ld.w	$r4,$r4,-1736(0x938)
1c0066f0:	54014c00 	bl	332(0x14c) # 1c00683c <Queue_Wirte>
1c0066f4:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c0066f8:	00150005 	move	$r5,$r0
1c0066fc:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006700:	28a58084 	ld.w	$r4,$r4,-1696(0x960)
1c006704:	57cee7ff 	bl	-12572(0xfffcee4) # 1c0035e8 <memset>
1c006708:	03400000 	andi	$r0,$r0,0x0
1c00670c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006710:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006714:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006718:	4c000020 	jirl	$r0,$r1,0

1c00671c <Queue_isEmpty>:
Queue_isEmpty():
1c00671c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006720:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006724:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006728:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00672c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006730:	44000d80 	bnez	$r12,12(0xc) # 1c00673c <Queue_isEmpty+0x20>
1c006734:	0015000c 	move	$r12,$r0
1c006738:	50002400 	b	36(0x24) # 1c00675c <Queue_isEmpty+0x40>
1c00673c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006740:	2a40018d 	ld.hu	$r13,$r12,0
1c006744:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006748:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c00674c:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c006758 <Queue_isEmpty+0x3c>
1c006750:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006754:	50000800 	b	8(0x8) # 1c00675c <Queue_isEmpty+0x40>
1c006758:	0015000c 	move	$r12,$r0
1c00675c:	00150184 	move	$r4,$r12
1c006760:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006764:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006768:	4c000020 	jirl	$r0,$r1,0

1c00676c <Queue_HadUse>:
Queue_HadUse():
1c00676c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006770:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006774:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006778:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00677c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006780:	44000d80 	bnez	$r12,12(0xc) # 1c00678c <Queue_HadUse+0x20>
1c006784:	0015000c 	move	$r12,$r0
1c006788:	50003800 	b	56(0x38) # 1c0067c0 <Queue_HadUse+0x54>
1c00678c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006790:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c006794:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006798:	2a40018c 	ld.hu	$r12,$r12,0
1c00679c:	001131ac 	sub.w	$r12,$r13,$r12
1c0067a0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0067a4:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c0067a8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0067ac:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0067b0:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0067b4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0067bc <Queue_HadUse+0x50>
1c0067b8:	002a0007 	break	0x7
1c0067bc:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0067c0:	00150184 	move	$r4,$r12
1c0067c4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0067c8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0067cc:	4c000020 	jirl	$r0,$r1,0

1c0067d0 <Queue_NoUse>:
Queue_NoUse():
1c0067d0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0067d4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0067d8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0067dc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0067e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067e4:	44000d80 	bnez	$r12,12(0xc) # 1c0067f0 <Queue_NoUse+0x20>
1c0067e8:	0015000c 	move	$r12,$r0
1c0067ec:	50004000 	b	64(0x40) # 1c00682c <Queue_NoUse+0x5c>
1c0067f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067f4:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c0067f8:	0015018d 	move	$r13,$r12
1c0067fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006800:	2a40018c 	ld.hu	$r12,$r12,0
1c006804:	001131ac 	sub.w	$r12,$r13,$r12
1c006808:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c00680c:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006810:	0020b1ae 	mod.w	$r14,$r13,$r12
1c006814:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00681c <Queue_NoUse+0x4c>
1c006818:	002a0007 	break	0x7
1c00681c:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006820:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c006824:	001131ac 	sub.w	$r12,$r13,$r12
1c006828:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00682c:	00150184 	move	$r4,$r12
1c006830:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006834:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006838:	4c000020 	jirl	$r0,$r1,0

1c00683c <Queue_Wirte>:
Queue_Wirte():
1c00683c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006840:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006844:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006848:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00684c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006850:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006854:	001500cc 	move	$r12,$r6
1c006858:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c00685c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006860:	44000d80 	bnez	$r12,12(0xc) # 1c00686c <Queue_Wirte+0x30>
1c006864:	0015000c 	move	$r12,$r0
1c006868:	50009c00 	b	156(0x9c) # 1c006904 <Queue_Wirte+0xc8>
1c00686c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c006870:	57ff63ff 	bl	-160(0xfffff60) # 1c0067d0 <Queue_NoUse>
1c006874:	0015008c 	move	$r12,$r4
1c006878:	0015018d 	move	$r13,$r12
1c00687c:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006880:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c00688c <Queue_Wirte+0x50>
1c006884:	0015000c 	move	$r12,$r0
1c006888:	50007c00 	b	124(0x7c) # 1c006904 <Queue_Wirte+0xc8>
1c00688c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006890:	50006400 	b	100(0x64) # 1c0068f4 <Queue_Wirte+0xb8>
1c006894:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006898:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00689c:	001031ac 	add.w	$r12,$r13,$r12
1c0068a0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0068a4:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c0068a8:	001501ae 	move	$r14,$r13
1c0068ac:	2a00018d 	ld.bu	$r13,$r12,0
1c0068b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0068b4:	0010398c 	add.w	$r12,$r12,$r14
1c0068b8:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0068bc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0068c0:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c0068c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0068c8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0068cc:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0068d0:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0068d4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0068dc <Queue_Wirte+0xa0>
1c0068d8:	002a0007 	break	0x7
1c0068dc:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c0068e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0068e4:	2940098d 	st.h	$r13,$r12,2(0x2)
1c0068e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0068ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0068f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0068f4:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c0068f8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0068fc:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c006894 <Queue_Wirte+0x58>
1c006900:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006904:	00150184 	move	$r4,$r12
1c006908:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00690c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006910:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006914:	4c000020 	jirl	$r0,$r1,0

1c006918 <Queue_Read>:
Queue_Read():
1c006918:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00691c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006920:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006924:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006928:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00692c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006930:	001500cc 	move	$r12,$r6
1c006934:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c006938:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00693c:	44000d80 	bnez	$r12,12(0xc) # 1c006948 <Queue_Read+0x30>
1c006940:	0015000c 	move	$r12,$r0
1c006944:	50009c00 	b	156(0x9c) # 1c0069e0 <Queue_Read+0xc8>
1c006948:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00694c:	57fe23ff 	bl	-480(0xffffe20) # 1c00676c <Queue_HadUse>
1c006950:	0015008c 	move	$r12,$r4
1c006954:	0015018d 	move	$r13,$r12
1c006958:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c00695c:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c006968 <Queue_Read+0x50>
1c006960:	0015000c 	move	$r12,$r0
1c006964:	50007c00 	b	124(0x7c) # 1c0069e0 <Queue_Read+0xc8>
1c006968:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00696c:	50006400 	b	100(0x64) # 1c0069d0 <Queue_Read+0xb8>
1c006970:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006974:	2a40018c 	ld.hu	$r12,$r12,0
1c006978:	0015018e 	move	$r14,$r12
1c00697c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006980:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006984:	001031ac 	add.w	$r12,$r13,$r12
1c006988:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00698c:	001039ad 	add.w	$r13,$r13,$r14
1c006990:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c006994:	2900018d 	st.b	$r13,$r12,0
1c006998:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00699c:	2a40018c 	ld.hu	$r12,$r12,0
1c0069a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0069a4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0069a8:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0069ac:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0069b0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0069b8 <Queue_Read+0xa0>
1c0069b4:	002a0007 	break	0x7
1c0069b8:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c0069bc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0069c0:	2940018d 	st.h	$r13,$r12,0
1c0069c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0069c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0069cc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0069d0:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c0069d4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0069d8:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c006970 <Queue_Read+0x58>
1c0069dc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0069e0:	00150184 	move	$r4,$r12
1c0069e4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0069e8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0069ec:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0069f0:	4c000020 	jirl	$r0,$r1,0

1c0069f4 <ventilate_process_init>:
ventilate_process_init():
1c0069f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0069f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0069fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c006a00:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006a04:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006a08:	28986084 	ld.w	$r4,$r4,1560(0x618)
1c006a0c:	54006000 	bl	96(0x60) # 1c006a6c <Ventilate_System_Init>
1c006a10:	03400000 	andi	$r0,$r0,0x0
1c006a14:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006a18:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006a1c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006a20:	4c000020 	jirl	$r0,$r1,0

1c006a24 <ventilate_light_process>:
ventilate_light_process():
1c006a24:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006a28:	29803061 	st.w	$r1,$r3,12(0xc)
1c006a2c:	29802076 	st.w	$r22,$r3,8(0x8)
1c006a30:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006a34:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006a38:	2897a084 	ld.w	$r4,$r4,1512(0x5e8)
1c006a3c:	5400d400 	bl	212(0xd4) # 1c006b10 <Ventilate_Get>
1c006a40:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006a44:	28977084 	ld.w	$r4,$r4,1500(0x5dc)
1c006a48:	54043c00 	bl	1084(0x43c) # 1c006e84 <Ventilate_Value_Feedback>
1c006a4c:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006a50:	28974084 	ld.w	$r4,$r4,1488(0x5d0)
1c006a54:	54047000 	bl	1136(0x470) # 1c006ec4 <Ventilate_Contrl>
1c006a58:	03400000 	andi	$r0,$r0,0x0
1c006a5c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006a60:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006a64:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006a68:	4c000020 	jirl	$r0,$r1,0

1c006a6c <Ventilate_System_Init>:
Ventilate_System_Init():
1c006a6c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006a70:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006a74:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006a78:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006a7c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006a80:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006a84:	29402980 	st.h	$r0,$r12,10(0xa)
1c006a88:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006a8c:	29803180 	st.w	$r0,$r12,12(0xc)
1c006a90:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006a94:	29406980 	st.h	$r0,$r12,26(0x1a)
1c006a98:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006a9c:	29807180 	st.w	$r0,$r12,28(0x1c)
1c006aa0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006aa4:	50003c00 	b	60(0x3c) # 1c006ae0 <Ventilate_System_Init+0x74>
1c006aa8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006aac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ab0:	0040858c 	slli.w	$r12,$r12,0x1
1c006ab4:	001031ac 	add.w	$r12,$r13,$r12
1c006ab8:	29400180 	st.h	$r0,$r12,0
1c006abc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006ac0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ac4:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c006ac8:	0040858c 	slli.w	$r12,$r12,0x1
1c006acc:	001031ac 	add.w	$r12,$r13,$r12
1c006ad0:	29400180 	st.h	$r0,$r12,0
1c006ad4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ad8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006adc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006ae0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006ae4:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006ae8:	67ffc18d 	bge	$r12,$r13,-64(0x3ffc0) # 1c006aa8 <Ventilate_System_Init+0x3c>
1c006aec:	00150004 	move	$r4,$r0
1c006af0:	57d08bff 	bl	-12152(0xfffd088) # 1c003b78 <Adc_open>
1c006af4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006af8:	57d083ff 	bl	-12160(0xfffd080) # 1c003b78 <Adc_open>
1c006afc:	03400000 	andi	$r0,$r0,0x0
1c006b00:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006b04:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006b08:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006b0c:	4c000020 	jirl	$r0,$r1,0

1c006b10 <Ventilate_Get>:
Ventilate_Get():
1c006b10:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006b14:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006b18:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006b1c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006b20:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006b24:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006b28:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006b2c:	297f8ac0 	st.h	$r0,$r22,-30(0xfe2)
1c006b30:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006b34:	29402980 	st.h	$r0,$r12,10(0xa)
1c006b38:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006b3c:	29803180 	st.w	$r0,$r12,12(0xc)
1c006b40:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006b44:	29406980 	st.h	$r0,$r12,26(0x1a)
1c006b48:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006b4c:	29807180 	st.w	$r0,$r12,28(0x1c)
1c006b50:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c006b54:	50003c00 	b	60(0x3c) # 1c006b90 <Ventilate_Get+0x80>
1c006b58:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006b5c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006b60:	0040858c 	slli.w	$r12,$r12,0x1
1c006b64:	001031ac 	add.w	$r12,$r13,$r12
1c006b68:	29400180 	st.h	$r0,$r12,0
1c006b6c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006b70:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006b74:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c006b78:	0040858c 	slli.w	$r12,$r12,0x1
1c006b7c:	001031ac 	add.w	$r12,$r13,$r12
1c006b80:	29400180 	st.h	$r0,$r12,0
1c006b84:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006b88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006b8c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c006b90:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c006b94:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006b98:	67ffc18d 	bge	$r12,$r13,-64(0x3ffc0) # 1c006b58 <Ventilate_Get+0x48>
1c006b9c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006ba0:	50005c00 	b	92(0x5c) # 1c006bfc <Ventilate_Get+0xec>
1c006ba4:	00150004 	move	$r4,$r0
1c006ba8:	57d083ff 	bl	-12160(0xfffd080) # 1c003c28 <Adc_Measure>
1c006bac:	0015008c 	move	$r12,$r4
1c006bb0:	0015018e 	move	$r14,$r12
1c006bb4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006bb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006bbc:	0040858c 	slli.w	$r12,$r12,0x1
1c006bc0:	001031ac 	add.w	$r12,$r13,$r12
1c006bc4:	2940018e 	st.h	$r14,$r12,0
1c006bc8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c006bcc:	57d05fff 	bl	-12196(0xfffd05c) # 1c003c28 <Adc_Measure>
1c006bd0:	0015008c 	move	$r12,$r4
1c006bd4:	0015018e 	move	$r14,$r12
1c006bd8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006bdc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006be0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c006be4:	0040858c 	slli.w	$r12,$r12,0x1
1c006be8:	001031ac 	add.w	$r12,$r13,$r12
1c006bec:	2940018e 	st.h	$r14,$r12,0
1c006bf0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006bf4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006bf8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006bfc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006c00:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006c04:	67ffa18d 	bge	$r12,$r13,-96(0x3ffa0) # 1c006ba4 <Ventilate_Get+0x94>
1c006c08:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006c0c:	50019800 	b	408(0x198) # 1c006da4 <Ventilate_Get+0x294>
1c006c10:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006c14:	5000a000 	b	160(0xa0) # 1c006cb4 <Ventilate_Get+0x1a4>
1c006c18:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006c1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006c20:	0040858c 	slli.w	$r12,$r12,0x1
1c006c24:	001031ac 	add.w	$r12,$r13,$r12
1c006c28:	2a40018d 	ld.hu	$r13,$r12,0
1c006c2c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006c30:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006c34:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c006c38:	0040858c 	slli.w	$r12,$r12,0x1
1c006c3c:	001031cc 	add.w	$r12,$r14,$r12
1c006c40:	2a40018c 	ld.hu	$r12,$r12,0
1c006c44:	6c00658d 	bgeu	$r12,$r13,100(0x64) # 1c006ca8 <Ventilate_Get+0x198>
1c006c48:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006c4c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006c50:	0040858c 	slli.w	$r12,$r12,0x1
1c006c54:	001031ac 	add.w	$r12,$r13,$r12
1c006c58:	2a40018c 	ld.hu	$r12,$r12,0
1c006c5c:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c006c60:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006c64:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006c68:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006c6c:	0040858c 	slli.w	$r12,$r12,0x1
1c006c70:	001031ac 	add.w	$r12,$r13,$r12
1c006c74:	2a40018d 	ld.hu	$r13,$r12,0
1c006c78:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c006c7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006c80:	0040858c 	slli.w	$r12,$r12,0x1
1c006c84:	001031cc 	add.w	$r12,$r14,$r12
1c006c88:	2940018d 	st.h	$r13,$r12,0
1c006c8c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006c90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006c94:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006c98:	0040858c 	slli.w	$r12,$r12,0x1
1c006c9c:	001031ac 	add.w	$r12,$r13,$r12
1c006ca0:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c006ca4:	2940018d 	st.h	$r13,$r12,0
1c006ca8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006cac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006cb0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006cb4:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006cb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006cbc:	001131ac 	sub.w	$r12,$r13,$r12
1c006cc0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006cc4:	63ff55ac 	blt	$r13,$r12,-172(0x3ff54) # 1c006c18 <Ventilate_Get+0x108>
1c006cc8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006ccc:	5000b800 	b	184(0xb8) # 1c006d84 <Ventilate_Get+0x274>
1c006cd0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006cd4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006cd8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c006cdc:	0040858c 	slli.w	$r12,$r12,0x1
1c006ce0:	001031ac 	add.w	$r12,$r13,$r12
1c006ce4:	2a40018d 	ld.hu	$r13,$r12,0
1c006ce8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006cec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006cf0:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c006cf4:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c006cf8:	0040858c 	slli.w	$r12,$r12,0x1
1c006cfc:	001031cc 	add.w	$r12,$r14,$r12
1c006d00:	2a40018c 	ld.hu	$r12,$r12,0
1c006d04:	6c00758d 	bgeu	$r12,$r13,116(0x74) # 1c006d78 <Ventilate_Get+0x268>
1c006d08:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006d0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006d10:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c006d14:	0040858c 	slli.w	$r12,$r12,0x1
1c006d18:	001031ac 	add.w	$r12,$r13,$r12
1c006d1c:	2a40018c 	ld.hu	$r12,$r12,0
1c006d20:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c006d24:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006d28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006d2c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006d30:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c006d34:	0040858c 	slli.w	$r12,$r12,0x1
1c006d38:	001031ac 	add.w	$r12,$r13,$r12
1c006d3c:	2a40018d 	ld.hu	$r13,$r12,0
1c006d40:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c006d44:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006d48:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c006d4c:	0040858c 	slli.w	$r12,$r12,0x1
1c006d50:	001031cc 	add.w	$r12,$r14,$r12
1c006d54:	2940018d 	st.h	$r13,$r12,0
1c006d58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006d5c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006d60:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006d64:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c006d68:	0040858c 	slli.w	$r12,$r12,0x1
1c006d6c:	001031ac 	add.w	$r12,$r13,$r12
1c006d70:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c006d74:	2940018d 	st.h	$r13,$r12,0
1c006d78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006d7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006d80:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006d84:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c006d88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006d8c:	001131ac 	sub.w	$r12,$r13,$r12
1c006d90:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006d94:	63ff3dac 	blt	$r13,$r12,-196(0x3ff3c) # 1c006cd0 <Ventilate_Get+0x1c0>
1c006d98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006d9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006da0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006da4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006da8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006dac:	67fe658d 	bge	$r12,$r13,-412(0x3fe64) # 1c006c10 <Ventilate_Get+0x100>
1c006db0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006db4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006db8:	50006400 	b	100(0x64) # 1c006e1c <Ventilate_Get+0x30c>
1c006dbc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006dc0:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c006dc4:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c006dc8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006dcc:	004085ad 	slli.w	$r13,$r13,0x1
1c006dd0:	001035cd 	add.w	$r13,$r14,$r13
1c006dd4:	2a4001ad 	ld.hu	$r13,$r13,0
1c006dd8:	0010358d 	add.w	$r13,$r12,$r13
1c006ddc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006de0:	2980318d 	st.w	$r13,$r12,12(0xc)
1c006de4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006de8:	2880718c 	ld.w	$r12,$r12,28(0x1c)
1c006dec:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c006df0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006df4:	028021ad 	addi.w	$r13,$r13,8(0x8)
1c006df8:	004085ad 	slli.w	$r13,$r13,0x1
1c006dfc:	001035cd 	add.w	$r13,$r14,$r13
1c006e00:	2a4001ad 	ld.hu	$r13,$r13,0
1c006e04:	0010358d 	add.w	$r13,$r12,$r13
1c006e08:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006e0c:	2980718d 	st.w	$r13,$r12,28(0x1c)
1c006e10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006e14:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006e18:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006e1c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006e20:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006e24:	67ff998d 	bge	$r12,$r13,-104(0x3ff98) # 1c006dbc <Ventilate_Get+0x2ac>
1c006e28:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006e2c:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c006e30:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006e34:	002131ae 	div.wu	$r14,$r13,$r12
1c006e38:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006e40 <Ventilate_Get+0x330>
1c006e3c:	002a0007 	break	0x7
1c006e40:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c006e44:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006e48:	2940298d 	st.h	$r13,$r12,10(0xa)
1c006e4c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006e50:	2880718d 	ld.w	$r13,$r12,28(0x1c)
1c006e54:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006e58:	002131ae 	div.wu	$r14,$r13,$r12
1c006e5c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006e64 <Ventilate_Get+0x354>
1c006e60:	002a0007 	break	0x7
1c006e64:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c006e68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006e6c:	2940698d 	st.h	$r13,$r12,26(0x1a)
1c006e70:	03400000 	andi	$r0,$r0,0x0
1c006e74:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006e78:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006e7c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006e80:	4c000020 	jirl	$r0,$r1,0

1c006e84 <Ventilate_Value_Feedback>:
Ventilate_Value_Feedback():
1c006e84:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006e88:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006e8c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006e90:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006e94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006e98:	2a40298d 	ld.hu	$r13,$r12,10(0xa)
1c006e9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ea0:	2940818d 	st.h	$r13,$r12,32(0x20)
1c006ea4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ea8:	2a40698d 	ld.hu	$r13,$r12,26(0x1a)
1c006eac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006eb0:	2940898d 	st.h	$r13,$r12,34(0x22)
1c006eb4:	03400000 	andi	$r0,$r0,0x0
1c006eb8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006ebc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006ec0:	4c000020 	jirl	$r0,$r1,0

1c006ec4 <Ventilate_Contrl>:
Ventilate_Contrl():
1c006ec4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006ec8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006ecc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006ed0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006ed4:	03400000 	andi	$r0,$r0,0x0
1c006ed8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006edc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006ee0:	4c000020 	jirl	$r0,$r1,0

1c006ee4 <ventilate_type_value_get>:
ventilate_type_value_get():
1c006ee4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006ee8:	29803076 	st.w	$r22,$r3,12(0xc)
1c006eec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006ef0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006ef4:	2884b18c 	ld.w	$r12,$r12,300(0x12c)
1c006ef8:	00150184 	move	$r4,$r12
1c006efc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c006f00:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006f04:	4c000020 	jirl	$r0,$r1,0

1c006f08 <mqtt_process_init>:
mqtt_process_init():
1c006f08:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006f0c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006f10:	29802076 	st.w	$r22,$r3,8(0x8)
1c006f14:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006f18:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006f1c:	2883e084 	ld.w	$r4,$r4,248(0xf8)
1c006f20:	54004800 	bl	72(0x48) # 1c006f68 <Mqtt_System_Init>
1c006f24:	03400000 	andi	$r0,$r0,0x0
1c006f28:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006f2c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006f30:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006f34:	4c000020 	jirl	$r0,$r1,0

1c006f38 <mqtt_process>:
mqtt_process():
1c006f38:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006f3c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006f40:	29802076 	st.w	$r22,$r3,8(0x8)
1c006f44:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006f48:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006f4c:	28832084 	ld.w	$r4,$r4,200(0xc8)
1c006f50:	54008000 	bl	128(0x80) # 1c006fd0 <Mqtt_Feedback>
1c006f54:	03400000 	andi	$r0,$r0,0x0
1c006f58:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006f5c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006f60:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006f64:	4c000020 	jirl	$r0,$r1,0

1c006f68 <Mqtt_System_Init>:
Mqtt_System_Init():
1c006f68:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006f6c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006f70:	29806076 	st.w	$r22,$r3,24(0x18)
1c006f74:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006f78:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006f7c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006f80:	0282dd8c 	addi.w	$r12,$r12,183(0xb7)
1c006f84:	29000180 	st.b	$r0,$r12,0
1c006f88:	57f52bff 	bl	-2776(0xffff528) # 1c0064b0 <esp8266_init>
1c006f8c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006f90:	02829d8c 	addi.w	$r12,$r12,167(0xa7)
1c006f94:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006f98:	2900018d 	st.b	$r13,$r12,0
1c006f9c:	57f343ff 	bl	-3264(0xffff340) # 1c0062dc <light_type_value_get>
1c006fa0:	0015008d 	move	$r13,$r4
1c006fa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006fa8:	2980018d 	st.w	$r13,$r12,0
1c006fac:	57ff3bff 	bl	-200(0xfffff38) # 1c006ee4 <ventilate_type_value_get>
1c006fb0:	0015008d 	move	$r13,$r4
1c006fb4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006fb8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c006fbc:	03400000 	andi	$r0,$r0,0x0
1c006fc0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006fc4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006fc8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006fcc:	4c000020 	jirl	$r0,$r1,0

1c006fd0 <Mqtt_Feedback>:
Mqtt_Feedback():
1c006fd0:	02bb4063 	addi.w	$r3,$r3,-304(0xed0)
1c006fd4:	2984b061 	st.w	$r1,$r3,300(0x12c)
1c006fd8:	2984a076 	st.w	$r22,$r3,296(0x128)
1c006fdc:	0284c076 	addi.w	$r22,$r3,304(0x130)
1c006fe0:	29bb72c4 	st.w	$r4,$r22,-292(0xedc)
1c006fe4:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006fe8:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c006fec:	028141ad 	addi.w	$r13,$r13,80(0x50)
1c006ff0:	2980218d 	st.w	$r13,$r12,8(0x8)
1c006ff4:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006ff8:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c006ffc:	028141ad 	addi.w	$r13,$r13,80(0x50)
1c007000:	2980318d 	st.w	$r13,$r12,12(0xc)
1c007004:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c007008:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c00700c:	028111ad 	addi.w	$r13,$r13,68(0x44)
1c007010:	2980418d 	st.w	$r13,$r12,16(0x10)
1c007014:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c007018:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c00701c:	0280f1ad 	addi.w	$r13,$r13,60(0x3c)
1c007020:	2980518d 	st.w	$r13,$r12,20(0x14)
1c007024:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c007028:	2880018c 	ld.w	$r12,$r12,0
1c00702c:	2881318c 	ld.w	$r12,$r12,76(0x4c)
1c007030:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c007034:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c007038:	2940618d 	st.h	$r13,$r12,24(0x18)
1c00703c:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c007040:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c007044:	2a40818d 	ld.hu	$r13,$r12,32(0x20)
1c007048:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c00704c:	2940698d 	st.h	$r13,$r12,26(0x1a)
1c007050:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c007054:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c007058:	2a40898d 	ld.hu	$r13,$r12,34(0x22)
1c00705c:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c007060:	2940718d 	st.h	$r13,$r12,28(0x1c)
1c007064:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c007068:	29407980 	st.h	$r0,$r12,30(0x1e)
1c00706c:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c007070:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c007074:	02bbbecd 	addi.w	$r13,$r22,-273(0xeef)
1c007078:	001501a5 	move	$r5,$r13
1c00707c:	00150184 	move	$r4,$r12
1c007080:	57e4dfff 	bl	-6948(0xfffe4dc) # 1c00555c <json_to_send>
1c007084:	2a3bbecc 	ld.bu	$r12,$r22,-273(0xeef)
1c007088:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c00708c:	1c000025 	pcaddu12i	$r5,1(0x1)
1c007090:	02bf30a5 	addi.w	$r5,$r5,-52(0xfcc)
1c007094:	00150184 	move	$r4,$r12
1c007098:	57e7cfff 	bl	-6196(0xfffe7cc) # 1c005864 <esp8266_send_json>
1c00709c:	03400000 	andi	$r0,$r0,0x0
1c0070a0:	2884b061 	ld.w	$r1,$r3,300(0x12c)
1c0070a4:	2884a076 	ld.w	$r22,$r3,296(0x128)
1c0070a8:	0284c063 	addi.w	$r3,$r3,304(0x130)
1c0070ac:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c0070c0 <msg_wakeup>:
msg_wakeup():
1c0070c0:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01dc20 <_sidata+0x15bc4>
1c0070c4:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c0070c9 <hexdecarr>:
hexdecarr():
1c0070c9:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c0070cd:	37363534 	0x37363534
1c0070d1:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfed209 <_start-0x12df7>
1c0070d5:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfed639 <_start-0x129c7>
1c0070d9:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0070dd:	79654b0a 	0x79654b0a
1c0070e1:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c0070e5:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c0070e9:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c0070ed:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01e15d <_sidata+0x16101>
1c0070f1:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffe051 <_start-0x1faf>
1c0070f5:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c0070f9:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffe05d <_start-0x1fa3>
1c0070fd:	72616220 	0x72616220
1c007101:	0a0d216b 	0x0a0d216b
1c007105:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007109:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffd27d <_start-0x2d83>
1c00710d:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c007111:	d8000a0d 	0xd8000a0d
1c007115:	f41c001e 	0xf41c001e
1c007119:	f41c001f 	0xf41c001f
1c00711d:	f41c001f 	0xf41c001f
1c007121:	f41c001f 	0xf41c001f
1c007125:	f41c001f 	0xf41c001f
1c007129:	f41c001f 	0xf41c001f
1c00712d:	f41c001f 	0xf41c001f
1c007131:	f41c001f 	0xf41c001f
1c007135:	f41c001f 	0xf41c001f
1c007139:	f41c001f 	0xf41c001f
1c00713d:	f01c001f 	0xf01c001f
1c007141:	781c001e 	0x781c001e
1c007145:	781c001f 	0x781c001f
1c007149:	781c001f 	0x781c001f
1c00714d:	781c001f 	0x781c001f
1c007151:	781c001f 	0x781c001f
1c007155:	781c001f 	0x781c001f
1c007159:	781c001f 	0x781c001f
1c00715d:	781c001f 	0x781c001f
1c007161:	781c001f 	0x781c001f
1c007165:	f41c001f 	0xf41c001f
1c007169:	f41c001f 	0xf41c001f
1c00716d:	f41c001f 	0xf41c001f
1c007171:	f41c001f 	0xf41c001f
1c007175:	f41c001f 	0xf41c001f
1c007179:	f41c001f 	0xf41c001f
1c00717d:	f41c001f 	0xf41c001f
1c007181:	f41c001f 	0xf41c001f
1c007185:	f41c001f 	0xf41c001f
1c007189:	f41c001f 	0xf41c001f
1c00718d:	f41c001f 	0xf41c001f
1c007191:	f41c001f 	0xf41c001f
1c007195:	f41c001f 	0xf41c001f
1c007199:	f41c001f 	0xf41c001f
1c00719d:	f41c001f 	0xf41c001f
1c0071a1:	f41c001f 	0xf41c001f
1c0071a5:	f41c001f 	0xf41c001f
1c0071a9:	f41c001f 	0xf41c001f
1c0071ad:	f41c001f 	0xf41c001f
1c0071b1:	f41c001f 	0xf41c001f
1c0071b5:	f41c001f 	0xf41c001f
1c0071b9:	f41c001f 	0xf41c001f
1c0071bd:	f41c001f 	0xf41c001f
1c0071c1:	f41c001f 	0xf41c001f
1c0071c5:	f41c001f 	0xf41c001f
1c0071c9:	f41c001f 	0xf41c001f
1c0071cd:	f41c001f 	0xf41c001f
1c0071d1:	f41c001f 	0xf41c001f
1c0071d5:	f41c001f 	0xf41c001f
1c0071d9:	f41c001f 	0xf41c001f
1c0071dd:	f41c001f 	0xf41c001f
1c0071e1:	f41c001f 	0xf41c001f
1c0071e5:	f41c001f 	0xf41c001f
1c0071e9:	f41c001f 	0xf41c001f
1c0071ed:	f41c001f 	0xf41c001f
1c0071f1:	f41c001f 	0xf41c001f
1c0071f5:	f41c001f 	0xf41c001f
1c0071f9:	f41c001f 	0xf41c001f
1c0071fd:	f41c001f 	0xf41c001f
1c007201:	f41c001f 	0xf41c001f
1c007205:	681c001f 	bltu	$r0,$r31,7168(0x1c00) # 1c008e05 <_sidata+0xda9>
1c007209:	901c001e 	0x901c001e
1c00720d:	f81c001d 	0xf81c001d
1c007211:	f41c001d 	0xf41c001d
1c007215:	f41c001f 	0xf41c001f
1c007219:	f41c001f 	0xf41c001f
1c00721d:	f41c001f 	0xf41c001f
1c007221:	f41c001f 	0xf41c001f
1c007225:	f41c001f 	0xf41c001f
1c007229:	f41c001f 	0xf41c001f
1c00722d:	f41c001f 	0xf41c001f
1c007231:	f41c001f 	0xf41c001f
1c007235:	f41c001f 	0xf41c001f
1c007239:	301c001f 	0x301c001f
1c00723d:	a01c001e 	0xa01c001e
1c007241:	f41c001e 	0xf41c001e
1c007245:	f41c001f 	0xf41c001f
1c007249:	641c001f 	bge	$r0,$r31,7168(0x1c00) # 1c008e49 <_sidata+0xded>
1c00724d:	f41c001d 	0xf41c001d
1c007251:	c01c001f 	0xc01c001f
1c007255:	f41c001d 	0xf41c001d
1c007259:	f41c001f 	0xf41c001f
1c00725d:	a01c001f 	0xa01c001f
1c007261:	cc1c001e 	0xcc1c001e
1c007265:	f01c0022 	0xf01c0022
1c007269:	f01c0023 	0xf01c0023
1c00726d:	f01c0023 	0xf01c0023
1c007271:	f01c0023 	0xf01c0023
1c007275:	f01c0023 	0xf01c0023
1c007279:	f01c0023 	0xf01c0023
1c00727d:	f01c0023 	0xf01c0023
1c007281:	f01c0023 	0xf01c0023
1c007285:	f01c0023 	0xf01c0023
1c007289:	f01c0023 	0xf01c0023
1c00728d:	ec1c0023 	0xec1c0023
1c007291:	741c0022 	0x741c0022
1c007295:	741c0023 	0x741c0023
1c007299:	741c0023 	0x741c0023
1c00729d:	741c0023 	0x741c0023
1c0072a1:	741c0023 	0x741c0023
1c0072a5:	741c0023 	0x741c0023
1c0072a9:	741c0023 	0x741c0023
1c0072ad:	741c0023 	0x741c0023
1c0072b1:	741c0023 	0x741c0023
1c0072b5:	f01c0023 	0xf01c0023
1c0072b9:	f01c0023 	0xf01c0023
1c0072bd:	f01c0023 	0xf01c0023
1c0072c1:	f01c0023 	0xf01c0023
1c0072c5:	f01c0023 	0xf01c0023
1c0072c9:	f01c0023 	0xf01c0023
1c0072cd:	f01c0023 	0xf01c0023
1c0072d1:	f01c0023 	0xf01c0023
1c0072d5:	f01c0023 	0xf01c0023
1c0072d9:	f01c0023 	0xf01c0023
1c0072dd:	f01c0023 	0xf01c0023
1c0072e1:	f01c0023 	0xf01c0023
1c0072e5:	f01c0023 	0xf01c0023
1c0072e9:	f01c0023 	0xf01c0023
1c0072ed:	f01c0023 	0xf01c0023
1c0072f1:	f01c0023 	0xf01c0023
1c0072f5:	f01c0023 	0xf01c0023
1c0072f9:	f01c0023 	0xf01c0023
1c0072fd:	f01c0023 	0xf01c0023
1c007301:	f01c0023 	0xf01c0023
1c007305:	f01c0023 	0xf01c0023
1c007309:	f01c0023 	0xf01c0023
1c00730d:	f01c0023 	0xf01c0023
1c007311:	f01c0023 	0xf01c0023
1c007315:	f01c0023 	0xf01c0023
1c007319:	f01c0023 	0xf01c0023
1c00731d:	f01c0023 	0xf01c0023
1c007321:	f01c0023 	0xf01c0023
1c007325:	f01c0023 	0xf01c0023
1c007329:	f01c0023 	0xf01c0023
1c00732d:	881c0023 	0x881c0023
1c007331:	f01c0022 	0xf01c0022
1c007335:	f01c0023 	0xf01c0023
1c007339:	f01c0023 	0xf01c0023
1c00733d:	f01c0023 	0xf01c0023
1c007341:	f01c0023 	0xf01c0023
1c007345:	f01c0023 	0xf01c0023
1c007349:	f01c0023 	0xf01c0023
1c00734d:	f01c0023 	0xf01c0023
1c007351:	f01c0023 	0xf01c0023
1c007355:	441c0023 	bnez	$r1,793600(0xc1c00) # 1c0c8f55 <_sidata+0xc0ef9>
1c007359:	401c0022 	beqz	$r1,531456(0x81c00) # 1c088f59 <_sidata+0x80efd>
1c00735d:	bc1c0021 	0xbc1c0021
1c007361:	f01c0021 	0xf01c0021
1c007365:	f01c0023 	0xf01c0023
1c007369:	f01c0023 	0xf01c0023
1c00736d:	f01c0023 	0xf01c0023
1c007371:	f01c0023 	0xf01c0023
1c007375:	f01c0023 	0xf01c0023
1c007379:	f01c0023 	0xf01c0023
1c00737d:	f01c0023 	0xf01c0023
1c007381:	f01c0023 	0xf01c0023
1c007385:	f01c0023 	0xf01c0023
1c007389:	001c0023 	mul.w	$r3,$r1,$r0
1c00738d:	881c0022 	0x881c0022
1c007391:	f01c0022 	0xf01c0022
1c007395:	f01c0023 	0xf01c0023
1c007399:	0c1c0023 	fcmp.cune.s	$fcc3,$f1,$f0
1c00739d:	f01c0021 	0xf01c0021
1c0073a1:	781c0023 	0x781c0023
1c0073a5:	f01c0021 	0xf01c0021
1c0073a9:	f01c0023 	0xf01c0023
1c0073ad:	881c0023 	0x881c0023
1c0073b1:	0a1c0022 	xvfmadd.s	$xr2,$xr1,$xr0,$xr24
1c0073b5:	7c000000 	0x7c000000
1c0073b9:	7c7c7c7c 	0x7c7c7c7c
1c0073bd:	7c7c7c7c 	0x7c7c7c7c
1c0073c1:	7c7c7c7c 	0x7c7c7c7c
1c0073c5:	7c7c7c7c 	0x7c7c7c7c
1c0073c9:	7c7c7c7c 	0x7c7c7c7c
1c0073cd:	7c7c7c7c 	0x7c7c7c7c
1c0073d1:	7c7c7c7c 	0x7c7c7c7c
1c0073d5:	7c7c7c7c 	0x7c7c7c7c
1c0073d9:	7c7c7c7c 	0x7c7c7c7c
1c0073dd:	7c7c7c7c 	0x7c7c7c7c
1c0073e1:	7c7c7c7c 	0x7c7c7c7c
1c0073e5:	7c7c7c7c 	0x7c7c7c7c
1c0073e9:	7c7c7c7c 	0x7c7c7c7c
1c0073ed:	7c7c7c7c 	0x7c7c7c7c
1c0073f1:	7c7c7c7c 	0x7c7c7c7c
1c0073f5:	7c7c7c7c 	0x7c7c7c7c
1c0073f9:	7c7c7c7c 	0x7c7c7c7c
1c0073fd:	7c7c7c7c 	0x7c7c7c7c
1c007401:	7c7c7c7c 	0x7c7c7c7c
1c007405:	7c7c7c7c 	0x7c7c7c7c
1c007409:	7c7c7c7c 	0x7c7c7c7c
1c00740d:	7c7c7c7c 	0x7c7c7c7c
1c007411:	7c7c7c7c 	0x7c7c7c7c
1c007415:	7c7c7c7c 	0x7c7c7c7c
1c007419:	7c00000a 	0x7c00000a
1c00741d:	7c20207c 	0x7c20207c
1c007421:	7c7c7c7c 	0x7c7c7c7c
1c007425:	7c7c7c7c 	0x7c7c7c7c
1c007429:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00742d:	7c202020 	0x7c202020
1c007431:	7c7c7c7c 	0x7c7c7c7c
1c007435:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007439:	7c202020 	0x7c202020
1c00743d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007441:	7c7c2020 	0x7c7c2020
1c007445:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007449:	7c7c7c20 	0x7c7c7c20
1c00744d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007451:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007455:	7c7c7c7c 	0x7c7c7c7c
1c007459:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00745d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007461:	7c7c7c7c 	0x7c7c7c7c
1c007465:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007469:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00746d:	7c7c7c7c 	0x7c7c7c7c
1c007471:	7c202020 	0x7c202020
1c007475:	7c7c7c7c 	0x7c7c7c7c
1c007479:	7c7c2020 	0x7c7c2020
1c00747d:	7c00000a 	0x7c00000a
1c007481:	7c20207c 	0x7c20207c
1c007485:	7c7c7c7c 	0x7c7c7c7c
1c007489:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00748d:	7c7c2020 	0x7c7c2020
1c007491:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007495:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007499:	7c7c2020 	0x7c7c2020
1c00749d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0074a1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074a5:	7c202020 	0x7c202020
1c0074a9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074ad:	7c7c7c20 	0x7c7c7c20
1c0074b1:	7c20207c 	0x7c20207c
1c0074b5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074b9:	7c7c7c20 	0x7c7c7c20
1c0074bd:	7c202020 	0x7c202020
1c0074c1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074c5:	7c7c7c20 	0x7c7c7c20
1c0074c9:	7c202020 	0x7c202020
1c0074cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074d1:	7c7c7c20 	0x7c7c7c20
1c0074d5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0074d9:	7c7c7c7c 	0x7c7c7c7c
1c0074dd:	7c7c2020 	0x7c7c2020
1c0074e1:	7c00000a 	0x7c00000a
1c0074e5:	7c20207c 	0x7c20207c
1c0074e9:	7c7c7c7c 	0x7c7c7c7c
1c0074ed:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074f1:	7c7c7c20 	0x7c7c7c20
1c0074f5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074f9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074fd:	7c7c7c20 	0x7c7c7c20
1c007501:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007505:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007509:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c00750d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007511:	7c7c7c20 	0x7c7c7c20
1c007515:	7c7c2020 	0x7c7c2020
1c007519:	7c7c7c7c 	0x7c7c7c7c
1c00751d:	7c7c7c7c 	0x7c7c7c7c
1c007521:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007525:	7c7c7c20 	0x7c7c7c20
1c007529:	7c7c7c7c 	0x7c7c7c7c
1c00752d:	7c7c2020 	0x7c7c2020
1c007531:	7c7c7c7c 	0x7c7c7c7c
1c007535:	7c7c7c20 	0x7c7c7c20
1c007539:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c00753d:	7c7c7c20 	0x7c7c7c20
1c007541:	7c7c2020 	0x7c7c2020
1c007545:	7c00000a 	0x7c00000a
1c007549:	7c20207c 	0x7c20207c
1c00754d:	7c7c7c7c 	0x7c7c7c7c
1c007551:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007555:	7c7c7c20 	0x7c7c7c20
1c007559:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00755d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007561:	7c7c7c20 	0x7c7c7c20
1c007565:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007569:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00756d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c007571:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c007575:	7c7c7c20 	0x7c7c7c20
1c007579:	7c7c2020 	0x7c7c2020
1c00757d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007581:	7c7c7c20 	0x7c7c7c20
1c007585:	7c7c7c7c 	0x7c7c7c7c
1c007589:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00758d:	7c7c7c7c 	0x7c7c7c7c
1c007591:	7c7c2020 	0x7c7c2020
1c007595:	7c7c7c7c 	0x7c7c7c7c
1c007599:	7c7c7c20 	0x7c7c7c20
1c00759d:	7c7c2020 	0x7c7c2020
1c0075a1:	7c7c2020 	0x7c7c2020
1c0075a5:	7c7c2020 	0x7c7c2020
1c0075a9:	7c00000a 	0x7c00000a
1c0075ad:	7c20207c 	0x7c20207c
1c0075b1:	7c7c7c7c 	0x7c7c7c7c
1c0075b5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075b9:	7c7c7c20 	0x7c7c7c20
1c0075bd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075c1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075c5:	7c7c7c20 	0x7c7c7c20
1c0075c9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075d1:	7c7c7c20 	0x7c7c7c20
1c0075d5:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0075d9:	7c7c7c20 	0x7c7c7c20
1c0075dd:	7c7c2020 	0x7c7c2020
1c0075e1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075e5:	7c7c7c20 	0x7c7c7c20
1c0075e9:	7c7c7c7c 	0x7c7c7c7c
1c0075ed:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075f1:	7c7c7c20 	0x7c7c7c20
1c0075f5:	7c7c2020 	0x7c7c2020
1c0075f9:	7c7c7c7c 	0x7c7c7c7c
1c0075fd:	7c7c7c20 	0x7c7c7c20
1c007601:	7c7c2020 	0x7c7c2020
1c007605:	7c20207c 	0x7c20207c
1c007609:	7c7c2020 	0x7c7c2020
1c00760d:	7c00000a 	0x7c00000a
1c007611:	7c20207c 	0x7c20207c
1c007615:	7c7c7c7c 	0x7c7c7c7c
1c007619:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00761d:	7c7c2020 	0x7c7c2020
1c007621:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007625:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007629:	7c7c2020 	0x7c7c2020
1c00762d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007631:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007635:	7c7c7c20 	0x7c7c7c20
1c007639:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00763d:	7c7c7c20 	0x7c7c7c20
1c007641:	7c202020 	0x7c202020
1c007645:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007649:	7c7c7c20 	0x7c7c7c20
1c00764d:	7c202020 	0x7c202020
1c007651:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007655:	7c7c7c7c 	0x7c7c7c7c
1c007659:	7c202020 	0x7c202020
1c00765d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007661:	7c7c7c20 	0x7c7c7c20
1c007665:	7c7c2020 	0x7c7c2020
1c007669:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00766d:	7c7c2020 	0x7c7c2020
1c007671:	7c00000a 	0x7c00000a
1c007675:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007679:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00767d:	7c7c7c7c 	0x7c7c7c7c
1c007681:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007685:	7c202020 	0x7c202020
1c007689:	7c7c7c7c 	0x7c7c7c7c
1c00768d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007691:	7c202020 	0x7c202020
1c007695:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007699:	7c7c7c20 	0x7c7c7c20
1c00769d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0076a1:	7c7c7c20 	0x7c7c7c20
1c0076a5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0076a9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0076ad:	7c7c7c7c 	0x7c7c7c7c
1c0076b1:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0076b5:	7c202020 	0x7c202020
1c0076b9:	7c7c7c7c 	0x7c7c7c7c
1c0076bd:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0076c1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0076c5:	7c7c7c7c 	0x7c7c7c7c
1c0076c9:	7c7c2020 	0x7c7c2020
1c0076cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0076d1:	7c7c2020 	0x7c7c2020
1c0076d5:	7c00000a 	0x7c00000a
1c0076d9:	7c7c7c7c 	0x7c7c7c7c
1c0076dd:	7c7c7c7c 	0x7c7c7c7c
1c0076e1:	7c7c7c7c 	0x7c7c7c7c
1c0076e5:	7c7c7c7c 	0x7c7c7c7c
1c0076e9:	7c7c7c7c 	0x7c7c7c7c
1c0076ed:	7c7c7c7c 	0x7c7c7c7c
1c0076f1:	7c7c7c7c 	0x7c7c7c7c
1c0076f5:	7c7c7c7c 	0x7c7c7c7c
1c0076f9:	7c7c7c7c 	0x7c7c7c7c
1c0076fd:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c007701:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c007705:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c007709:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c00770d:	7c7c7c5d 	0x7c7c7c5d
1c007711:	7c7c7c7c 	0x7c7c7c7c
1c007715:	7c7c7c7c 	0x7c7c7c7c
1c007719:	7c7c7c7c 	0x7c7c7c7c
1c00771d:	7c7c7c7c 	0x7c7c7c7c
1c007721:	7c7c7c7c 	0x7c7c7c7c
1c007725:	7c7c7c7c 	0x7c7c7c7c
1c007729:	7c7c7c7c 	0x7c7c7c7c
1c00772d:	7c7c7c7c 	0x7c7c7c7c
1c007731:	7c7c7c7c 	0x7c7c7c7c
1c007735:	7c7c7c7c 	0x7c7c7c7c
1c007739:	0900000a 	0x0900000a
1c00773d:	0a006425 	0x0a006425
1c007741:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007745:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c007749:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00774d:	0050550a 	0x0050550a
1c007751:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007755:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00eca1 <_sidata+0x6c45>
1c007759:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c00775d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c007761:	756f430a 	0x756f430a
1c007765:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c007769:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00776d:	3030090a 	0x3030090a
1c007771:	09313009 	0x09313009
1c007775:	30093230 	0x30093230
1c007779:	34300933 	0x34300933
1c00777d:	09353009 	0x09353009
1c007781:	30093630 	0x30093630
1c007785:	38300937 	fldx.s	$f23,$r9,$r2
1c007789:	09393009 	0x09393009
1c00778d:	31093031 	0x31093031
1c007791:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c007795:	746e630a 	0x746e630a
1c007799:	09000000 	0x09000000
1c00779d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c0077a1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0077a5:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c0077a9:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00d8fd <_sidata+0x58a1>
1c0077ad:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0077b1:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfeed01 <_start-0x112ff>
1c0077b5:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c0077b9:	09000000 	0x09000000
1c0077bd:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c0077c1:	09000000 	0x09000000
1c0077c5:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c0077c9:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0077cd:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c0077d1:	3a515249 	0x3a515249
1c0077d5:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c0077d9:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffe64d <_start-0x19b3>
1c0077dd:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c0077e1:	0d3e2020 	0x0d3e2020
1c0077e5:	0a00000a 	0x0a00000a
1c0077e9:	2e2e2e2e 	0x2e2e2e2e
1c0077ed:	2e2e2e2e 	0x2e2e2e2e
1c0077f1:	2e2e2e2e 	0x2e2e2e2e
1c0077f5:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ac745 <_sidata+0x3a46e9>
1c0077f9:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c0077fd:	2e2e2e54 	0x2e2e2e54
1c007801:	2e2e2e2e 	0x2e2e2e2e
1c007805:	2e2e2e2e 	0x2e2e2e2e
1c007809:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00780d:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c007811:	2e2e2e0a 	0x2e2e2e0a
1c007815:	2e2e2e2e 	0x2e2e2e2e
1c007819:	2e2e2e2e 	0x2e2e2e2e
1c00781d:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39ba49 <_sidata+0x3939ed>
1c007821:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1be7d <_start-0x2e4183>
1c007825:	2e2e4c49 	0x2e2e4c49
1c007829:	2e2e2e2e 	0x2e2e2e2e
1c00782d:	2e2e2e2e 	0x2e2e2e2e
1c007831:	2e2e2e2e 	0x2e2e2e2e
1c007835:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c007839:	2e2e2e0a 	0x2e2e2e0a
1c00783d:	2e2e2e2e 	0x2e2e2e2e
1c007841:	2e2e2e2e 	0x2e2e2e2e
1c007845:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38b971 <_sidata+0x383915>
1c007849:	2e2e2e43 	0x2e2e2e43
1c00784d:	2e2e2e2e 	0x2e2e2e2e
1c007851:	2e2e2e2e 	0x2e2e2e2e
1c007855:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c007859:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b7859 <_sidata+0x2af7fd>
1c00785d:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c007861:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01e5c9 <_sidata+0x1656d>
1c007865:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00db85 <_sidata+0x5b29>
1c007869:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c00786d:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01ecd9 <_sidata+0x16c7d>
1c007871:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c007875:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c007879:	 	beqz	$r0,2621440(0x280000) # 1c287879 <_sidata+0x27f81d>

1c00787c <Ext_IrqHandle>:
1c00787c:	1c004340 	pcaddu12i	$r0,538(0x21a)
1c007880:	1c00438c 	pcaddu12i	$r12,540(0x21c)
1c007884:	1c0043d8 	pcaddu12i	$r24,542(0x21e)
1c007888:	1c004424 	pcaddu12i	$r4,545(0x221)
1c00788c:	1c004470 	pcaddu12i	$r16,547(0x223)
1c007890:	1c0044bc 	pcaddu12i	$r28,549(0x225)
1c007894:	1c004508 	pcaddu12i	$r8,552(0x228)
1c007898:	1c004554 	pcaddu12i	$r20,554(0x22a)
1c00789c:	1c0045a0 	pcaddu12i	$r0,557(0x22d)
1c0078a0:	1c0045ec 	pcaddu12i	$r12,559(0x22f)
1c0078a4:	1c004638 	pcaddu12i	$r24,561(0x231)
1c0078a8:	1c004684 	pcaddu12i	$r4,564(0x234)
1c0078ac:	1c0046d0 	pcaddu12i	$r16,566(0x236)
1c0078b0:	1c00471c 	pcaddu12i	$r28,568(0x238)
1c0078b4:	1c004768 	pcaddu12i	$r8,571(0x23b)
1c0078b8:	1c0047b4 	pcaddu12i	$r20,573(0x23d)
1c0078bc:	1c004800 	pcaddu12i	$r0,576(0x240)
1c0078c0:	1c00484c 	pcaddu12i	$r12,578(0x242)
1c0078c4:	1c004898 	pcaddu12i	$r24,580(0x244)
1c0078c8:	1c0048e4 	pcaddu12i	$r4,583(0x247)
1c0078cc:	1c004930 	pcaddu12i	$r16,585(0x249)
1c0078d0:	1c00497c 	pcaddu12i	$r28,587(0x24b)
1c0078d4:	1c0049c8 	pcaddu12i	$r8,590(0x24e)
1c0078d8:	1c004a14 	pcaddu12i	$r20,592(0x250)
1c0078dc:	1c004a60 	pcaddu12i	$r0,595(0x253)
1c0078e0:	1c004aac 	pcaddu12i	$r12,597(0x255)
1c0078e4:	1c004af8 	pcaddu12i	$r24,599(0x257)
1c0078e8:	1c004b44 	pcaddu12i	$r4,602(0x25a)
1c0078ec:	1c004b90 	pcaddu12i	$r16,604(0x25c)
1c0078f0:	1c004bdc 	pcaddu12i	$r28,606(0x25e)
1c0078f4:	1c004c28 	pcaddu12i	$r8,609(0x261)
1c0078f8:	1c004c74 	pcaddu12i	$r20,611(0x263)
1c0078fc:	1c004f58 	pcaddu12i	$r24,634(0x27a)
1c007900:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c007904:	1c004f58 	pcaddu12i	$r24,634(0x27a)
1c007908:	1c004f58 	pcaddu12i	$r24,634(0x27a)
1c00790c:	1c004f58 	pcaddu12i	$r24,634(0x27a)
1c007910:	1c004f58 	pcaddu12i	$r24,634(0x27a)
1c007914:	1c004f58 	pcaddu12i	$r24,634(0x27a)
1c007918:	1c004f58 	pcaddu12i	$r24,634(0x27a)
1c00791c:	1c004f58 	pcaddu12i	$r24,634(0x27a)
1c007920:	1c004f58 	pcaddu12i	$r24,634(0x27a)
1c007924:	1c004f58 	pcaddu12i	$r24,634(0x27a)
1c007928:	1c004f58 	pcaddu12i	$r24,634(0x27a)
1c00792c:	1c004f58 	pcaddu12i	$r24,634(0x27a)
1c007930:	1c004f58 	pcaddu12i	$r24,634(0x27a)
1c007934:	1c004f58 	pcaddu12i	$r24,634(0x27a)
1c007938:	1c004f58 	pcaddu12i	$r24,634(0x27a)
1c00793c:	1c004f24 	pcaddu12i	$r4,633(0x279)

1c007940 <__FUNCTION__.1754>:
1c007940:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01edb8 <_sidata+0x16d5c>
1c007944:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9a8 <_sidata+0x1694c>
1c007948:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffa9a8 <_start-0x5658>
1c00794c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeabc <_start-0x1544>
1c007950:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7b0 <_sidata+0x6754>
1c007954:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007958 <__FUNCTION__.1758>:
1c007958:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01edd0 <_sidata+0x16d74>
1c00795c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9c0 <_sidata+0x16964>
1c007960:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffaac0 <_start-0x5540>
1c007964:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffead4 <_start-0x152c>
1c007968:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7c8 <_sidata+0x676c>
1c00796c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007970 <__FUNCTION__.1762>:
1c007970:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ede8 <_sidata+0x16d8c>
1c007974:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9d8 <_sidata+0x1697c>
1c007978:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffabd8 <_start-0x5428>
1c00797c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeaec <_start-0x1514>
1c007980:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7e0 <_sidata+0x6784>
1c007984:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007988 <__FUNCTION__.1766>:
1c007988:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee00 <_sidata+0x16da4>
1c00798c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9f0 <_sidata+0x16994>
1c007990:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffacf0 <_start-0x5310>
1c007994:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb04 <_start-0x14fc>
1c007998:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7f8 <_sidata+0x679c>
1c00799c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079a0 <__FUNCTION__.1770>:
1c0079a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee18 <_sidata+0x16dbc>
1c0079a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea08 <_sidata+0x169ac>
1c0079a8:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffae08 <_start-0x51f8>
1c0079ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb1c <_start-0x14e4>
1c0079b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e810 <_sidata+0x67b4>
1c0079b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079b8 <__FUNCTION__.1774>:
1c0079b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee30 <_sidata+0x16dd4>
1c0079bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea20 <_sidata+0x169c4>
1c0079c0:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffaf20 <_start-0x50e0>
1c0079c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb34 <_start-0x14cc>
1c0079c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e828 <_sidata+0x67cc>
1c0079cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079d0 <__FUNCTION__.1778>:
1c0079d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee48 <_sidata+0x16dec>
1c0079d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea38 <_sidata+0x169dc>
1c0079d8:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffb038 <_start-0x4fc8>
1c0079dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb4c <_start-0x14b4>
1c0079e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e840 <_sidata+0x67e4>
1c0079e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079e8 <__FUNCTION__.1782>:
1c0079e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee60 <_sidata+0x16e04>
1c0079ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea50 <_sidata+0x169f4>
1c0079f0:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffb150 <_start-0x4eb0>
1c0079f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb64 <_start-0x149c>
1c0079f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e858 <_sidata+0x67fc>
1c0079fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a00 <__FUNCTION__.1786>:
1c007a00:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee78 <_sidata+0x16e1c>
1c007a04:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea68 <_sidata+0x16a0c>
1c007a08:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffaa68 <_start-0x5598>
1c007a0c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb7c <_start-0x1484>
1c007a10:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e870 <_sidata+0x6814>
1c007a14:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a18 <__FUNCTION__.1790>:
1c007a18:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee90 <_sidata+0x16e34>
1c007a1c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea80 <_sidata+0x16a24>
1c007a20:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffab80 <_start-0x5480>
1c007a24:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb94 <_start-0x146c>
1c007a28:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e888 <_sidata+0x682c>
1c007a2c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a30 <__FUNCTION__.1794>:
1c007a30:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eea8 <_sidata+0x16e4c>
1c007a34:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea98 <_sidata+0x16a3c>
1c007a38:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffac98 <_start-0x5368>
1c007a3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebac <_start-0x1454>
1c007a40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8a0 <_sidata+0x6844>
1c007a44:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a48 <__FUNCTION__.1798>:
1c007a48:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eec0 <_sidata+0x16e64>
1c007a4c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eab0 <_sidata+0x16a54>
1c007a50:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffadb0 <_start-0x5250>
1c007a54:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebc4 <_start-0x143c>
1c007a58:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8b8 <_sidata+0x685c>
1c007a5c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a60 <__FUNCTION__.1802>:
1c007a60:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eed8 <_sidata+0x16e7c>
1c007a64:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eac8 <_sidata+0x16a6c>
1c007a68:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffaec8 <_start-0x5138>
1c007a6c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebdc <_start-0x1424>
1c007a70:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8d0 <_sidata+0x6874>
1c007a74:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a78 <__FUNCTION__.1806>:
1c007a78:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eef0 <_sidata+0x16e94>
1c007a7c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eae0 <_sidata+0x16a84>
1c007a80:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffafe0 <_start-0x5020>
1c007a84:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebf4 <_start-0x140c>
1c007a88:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8e8 <_sidata+0x688c>
1c007a8c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a90 <__FUNCTION__.1810>:
1c007a90:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef08 <_sidata+0x16eac>
1c007a94:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eaf8 <_sidata+0x16a9c>
1c007a98:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffb0f8 <_start-0x4f08>
1c007a9c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec0c <_start-0x13f4>
1c007aa0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e900 <_sidata+0x68a4>
1c007aa4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007aa8 <__FUNCTION__.1814>:
1c007aa8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef20 <_sidata+0x16ec4>
1c007aac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb10 <_sidata+0x16ab4>
1c007ab0:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffb210 <_start-0x4df0>
1c007ab4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec24 <_start-0x13dc>
1c007ab8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e918 <_sidata+0x68bc>
1c007abc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ac0 <__FUNCTION__.1818>:
1c007ac0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef38 <_sidata+0x16edc>
1c007ac4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb28 <_sidata+0x16acc>
1c007ac8:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffab28 <_start-0x54d8>
1c007acc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec3c <_start-0x13c4>
1c007ad0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e930 <_sidata+0x68d4>
1c007ad4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ad8 <__FUNCTION__.1822>:
1c007ad8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef50 <_sidata+0x16ef4>
1c007adc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb40 <_sidata+0x16ae4>
1c007ae0:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffac40 <_start-0x53c0>
1c007ae4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec54 <_start-0x13ac>
1c007ae8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e948 <_sidata+0x68ec>
1c007aec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007af0 <__FUNCTION__.1826>:
1c007af0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef68 <_sidata+0x16f0c>
1c007af4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb58 <_sidata+0x16afc>
1c007af8:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffad58 <_start-0x52a8>
1c007afc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec6c <_start-0x1394>
1c007b00:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e960 <_sidata+0x6904>
1c007b04:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b08 <__FUNCTION__.1830>:
1c007b08:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef80 <_sidata+0x16f24>
1c007b0c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb70 <_sidata+0x16b14>
1c007b10:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffae70 <_start-0x5190>
1c007b14:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec84 <_start-0x137c>
1c007b18:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e978 <_sidata+0x691c>
1c007b1c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b20 <__FUNCTION__.1834>:
1c007b20:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef98 <_sidata+0x16f3c>
1c007b24:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb88 <_sidata+0x16b2c>
1c007b28:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffaf88 <_start-0x5078>
1c007b2c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec9c <_start-0x1364>
1c007b30:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e990 <_sidata+0x6934>
1c007b34:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b38 <__FUNCTION__.1838>:
1c007b38:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efb0 <_sidata+0x16f54>
1c007b3c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eba0 <_sidata+0x16b44>
1c007b40:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffb0a0 <_start-0x4f60>
1c007b44:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecb4 <_start-0x134c>
1c007b48:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9a8 <_sidata+0x694c>
1c007b4c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b50 <__FUNCTION__.1842>:
1c007b50:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efc8 <_sidata+0x16f6c>
1c007b54:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebb8 <_sidata+0x16b5c>
1c007b58:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffb1b8 <_start-0x4e48>
1c007b5c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeccc <_start-0x1334>
1c007b60:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9c0 <_sidata+0x6964>
1c007b64:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b68 <__FUNCTION__.1846>:
1c007b68:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efe0 <_sidata+0x16f84>
1c007b6c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebd0 <_sidata+0x16b74>
1c007b70:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffb2d0 <_start-0x4d30>
1c007b74:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffece4 <_start-0x131c>
1c007b78:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9d8 <_sidata+0x697c>
1c007b7c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b80 <__FUNCTION__.1850>:
1c007b80:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eff8 <_sidata+0x16f9c>
1c007b84:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebe8 <_sidata+0x16b8c>
1c007b88:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffabec <_start-0x5414>
1c007b8c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecfc <_start-0x1304>
1c007b90:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9f0 <_sidata+0x6994>
1c007b94:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b98 <__FUNCTION__.1854>:
1c007b98:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f010 <_sidata+0x16fb4>
1c007b9c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec00 <_sidata+0x16ba4>
1c007ba0:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffad04 <_start-0x52fc>
1c007ba4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed14 <_start-0x12ec>
1c007ba8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea08 <_sidata+0x69ac>
1c007bac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007bb0 <__FUNCTION__.1858>:
1c007bb0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f028 <_sidata+0x16fcc>
1c007bb4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec18 <_sidata+0x16bbc>
1c007bb8:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffae1c <_start-0x51e4>
1c007bbc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed2c <_start-0x12d4>
1c007bc0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea20 <_sidata+0x69c4>
1c007bc4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007bc8 <__FUNCTION__.1862>:
1c007bc8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f040 <_sidata+0x16fe4>
1c007bcc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec30 <_sidata+0x16bd4>
1c007bd0:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffaf34 <_start-0x50cc>
1c007bd4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed44 <_start-0x12bc>
1c007bd8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea38 <_sidata+0x69dc>
1c007bdc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007be0 <__FUNCTION__.1866>:
1c007be0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f058 <_sidata+0x16ffc>
1c007be4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec48 <_sidata+0x16bec>
1c007be8:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffb04c <_start-0x4fb4>
1c007bec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed5c <_start-0x12a4>
1c007bf0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea50 <_sidata+0x69f4>
1c007bf4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007bf8 <__FUNCTION__.1870>:
1c007bf8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f070 <_sidata+0x17014>
1c007bfc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec60 <_sidata+0x16c04>
1c007c00:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffb164 <_start-0x4e9c>
1c007c04:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed74 <_start-0x128c>
1c007c08:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea68 <_sidata+0x6a0c>
1c007c0c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007c10 <__FUNCTION__.1874>:
1c007c10:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f088 <_sidata+0x1702c>
1c007c14:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec78 <_sidata+0x16c1c>
1c007c18:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffb27c <_start-0x4d84>
1c007c1c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed8c <_start-0x1274>
1c007c20:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea80 <_sidata+0x6a24>
1c007c24:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007c28 <__FUNCTION__.1878>:
1c007c28:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f0a0 <_sidata+0x17044>
1c007c2c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec90 <_sidata+0x16c34>
1c007c30:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffb394 <_start-0x4c6c>
1c007c34:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeda4 <_start-0x125c>
1c007c38:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea98 <_sidata+0x6a3c>
1c007c3c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c007c40:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007c44:	50545451 	b	21255252(0x1445454) # 1d44d098 <_sidata+0x144503c>
1c007c48:	41524255 	beqz	$r18,-2796992(0x555240) # 1bd5ce88 <_start-0x2a3178>
1c007c4c:	2c303d57 	vld	$vr23,$r10,-1009(0xc0f)
1c007c50:	316b2f22 	0x316b2f22
1c007c54:	65336c64 	bge	$r3,$r4,78700(0x1336c) # 1c01afc0 <_sidata+0x12f64>
1c007c58:	4252324a 	beqz	$r18,2773552(0x2a5230) # 1c2ace88 <_sidata+0x2a4e2c>
1c007c5c:	63312f42 	blt	$r26,$r2,-52948(0x3312c) # 1bffad88 <_start-0x5278>
1c007c60:	74323031 	xvaddwod.h.bu	$xr17,$xr1,$xr12
1c007c64:	6573752f 	bge	$r9,$r15,95092(0x17374) # 1c01efd8 <_sidata+0x16f7c>
1c007c68:	70752f72 	vmax.wu	$vr18,$vr27,$vr11
1c007c6c:	65746164 	bge	$r11,$r4,95328(0x17460) # 1c01f0cc <_sidata+0x17070>
1c007c70:	73252c22 	vsat.d	$vr2,$vr1,0xb
1c007c74:	302c302c 	vldrepl.w	$vr12,$r1,-976(0xc30)
1c007c78:	0000000a 	0x0000000a
1c007c7c:	00004b4f 	bitrev.4b	$r15,$r26
1c007c80:	54514d2b 	bl	78401868(0x4ac514c) # 20accdcc <_sidata+0x4ac4d70>
1c007c84:	42555054 	beqz	$r2,-2992816(0x525550) # 1bd2d1d4 <_start-0x2d2e2c>
1c007c88:	004b4f3a 	0x004b4f3a
1c007c8c:	36303023 	0x36303023
1c007c90:	64342550 	bge	$r10,$r16,13348(0x3424) # 1c00b0b4 <_sidata+0x3058>
1c007c94:	30303054 	0x30303054
1c007c98:	00002130 	clo.d	$r16,$r9
1c007c9c:	36303023 	0x36303023
1c007ca0:	30353150 	0x30353150
1c007ca4:	30305430 	0x30305430
1c007ca8:	00213030 	div.wu	$r16,$r1,$r12
1c007cac:	37303023 	0x37303023
1c007cb0:	30353250 	0x30353250
1c007cb4:	30305430 	0x30305430
1c007cb8:	00213030 	div.wu	$r16,$r1,$r12
1c007cbc:	37303023 	0x37303023
1c007cc0:	30353150 	0x30353150
1c007cc4:	30305430 	0x30305430
1c007cc8:	00213030 	div.wu	$r16,$r1,$r12
1c007ccc:	36303023 	0x36303023
1c007cd0:	30353150 	0x30353150
1c007cd4:	30305430 	0x30305430
1c007cd8:	00213030 	div.wu	$r16,$r1,$r12
1c007cdc:	37303023 	0x37303023
1c007ce0:	30353150 	0x30353150
1c007ce4:	30305430 	0x30305430
1c007ce8:	00213030 	div.wu	$r16,$r1,$r12
1c007cec:	36303023 	0x36303023
1c007cf0:	30353050 	0x30353050
1c007cf4:	30305430 	0x30305430
1c007cf8:	00213030 	div.wu	$r16,$r1,$r12
1c007cfc:	3a646d63 	0x3a646d63
1c007d00:	0a0d7325 	0x0a0d7325
1c007d04:	00000000 	0x00000000
1c007d08:	000a7325 	0x000a7325
1c007d0c:	3a6b6361 	0x3a6b6361
1c007d10:	0a0d7325 	0x0a0d7325
1c007d14:	00000000 	0x00000000
1c007d18:	3a736572 	0x3a736572
1c007d1c:	0a0d6425 	0x0a0d6425
1c007d20:	00000000 	0x00000000
1c007d24:	0a0d5441 	0x0a0d5441
1c007d28:	00000000 	0x00000000
1c007d2c:	00004b4f 	bitrev.4b	$r15,$r26
1c007d30:	00005441 	bitrev.d	$r1,$r2
1c007d34:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07a888 <_sidata+0x7282c>
1c007d38:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdccc84 <_start-0x23337c>
1c007d3c:	0d313d45 	0x0d313d45
1c007d40:	0000000a 	0x0000000a
1c007d44:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07a898 <_sidata+0x7283c>
1c007d48:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdccc94 <_start-0x23336c>
1c007d4c:	00313d45 	0x00313d45
1c007d50:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07a8a4 <_sidata+0x72848>
1c007d54:	50414a57 	b	-111394488(0x95c4148) # 155cbe9c <_start-0x6a34164>
1c007d58:	2d78793d 	0x2d78793d
1c007d5c:	6f687069 	bgeu	$r3,$r9,-38800(0x36870) # 1bffe5cc <_start-0x1a34>
1c007d60:	312c656e 	vstelm.w	$vr14,$r11,100(0x64),0x3
1c007d64:	35343332 	0x35343332
1c007d68:	0d383736 	0x0d383736
1c007d6c:	0000000a 	0x0000000a
1c007d70:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07a8c4 <_sidata+0x72868>
1c007d74:	50414a57 	b	-111394488(0x95c4148) # 155cbebc <_start-0x6a34144>
1c007d78:	6554223d 	bge	$r17,$r29,87072(0x15420) # 1c01d198 <_sidata+0x1513c>
1c007d7c:	5f61646e 	bne	$r3,$r14,-40604(0x36164) # 1bffdee0 <_start-0x2120>
1c007d80:	39374342 	0x39374342
1c007d84:	2c223045 	vld	$vr5,$r2,-1908(0x88c)
1c007d88:	6d747322 	bgeu	$r25,$r2,95344(0x17470) # 1c01f1f8 <_sidata+0x1719c>
1c007d8c:	31663233 	0x31663233
1c007d90:	38633330 	amor.w	$r16,$r12,$r25
1c007d94:	00223674 	div.d	$r20,$r19,$r13
1c007d98:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007d9c:	55545451 	bl	21320788(0x1455454) # 1d45d1f0 <_sidata+0x1455194>
1c007da0:	43524553 	beqz	$r10,-3190204(0x4f5244) # 1bcfcfe4 <_start-0x30301c>
1c007da4:	313d4746 	0x313d4746
1c007da8:	4c554e2c 	jirl	$r12,$r17,21836(0x554c)
1c007dac:	63312c4c 	blt	$r2,$r12,-52948(0x3312c) # 1bffaed8 <_start-0x5128>
1c007db0:	73323031 	0x73323031
1c007db4:	64316b26 	bge	$r25,$r6,12648(0x3168) # 1c00af1c <_sidata+0x2ec0>
1c007db8:	4a65336c 	0x4a65336c
1c007dbc:	42425232 	beqz	$r17,-3521968(0x4a4250) # 1bcac00c <_start-0x353ff4>
1c007dc0:	3430642c 	0x3430642c
1c007dc4:	66653932 	bge	$r9,$r18,-105160(0x26538) # 1bfee2fc <_start-0x11d04>
1c007dc8:	34383438 	0x34383438
1c007dcc:	65613131 	bge	$r9,$r17,90416(0x16130) # 1c01defc <_sidata+0x15ea0>
1c007dd0:	37646339 	0x37646339
1c007dd4:	35616232 	0x35616232
1c007dd8:	65373565 	bge	$r11,$r5,79668(0x13734) # 1c01b50c <_sidata+0x134b0>
1c007ddc:	33303730 	xvstelm.w	$xr16,$r25,52(0x34),0x4
1c007de0:	36353533 	0x36353533
1c007de4:	31303962 	0x31303962
1c007de8:	63313736 	blt	$r25,$r22,-52940(0x33134) # 1bffaf1c <_start-0x50e4>
1c007dec:	35323836 	0x35323836
1c007df0:	37663262 	0x37663262
1c007df4:	61356135 	blt	$r9,$r21,79200(0x13560) # 1c01b354 <_sidata+0x132f8>
1c007df8:	63366265 	blt	$r19,$r5,-51616(0x33660) # 1bffb458 <_start-0x4ba8>
1c007dfc:	36633735 	0x36633735
1c007e00:	2c302c64 	vld	$vr4,$r3,-1013(0xc0b)
1c007e04:	22222c30 	ll.d	$r16,$r1,8748(0x222c)
1c007e08:	00000a0d 	0x00000a0d
1c007e0c:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007e10:	55545451 	bl	21320788(0x1455454) # 1d45d264 <_sidata+0x1455208>
1c007e14:	43524553 	beqz	$r10,-3190204(0x4f5244) # 1bcfd058 <_start-0x302fa8>
1c007e18:	303d4746 	0x303d4746
1c007e1c:	222c312c 	ll.d	$r12,$r9,11312(0x2c30)
1c007e20:	4c4c554e 	jirl	$r14,$r10,19540(0x4c54)
1c007e24:	31222c22 	vstelm.w	$vr2,$r1,-468(0x22c),0x0
1c007e28:	32303163 	0x32303163
1c007e2c:	316b2674 	0x316b2674
1c007e30:	65336c64 	bge	$r3,$r4,78700(0x1336c) # 1c01b19c <_sidata+0x13140>
1c007e34:	4252324a 	beqz	$r18,2773552(0x2a5230) # 1c2ad064 <_sidata+0x2a5008>
1c007e38:	222c2242 	ll.d	$r2,$r18,11296(0x2c20)
1c007e3c:	66363633 	bge	$r17,$r19,-117196(0x23634) # 1bfeb470 <_start-0x14b90>
1c007e40:	38613032 	amadd.w	$r18,$r12,$r1
1c007e44:	37326164 	0x37326164
1c007e48:	66393538 	bge	$r9,$r24,-116428(0x23934) # 1bfeb77c <_start-0x14884>
1c007e4c:	36306132 	0x36306132
1c007e50:	66393334 	bge	$r25,$r20,-116432(0x23930) # 1bfeb780 <_start-0x14880>
1c007e54:	65666363 	bge	$r27,$r3,91744(0x16660) # 1c01e4b4 <_sidata+0x16458>
1c007e58:	63303061 	blt	$r3,$r1,-53200(0x33030) # 1bffae88 <_start-0x5178>
1c007e5c:	61303330 	blt	$r25,$r16,77872(0x13030) # 1c01ae8c <_sidata+0x12e30>
1c007e60:	31353736 	0x31353736
1c007e64:	32343662 	0x32343662
1c007e68:	65383639 	bge	$r17,$r25,79924(0x13834) # 1c01b69c <_sidata+0x13640>
1c007e6c:	34333061 	0x34333061
1c007e70:	36616635 	0x36616635
1c007e74:	34376332 	0x34376332
1c007e78:	62633535 	blt	$r9,$r21,-105676(0x26334) # 1bfee1ac <_start-0x11e54>
1c007e7c:	2c302c22 	vld	$vr2,$r1,-1013(0xc0b)
1c007e80:	22222c30 	ll.d	$r16,$r1,8748(0x222c)
1c007e84:	00000000 	0x00000000
1c007e88:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007e8c:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7d2e0 <_start-0x382d20>
1c007e90:	4e45494c 	jirl	$r12,$r10,-113336(0x24548)
1c007e94:	3d444954 	0x3d444954
1c007e98:	316b2c30 	0x316b2c30
1c007e9c:	65336c64 	bge	$r3,$r4,78700(0x1336c) # 1c01b208 <_sidata+0x131ac>
1c007ea0:	4252324a 	beqz	$r18,2773552(0x2a5230) # 1c2ad0d0 <_sidata+0x2a5074>
1c007ea4:	63312e42 	blt	$r18,$r2,-52948(0x3312c) # 1bffafd0 <_start-0x5030>
1c007ea8:	73323031 	0x73323031
1c007eac:	6365737c 	blt	$r27,$r28,-39568(0x36570) # 1bffe41c <_start-0x1be4>
1c007eb0:	6d657275 	bgeu	$r19,$r21,91504(0x16570) # 1c01e420 <_sidata+0x163c4>
1c007eb4:	3d65646f 	0x3d65646f
1c007eb8:	69732c32 	bltu	$r1,$r18,95020(0x1732c) # 1c01f1e4 <_sidata+0x17188>
1c007ebc:	656d6e67 	bge	$r19,$r7,93548(0x16d6c) # 1c01ec28 <_sidata+0x16bcc>
1c007ec0:	646f6874 	bge	$r3,$r20,28520(0x6f68) # 1c00ee28 <_sidata+0x6dcc>
1c007ec4:	616d683d 	blt	$r1,$r29,93544(0x16d68) # 1c01ec2c <_sidata+0x16bd0>
1c007ec8:	61687363 	blt	$r27,$r3,92272(0x16870) # 1c01e738 <_sidata+0x166dc>
1c007ecc:	2c363532 	vld	$vr18,$r9,-627(0xd8d)
1c007ed0:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01ec38 <_sidata+0x16bdc>
1c007ed4:	6d617473 	bgeu	$r3,$r19,90484(0x16174) # 1c01e048 <_sidata+0x15fec>
1c007ed8:	37313d70 	0x37313d70
1c007edc:	33363931 	xvstelm.w	$xr17,$r9,-456(0x238),0x5
1c007ee0:	30343736 	0x30343736
1c007ee4:	7c393931 	0x7c393931
1c007ee8:	00000a0d 	0x00000a0d
1c007eec:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007ef0:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7d344 <_start-0x382cbc>
1c007ef4:	4e45494c 	jirl	$r12,$r10,-113336(0x24548)
1c007ef8:	3d444954 	0x3d444954
1c007efc:	6b222c30 	bltu	$r1,$r16,-56788(0x3222c) # 1bffa128 <_start-0x5ed8>
1c007f00:	336c6431 	xvstelm.h	$xr17,$r1,50(0x32),0xb
1c007f04:	52324a65 	b	-107597240(0x9963248) # 1596b14c <_start-0x6694eb4>
1c007f08:	312e4242 	vstelm.w	$vr2,$r18,-448(0x240),0x3
1c007f0c:	32303163 	0x32303163
1c007f10:	65737c74 	bge	$r3,$r20,95100(0x1737c) # 1c01f28c <_sidata+0x17230>
1c007f14:	65727563 	bge	$r11,$r3,94836(0x17274) # 1c01f188 <_sidata+0x1712c>
1c007f18:	65646f6d 	bge	$r27,$r13,91244(0x1646c) # 1c01e384 <_sidata+0x16328>
1c007f1c:	2c5c323d 	vst	$vr29,$r17,1804(0x70c)
1c007f20:	6e676973 	bgeu	$r11,$r19,-104600(0x26768) # 1bfee688 <_start-0x11978>
1c007f24:	6874656d 	bltu	$r11,$r13,29796(0x7464) # 1c00f388 <_sidata+0x732c>
1c007f28:	683d646f 	bltu	$r3,$r15,15716(0x3d64) # 1c00bc8c <_sidata+0x3c30>
1c007f2c:	7363616d 	vssrani.d.q	$vr13,$vr11,0x58
1c007f30:	35326168 	0x35326168
1c007f34:	742c5c36 	0x742c5c36
1c007f38:	73656d69 	vssrani.wu.d	$vr9,$vr11,0x1b
1c007f3c:	706d6174 	0x706d6174
1c007f40:	3137313d 	0x3137313d
1c007f44:	37333639 	0x37333639
1c007f48:	31303433 	0x31303433
1c007f4c:	227c3236 	ll.d	$r22,$r17,31792(0x7c30)
1c007f50:	00000000 	0x00000000
1c007f54:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007f58:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7d3ac <_start-0x382c54>
1c007f5c:	3d4e4e4f 	0x3d4e4e4f
1c007f60:	69222c30 	bltu	$r1,$r16,74284(0x1222c) # 1c01a18c <_sidata+0x12130>
1c007f64:	302d746f 	vldrepl.w	$vr15,$r3,-652(0xd74)
1c007f68:	30307a36 	0x30307a36
1c007f6c:	36397a62 	0x36397a62
1c007f70:	62783437 	blt	$r1,$r23,-100300(0x27834) # 1bfef7a4 <_start-0x1085c>
1c007f74:	6d2e7665 	bgeu	$r19,$r5,77428(0x12e74) # 1c01ade8 <_sidata+0x12d8c>
1c007f78:	2e747471 	0x2e747471
1c007f7c:	68746f69 	bltu	$r27,$r9,29804(0x746c) # 1c00f3e8 <_sidata+0x738c>
1c007f80:	612e6275 	blt	$r19,$r21,77408(0x12e60) # 1c01ade0 <_sidata+0x12d84>
1c007f84:	7579696c 	0x7579696c
1c007f88:	2e73636e 	0x2e73636e
1c007f8c:	226d6f63 	ll.d	$r3,$r27,28012(0x6d6c)
1c007f90:	3838312c 	fstx.s	$f12,$r9,$r12
1c007f94:	0d312c33 	0x0d312c33
1c007f98:	0000000a 	0x0000000a
1c007f9c:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007fa0:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7d3f4 <_start-0x382c0c>
1c007fa4:	3d4e4e4f 	0x3d4e4e4f
1c007fa8:	69222c30 	bltu	$r1,$r16,74284(0x1222c) # 1c01a1d4 <_sidata+0x12178>
1c007fac:	302d746f 	vldrepl.w	$vr15,$r3,-652(0xd74)
1c007fb0:	30307a36 	0x30307a36
1c007fb4:	36397a62 	0x36397a62
1c007fb8:	62783437 	blt	$r1,$r23,-100300(0x27834) # 1bfef7ec <_start-0x10814>
1c007fbc:	6d2e7665 	bgeu	$r19,$r5,77428(0x12e74) # 1c01ae30 <_sidata+0x12dd4>
1c007fc0:	2e747471 	0x2e747471
1c007fc4:	68746f69 	bltu	$r27,$r9,29804(0x746c) # 1c00f430 <_sidata+0x73d4>
1c007fc8:	612e6275 	blt	$r19,$r21,77408(0x12e60) # 1c01ae28 <_sidata+0x12dcc>
1c007fcc:	7579696c 	0x7579696c
1c007fd0:	2e73636e 	0x2e73636e
1c007fd4:	226d6f63 	ll.d	$r3,$r27,28012(0x6d6c)
1c007fd8:	3838312c 	fstx.s	$f12,$r9,$r12
1c007fdc:	00312c33 	0x00312c33
1c007fe0:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007fe4:	53545451 	b	21451860(0x1475454) # 1d47d438 <_sidata+0x14753dc>
1c007fe8:	303d4255 	0x303d4255
1c007fec:	0d312c2c 	0x0d312c2c
1c007ff0:	0000000a 	0x0000000a
1c007ff4:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007ff8:	53545451 	b	21451860(0x1475454) # 1d47d44c <_sidata+0x14753f0>
1c007ffc:	303d4255 	0x303d4255
1c008000:	6b2f222c 	bltu	$r17,$r12,-53472(0x32f20) # 1bffaf20 <_start-0x50e0>
1c008004:	336c6431 	xvstelm.h	$xr17,$r1,50(0x32),0xb
1c008008:	52324a65 	b	-107597240(0x9963248) # 1596b250 <_start-0x6694db0>
1c00800c:	312f4242 	vstelm.w	$vr2,$r18,-192(0x340),0x3
1c008010:	32303163 	0x32303163
1c008014:	73752f74 	0x73752f74
1c008018:	672f7265 	bge	$r19,$r5,-53392(0x32f70) # 1bffaf88 <_start-0x5078>
1c00801c:	2c227465 	vld	$vr5,$r3,-1891(0x89d)
1c008020:	00000031 	0x00000031
1c008024:	00007325 	0x00007325
1c008028:	54514d2b 	bl	78401868(0x4ac514c) # 20acd174 <_sidata+0x4ac5118>
1c00802c:	42555354 	beqz	$r26,-2992816(0x525550) # 1bd2d57c <_start-0x2d2a84>
1c008030:	56434552 	bl	88752964(0x54a4344) # 214ac374 <_sidata+0x54a4318>
1c008034:	00000000 	0x00000000
1c008038:	6867696c 	bltu	$r11,$r12,26472(0x6768) # 1c00e7a0 <_sidata+0x6744>
1c00803c:	6e695f74 	bgeu	$r27,$r20,-104100(0x2695c) # 1bfee998 <_start-0x11668>
1c008040:	736e6574 	vssrarni.du.q	$vr20,$vr11,0x19
1c008044:	00797469 	bstrins.w	$r9,$r3,0x19,0x1d
1c008048:	00324f43 	0x00324f43
1c00804c:	6b6f6d73 	bltu	$r11,$r19,-37012(0x36f6c) # 1bffefb8 <_start-0x1048>
1c008050:	00000065 	0x00000065
1c008054:	00000000 	0x00000000
1c008058:	00004b4f 	bitrev.4b	$r15,$r26

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c0070c9 	pcaddu12i	$r9,902(0x386)
80001008:	80000034 	0x80000034
8000100c:	80000014 	0x80000014
80001010:	80000c60 	0x80000c60
80001014:	800008ac 	0x800008ac
80001018:	80000024 	0x80000024
8000101c:	80000c3c 	0x80000c3c
80001020:	800009dc 	0x800009dc
80001024:	80001060 	0x80001060
80001028:	80000438 	0x80000438
8000102c:	8000043c 	0x8000043c
80001030:	8000000c 	0x8000000c
80001034:	80000858 	0x80000858
80001038:	80000440 	0x80000440
8000103c:	80000840 	0x80000840
80001040:	8000001c 	0x8000001c
80001044:	80000850 	0x80000850
80001048:	80000854 	0x80000854
8000104c:	1c0070c0 	pcaddu12i	$r0,902(0x386)
80001050:	80000004 	0x80000004
80001054:	8000002c 	0x8000002c
80001058:	80000b0c 	0x80000b0c
8000105c:	800008b0 	0x800008b0

80001060 <g_SystemFreq>:
80001060:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

Disassembly of section .bss:

80000000 <count_10ms>:
_sbss():
80000000:	00000000 	0x00000000

80000004 <flag_10ms>:
80000004:	00000000 	0x00000000

80000008 <count_20ms>:
80000008:	00000000 	0x00000000

8000000c <flag_20ms>:
8000000c:	00000000 	0x00000000

80000010 <count_50ms>:
80000010:	00000000 	0x00000000

80000014 <flag_50ms>:
80000014:	00000000 	0x00000000

80000018 <count_100ms>:
80000018:	00000000 	0x00000000

8000001c <flag_100ms>:
8000001c:	00000000 	0x00000000

80000020 <count_500ms>:
80000020:	00000000 	0x00000000

80000024 <flag_500ms>:
80000024:	00000000 	0x00000000

80000028 <count_1000ms>:
80000028:	00000000 	0x00000000

8000002c <flag_1000ms>:
8000002c:	00000000 	0x00000000

80000030 <receive_data_uart1.1941>:
	...

80000031 <receive_data_uart0.1942>:
	...

80000032 <temp>:
	...

80000033 <esp_init_flag>:
	...

80000034 <json_backage>:
	...

80000438 <Json_Read_length>:
80000438:	00000000 	0x00000000

8000043c <Json_recive_data>:
8000043c:	00000000 	0x00000000

80000440 <Json_Read_Buffer>:
	...

80000840 <Json_Comma_Flag>:
	...

80000850 <mqtt_data>:
80000850:	00000000 	0x00000000

80000854 <Json_recive_data_lenth>:
80000854:	00000000 	0x00000000

80000858 <light_type>:
	...

800008ac <Read_length>:
800008ac:	00000000 	0x00000000

800008b0 <Read_Buffer>:
	...

800009dc <Circular_queue_recv>:
	...

80000b0c <Circular_queue_send>:
	...

80000c3c <ventilate_type>:
	...

80000c60 <mqtt_esp_type>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
