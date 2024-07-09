
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	143800ef 	lu12i.w	$r15,114695(0x1c007)
1c00000c:	03aac1ef 	ori	$r15,$r15,0xab0
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
1c000030:	038181ef 	ori	$r15,$r15,0x60
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	03b141ad 	ori	$r13,$r13,0xc50
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
1c001090:	543c5800 	bl	15448(0x3c58) # 1c004ce8 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	543ca000 	bl	15520(0x3ca0) # 1c004d38 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	543d2c00 	bl	15660(0x3d2c) # 1c004dcc <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	543d6000 	bl	15712(0x3d60) # 1c004e08 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	543b8000 	bl	15232(0x3b80) # 1c004c30 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	54414400 	bl	16708(0x4144) # 1c0051fc <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543e1800 	bl	15896(0x3e18) # 1c004ee0 <intc_handler>
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
1c001290:	28b6f084 	ld.w	$r4,$r4,-580(0xdbc)
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
1c001350:	54017c00 	bl	380(0x17c) # 1c0014cc <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54016400 	bl	356(0x164) # 1c0014cc <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54014c00 	bl	332(0x14c) # 1c0014cc <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54013800 	bl	312(0x138) # 1c0014cc <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54012000 	bl	288(0x120) # 1c0014cc <AFIO_RemapConfig>
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
1c0013d4:	541d3400 	bl	7476(0x1d34) # 1c003108 <DisableInt>
1c0013d8:	541c5c00 	bl	7260(0x1c5c) # 1c003034 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	54268400 	bl	9860(0x2684) # 1c003a64 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	5425c400 	bl	9668(0x25c4) # 1c0039ac <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	54150800 	bl	5384(0x1508) # 1c0028fc <Uart0_init>
1c0013f8:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013fc:	03880184 	ori	$r4,$r12,0x200
1c001400:	5415c000 	bl	5568(0x15c0) # 1c0029c0 <Uart1_init>
1c001404:	541ef800 	bl	7928(0x1ef8) # 1c0032fc <ls1x_logo>
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	2880018e 	ld.w	$r14,$r12,0
1c001414:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001418:	0380118c 	ori	$r12,$r12,0x4
1c00141c:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001420:	001535cd 	or	$r13,$r14,$r13
1c001424:	2980018d 	st.w	$r13,$r12,0
1c001428:	541d0400 	bl	7428(0x1d04) # 1c00312c <EnableInt>
1c00142c:	541f9800 	bl	8088(0x1f98) # 1c0033c4 <open_count>
1c001430:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001434:	541d6000 	bl	7520(0x1d60) # 1c003194 <Wake_Set>
1c001438:	54260000 	bl	9728(0x2600) # 1c003a38 <WDG_DogFeed>
1c00143c:	541e0400 	bl	7684(0x1e04) # 1c003240 <PMU_GetRstRrc>
1c001440:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001448:	44003180 	bnez	$r12,48(0x30) # 1c001478 <bsp_init+0xb4>
1c00144c:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001450:	029c4084 	addi.w	$r4,$r4,1808(0x710)
1c001454:	54085800 	bl	2136(0x858) # 1c001cac <myprintf>
1c001458:	541e5400 	bl	7764(0x1e54) # 1c0032ac <PMU_GetBootSpiStatus>
1c00145c:	0015008c 	move	$r12,$r4
1c001460:	40001180 	beqz	$r12,16(0x10) # 1c001470 <bsp_init+0xac>
1c001464:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001468:	029c2084 	addi.w	$r4,$r4,1800(0x708)
1c00146c:	54084000 	bl	2112(0x840) # 1c001cac <myprintf>
1c001470:	543fbc00 	bl	16316(0x3fbc) # 1c00542c <main>
1c001474:	50004000 	b	64(0x40) # 1c0014b4 <bsp_init+0xf0>
1c001478:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00147c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001480:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c001498 <bsp_init+0xd4>
1c001484:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001488:	029bd084 	addi.w	$r4,$r4,1780(0x6f4)
1c00148c:	54082000 	bl	2080(0x820) # 1c001cac <myprintf>
1c001490:	543f9c00 	bl	16284(0x3f9c) # 1c00542c <main>
1c001494:	50002000 	b	32(0x20) # 1c0014b4 <bsp_init+0xf0>
1c001498:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00149c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0014a0:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014b4 <bsp_init+0xf0>
1c0014a4:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0014a8:	029b9084 	addi.w	$r4,$r4,1764(0x6e4)
1c0014ac:	54080000 	bl	2048(0x800) # 1c001cac <myprintf>
1c0014b0:	57fd37ff 	bl	-716(0xffffd34) # 1c0011e4 <cpu_sleep>
1c0014b4:	0015000c 	move	$r12,$r0
1c0014b8:	00150184 	move	$r4,$r12
1c0014bc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014c0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014c4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014c8:	4c000020 	jirl	$r0,$r1,0

1c0014cc <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014cc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014d0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014d4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014d8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014dc:	001500ac 	move	$r12,$r5
1c0014e0:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014e4:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014e8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014f0:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0014f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0014f8:	2880018c 	ld.w	$r12,$r12,0
1c0014fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001500:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c001504:	50006c00 	b	108(0x6c) # 1c001570 <AFIO_RemapConfig+0xa4>
1c001508:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c00150c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001510:	001831ac 	sra.w	$r12,$r13,$r12
1c001514:	0340058c 	andi	$r12,$r12,0x1
1c001518:	40004d80 	beqz	$r12,76(0x4c) # 1c001564 <AFIO_RemapConfig+0x98>
1c00151c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001520:	0040858c 	slli.w	$r12,$r12,0x1
1c001524:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001528:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00152c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001530:	001731ac 	sll.w	$r12,$r13,$r12
1c001534:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001538:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c00153c:	0014300c 	nor	$r12,$r0,$r12
1c001540:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001544:	0014b1ac 	and	$r12,$r13,$r12
1c001548:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00154c:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c001550:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001554:	001731ac 	sll.w	$r12,$r13,$r12
1c001558:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00155c:	001531ac 	or	$r12,$r13,$r12
1c001560:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001564:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001568:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00156c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001570:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001574:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c001578:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c001508 <AFIO_RemapConfig+0x3c>
1c00157c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001580:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001584:	2980018d 	st.w	$r13,$r12,0
1c001588:	03400000 	andi	$r0,$r0,0x0
1c00158c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001590:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001594:	4c000020 	jirl	$r0,$r1,0

1c001598 <gpio_write_pin>:
gpio_write_pin():
1c001598:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00159c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015a4:	0015008c 	move	$r12,$r4
1c0015a8:	001500ad 	move	$r13,$r5
1c0015ac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015b0:	001501ac 	move	$r12,$r13
1c0015b4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0015b8:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0015bc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0015c0:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c0015e4 <gpio_write_pin+0x4c>
1c0015c4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015cc:	0382018c 	ori	$r12,$r12,0x80
1c0015d0:	001031ac 	add.w	$r12,$r13,$r12
1c0015d4:	0015018d 	move	$r13,$r12
1c0015d8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0015dc:	290001ac 	st.b	$r12,$r13,0
1c0015e0:	50002000 	b	32(0x20) # 1c001600 <gpio_write_pin+0x68>
1c0015e4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015ec:	0382018c 	ori	$r12,$r12,0x80
1c0015f0:	001031ac 	add.w	$r12,$r13,$r12
1c0015f4:	0015018d 	move	$r13,$r12
1c0015f8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0015fc:	290001ac 	st.b	$r12,$r13,0
1c001600:	03400000 	andi	$r0,$r0,0x0
1c001604:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001608:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00160c:	4c000020 	jirl	$r0,$r1,0

1c001610 <gpio_pin_remap>:
gpio_pin_remap():
1c001610:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001614:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001618:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00161c:	0015008c 	move	$r12,$r4
1c001620:	001500ad 	move	$r13,$r5
1c001624:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001628:	001501ac 	move	$r12,$r13
1c00162c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001630:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001634:	0044918c 	srli.w	$r12,$r12,0x4
1c001638:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00163c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001640:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001644:	03403d8c 	andi	$r12,$r12,0xf
1c001648:	0040858c 	slli.w	$r12,$r12,0x1
1c00164c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001650:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001654:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c001658:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c00180c <gpio_pin_remap+0x1fc>
1c00165c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001660:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001664:	580089ac 	beq	$r13,$r12,136(0x88) # 1c0016ec <gpio_pin_remap+0xdc>
1c001668:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00166c:	40002180 	beqz	$r12,32(0x20) # 1c00168c <gpio_pin_remap+0x7c>
1c001670:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001674:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001678:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c00174c <gpio_pin_remap+0x13c>
1c00167c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001680:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001684:	580129ac 	beq	$r13,$r12,296(0x128) # 1c0017ac <gpio_pin_remap+0x19c>
1c001688:	50018800 	b	392(0x188) # 1c001810 <gpio_pin_remap+0x200>
1c00168c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001690:	0380418c 	ori	$r12,$r12,0x10
1c001694:	2880018d 	ld.w	$r13,$r12,0
1c001698:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c00169c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016a0:	001731cc 	sll.w	$r12,$r14,$r12
1c0016a4:	0014300c 	nor	$r12,$r0,$r12
1c0016a8:	0015018e 	move	$r14,$r12
1c0016ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016b0:	0380418c 	ori	$r12,$r12,0x10
1c0016b4:	0014b9ad 	and	$r13,$r13,$r14
1c0016b8:	2980018d 	st.w	$r13,$r12,0
1c0016bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016c0:	0380418c 	ori	$r12,$r12,0x10
1c0016c4:	2880018d 	ld.w	$r13,$r12,0
1c0016c8:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0016cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016d0:	001731cc 	sll.w	$r12,$r14,$r12
1c0016d4:	0015018e 	move	$r14,$r12
1c0016d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016dc:	0380418c 	ori	$r12,$r12,0x10
1c0016e0:	001539ad 	or	$r13,$r13,$r14
1c0016e4:	2980018d 	st.w	$r13,$r12,0
1c0016e8:	50012800 	b	296(0x128) # 1c001810 <gpio_pin_remap+0x200>
1c0016ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016f0:	0380518c 	ori	$r12,$r12,0x14
1c0016f4:	2880018d 	ld.w	$r13,$r12,0
1c0016f8:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001700:	001731cc 	sll.w	$r12,$r14,$r12
1c001704:	0014300c 	nor	$r12,$r0,$r12
1c001708:	0015018e 	move	$r14,$r12
1c00170c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001710:	0380518c 	ori	$r12,$r12,0x14
1c001714:	0014b9ad 	and	$r13,$r13,$r14
1c001718:	2980018d 	st.w	$r13,$r12,0
1c00171c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001720:	0380518c 	ori	$r12,$r12,0x14
1c001724:	2880018d 	ld.w	$r13,$r12,0
1c001728:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00172c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001730:	001731cc 	sll.w	$r12,$r14,$r12
1c001734:	0015018e 	move	$r14,$r12
1c001738:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00173c:	0380518c 	ori	$r12,$r12,0x14
1c001740:	001539ad 	or	$r13,$r13,$r14
1c001744:	2980018d 	st.w	$r13,$r12,0
1c001748:	5000c800 	b	200(0xc8) # 1c001810 <gpio_pin_remap+0x200>
1c00174c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001750:	0380618c 	ori	$r12,$r12,0x18
1c001754:	2880018d 	ld.w	$r13,$r12,0
1c001758:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c00175c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001760:	001731cc 	sll.w	$r12,$r14,$r12
1c001764:	0014300c 	nor	$r12,$r0,$r12
1c001768:	0015018e 	move	$r14,$r12
1c00176c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001770:	0380618c 	ori	$r12,$r12,0x18
1c001774:	0014b9ad 	and	$r13,$r13,$r14
1c001778:	2980018d 	st.w	$r13,$r12,0
1c00177c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001780:	0380618c 	ori	$r12,$r12,0x18
1c001784:	2880018d 	ld.w	$r13,$r12,0
1c001788:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c00178c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001790:	001731cc 	sll.w	$r12,$r14,$r12
1c001794:	0015018e 	move	$r14,$r12
1c001798:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00179c:	0380618c 	ori	$r12,$r12,0x18
1c0017a0:	001539ad 	or	$r13,$r13,$r14
1c0017a4:	2980018d 	st.w	$r13,$r12,0
1c0017a8:	50006800 	b	104(0x68) # 1c001810 <gpio_pin_remap+0x200>
1c0017ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017b0:	0380718c 	ori	$r12,$r12,0x1c
1c0017b4:	2880018d 	ld.w	$r13,$r12,0
1c0017b8:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017bc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017c0:	001731cc 	sll.w	$r12,$r14,$r12
1c0017c4:	0014300c 	nor	$r12,$r0,$r12
1c0017c8:	0015018e 	move	$r14,$r12
1c0017cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017d0:	0380718c 	ori	$r12,$r12,0x1c
1c0017d4:	0014b9ad 	and	$r13,$r13,$r14
1c0017d8:	2980018d 	st.w	$r13,$r12,0
1c0017dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017e0:	0380718c 	ori	$r12,$r12,0x1c
1c0017e4:	2880018d 	ld.w	$r13,$r12,0
1c0017e8:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017ec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017f0:	001731cc 	sll.w	$r12,$r14,$r12
1c0017f4:	0015018e 	move	$r14,$r12
1c0017f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017fc:	0380718c 	ori	$r12,$r12,0x1c
1c001800:	001539ad 	or	$r13,$r13,$r14
1c001804:	2980018d 	st.w	$r13,$r12,0
1c001808:	50000800 	b	8(0x8) # 1c001810 <gpio_pin_remap+0x200>
1c00180c:	03400000 	andi	$r0,$r0,0x0
1c001810:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001814:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001818:	4c000020 	jirl	$r0,$r1,0

1c00181c <myputchar>:
myputchar():
1c00181c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001820:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001824:	29806076 	st.w	$r22,$r3,24(0x18)
1c001828:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00182c:	0015008c 	move	$r12,$r4
1c001830:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001834:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001838:	00150185 	move	$r5,$r12
1c00183c:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c001840:	54102400 	bl	4132(0x1024) # 1c002864 <UART_SendData>
1c001844:	03400000 	andi	$r0,$r0,0x0
1c001848:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00184c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c001850:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001854:	4c000020 	jirl	$r0,$r1,0

1c001858 <myputchar2>:
myputchar2():
1c001858:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00185c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001860:	29806076 	st.w	$r22,$r3,24(0x18)
1c001864:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001868:	0015008c 	move	$r12,$r4
1c00186c:	001500ad 	move	$r13,$r5
1c001870:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001874:	001501ac 	move	$r12,$r13
1c001878:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00187c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001880:	44001580 	bnez	$r12,20(0x14) # 1c001894 <myputchar2+0x3c>
1c001884:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c001888:	00150184 	move	$r4,$r12
1c00188c:	5411b800 	bl	4536(0x11b8) # 1c002a44 <Uart0_send>
1c001890:	50003800 	b	56(0x38) # 1c0018c8 <myputchar2+0x70>
1c001894:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001898:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00189c:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0018b0 <myputchar2+0x58>
1c0018a0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0018a4:	00150184 	move	$r4,$r12
1c0018a8:	5411d800 	bl	4568(0x11d8) # 1c002a80 <Uart1_send>
1c0018ac:	50001c00 	b	28(0x1c) # 1c0018c8 <myputchar2+0x70>
1c0018b0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0018b4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0018b8:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0018c8 <myputchar2+0x70>
1c0018bc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0018c0:	00150184 	move	$r4,$r12
1c0018c4:	5411f800 	bl	4600(0x11f8) # 1c002abc <Uart2_send>
1c0018c8:	03400000 	andi	$r0,$r0,0x0
1c0018cc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0018d0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0018d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0018d8:	4c000020 	jirl	$r0,$r1,0

1c0018dc <printbase>:
printbase():
1c0018dc:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0018e0:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0018e4:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0018e8:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0018ec:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0018f0:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0018f4:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0018f8:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0018fc:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c001900:	40002580 	beqz	$r12,36(0x24) # 1c001924 <printbase+0x48>
1c001904:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001908:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001924 <printbase+0x48>
1c00190c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001910:	0011300c 	sub.w	$r12,$r0,$r12
1c001914:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001918:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c00191c:	57ff03ff 	bl	-256(0xfffff00) # 1c00181c <myputchar>
1c001920:	50000c00 	b	12(0xc) # 1c00192c <printbase+0x50>
1c001924:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001928:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00192c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001930:	50005000 	b	80(0x50) # 1c001980 <printbase+0xa4>
1c001934:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001938:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c00193c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001940:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001948 <printbase+0x6c>
1c001944:	002a0007 	break	0x7
1c001948:	00005dcc 	ext.w.b	$r12,$r14
1c00194c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001950:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001954:	001035cd 	add.w	$r13,$r14,$r13
1c001958:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c00195c:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001960:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001964:	002135cc 	div.wu	$r12,$r14,$r13
1c001968:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001970 <printbase+0x94>
1c00196c:	002a0007 	break	0x7
1c001970:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001974:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001978:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00197c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001980:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001984:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001934 <printbase+0x58>
1c001988:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c00198c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001990:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001994:	001231ad 	slt	$r13,$r13,$r12
1c001998:	0013b5ce 	masknez	$r14,$r14,$r13
1c00199c:	0013358c 	maskeqz	$r12,$r12,$r13
1c0019a0:	001531cc 	or	$r12,$r14,$r12
1c0019a4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0019a8:	50007400 	b	116(0x74) # 1c001a1c <printbase+0x140>
1c0019ac:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0019b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0019b4:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0019d0 <printbase+0xf4>
1c0019b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0019bc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0019c0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0019c4:	001031ac 	add.w	$r12,$r13,$r12
1c0019c8:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c0019cc:	50000800 	b	8(0x8) # 1c0019d4 <printbase+0xf8>
1c0019d0:	0015000c 	move	$r12,$r0
1c0019d4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0019d8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0019dc:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0019e0:	6000198d 	blt	$r12,$r13,24(0x18) # 1c0019f8 <printbase+0x11c>
1c0019e4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0019e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019ec:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0019f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0019f4:	50001400 	b	20(0x14) # 1c001a08 <printbase+0x12c>
1c0019f8:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0019fc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001a00:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001a04:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001a08:	00150184 	move	$r4,$r12
1c001a0c:	57fe13ff 	bl	-496(0xffffe10) # 1c00181c <myputchar>
1c001a10:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a14:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001a18:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001a20:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c0019ac <printbase+0xd0>
1c001a24:	0015000c 	move	$r12,$r0
1c001a28:	00150184 	move	$r4,$r12
1c001a2c:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001a30:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001a34:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001a38:	4c000020 	jirl	$r0,$r1,0

1c001a3c <printbase2>:
printbase2():
1c001a3c:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c001a40:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c001a44:	2981e076 	st.w	$r22,$r3,120(0x78)
1c001a48:	02820076 	addi.w	$r22,$r3,128(0x80)
1c001a4c:	0015008c 	move	$r12,$r4
1c001a50:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001a54:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001a58:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001a5c:	29be32c8 	st.w	$r8,$r22,-116(0xf8c)
1c001a60:	293e7ecc 	st.b	$r12,$r22,-97(0xf9f)
1c001a64:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c001a68:	40002d80 	beqz	$r12,44(0x2c) # 1c001a94 <printbase2+0x58>
1c001a6c:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a70:	64002580 	bge	$r12,$r0,36(0x24) # 1c001a94 <printbase2+0x58>
1c001a74:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a78:	0011300c 	sub.w	$r12,$r0,$r12
1c001a7c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a80:	2a3e7ecc 	ld.bu	$r12,$r22,-97(0xf9f)
1c001a84:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c001a88:	00150184 	move	$r4,$r12
1c001a8c:	57fdcfff 	bl	-564(0xffffdcc) # 1c001858 <myputchar2>
1c001a90:	50000c00 	b	12(0xc) # 1c001a9c <printbase2+0x60>
1c001a94:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a98:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a9c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001aa0:	50005000 	b	80(0x50) # 1c001af0 <printbase2+0xb4>
1c001aa4:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c001aa8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001aac:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001ab0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001ab8 <printbase2+0x7c>
1c001ab4:	002a0007 	break	0x7
1c001ab8:	00005dcc 	ext.w.b	$r12,$r14
1c001abc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001ac0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001ac4:	001035cd 	add.w	$r13,$r14,$r13
1c001ac8:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001acc:	28be42cd 	ld.w	$r13,$r22,-112(0xf90)
1c001ad0:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001ad4:	002135cc 	div.wu	$r12,$r14,$r13
1c001ad8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001ae0 <printbase2+0xa4>
1c001adc:	002a0007 	break	0x7
1c001ae0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001ae4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ae8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001aec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001af0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001af4:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001aa4 <printbase2+0x68>
1c001af8:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001afc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001b00:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001b04:	001231ad 	slt	$r13,$r13,$r12
1c001b08:	0013b5ce 	masknez	$r14,$r14,$r13
1c001b0c:	0013358c 	maskeqz	$r12,$r12,$r13
1c001b10:	001531cc 	or	$r12,$r14,$r12
1c001b14:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b18:	50007c00 	b	124(0x7c) # 1c001b94 <printbase2+0x158>
1c001b1c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001b20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001b24:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001b40 <printbase2+0x104>
1c001b28:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b2c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b30:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001b34:	001031ac 	add.w	$r12,$r13,$r12
1c001b38:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001b3c:	50000800 	b	8(0x8) # 1c001b44 <printbase2+0x108>
1c001b40:	0015000c 	move	$r12,$r0
1c001b44:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001b48:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001b4c:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001b50:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001b68 <printbase2+0x12c>
1c001b54:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001b58:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b5c:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001b60:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b64:	50001400 	b	20(0x14) # 1c001b78 <printbase2+0x13c>
1c001b68:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001b6c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b70:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001b74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001b78:	2a3e7ecd 	ld.bu	$r13,$r22,-97(0xf9f)
1c001b7c:	00150185 	move	$r5,$r12
1c001b80:	001501a4 	move	$r4,$r13
1c001b84:	57fcd7ff 	bl	-812(0xffffcd4) # 1c001858 <myputchar2>
1c001b88:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b8c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b90:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b94:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b98:	63ff840c 	blt	$r0,$r12,-124(0x3ff84) # 1c001b1c <printbase2+0xe0>
1c001b9c:	0015000c 	move	$r12,$r0
1c001ba0:	00150184 	move	$r4,$r12
1c001ba4:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c001ba8:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c001bac:	02820063 	addi.w	$r3,$r3,128(0x80)
1c001bb0:	4c000020 	jirl	$r0,$r1,0

1c001bb4 <puts>:
puts():
1c001bb4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001bb8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001bbc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001bc0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001bc4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001bc8:	50003000 	b	48(0x30) # 1c001bf8 <puts+0x44>
1c001bcc:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001bd0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001bd4:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001be0 <puts+0x2c>
1c001bd8:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001bdc:	57fc43ff 	bl	-960(0xffffc40) # 1c00181c <myputchar>
1c001be0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001be4:	00150184 	move	$r4,$r12
1c001be8:	57fc37ff 	bl	-972(0xffffc34) # 1c00181c <myputchar>
1c001bec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bf0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001bf4:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001bf8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bfc:	2a00018c 	ld.bu	$r12,$r12,0
1c001c00:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001c04:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001c08:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001bcc <puts+0x18>
1c001c0c:	0015000c 	move	$r12,$r0
1c001c10:	00150184 	move	$r4,$r12
1c001c14:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001c18:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001c1c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001c20:	4c000020 	jirl	$r0,$r1,0

1c001c24 <puts2>:
puts2():
1c001c24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001c28:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001c2c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001c30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001c34:	0015008c 	move	$r12,$r4
1c001c38:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001c3c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001c40:	50004000 	b	64(0x40) # 1c001c80 <puts2+0x5c>
1c001c44:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001c48:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001c4c:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c001c60 <puts2+0x3c>
1c001c50:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001c54:	02803405 	addi.w	$r5,$r0,13(0xd)
1c001c58:	00150184 	move	$r4,$r12
1c001c5c:	57fbffff 	bl	-1028(0xffffbfc) # 1c001858 <myputchar2>
1c001c60:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001c64:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001c68:	001501a5 	move	$r5,$r13
1c001c6c:	00150184 	move	$r4,$r12
1c001c70:	57fbebff 	bl	-1048(0xffffbe8) # 1c001858 <myputchar2>
1c001c74:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001c78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c7c:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c001c80:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001c84:	2a00018c 	ld.bu	$r12,$r12,0
1c001c88:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001c8c:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001c90:	47ffb59f 	bnez	$r12,-76(0x7fffb4) # 1c001c44 <puts2+0x20>
1c001c94:	0015000c 	move	$r12,$r0
1c001c98:	00150184 	move	$r4,$r12
1c001c9c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001ca0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001ca4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001ca8:	4c000020 	jirl	$r0,$r1,0

1c001cac <myprintf>:
myprintf():
1c001cac:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001cb0:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001cb4:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001cb8:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001cbc:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001cc0:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001cc4:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001cc8:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001ccc:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001cd0:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001cd4:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001cd8:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001cdc:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001ce0:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001ce4:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001ce8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001cec:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cf0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001cf4:	50033000 	b	816(0x330) # 1c002024 <myprintf+0x378>
1c001cf8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cfc:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d00:	001031ac 	add.w	$r12,$r13,$r12
1c001d04:	2a00018c 	ld.bu	$r12,$r12,0
1c001d08:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001d0c:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001d10:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001d14:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001ff8 <myprintf+0x34c>
1c001d18:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001d1c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001d20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d24:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d28:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001d2c:	001031ac 	add.w	$r12,$r13,$r12
1c001d30:	2800018c 	ld.b	$r12,$r12,0
1c001d34:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001d38:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001d3c:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001fe8 <myprintf+0x33c>
1c001d40:	0040898d 	slli.w	$r13,$r12,0x2
1c001d44:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c001d48:	02b9418c 	addi.w	$r12,$r12,-432(0xe50)
1c001d4c:	001031ac 	add.w	$r12,$r13,$r12
1c001d50:	2880018c 	ld.w	$r12,$r12,0
1c001d54:	4c000180 	jirl	$r0,$r12,0
1c001d58:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d5c:	2880018c 	ld.w	$r12,$r12,0
1c001d60:	00150184 	move	$r4,$r12
1c001d64:	57fe53ff 	bl	-432(0xffffe50) # 1c001bb4 <puts>
1c001d68:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d6c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d70:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d80:	50029800 	b	664(0x298) # 1c002018 <myprintf+0x36c>
1c001d84:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d88:	2880018c 	ld.w	$r12,$r12,0
1c001d8c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001d90:	00150184 	move	$r4,$r12
1c001d94:	57fa8bff 	bl	-1400(0xffffa88) # 1c00181c <myputchar>
1c001d98:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d9c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001da0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001da8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001db0:	50026800 	b	616(0x268) # 1c002018 <myprintf+0x36c>
1c001db4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001db8:	2880018c 	ld.w	$r12,$r12,0
1c001dbc:	00150007 	move	$r7,$r0
1c001dc0:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001dc4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001dc8:	00150184 	move	$r4,$r12
1c001dcc:	57fb13ff 	bl	-1264(0xffffb10) # 1c0018dc <printbase>
1c001dd0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001dd4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001dd8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ddc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001de0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001de4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001de8:	50023000 	b	560(0x230) # 1c002018 <myprintf+0x36c>
1c001dec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001df0:	2880018c 	ld.w	$r12,$r12,0
1c001df4:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001df8:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001dfc:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e00:	00150184 	move	$r4,$r12
1c001e04:	57fadbff 	bl	-1320(0xffffad8) # 1c0018dc <printbase>
1c001e08:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e0c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e10:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e1c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e20:	5001f800 	b	504(0x1f8) # 1c002018 <myprintf+0x36c>
1c001e24:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e28:	2880018c 	ld.w	$r12,$r12,0
1c001e2c:	00150007 	move	$r7,$r0
1c001e30:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001e34:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e38:	00150184 	move	$r4,$r12
1c001e3c:	57faa3ff 	bl	-1376(0xffffaa0) # 1c0018dc <printbase>
1c001e40:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e44:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e48:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e58:	5001c000 	b	448(0x1c0) # 1c002018 <myprintf+0x36c>
1c001e5c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e60:	2880018c 	ld.w	$r12,$r12,0
1c001e64:	00150007 	move	$r7,$r0
1c001e68:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001e6c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001e70:	00150184 	move	$r4,$r12
1c001e74:	57fa6bff 	bl	-1432(0xffffa68) # 1c0018dc <printbase>
1c001e78:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e7c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001e80:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001e84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e8c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e90:	50018800 	b	392(0x188) # 1c002018 <myprintf+0x36c>
1c001e94:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001e98:	2880018c 	ld.w	$r12,$r12,0
1c001e9c:	00150007 	move	$r7,$r0
1c001ea0:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001ea4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001ea8:	00150184 	move	$r4,$r12
1c001eac:	57fa33ff 	bl	-1488(0xffffa30) # 1c0018dc <printbase>
1c001eb0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001eb4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001eb8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001ebc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ec0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ec4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ec8:	50015000 	b	336(0x150) # 1c002018 <myprintf+0x36c>
1c001ecc:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001ed0:	57f94fff 	bl	-1716(0xffff94c) # 1c00181c <myputchar>
1c001ed4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ed8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001edc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ee0:	50013800 	b	312(0x138) # 1c002018 <myprintf+0x36c>
1c001ee4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001ee8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001eec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001ef0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001ef4:	50003c00 	b	60(0x3c) # 1c001f30 <myprintf+0x284>
1c001ef8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001efc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001f00:	001c31ad 	mul.w	$r13,$r13,$r12
1c001f04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f0c:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001f10:	001031cc 	add.w	$r12,$r14,$r12
1c001f14:	2800018c 	ld.b	$r12,$r12,0
1c001f18:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001f1c:	001031ac 	add.w	$r12,$r13,$r12
1c001f20:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001f24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f34:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f38:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f3c:	001031ac 	add.w	$r12,$r13,$r12
1c001f40:	2800018d 	ld.b	$r13,$r12,0
1c001f44:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001f48:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001d20 <myprintf+0x74>
1c001f4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f54:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f58:	001031ac 	add.w	$r12,$r13,$r12
1c001f5c:	2800018d 	ld.b	$r13,$r12,0
1c001f60:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001f64:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001ef8 <myprintf+0x24c>
1c001f68:	53fdbbff 	b	-584(0xffffdb8) # 1c001d20 <myprintf+0x74>
1c001f6c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001f70:	50003c00 	b	60(0x3c) # 1c001fac <myprintf+0x300>
1c001f74:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001f78:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001f7c:	001c31ad 	mul.w	$r13,$r13,$r12
1c001f80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f88:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001f8c:	001031cc 	add.w	$r12,$r14,$r12
1c001f90:	2800018c 	ld.b	$r12,$r12,0
1c001f94:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001f98:	001031ac 	add.w	$r12,$r13,$r12
1c001f9c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001fa0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fa4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fa8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fb0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fb4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001fb8:	001031ac 	add.w	$r12,$r13,$r12
1c001fbc:	2800018d 	ld.b	$r13,$r12,0
1c001fc0:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001fc4:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001d20 <myprintf+0x74>
1c001fc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fcc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fd0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001fd4:	001031ac 	add.w	$r12,$r13,$r12
1c001fd8:	2800018d 	ld.b	$r13,$r12,0
1c001fdc:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001fe0:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001f74 <myprintf+0x2c8>
1c001fe4:	53fd3fff 	b	-708(0xffffd3c) # 1c001d20 <myprintf+0x74>
1c001fe8:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001fec:	57f833ff 	bl	-2000(0xffff830) # 1c00181c <myputchar>
1c001ff0:	03400000 	andi	$r0,$r0,0x0
1c001ff4:	50002400 	b	36(0x24) # 1c002018 <myprintf+0x36c>
1c001ff8:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001ffc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002000:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c00200c <myprintf+0x360>
1c002004:	02803404 	addi.w	$r4,$r0,13(0xd)
1c002008:	57f817ff 	bl	-2028(0xffff814) # 1c00181c <myputchar>
1c00200c:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c002010:	00150184 	move	$r4,$r12
1c002014:	57f80bff 	bl	-2040(0xffff808) # 1c00181c <myputchar>
1c002018:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00201c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002020:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002024:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002028:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c00202c:	001031ac 	add.w	$r12,$r13,$r12
1c002030:	2800018c 	ld.b	$r12,$r12,0
1c002034:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001cf8 <myprintf+0x4c>
1c002038:	0015000c 	move	$r12,$r0
1c00203c:	00150184 	move	$r4,$r12
1c002040:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c002044:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c002048:	02818063 	addi.w	$r3,$r3,96(0x60)
1c00204c:	4c000020 	jirl	$r0,$r1,0

1c002050 <myprintf2>:
myprintf2():
1c002050:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c002054:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c002058:	2980e076 	st.w	$r22,$r3,56(0x38)
1c00205c:	02810076 	addi.w	$r22,$r3,64(0x40)
1c002060:	0015008c 	move	$r12,$r4
1c002064:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c002068:	298022c6 	st.w	$r6,$r22,8(0x8)
1c00206c:	298032c7 	st.w	$r7,$r22,12(0xc)
1c002070:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002074:	298052c9 	st.w	$r9,$r22,20(0x14)
1c002078:	298062ca 	st.w	$r10,$r22,24(0x18)
1c00207c:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c002080:	293f3ecc 	st.b	$r12,$r22,-49(0xfcf)
1c002084:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c002088:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c00208c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002090:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002094:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002098:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00209c:	50039c00 	b	924(0x39c) # 1c002438 <myprintf2+0x3e8>
1c0020a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020a4:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0020a8:	001031ac 	add.w	$r12,$r13,$r12
1c0020ac:	2a00018c 	ld.bu	$r12,$r12,0
1c0020b0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0020b4:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c0020b8:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c0020bc:	5c0341ac 	bne	$r13,$r12,832(0x340) # 1c0023fc <myprintf2+0x3ac>
1c0020c0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0020c4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0020c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0020d0:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0020d4:	001031ac 	add.w	$r12,$r13,$r12
1c0020d8:	2800018c 	ld.b	$r12,$r12,0
1c0020dc:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0020e0:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0020e4:	680301ac 	bltu	$r13,$r12,768(0x300) # 1c0023e4 <myprintf2+0x394>
1c0020e8:	0040898d 	slli.w	$r13,$r12,0x2
1c0020ec:	1c0000ac 	pcaddu12i	$r12,5(0x5)
1c0020f0:	02afe18c 	addi.w	$r12,$r12,-1032(0xbf8)
1c0020f4:	001031ac 	add.w	$r12,$r13,$r12
1c0020f8:	2880018c 	ld.w	$r12,$r12,0
1c0020fc:	4c000180 	jirl	$r0,$r12,0
1c002100:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002104:	2880018d 	ld.w	$r13,$r12,0
1c002108:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c00210c:	001501a5 	move	$r5,$r13
1c002110:	00150184 	move	$r4,$r12
1c002114:	57fb13ff 	bl	-1264(0xffffb10) # 1c001c24 <puts2>
1c002118:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00211c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002120:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002124:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002128:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00212c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002130:	5002fc00 	b	764(0x2fc) # 1c00242c <myprintf2+0x3dc>
1c002134:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002138:	2880018c 	ld.w	$r12,$r12,0
1c00213c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002140:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002144:	001501a5 	move	$r5,$r13
1c002148:	00150184 	move	$r4,$r12
1c00214c:	57f70fff 	bl	-2292(0xffff70c) # 1c001858 <myputchar2>
1c002150:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002154:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002158:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00215c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002160:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002164:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002168:	5002c400 	b	708(0x2c4) # 1c00242c <myprintf2+0x3dc>
1c00216c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002170:	2880018c 	ld.w	$r12,$r12,0
1c002174:	0015018d 	move	$r13,$r12
1c002178:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c00217c:	00150008 	move	$r8,$r0
1c002180:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002184:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c002188:	001501a5 	move	$r5,$r13
1c00218c:	00150184 	move	$r4,$r12
1c002190:	57f8afff 	bl	-1876(0xffff8ac) # 1c001a3c <printbase2>
1c002194:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002198:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c00219c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0021ac:	50028000 	b	640(0x280) # 1c00242c <myprintf2+0x3dc>
1c0021b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021b4:	2880018c 	ld.w	$r12,$r12,0
1c0021b8:	0015018d 	move	$r13,$r12
1c0021bc:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0021c0:	02800408 	addi.w	$r8,$r0,1(0x1)
1c0021c4:	02802807 	addi.w	$r7,$r0,10(0xa)
1c0021c8:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c0021cc:	001501a5 	move	$r5,$r13
1c0021d0:	00150184 	move	$r4,$r12
1c0021d4:	57f86bff 	bl	-1944(0xffff868) # 1c001a3c <printbase2>
1c0021d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021dc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0021e0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0021f0:	50023c00 	b	572(0x23c) # 1c00242c <myprintf2+0x3dc>
1c0021f4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0021f8:	2880018c 	ld.w	$r12,$r12,0
1c0021fc:	0015018d 	move	$r13,$r12
1c002200:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002204:	00150008 	move	$r8,$r0
1c002208:	02802007 	addi.w	$r7,$r0,8(0x8)
1c00220c:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c002210:	001501a5 	move	$r5,$r13
1c002214:	00150184 	move	$r4,$r12
1c002218:	57f827ff 	bl	-2012(0xffff824) # 1c001a3c <printbase2>
1c00221c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002220:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002224:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002228:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00222c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002230:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002234:	5001f800 	b	504(0x1f8) # 1c00242c <myprintf2+0x3dc>
1c002238:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00223c:	2880018c 	ld.w	$r12,$r12,0
1c002240:	0015018d 	move	$r13,$r12
1c002244:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002248:	00150008 	move	$r8,$r0
1c00224c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002250:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c002254:	001501a5 	move	$r5,$r13
1c002258:	00150184 	move	$r4,$r12
1c00225c:	57f7e3ff 	bl	-2080(0xffff7e0) # 1c001a3c <printbase2>
1c002260:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002264:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c002268:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00226c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002270:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002274:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002278:	5001b400 	b	436(0x1b4) # 1c00242c <myprintf2+0x3dc>
1c00227c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002280:	2880018c 	ld.w	$r12,$r12,0
1c002284:	0015018d 	move	$r13,$r12
1c002288:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c00228c:	00150008 	move	$r8,$r0
1c002290:	02804007 	addi.w	$r7,$r0,16(0x10)
1c002294:	28bf92c6 	ld.w	$r6,$r22,-28(0xfe4)
1c002298:	001501a5 	move	$r5,$r13
1c00229c:	00150184 	move	$r4,$r12
1c0022a0:	57f79fff 	bl	-2148(0xffff79c) # 1c001a3c <printbase2>
1c0022a4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0022a8:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c0022ac:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0022b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022b4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022b8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022bc:	50017000 	b	368(0x170) # 1c00242c <myprintf2+0x3dc>
1c0022c0:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0022c4:	02809405 	addi.w	$r5,$r0,37(0x25)
1c0022c8:	00150184 	move	$r4,$r12
1c0022cc:	57f58fff 	bl	-2676(0xffff58c) # 1c001858 <myputchar2>
1c0022d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022d8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022dc:	50015000 	b	336(0x150) # 1c00242c <myprintf2+0x3dc>
1c0022e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022ec:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0022f0:	50003c00 	b	60(0x3c) # 1c00232c <myprintf2+0x2dc>
1c0022f4:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0022f8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0022fc:	001c31ad 	mul.w	$r13,$r13,$r12
1c002300:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002304:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002308:	28bf22ce 	ld.w	$r14,$r22,-56(0xfc8)
1c00230c:	001031cc 	add.w	$r12,$r14,$r12
1c002310:	2800018c 	ld.b	$r12,$r12,0
1c002314:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c002318:	001031ac 	add.w	$r12,$r13,$r12
1c00231c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002320:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002324:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002328:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00232c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002330:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002334:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002338:	001031ac 	add.w	$r12,$r13,$r12
1c00233c:	2800018d 	ld.b	$r13,$r12,0
1c002340:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002344:	67fd858d 	bge	$r12,$r13,-636(0x3fd84) # 1c0020c8 <myprintf2+0x78>
1c002348:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00234c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002350:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002354:	001031ac 	add.w	$r12,$r13,$r12
1c002358:	2800018d 	ld.b	$r13,$r12,0
1c00235c:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002360:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c0022f4 <myprintf2+0x2a4>
1c002364:	53fd67ff 	b	-668(0xffffd64) # 1c0020c8 <myprintf2+0x78>
1c002368:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00236c:	50003c00 	b	60(0x3c) # 1c0023a8 <myprintf2+0x358>
1c002370:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002374:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002378:	001c31ad 	mul.w	$r13,$r13,$r12
1c00237c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002380:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002384:	28bf22ce 	ld.w	$r14,$r22,-56(0xfc8)
1c002388:	001031cc 	add.w	$r12,$r14,$r12
1c00238c:	2800018c 	ld.b	$r12,$r12,0
1c002390:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c002394:	001031ac 	add.w	$r12,$r13,$r12
1c002398:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00239c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023b0:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0023b4:	001031ac 	add.w	$r12,$r13,$r12
1c0023b8:	2800018d 	ld.b	$r13,$r12,0
1c0023bc:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0023c0:	67fd098d 	bge	$r12,$r13,-760(0x3fd08) # 1c0020c8 <myprintf2+0x78>
1c0023c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023cc:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c0023d0:	001031ac 	add.w	$r12,$r13,$r12
1c0023d4:	2800018d 	ld.b	$r13,$r12,0
1c0023d8:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c0023dc:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c002370 <myprintf2+0x320>
1c0023e0:	53fcebff 	b	-792(0xffffce8) # 1c0020c8 <myprintf2+0x78>
1c0023e4:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c0023e8:	02809405 	addi.w	$r5,$r0,37(0x25)
1c0023ec:	00150184 	move	$r4,$r12
1c0023f0:	57f46bff 	bl	-2968(0xffff468) # 1c001858 <myputchar2>
1c0023f4:	03400000 	andi	$r0,$r0,0x0
1c0023f8:	50003400 	b	52(0x34) # 1c00242c <myprintf2+0x3dc>
1c0023fc:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c002400:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002404:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c002418 <myprintf2+0x3c8>
1c002408:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c00240c:	02803405 	addi.w	$r5,$r0,13(0xd)
1c002410:	00150184 	move	$r4,$r12
1c002414:	57f447ff 	bl	-3004(0xffff444) # 1c001858 <myputchar2>
1c002418:	2a3f8ecd 	ld.bu	$r13,$r22,-29(0xfe3)
1c00241c:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c002420:	001501a5 	move	$r5,$r13
1c002424:	00150184 	move	$r4,$r12
1c002428:	57f433ff 	bl	-3024(0xffff430) # 1c001858 <myputchar2>
1c00242c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002430:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002434:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00243c:	28bf22cd 	ld.w	$r13,$r22,-56(0xfc8)
1c002440:	001031ac 	add.w	$r12,$r13,$r12
1c002444:	2800018c 	ld.b	$r12,$r12,0
1c002448:	47fc599f 	bnez	$r12,-936(0x7ffc58) # 1c0020a0 <myprintf2+0x50>
1c00244c:	0015000c 	move	$r12,$r0
1c002450:	00150184 	move	$r4,$r12
1c002454:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c002458:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c00245c:	02818063 	addi.w	$r3,$r3,96(0x60)
1c002460:	4c000020 	jirl	$r0,$r1,0

1c002464 <UART_Init>:
UART_Init():
1c002464:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002468:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00246c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002470:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002474:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002478:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00247c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002480:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002484:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c002488:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00248c:	03403d8c 	andi	$r12,$r12,0xf
1c002490:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002494:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002498:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c00249c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0024a0:	0044918c 	srli.w	$r12,$r12,0x4
1c0024a4:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0024a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0024ac:	40000d80 	beqz	$r12,12(0xc) # 1c0024b8 <UART_Init+0x54>
1c0024b0:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0024b4:	44001980 	bnez	$r12,24(0x18) # 1c0024cc <UART_Init+0x68>
1c0024b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024bc:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c0024c0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0024c4:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0024c8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024cc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0024d0:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0024d4:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0024ec <UART_Init+0x88>
1c0024d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024dc:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c0024e0:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0024e4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0024e8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0024ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024f0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0024f4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0024f8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0024fc:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c002500:	580011ac 	beq	$r13,$r12,16(0x10) # 1c002510 <UART_Init+0xac>
1c002504:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002508:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c00250c:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c00256c <UART_Init+0x108>
1c002510:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002514:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002518:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00251c:	2880018c 	ld.w	$r12,$r12,0
1c002520:	002131ae 	div.wu	$r14,$r13,$r12
1c002524:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00252c <UART_Init+0xc8>
1c002528:	002a0007 	break	0x7
1c00252c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002530:	002135cc 	div.wu	$r12,$r14,$r13
1c002534:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c00253c <UART_Init+0xd8>
1c002538:	002a0007 	break	0x7
1c00253c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002540:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002544:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002548:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00254c:	2880018e 	ld.w	$r14,$r12,0
1c002550:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002554:	001c31ce 	mul.w	$r14,$r14,$r12
1c002558:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00255c:	001c31cc 	mul.w	$r12,$r14,$r12
1c002560:	001131ac 	sub.w	$r12,$r13,$r12
1c002564:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002568:	50005400 	b	84(0x54) # 1c0025bc <UART_Init+0x158>
1c00256c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002570:	2880018c 	ld.w	$r12,$r12,0
1c002574:	1400010d 	lu12i.w	$r13,8(0x8)
1c002578:	002131ae 	div.wu	$r14,$r13,$r12
1c00257c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002584 <UART_Init+0x120>
1c002580:	002a0007 	break	0x7
1c002584:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002588:	002135cc 	div.wu	$r12,$r14,$r13
1c00258c:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002594 <UART_Init+0x130>
1c002590:	002a0007 	break	0x7
1c002594:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002598:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00259c:	2880018d 	ld.w	$r13,$r12,0
1c0025a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025a4:	001c31ad 	mul.w	$r13,$r13,$r12
1c0025a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025ac:	001c31ac 	mul.w	$r12,$r13,$r12
1c0025b0:	1400010d 	lu12i.w	$r13,8(0x8)
1c0025b4:	001131ac 	sub.w	$r12,$r13,$r12
1c0025b8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0025bc:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0025c0:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0025c4:	001c31ad 	mul.w	$r13,$r13,$r12
1c0025c8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0025cc:	2880018c 	ld.w	$r12,$r12,0
1c0025d0:	002131ae 	div.wu	$r14,$r13,$r12
1c0025d4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0025dc <UART_Init+0x178>
1c0025d8:	002a0007 	break	0x7
1c0025dc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0025e0:	002135cc 	div.wu	$r12,$r14,$r13
1c0025e4:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0025ec <UART_Init+0x188>
1c0025e8:	002a0007 	break	0x7
1c0025ec:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0025f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025f4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0025f8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0025fc:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c002600:	001531ac 	or	$r12,$r13,$r12
1c002604:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002608:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00260c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002610:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002614:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002618:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00261c:	2900018d 	st.b	$r13,$r12,0
1c002620:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002624:	0044a18c 	srli.w	$r12,$r12,0x8
1c002628:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00262c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002630:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002634:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002638:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00263c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002640:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002644:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002648:	2900098d 	st.b	$r13,$r12,2(0x2)
1c00264c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002650:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002654:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002658:	0341fd8c 	andi	$r12,$r12,0x7f
1c00265c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002660:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002664:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002668:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00266c:	29000580 	st.b	$r0,$r12,1(0x1)
1c002670:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002674:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002678:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00267c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002680:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c002684:	001531ac 	or	$r12,$r13,$r12
1c002688:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00268c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002690:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002694:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002698:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00269c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026a0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026a4:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c0026a8:	001531ac 	or	$r12,$r13,$r12
1c0026ac:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026b4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0026b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026bc:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026c0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026c8:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c0026cc:	001531ac 	or	$r12,$r13,$r12
1c0026d0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026d4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026d8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0026dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026e0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0026e4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026e8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026ec:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c0026f0:	001531ac 	or	$r12,$r13,$r12
1c0026f4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0026f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026fc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002700:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002704:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002708:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00270c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002710:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c002714:	001531ac 	or	$r12,$r13,$r12
1c002718:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00271c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002720:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002724:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002728:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00272c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002730:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002734:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c002738:	001531ac 	or	$r12,$r13,$r12
1c00273c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002740:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002744:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002748:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00274c:	2a00018c 	ld.bu	$r12,$r12,0
1c002750:	03400000 	andi	$r0,$r0,0x0
1c002754:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002758:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00275c:	4c000020 	jirl	$r0,$r1,0

1c002760 <UART_StructInit>:
UART_StructInit():
1c002760:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002764:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002768:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00276c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002770:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002774:	1400038d 	lu12i.w	$r13,28(0x1c)
1c002778:	038801ad 	ori	$r13,$r13,0x200
1c00277c:	2980018d 	st.w	$r13,$r12,0
1c002780:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002784:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002788:	038801ad 	ori	$r13,$r13,0x200
1c00278c:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002790:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002794:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c002798:	2900298d 	st.b	$r13,$r12,10(0xa)
1c00279c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027a0:	29002d80 	st.b	$r0,$r12,11(0xb)
1c0027a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027a8:	29003580 	st.b	$r0,$r12,13(0xd)
1c0027ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027b0:	29003180 	st.b	$r0,$r12,12(0xc)
1c0027b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027b8:	29003d80 	st.b	$r0,$r12,15(0xf)
1c0027bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027c0:	29003980 	st.b	$r0,$r12,14(0xe)
1c0027c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027c8:	29402180 	st.h	$r0,$r12,8(0x8)
1c0027cc:	03400000 	andi	$r0,$r0,0x0
1c0027d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0027d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0027d8:	4c000020 	jirl	$r0,$r1,0

1c0027dc <UART_ITConfig>:
UART_ITConfig():
1c0027dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0027e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0027e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0027e8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0027ec:	001500ac 	move	$r12,$r5
1c0027f0:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c0027f4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0027f8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0027fc:	40002980 	beqz	$r12,40(0x28) # 1c002824 <UART_ITConfig+0x48>
1c002800:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002804:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002808:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00280c:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c002810:	001531ac 	or	$r12,$r13,$r12
1c002814:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002818:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00281c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002820:	50003400 	b	52(0x34) # 1c002854 <UART_ITConfig+0x78>
1c002824:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002828:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c00282c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002830:	00005d8d 	ext.w.b	$r13,$r12
1c002834:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c002838:	0014300c 	nor	$r12,$r0,$r12
1c00283c:	00005d8c 	ext.w.b	$r12,$r12
1c002840:	0014b1ac 	and	$r12,$r13,$r12
1c002844:	00005d8c 	ext.w.b	$r12,$r12
1c002848:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00284c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002850:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002854:	03400000 	andi	$r0,$r0,0x0
1c002858:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00285c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002860:	4c000020 	jirl	$r0,$r1,0

1c002864 <UART_SendData>:
UART_SendData():
1c002864:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002868:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00286c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002870:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002874:	001500ac 	move	$r12,$r5
1c002878:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c00287c:	03400000 	andi	$r0,$r0,0x0
1c002880:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002884:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002888:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00288c:	0340818c 	andi	$r12,$r12,0x20
1c002890:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002880 <UART_SendData+0x1c>
1c002894:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002898:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c00289c:	2900018d 	st.b	$r13,$r12,0
1c0028a0:	03400000 	andi	$r0,$r0,0x0
1c0028a4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0028a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0028ac:	4c000020 	jirl	$r0,$r1,0

1c0028b0 <UART_ReceiveData>:
UART_ReceiveData():
1c0028b0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0028b4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0028b8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0028bc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0028c0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0028c4:	03400000 	andi	$r0,$r0,0x0
1c0028c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028cc:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0028d0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0028d4:	0340058c 	andi	$r12,$r12,0x1
1c0028d8:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0028c8 <UART_ReceiveData+0x18>
1c0028dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028e0:	2a00018c 	ld.bu	$r12,$r12,0
1c0028e4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0028e8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0028ec:	00150184 	move	$r4,$r12
1c0028f0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0028f4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0028f8:	4c000020 	jirl	$r0,$r1,0

1c0028fc <Uart0_init>:
Uart0_init():
1c0028fc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002900:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002904:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002908:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00290c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002910:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002914:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002918:	57ecfbff 	bl	-4872(0xfffecf8) # 1c001610 <gpio_pin_remap>
1c00291c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002920:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002924:	57ecefff 	bl	-4884(0xfffecec) # 1c001610 <gpio_pin_remap>
1c002928:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c00292c:	00150184 	move	$r4,$r12
1c002930:	57fe33ff 	bl	-464(0xffffe30) # 1c002760 <UART_StructInit>
1c002934:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002938:	289bb18c 	ld.w	$r12,$r12,1772(0x6ec)
1c00293c:	2880018c 	ld.w	$r12,$r12,0
1c002940:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002944:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002948:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00294c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002950:	00150185 	move	$r5,$r12
1c002954:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002958:	57fb0fff 	bl	-1268(0xffffb0c) # 1c002464 <UART_Init>
1c00295c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002960:	0380098c 	ori	$r12,$r12,0x2
1c002964:	2a00018c 	ld.bu	$r12,$r12,0
1c002968:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00296c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002970:	0380098c 	ori	$r12,$r12,0x2
1c002974:	038021ad 	ori	$r13,$r13,0x8
1c002978:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00297c:	2900018d 	st.b	$r13,$r12,0
1c002980:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002984:	2a00018c 	ld.bu	$r12,$r12,0
1c002988:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00298c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002990:	038021ad 	ori	$r13,$r13,0x8
1c002994:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002998:	2900018d 	st.b	$r13,$r12,0
1c00299c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0029a0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0029a4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0029a8:	57fe37ff 	bl	-460(0xffffe34) # 1c0027dc <UART_ITConfig>
1c0029ac:	03400000 	andi	$r0,$r0,0x0
1c0029b0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0029b4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0029b8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0029bc:	4c000020 	jirl	$r0,$r1,0

1c0029c0 <Uart1_init>:
Uart1_init():
1c0029c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0029c4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0029c8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0029cc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0029d0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0029d4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0029d8:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0029dc:	57ec37ff 	bl	-5068(0xfffec34) # 1c001610 <gpio_pin_remap>
1c0029e0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0029e4:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0029e8:	57ec2bff 	bl	-5080(0xfffec28) # 1c001610 <gpio_pin_remap>
1c0029ec:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c0029f0:	00150184 	move	$r4,$r12
1c0029f4:	57fd6fff 	bl	-660(0xffffd6c) # 1c002760 <UART_StructInit>
1c0029f8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0029fc:	2898a18c 	ld.w	$r12,$r12,1576(0x628)
1c002a00:	2880018c 	ld.w	$r12,$r12,0
1c002a04:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002a08:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a0c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002a10:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002a14:	00150185 	move	$r5,$r12
1c002a18:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a1c:	57fa4bff 	bl	-1464(0xffffa48) # 1c002464 <UART_Init>
1c002a20:	00150006 	move	$r6,$r0
1c002a24:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a28:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a2c:	57fdb3ff 	bl	-592(0xffffdb0) # 1c0027dc <UART_ITConfig>
1c002a30:	03400000 	andi	$r0,$r0,0x0
1c002a34:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002a38:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002a3c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a40:	4c000020 	jirl	$r0,$r1,0

1c002a44 <Uart0_send>:
Uart0_send():
1c002a44:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002a48:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002a4c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002a50:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002a54:	0015008c 	move	$r12,$r4
1c002a58:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a60:	00150185 	move	$r5,$r12
1c002a64:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002a68:	57fdffff 	bl	-516(0xffffdfc) # 1c002864 <UART_SendData>
1c002a6c:	03400000 	andi	$r0,$r0,0x0
1c002a70:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002a74:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002a78:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a7c:	4c000020 	jirl	$r0,$r1,0

1c002a80 <Uart1_send>:
Uart1_send():
1c002a80:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002a84:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002a88:	29806076 	st.w	$r22,$r3,24(0x18)
1c002a8c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002a90:	0015008c 	move	$r12,$r4
1c002a94:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a98:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a9c:	00150185 	move	$r5,$r12
1c002aa0:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002aa4:	57fdc3ff 	bl	-576(0xffffdc0) # 1c002864 <UART_SendData>
1c002aa8:	03400000 	andi	$r0,$r0,0x0
1c002aac:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002ab0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002ab4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ab8:	4c000020 	jirl	$r0,$r1,0

1c002abc <Uart2_send>:
Uart2_send():
1c002abc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002ac0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002ac4:	29806076 	st.w	$r22,$r3,24(0x18)
1c002ac8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002acc:	0015008c 	move	$r12,$r4
1c002ad0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002ad4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002ad8:	00150185 	move	$r5,$r12
1c002adc:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c002ae0:	57fd87ff 	bl	-636(0xffffd84) # 1c002864 <UART_SendData>
1c002ae4:	03400000 	andi	$r0,$r0,0x0
1c002ae8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002aec:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002af0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002af4:	4c000020 	jirl	$r0,$r1,0

1c002af8 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002af8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002afc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002b00:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b04:	1400006c 	lu12i.w	$r12,3(0x3)
1c002b08:	03ba018c 	ori	$r12,$r12,0xe80
1c002b0c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b10:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002b14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b18:	2880018d 	ld.w	$r13,$r12,0
1c002b1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b20:	038101ad 	ori	$r13,$r13,0x40
1c002b24:	2980018d 	st.w	$r13,$r12,0
1c002b28:	03400000 	andi	$r0,$r0,0x0
1c002b2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b30:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b34:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002b38:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002b2c <CLOCK_WaitForHSEStartUp+0x34>
1c002b3c:	50001c00 	b	28(0x1c) # 1c002b58 <CLOCK_WaitForHSEStartUp+0x60>
1c002b40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b44:	2880018e 	ld.w	$r14,$r12,0
1c002b48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b4c:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002b50:	0014b5cd 	and	$r13,$r14,$r13
1c002b54:	2980018d 	st.w	$r13,$r12,0
1c002b58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b5c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002b60:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002b40 <CLOCK_WaitForHSEStartUp+0x48>
1c002b64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b68:	2880018d 	ld.w	$r13,$r12,0
1c002b6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b70:	038201ad 	ori	$r13,$r13,0x80
1c002b74:	2980018d 	st.w	$r13,$r12,0
1c002b78:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002b7c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002b80:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002b84:	00150184 	move	$r4,$r12
1c002b88:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002b8c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002b90:	4c000020 	jirl	$r0,$r1,0

1c002b94 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002b94:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b98:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002b9c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002ba0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002ba4:	50008800 	b	136(0x88) # 1c002c2c <CLOCK_WaitForLSEStartUp+0x98>
1c002ba8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bac:	2880018e 	ld.w	$r14,$r12,0
1c002bb0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bb4:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002bb8:	0014b5cd 	and	$r13,$r14,$r13
1c002bbc:	2980018d 	st.w	$r13,$r12,0
1c002bc0:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002bc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002bc8:	50001400 	b	20(0x14) # 1c002bdc <CLOCK_WaitForLSEStartUp+0x48>
1c002bcc:	03400000 	andi	$r0,$r0,0x0
1c002bd0:	03400000 	andi	$r0,$r0,0x0
1c002bd4:	03400000 	andi	$r0,$r0,0x0
1c002bd8:	03400000 	andi	$r0,$r0,0x0
1c002bdc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002be0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002be4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002be8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002bcc <CLOCK_WaitForLSEStartUp+0x38>
1c002bec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bf0:	2880018d 	ld.w	$r13,$r12,0
1c002bf4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bf8:	038081ad 	ori	$r13,$r13,0x20
1c002bfc:	2980018d 	st.w	$r13,$r12,0
1c002c00:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002c04:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c08:	50001400 	b	20(0x14) # 1c002c1c <CLOCK_WaitForLSEStartUp+0x88>
1c002c0c:	03400000 	andi	$r0,$r0,0x0
1c002c10:	03400000 	andi	$r0,$r0,0x0
1c002c14:	03400000 	andi	$r0,$r0,0x0
1c002c18:	03400000 	andi	$r0,$r0,0x0
1c002c1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c20:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c24:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002c28:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c0c <CLOCK_WaitForLSEStartUp+0x78>
1c002c2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c30:	0380118c 	ori	$r12,$r12,0x4
1c002c34:	2880018d 	ld.w	$r13,$r12,0
1c002c38:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002c3c:	0014b1ac 	and	$r12,$r13,$r12
1c002c40:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002ba8 <CLOCK_WaitForLSEStartUp+0x14>
1c002c44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c48:	0380118c 	ori	$r12,$r12,0x4
1c002c4c:	2880018d 	ld.w	$r13,$r12,0
1c002c50:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002c54:	0014b1ac 	and	$r12,$r13,$r12
1c002c58:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002ba8 <CLOCK_WaitForLSEStartUp+0x14>
1c002c5c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c60:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002c64:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002c68:	00150184 	move	$r4,$r12
1c002c6c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c70:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c74:	4c000020 	jirl	$r0,$r1,0

1c002c78 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002c78:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002c7c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002c80:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002c84:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002c88:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002c8c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002c90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c94:	2880018e 	ld.w	$r14,$r12,0
1c002c98:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002c9c:	0014300d 	nor	$r13,$r0,$r12
1c002ca0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ca4:	0014b5cd 	and	$r13,$r14,$r13
1c002ca8:	2980018d 	st.w	$r13,$r12,0
1c002cac:	1400002c 	lu12i.w	$r12,1(0x1)
1c002cb0:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002cb4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002cb8:	50001400 	b	20(0x14) # 1c002ccc <CLOCK_HSEConfig+0x54>
1c002cbc:	03400000 	andi	$r0,$r0,0x0
1c002cc0:	03400000 	andi	$r0,$r0,0x0
1c002cc4:	03400000 	andi	$r0,$r0,0x0
1c002cc8:	03400000 	andi	$r0,$r0,0x0
1c002ccc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002cd0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002cd4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002cd8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002cbc <CLOCK_HSEConfig+0x44>
1c002cdc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002ce0:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002ce4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002cf4 <CLOCK_HSEConfig+0x7c>
1c002ce8:	57fe13ff 	bl	-496(0xffffe10) # 1c002af8 <CLOCK_WaitForHSEStartUp>
1c002cec:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002cf0:	50002400 	b	36(0x24) # 1c002d14 <CLOCK_HSEConfig+0x9c>
1c002cf4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cf8:	2880018e 	ld.w	$r14,$r12,0
1c002cfc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d00:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002d04:	0014b5cd 	and	$r13,$r14,$r13
1c002d08:	2980018d 	st.w	$r13,$r12,0
1c002d0c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d18:	00150184 	move	$r4,$r12
1c002d1c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002d20:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002d24:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002d28:	4c000020 	jirl	$r0,$r1,0

1c002d2c <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002d2c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d30:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d34:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d38:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d3c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d40:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d44:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002d48:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002d4c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002d5c <CLOCK_LSEConfig+0x30>
1c002d50:	57fe47ff 	bl	-444(0xffffe44) # 1c002b94 <CLOCK_WaitForLSEStartUp>
1c002d54:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002d58:	50002400 	b	36(0x24) # 1c002d7c <CLOCK_LSEConfig+0x50>
1c002d5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d60:	2880018e 	ld.w	$r14,$r12,0
1c002d64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d68:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002d6c:	0014b5cd 	and	$r13,$r14,$r13
1c002d70:	2980018d 	st.w	$r13,$r12,0
1c002d74:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d78:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d80:	00150184 	move	$r4,$r12
1c002d84:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002d88:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002d8c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002d90:	4c000020 	jirl	$r0,$r1,0

1c002d94 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002d94:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002d98:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002d9c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002da0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002da8:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002dac:	2980018d 	st.w	$r13,$r12,0
1c002db0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002db4:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002db8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002dbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dc0:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002dc4:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002dc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dcc:	29803180 	st.w	$r0,$r12,12(0xc)
1c002dd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dd4:	29804180 	st.w	$r0,$r12,16(0x10)
1c002dd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ddc:	29805180 	st.w	$r0,$r12,20(0x14)
1c002de0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002de4:	29806180 	st.w	$r0,$r12,24(0x18)
1c002de8:	03400000 	andi	$r0,$r0,0x0
1c002dec:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002df0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002df4:	4c000020 	jirl	$r0,$r1,0

1c002df8 <CLOCK_Init>:
CLOCK_Init():
1c002df8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002dfc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e00:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e04:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e08:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e0c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e14:	2880018e 	ld.w	$r14,$r12,0
1c002e18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e1c:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002e20:	0014b5cd 	and	$r13,$r14,$r13
1c002e24:	2980018d 	st.w	$r13,$r12,0
1c002e28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e2c:	2880018e 	ld.w	$r14,$r12,0
1c002e30:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e34:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002e38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e3c:	001535cd 	or	$r13,$r14,$r13
1c002e40:	2980018d 	st.w	$r13,$r12,0
1c002e44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e48:	2880018e 	ld.w	$r14,$r12,0
1c002e4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e50:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002e54:	0014b5cd 	and	$r13,$r14,$r13
1c002e58:	2980018d 	st.w	$r13,$r12,0
1c002e5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e60:	2880018e 	ld.w	$r14,$r12,0
1c002e64:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e68:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002e6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e70:	001535cd 	or	$r13,$r14,$r13
1c002e74:	2980018d 	st.w	$r13,$r12,0
1c002e78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e7c:	2880018e 	ld.w	$r14,$r12,0
1c002e80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e84:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002e88:	039ffdad 	ori	$r13,$r13,0x7ff
1c002e8c:	0014b5cd 	and	$r13,$r14,$r13
1c002e90:	2980018d 	st.w	$r13,$r12,0
1c002e94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e98:	2880018e 	ld.w	$r14,$r12,0
1c002e9c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ea0:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002ea4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ea8:	001535cd 	or	$r13,$r14,$r13
1c002eac:	2980018d 	st.w	$r13,$r12,0
1c002eb0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002eb4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002eb8:	00150184 	move	$r4,$r12
1c002ebc:	57fdbfff 	bl	-580(0xffffdbc) # 1c002c78 <CLOCK_HSEConfig>
1c002ec0:	0015008d 	move	$r13,$r4
1c002ec4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002ec8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002ed4 <CLOCK_Init+0xdc>
1c002ecc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ed0:	50015000 	b	336(0x150) # 1c003020 <CLOCK_Init+0x228>
1c002ed4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ed8:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002edc:	00150184 	move	$r4,$r12
1c002ee0:	57fe4fff 	bl	-436(0xffffe4c) # 1c002d2c <CLOCK_LSEConfig>
1c002ee4:	0015008d 	move	$r13,$r4
1c002ee8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002eec:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002ef8 <CLOCK_Init+0x100>
1c002ef0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ef4:	50012c00 	b	300(0x12c) # 1c003020 <CLOCK_Init+0x228>
1c002ef8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002efc:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002f00:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002f04:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c003000 <CLOCK_Init+0x208>
1c002f08:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f0c:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002f10:	4000a180 	beqz	$r12,160(0xa0) # 1c002fb0 <CLOCK_Init+0x1b8>
1c002f14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f18:	2880018e 	ld.w	$r14,$r12,0
1c002f1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f20:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002f24:	03bffdad 	ori	$r13,$r13,0xfff
1c002f28:	0014b5cd 	and	$r13,$r14,$r13
1c002f2c:	2980018d 	st.w	$r13,$r12,0
1c002f30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f34:	2880018e 	ld.w	$r14,$r12,0
1c002f38:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f3c:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c002f40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f44:	001535cd 	or	$r13,$r14,$r13
1c002f48:	2980018d 	st.w	$r13,$r12,0
1c002f4c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002f50:	0386c18c 	ori	$r12,$r12,0x1b0
1c002f54:	2880018c 	ld.w	$r12,$r12,0
1c002f58:	40004180 	beqz	$r12,64(0x40) # 1c002f98 <CLOCK_Init+0x1a0>
1c002f5c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002f60:	0386c18c 	ori	$r12,$r12,0x1b0
1c002f64:	2880018c 	ld.w	$r12,$r12,0
1c002f68:	0040898e 	slli.w	$r14,$r12,0x2
1c002f6c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002f70:	002031cd 	div.w	$r13,$r14,$r12
1c002f74:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002f7c <CLOCK_Init+0x184>
1c002f78:	002a0007 	break	0x7
1c002f7c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002f80:	001c31ac 	mul.w	$r12,$r13,$r12
1c002f84:	0015018d 	move	$r13,$r12
1c002f88:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f8c:	0283518c 	addi.w	$r12,$r12,212(0xd4)
1c002f90:	2980018d 	st.w	$r13,$r12,0
1c002f94:	50008000 	b	128(0x80) # 1c003014 <CLOCK_Init+0x21c>
1c002f98:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002f9c:	0283118c 	addi.w	$r12,$r12,196(0xc4)
1c002fa0:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c002fa4:	038fe1ad 	ori	$r13,$r13,0x3f8
1c002fa8:	2980018d 	st.w	$r13,$r12,0
1c002fac:	50006800 	b	104(0x68) # 1c003014 <CLOCK_Init+0x21c>
1c002fb0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002fb4:	0386c18c 	ori	$r12,$r12,0x1b0
1c002fb8:	2880018c 	ld.w	$r12,$r12,0
1c002fbc:	40002d80 	beqz	$r12,44(0x2c) # 1c002fe8 <CLOCK_Init+0x1f0>
1c002fc0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002fc4:	0386c18c 	ori	$r12,$r12,0x1b0
1c002fc8:	2880018d 	ld.w	$r13,$r12,0
1c002fcc:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002fd0:	001c31ac 	mul.w	$r12,$r13,$r12
1c002fd4:	0015018d 	move	$r13,$r12
1c002fd8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002fdc:	0282118c 	addi.w	$r12,$r12,132(0x84)
1c002fe0:	2980018d 	st.w	$r13,$r12,0
1c002fe4:	50003000 	b	48(0x30) # 1c003014 <CLOCK_Init+0x21c>
1c002fe8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002fec:	0281d18c 	addi.w	$r12,$r12,116(0x74)
1c002ff0:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002ff4:	038801ad 	ori	$r13,$r13,0x200
1c002ff8:	2980018d 	st.w	$r13,$r12,0
1c002ffc:	50001800 	b	24(0x18) # 1c003014 <CLOCK_Init+0x21c>
1c003000:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003004:	0281718c 	addi.w	$r12,$r12,92(0x5c)
1c003008:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c00300c:	038801ad 	ori	$r13,$r13,0x200
1c003010:	2980018d 	st.w	$r13,$r12,0
1c003014:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003018:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00301c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003020:	00150184 	move	$r4,$r12
1c003024:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003028:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00302c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003030:	4c000020 	jirl	$r0,$r1,0

1c003034 <SystemClockInit>:
SystemClockInit():
1c003034:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003038:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00303c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003040:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003044:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c003048:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c00304c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c003050:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003054:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003058:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00305c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003060:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003064:	00150184 	move	$r4,$r12
1c003068:	57fd2fff 	bl	-724(0xffffd2c) # 1c002d94 <CLOCK_StructInit>
1c00306c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c003070:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003074:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003078:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00307c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c003080:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003084:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003088:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c00308c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003090:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003094:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003098:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c00309c:	00150184 	move	$r4,$r12
1c0030a0:	57fd5bff 	bl	-680(0xffffd58) # 1c002df8 <CLOCK_Init>
1c0030a4:	0015008d 	move	$r13,$r4
1c0030a8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0030ac:	58000dac 	beq	$r13,$r12,12(0xc) # 1c0030b8 <SystemClockInit+0x84>
1c0030b0:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0030b4:	50000800 	b	8(0x8) # 1c0030bc <SystemClockInit+0x88>
1c0030b8:	0015000c 	move	$r12,$r0
1c0030bc:	00150184 	move	$r4,$r12
1c0030c0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0030c4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0030c8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0030cc:	4c000020 	jirl	$r0,$r1,0

1c0030d0 <IsGlobalIntOpen>:
IsGlobalIntOpen():
1c0030d0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0030d4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0030d8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0030dc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0030e0:	0400000c 	csrrd	$r12,0x0
1c0030e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0030e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030ec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0030f0:	0340118c 	andi	$r12,$r12,0x4
1c0030f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0030f8:	00150184 	move	$r4,$r12
1c0030fc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003100:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003104:	4c000020 	jirl	$r0,$r1,0

1c003108 <DisableInt>:
DisableInt():
1c003108:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00310c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003110:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003114:	0380100c 	ori	$r12,$r0,0x4
1c003118:	04000180 	csrxchg	$r0,$r12,0x0
1c00311c:	03400000 	andi	$r0,$r0,0x0
1c003120:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003124:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003128:	4c000020 	jirl	$r0,$r1,0

1c00312c <EnableInt>:
EnableInt():
1c00312c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003130:	29803076 	st.w	$r22,$r3,12(0xc)
1c003134:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003138:	0380100c 	ori	$r12,$r0,0x4
1c00313c:	0400018c 	csrxchg	$r12,$r12,0x0
1c003140:	03400000 	andi	$r0,$r0,0x0
1c003144:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003148:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00314c:	4c000020 	jirl	$r0,$r1,0

1c003150 <Set_Timer_stop>:
Set_Timer_stop():
1c003150:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003154:	29803076 	st.w	$r22,$r3,12(0xc)
1c003158:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00315c:	04010420 	csrwr	$r0,0x41
1c003160:	03400000 	andi	$r0,$r0,0x0
1c003164:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003168:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00316c:	4c000020 	jirl	$r0,$r1,0

1c003170 <Set_Timer_clear>:
Set_Timer_clear():
1c003170:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003174:	29803076 	st.w	$r22,$r3,12(0xc)
1c003178:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00317c:	0380040c 	ori	$r12,$r0,0x1
1c003180:	0401102c 	csrwr	$r12,0x44
1c003184:	03400000 	andi	$r0,$r0,0x0
1c003188:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00318c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003190:	4c000020 	jirl	$r0,$r1,0

1c003194 <Wake_Set>:
Wake_Set():
1c003194:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003198:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00319c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0031a0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0031a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0031a8:	40006980 	beqz	$r12,104(0x68) # 1c003210 <Wake_Set+0x7c>
1c0031ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0031b0:	0040a18c 	slli.w	$r12,$r12,0x8
1c0031b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0031b8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0031bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031c0:	0380218c 	ori	$r12,$r12,0x8
1c0031c4:	2880018d 	ld.w	$r13,$r12,0
1c0031c8:	14001fec 	lu12i.w	$r12,255(0xff)
1c0031cc:	03bffd8c 	ori	$r12,$r12,0xfff
1c0031d0:	0014b1ac 	and	$r12,$r13,$r12
1c0031d4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0031d8:	001031ac 	add.w	$r12,$r13,$r12
1c0031dc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0031e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031e4:	0380318c 	ori	$r12,$r12,0xc
1c0031e8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0031ec:	2980018d 	st.w	$r13,$r12,0
1c0031f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0031f4:	0380118c 	ori	$r12,$r12,0x4
1c0031f8:	2880018d 	ld.w	$r13,$r12,0
1c0031fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003200:	0380118c 	ori	$r12,$r12,0x4
1c003204:	038601ad 	ori	$r13,$r13,0x180
1c003208:	2980018d 	st.w	$r13,$r12,0
1c00320c:	50002400 	b	36(0x24) # 1c003230 <Wake_Set+0x9c>
1c003210:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003214:	0380118c 	ori	$r12,$r12,0x4
1c003218:	2880018e 	ld.w	$r14,$r12,0
1c00321c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003220:	0380118c 	ori	$r12,$r12,0x4
1c003224:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c003228:	0014b5cd 	and	$r13,$r14,$r13
1c00322c:	2980018d 	st.w	$r13,$r12,0
1c003230:	03400000 	andi	$r0,$r0,0x0
1c003234:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003238:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00323c:	4c000020 	jirl	$r0,$r1,0

1c003240 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c003240:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003244:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003248:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00324c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003250:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003254:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003258:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c00325c:	0014b1ac 	and	$r12,$r13,$r12
1c003260:	44000d80 	bnez	$r12,12(0xc) # 1c00326c <PMU_GetRstRrc+0x2c>
1c003264:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003268:	50003000 	b	48(0x30) # 1c003298 <PMU_GetRstRrc+0x58>
1c00326c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003270:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003274:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003278:	0014b1ad 	and	$r13,$r13,$r12
1c00327c:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003280:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c003290 <PMU_GetRstRrc+0x50>
1c003284:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003288:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00328c:	50000c00 	b	12(0xc) # 1c003298 <PMU_GetRstRrc+0x58>
1c003290:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003294:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003298:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00329c:	00150184 	move	$r4,$r12
1c0032a0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0032a4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0032a8:	4c000020 	jirl	$r0,$r1,0

1c0032ac <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c0032ac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0032b0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0032b4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0032b8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0032bc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0032c0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0032c4:	0380198c 	ori	$r12,$r12,0x6
1c0032c8:	2a00018c 	ld.bu	$r12,$r12,0
1c0032cc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0032d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0032d4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0032d8:	0340058c 	andi	$r12,$r12,0x1
1c0032dc:	40000d80 	beqz	$r12,12(0xc) # 1c0032e8 <PMU_GetBootSpiStatus+0x3c>
1c0032e0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0032e4:	50000800 	b	8(0x8) # 1c0032ec <PMU_GetBootSpiStatus+0x40>
1c0032e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0032ec:	00150184 	move	$r4,$r12
1c0032f0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0032f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0032f8:	4c000020 	jirl	$r0,$r1,0

1c0032fc <ls1x_logo>:
ls1x_logo():
1c0032fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003300:	29803061 	st.w	$r1,$r3,12(0xc)
1c003304:	29802076 	st.w	$r22,$r3,8(0x8)
1c003308:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00330c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003310:	02aca084 	addi.w	$r4,$r4,-1240(0xb28)
1c003314:	57e99bff 	bl	-5736(0xfffe998) # 1c001cac <myprintf>
1c003318:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00331c:	02ac8084 	addi.w	$r4,$r4,-1248(0xb20)
1c003320:	57e98fff 	bl	-5748(0xfffe98c) # 1c001cac <myprintf>
1c003324:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003328:	02ade084 	addi.w	$r4,$r4,-1160(0xb78)
1c00332c:	57e983ff 	bl	-5760(0xfffe980) # 1c001cac <myprintf>
1c003330:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003334:	02af4084 	addi.w	$r4,$r4,-1072(0xbd0)
1c003338:	57e977ff 	bl	-5772(0xfffe974) # 1c001cac <myprintf>
1c00333c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003340:	02b0a084 	addi.w	$r4,$r4,-984(0xc28)
1c003344:	57e96bff 	bl	-5784(0xfffe968) # 1c001cac <myprintf>
1c003348:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00334c:	02b20084 	addi.w	$r4,$r4,-896(0xc80)
1c003350:	57e95fff 	bl	-5796(0xfffe95c) # 1c001cac <myprintf>
1c003354:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003358:	02b36084 	addi.w	$r4,$r4,-808(0xcd8)
1c00335c:	57e953ff 	bl	-5808(0xfffe950) # 1c001cac <myprintf>
1c003360:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003364:	02b4c084 	addi.w	$r4,$r4,-720(0xd30)
1c003368:	57e947ff 	bl	-5820(0xfffe944) # 1c001cac <myprintf>
1c00336c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003370:	02b62084 	addi.w	$r4,$r4,-632(0xd88)
1c003374:	57e93bff 	bl	-5832(0xfffe938) # 1c001cac <myprintf>
1c003378:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00337c:	02b78084 	addi.w	$r4,$r4,-544(0xde0)
1c003380:	57e92fff 	bl	-5844(0xfffe92c) # 1c001cac <myprintf>
1c003384:	03400000 	andi	$r0,$r0,0x0
1c003388:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00338c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003390:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003394:	4c000020 	jirl	$r0,$r1,0

1c003398 <get_count>:
get_count():
1c003398:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00339c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0033a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0033a4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0033a8:	0000600c 	rdtimel.w	$r12,$r0
1c0033ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0033b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033b4:	00150184 	move	$r4,$r12
1c0033b8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0033bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033c0:	4c000020 	jirl	$r0,$r1,0

1c0033c4 <open_count>:
open_count():
1c0033c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0033c8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0033cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0033d0:	0380400c 	ori	$r12,$r0,0x10
1c0033d4:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c0033d8:	03400000 	andi	$r0,$r0,0x0
1c0033dc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0033e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0033e4:	4c000020 	jirl	$r0,$r1,0

1c0033e8 <start_count>:
start_count():
1c0033e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0033ec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0033f0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0033f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0033f8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0033fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003400:	29800180 	st.w	$r0,$r12,0
1c003404:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003408:	29801180 	st.w	$r0,$r12,4(0x4)
1c00340c:	57ff8fff 	bl	-116(0xfffff8c) # 1c003398 <get_count>
1c003410:	0015008d 	move	$r13,$r4
1c003414:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003418:	2980018d 	st.w	$r13,$r12,0
1c00341c:	03400000 	andi	$r0,$r0,0x0
1c003420:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003424:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003428:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00342c:	4c000020 	jirl	$r0,$r1,0

1c003430 <stop_count>:
stop_count():
1c003430:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003434:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003438:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00343c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003440:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003444:	57ff57ff 	bl	-172(0xfffff54) # 1c003398 <get_count>
1c003448:	0015008d 	move	$r13,$r4
1c00344c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003450:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003454:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003458:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00345c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003460:	2880018c 	ld.w	$r12,$r12,0
1c003464:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c003480 <stop_count+0x50>
1c003468:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00346c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003470:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003474:	2880018c 	ld.w	$r12,$r12,0
1c003478:	001131ac 	sub.w	$r12,$r13,$r12
1c00347c:	50002800 	b	40(0x28) # 1c0034a4 <stop_count+0x74>
1c003480:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003484:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003488:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00348c:	2880018c 	ld.w	$r12,$r12,0
1c003490:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003494:	001131ad 	sub.w	$r13,$r13,$r12
1c003498:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00349c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0034a0:	001031ac 	add.w	$r12,$r13,$r12
1c0034a4:	00150184 	move	$r4,$r12
1c0034a8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0034ac:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0034b0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0034b4:	4c000020 	jirl	$r0,$r1,0

1c0034b8 <delay_cycle>:
delay_cycle():
1c0034b8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0034bc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0034c0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0034c4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0034c8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0034cc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0034d0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0034d4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0034d8:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0034dc:	00150184 	move	$r4,$r12
1c0034e0:	57ff0bff 	bl	-248(0xfffff08) # 1c0033e8 <start_count>
1c0034e4:	50001400 	b	20(0x14) # 1c0034f8 <delay_cycle+0x40>
1c0034e8:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0034ec:	00150184 	move	$r4,$r12
1c0034f0:	57ff43ff 	bl	-192(0xfffff40) # 1c003430 <stop_count>
1c0034f4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0034f8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0034fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003500:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c0034e8 <delay_cycle+0x30>
1c003504:	03400000 	andi	$r0,$r0,0x0
1c003508:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00350c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003510:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003514:	4c000020 	jirl	$r0,$r1,0

1c003518 <delay_ms>:
delay_ms():
1c003518:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00351c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003520:	29806076 	st.w	$r22,$r3,24(0x18)
1c003524:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003528:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00352c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003530:	1400002c 	lu12i.w	$r12,1(0x1)
1c003534:	03bd018c 	ori	$r12,$r12,0xf40
1c003538:	001c31ac 	mul.w	$r12,$r13,$r12
1c00353c:	00150184 	move	$r4,$r12
1c003540:	57ff7bff 	bl	-136(0xfffff78) # 1c0034b8 <delay_cycle>
1c003544:	03400000 	andi	$r0,$r0,0x0
1c003548:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00354c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003550:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003554:	4c000020 	jirl	$r0,$r1,0

1c003558 <memset>:
memset():
1c003558:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00355c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003560:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003564:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003568:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00356c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c003570:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003574:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003578:	50001c00 	b	28(0x1c) # 1c003594 <memset+0x3c>
1c00357c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003580:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003584:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003588:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00358c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003590:	2900018d 	st.b	$r13,$r12,0
1c003594:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003598:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c00359c:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0035a0:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c00357c <memset+0x24>
1c0035a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035a8:	00150184 	move	$r4,$r12
1c0035ac:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0035b0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0035b4:	4c000020 	jirl	$r0,$r1,0

1c0035b8 <pstrstr>:
pstrstr():
1c0035b8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035bc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0035c0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035c4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0035c8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0035cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0035d4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0035d8:	2800018c 	ld.b	$r12,$r12,0
1c0035dc:	44008580 	bnez	$r12,132(0x84) # 1c003660 <pstrstr+0xa8>
1c0035e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035e4:	50008c00 	b	140(0x8c) # 1c003670 <pstrstr+0xb8>
1c0035e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035ec:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0035f0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0035f4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0035f8:	50001c00 	b	28(0x1c) # 1c003614 <pstrstr+0x5c>
1c0035fc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003600:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003604:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003608:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00360c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003610:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003614:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003618:	2800018c 	ld.b	$r12,$r12,0
1c00361c:	40002580 	beqz	$r12,36(0x24) # 1c003640 <pstrstr+0x88>
1c003620:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003624:	2800018c 	ld.b	$r12,$r12,0
1c003628:	40001980 	beqz	$r12,24(0x18) # 1c003640 <pstrstr+0x88>
1c00362c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003630:	2800018d 	ld.b	$r13,$r12,0
1c003634:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003638:	2800018c 	ld.b	$r12,$r12,0
1c00363c:	5bffc1ac 	beq	$r13,$r12,-64(0x3ffc0) # 1c0035fc <pstrstr+0x44>
1c003640:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003644:	2800018c 	ld.b	$r12,$r12,0
1c003648:	44000d80 	bnez	$r12,12(0xc) # 1c003654 <pstrstr+0x9c>
1c00364c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003650:	50002000 	b	32(0x20) # 1c003670 <pstrstr+0xb8>
1c003654:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003658:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00365c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003660:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003664:	2800018c 	ld.b	$r12,$r12,0
1c003668:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c0035e8 <pstrstr+0x30>
1c00366c:	0015000c 	move	$r12,$r0
1c003670:	00150184 	move	$r4,$r12
1c003674:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003678:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00367c:	4c000020 	jirl	$r0,$r1,0

1c003680 <itoa>:
itoa():
1c003680:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003684:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003688:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00368c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003690:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003694:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003698:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00369c:	4400a180 	bnez	$r12,160(0xa0) # 1c00373c <itoa+0xbc>
1c0036a0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0036a4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0036a8:	0020b1ae 	mod.w	$r14,$r13,$r12
1c0036ac:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0036b4 <itoa+0x34>
1c0036b0:	002a0007 	break	0x7
1c0036b4:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c0036b8:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0036bc:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c0036c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036c4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0036c8:	001031ac 	add.w	$r12,$r13,$r12
1c0036cc:	00005dcd 	ext.w.b	$r13,$r14
1c0036d0:	2900018d 	st.b	$r13,$r12,0
1c0036d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0036dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036e0:	50005c00 	b	92(0x5c) # 1c00373c <itoa+0xbc>
1c0036e4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0036e8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0036ec:	0020b1ae 	mod.w	$r14,$r13,$r12
1c0036f0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0036f8 <itoa+0x78>
1c0036f4:	002a0007 	break	0x7
1c0036f8:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c0036fc:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c003700:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003704:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003708:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00370c:	001031ac 	add.w	$r12,$r13,$r12
1c003710:	00005dcd 	ext.w.b	$r13,$r14
1c003714:	2900018d 	st.b	$r13,$r12,0
1c003718:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00371c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003720:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003724:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c003728:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c00372c:	002035cc 	div.w	$r12,$r14,$r13
1c003730:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c003738 <itoa+0xb8>
1c003734:	002a0007 	break	0x7
1c003738:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00373c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003740:	47ffa59f 	bnez	$r12,-92(0x7fffa4) # 1c0036e4 <itoa+0x64>
1c003744:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003748:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00374c:	001031ac 	add.w	$r12,$r13,$r12
1c003750:	29000180 	st.b	$r0,$r12,0
1c003754:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003758:	50007800 	b	120(0x78) # 1c0037d0 <itoa+0x150>
1c00375c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003760:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003764:	001031ac 	add.w	$r12,$r13,$r12
1c003768:	2a00018c 	ld.bu	$r12,$r12,0
1c00376c:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c003770:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003774:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003778:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00377c:	001131ac 	sub.w	$r12,$r13,$r12
1c003780:	0015018d 	move	$r13,$r12
1c003784:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003788:	0010358d 	add.w	$r13,$r12,$r13
1c00378c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003790:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c003794:	001031cc 	add.w	$r12,$r14,$r12
1c003798:	280001ad 	ld.b	$r13,$r13,0
1c00379c:	2900018d 	st.b	$r13,$r12,0
1c0037a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037a4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0037a8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037ac:	001131ac 	sub.w	$r12,$r13,$r12
1c0037b0:	0015018d 	move	$r13,$r12
1c0037b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0037b8:	0010358c 	add.w	$r12,$r12,$r13
1c0037bc:	2a3f9ecd 	ld.bu	$r13,$r22,-25(0xfe7)
1c0037c0:	2900018d 	st.b	$r13,$r12,0
1c0037c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0037cc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0037d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037d4:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c0037d8:	001031ac 	add.w	$r12,$r13,$r12
1c0037dc:	0048858c 	srai.w	$r12,$r12,0x1
1c0037e0:	0015018d 	move	$r13,$r12
1c0037e4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037e8:	63ff758d 	blt	$r12,$r13,-140(0x3ff74) # 1c00375c <itoa+0xdc>
1c0037ec:	03400000 	andi	$r0,$r0,0x0
1c0037f0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0037f4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0037f8:	4c000020 	jirl	$r0,$r1,0

1c0037fc <strcat>:
strcat():
1c0037fc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003800:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003804:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003808:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00380c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003810:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003814:	40000d80 	beqz	$r12,12(0xc) # 1c003820 <strcat+0x24>
1c003818:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00381c:	44000d80 	bnez	$r12,12(0xc) # 1c003828 <strcat+0x2c>
1c003820:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003824:	50006800 	b	104(0x68) # 1c00388c <strcat+0x90>
1c003828:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00382c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003830:	50001000 	b	16(0x10) # 1c003840 <strcat+0x44>
1c003834:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003838:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00383c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003840:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003844:	2800018c 	ld.b	$r12,$r12,0
1c003848:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c003834 <strcat+0x38>
1c00384c:	50002800 	b	40(0x28) # 1c003874 <strcat+0x78>
1c003850:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003854:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003858:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00385c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003860:	280001ad 	ld.b	$r13,$r13,0
1c003864:	2900018d 	st.b	$r13,$r12,0
1c003868:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00386c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003870:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003874:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003878:	2800018c 	ld.b	$r12,$r12,0
1c00387c:	47ffd59f 	bnez	$r12,-44(0x7fffd4) # 1c003850 <strcat+0x54>
1c003880:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003884:	29000180 	st.b	$r0,$r12,0
1c003888:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00388c:	00150184 	move	$r4,$r12
1c003890:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003894:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003898:	4c000020 	jirl	$r0,$r1,0

1c00389c <strlen>:
strlen():
1c00389c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0038a0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0038a4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0038a8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0038ac:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0038b0:	50001000 	b	16(0x10) # 1c0038c0 <strlen+0x24>
1c0038b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0038bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038c4:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0038c8:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c0038cc:	2800018c 	ld.b	$r12,$r12,0
1c0038d0:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0038b4 <strlen+0x18>
1c0038d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038d8:	00150184 	move	$r4,$r12
1c0038dc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0038e0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0038e4:	4c000020 	jirl	$r0,$r1,0

1c0038e8 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c0038e8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0038ec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0038f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0038f4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0038f8:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0038fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003900:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003904:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003908:	001531ad 	or	$r13,$r13,$r12
1c00390c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003910:	2980318d 	st.w	$r13,$r12,12(0xc)
1c003914:	03400000 	andi	$r0,$r0,0x0
1c003918:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00391c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003920:	4c000020 	jirl	$r0,$r1,0

1c003924 <WDG_getOddValue>:
WDG_getOddValue():
1c003924:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003928:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00392c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003930:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003934:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003938:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00393c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003940:	50003800 	b	56(0x38) # 1c003978 <WDG_getOddValue+0x54>
1c003944:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003948:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00394c:	001731ac 	sll.w	$r12,$r13,$r12
1c003950:	0015018d 	move	$r13,$r12
1c003954:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003958:	0014b1ac 	and	$r12,$r13,$r12
1c00395c:	40001180 	beqz	$r12,16(0x10) # 1c00396c <WDG_getOddValue+0x48>
1c003960:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003964:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003968:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00396c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003970:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003974:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003978:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00397c:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003980:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c003944 <WDG_getOddValue+0x20>
1c003984:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003988:	0340058c 	andi	$r12,$r12,0x1
1c00398c:	44000d80 	bnez	$r12,12(0xc) # 1c003998 <WDG_getOddValue+0x74>
1c003990:	1400010c 	lu12i.w	$r12,8(0x8)
1c003994:	50000800 	b	8(0x8) # 1c00399c <WDG_getOddValue+0x78>
1c003998:	0015000c 	move	$r12,$r0
1c00399c:	00150184 	move	$r4,$r12
1c0039a0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0039a4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0039a8:	4c000020 	jirl	$r0,$r1,0

1c0039ac <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c0039ac:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0039b0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0039b4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0039b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0039bc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0039c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0039c4:	140000ec 	lu12i.w	$r12,7(0x7)
1c0039c8:	03bffd8c 	ori	$r12,$r12,0xfff
1c0039cc:	0014b1ac 	and	$r12,$r13,$r12
1c0039d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0039d4:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0039d8:	57ff4fff 	bl	-180(0xfffff4c) # 1c003924 <WDG_getOddValue>
1c0039dc:	0015008c 	move	$r12,$r4
1c0039e0:	0015018d 	move	$r13,$r12
1c0039e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039e8:	0015358c 	or	$r12,$r12,$r13
1c0039ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0039f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0039f4:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0039f8:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0039fc:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003a00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a04:	0014300c 	nor	$r12,$r0,$r12
1c003a08:	0040c18c 	slli.w	$r12,$r12,0x10
1c003a0c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a10:	001531ac 	or	$r12,$r13,$r12
1c003a14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a1c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a20:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c003a24:	03400000 	andi	$r0,$r0,0x0
1c003a28:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003a2c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003a30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a34:	4c000020 	jirl	$r0,$r1,0

1c003a38 <WDG_DogFeed>:
WDG_DogFeed():
1c003a38:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003a3c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003a40:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003a44:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a48:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003a4c:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003a50:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003a54:	03400000 	andi	$r0,$r0,0x0
1c003a58:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003a5c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003a60:	4c000020 	jirl	$r0,$r1,0

1c003a64 <WdgInit>:
WdgInit():
1c003a64:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003a68:	29803061 	st.w	$r1,$r3,12(0xc)
1c003a6c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003a70:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003a74:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003a78:	03bffd84 	ori	$r4,$r12,0xfff
1c003a7c:	57ff33ff 	bl	-208(0xfffff30) # 1c0039ac <WDG_SetWatchDog>
1c003a80:	03400000 	andi	$r0,$r0,0x0
1c003a84:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003a88:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003a8c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003a90:	4c000020 	jirl	$r0,$r1,0

1c003a94 <Adc_powerOn>:
Adc_powerOn():
1c003a94:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a98:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003a9c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003aa0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003aa4:	57f62fff 	bl	-2516(0xffff62c) # 1c0030d0 <IsGlobalIntOpen>
1c003aa8:	0015008c 	move	$r12,$r4
1c003aac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003ab0:	57f65bff 	bl	-2472(0xffff658) # 1c003108 <DisableInt>
1c003ab4:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003ab8:	288001ac 	ld.w	$r12,$r13,0
1c003abc:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c003ac0:	007041cc 	bstrins.w	$r12,$r14,0x10,0x10
1c003ac4:	298001ac 	st.w	$r12,$r13,0
1c003ac8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003acc:	40000980 	beqz	$r12,8(0x8) # 1c003ad4 <Adc_powerOn+0x40>
1c003ad0:	57f65fff 	bl	-2468(0xffff65c) # 1c00312c <EnableInt>
1c003ad4:	03400000 	andi	$r0,$r0,0x0
1c003ad8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003adc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003ae0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ae4:	4c000020 	jirl	$r0,$r1,0

1c003ae8 <Adc_open>:
Adc_open():
1c003ae8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003aec:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003af0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003af4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003af8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003afc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003b00:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003b04:	001731ac 	sll.w	$r12,$r13,$r12
1c003b08:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b10:	0340058c 	andi	$r12,$r12,0x1
1c003b14:	40003580 	beqz	$r12,52(0x34) # 1c003b48 <Adc_open+0x60>
1c003b18:	57f5bbff 	bl	-2632(0xffff5b8) # 1c0030d0 <IsGlobalIntOpen>
1c003b1c:	0015008c 	move	$r12,$r4
1c003b20:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003b24:	57f5e7ff 	bl	-2588(0xffff5e4) # 1c003108 <DisableInt>
1c003b28:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003b2c:	288001ac 	ld.w	$r12,$r13,0
1c003b30:	0071440c 	bstrins.w	$r12,$r0,0x11,0x11
1c003b34:	298001ac 	st.w	$r12,$r13,0
1c003b38:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c003b3c:	40004980 	beqz	$r12,72(0x48) # 1c003b84 <Adc_open+0x9c>
1c003b40:	57f5efff 	bl	-2580(0xffff5ec) # 1c00312c <EnableInt>
1c003b44:	50004000 	b	64(0x40) # 1c003b84 <Adc_open+0x9c>
1c003b48:	57f58bff 	bl	-2680(0xffff588) # 1c0030d0 <IsGlobalIntOpen>
1c003b4c:	0015008c 	move	$r12,$r4
1c003b50:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c003b54:	57f5b7ff 	bl	-2636(0xffff5b4) # 1c003108 <DisableInt>
1c003b58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b5c:	0044918c 	srli.w	$r12,$r12,0x4
1c003b60:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003b64:	03403d8c 	andi	$r12,$r12,0xf
1c003b68:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003b6c:	288001ac 	ld.w	$r12,$r13,0
1c003b70:	007751cc 	bstrins.w	$r12,$r14,0x17,0x14
1c003b74:	298001ac 	st.w	$r12,$r13,0
1c003b78:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c003b7c:	40000980 	beqz	$r12,8(0x8) # 1c003b84 <Adc_open+0x9c>
1c003b80:	57f5afff 	bl	-2644(0xffff5ac) # 1c00312c <EnableInt>
1c003b84:	03400000 	andi	$r0,$r0,0x0
1c003b88:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003b8c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003b90:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003b94:	4c000020 	jirl	$r0,$r1,0

1c003b98 <Adc_Measure>:
Adc_Measure():
1c003b98:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003b9c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003ba0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003ba4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003ba8:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c003bac:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c003bb0:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c003bb4:	50008400 	b	132(0x84) # 1c003c38 <Adc_Measure+0xa0>
1c003bb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003bbc:	0381b18c 	ori	$r12,$r12,0x6c
1c003bc0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003bc4:	038401ad 	ori	$r13,$r13,0x100
1c003bc8:	2980018d 	st.w	$r13,$r12,0
1c003bcc:	03400000 	andi	$r0,$r0,0x0
1c003bd0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003bd4:	0381b18c 	ori	$r12,$r12,0x6c
1c003bd8:	2880018c 	ld.w	$r12,$r12,0
1c003bdc:	0344018c 	andi	$r12,$r12,0x100
1c003be0:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c003bd0 <Adc_Measure+0x38>
1c003be4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003be8:	0381c18c 	ori	$r12,$r12,0x70
1c003bec:	2880018c 	ld.w	$r12,$r12,0
1c003bf0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003bf4:	037ffd8c 	andi	$r12,$r12,0xfff
1c003bf8:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c003bfc:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003c00:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003c04:	6c00298d 	bgeu	$r12,$r13,40(0x28) # 1c003c2c <Adc_Measure+0x94>
1c003c08:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003c0c:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003c10:	001031ac 	add.w	$r12,$r13,$r12
1c003c14:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c003c18:	2a7fa2cd 	ld.hu	$r13,$r22,-24(0xfe8)
1c003c1c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003c20:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c003c2c <Adc_Measure+0x94>
1c003c24:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003c28:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c003c2c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003c30:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003c34:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003c38:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003c3c:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c003c40:	6fff798d 	bgeu	$r12,$r13,-136(0x3ff78) # 1c003bb8 <Adc_Measure+0x20>
1c003c44:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003c48:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003c4c:	001131ad 	sub.w	$r13,$r13,$r12
1c003c50:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003c54:	002031ae 	div.w	$r14,$r13,$r12
1c003c58:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003c60 <Adc_Measure+0xc8>
1c003c5c:	002a0007 	break	0x7
1c003c60:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c003c64:	00150184 	move	$r4,$r12
1c003c68:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003c6c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003c70:	4c000020 	jirl	$r0,$r1,0

1c003c74 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003c74:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003c78:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003c7c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003c80:	0015008c 	move	$r12,$r4
1c003c84:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003c88:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003c8c:	0040898c 	slli.w	$r12,$r12,0x2
1c003c90:	0015018d 	move	$r13,$r12
1c003c94:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003c98:	0381018c 	ori	$r12,$r12,0x40
1c003c9c:	001031ac 	add.w	$r12,$r13,$r12
1c003ca0:	2880018c 	ld.w	$r12,$r12,0
1c003ca4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ca8:	037ffd8c 	andi	$r12,$r12,0xfff
1c003cac:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003cb0:	00150184 	move	$r4,$r12
1c003cb4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003cb8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003cbc:	4c000020 	jirl	$r0,$r1,0

1c003cc0 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003cc0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003cc4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003cc8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003ccc:	0015008c 	move	$r12,$r4
1c003cd0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003cd4:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003cd8:	0040898c 	slli.w	$r12,$r12,0x2
1c003cdc:	0015018d 	move	$r13,$r12
1c003ce0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003ce4:	0382018c 	ori	$r12,$r12,0x80
1c003ce8:	001031ac 	add.w	$r12,$r13,$r12
1c003cec:	2880018c 	ld.w	$r12,$r12,0
1c003cf0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003cf4:	037ffd8c 	andi	$r12,$r12,0xfff
1c003cf8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003cfc:	00150184 	move	$r4,$r12
1c003d00:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003d04:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003d08:	4c000020 	jirl	$r0,$r1,0

1c003d0c <Printf_KeyChannel>:
Printf_KeyChannel():
1c003d0c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003d10:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003d14:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003d18:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003d1c:	0015008c 	move	$r12,$r4
1c003d20:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003d24:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003d28:	50003400 	b	52(0x34) # 1c003d5c <Printf_KeyChannel+0x50>
1c003d2c:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003d30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d34:	001831ac 	sra.w	$r12,$r13,$r12
1c003d38:	0340058c 	andi	$r12,$r12,0x1
1c003d3c:	40001580 	beqz	$r12,20(0x14) # 1c003d50 <Printf_KeyChannel+0x44>
1c003d40:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003d44:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d48:	0291e084 	addi.w	$r4,$r4,1144(0x478)
1c003d4c:	57df63ff 	bl	-8352(0xfffdf60) # 1c001cac <myprintf>
1c003d50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d54:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003d58:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d5c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d60:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003d64:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003d2c <Printf_KeyChannel+0x20>
1c003d68:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d6c:	02916084 	addi.w	$r4,$r4,1112(0x458)
1c003d70:	57df3fff 	bl	-8388(0xfffdf3c) # 1c001cac <myprintf>
1c003d74:	03400000 	andi	$r0,$r0,0x0
1c003d78:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003d7c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003d80:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003d84:	4c000020 	jirl	$r0,$r1,0

1c003d88 <Printf_KeyType>:
Printf_KeyType():
1c003d88:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003d8c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003d90:	29806076 	st.w	$r22,$r3,24(0x18)
1c003d94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003d98:	0015008c 	move	$r12,$r4
1c003d9c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003da0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003da4:	0340058c 	andi	$r12,$r12,0x1
1c003da8:	40001180 	beqz	$r12,16(0x10) # 1c003db8 <Printf_KeyType+0x30>
1c003dac:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003db0:	02906084 	addi.w	$r4,$r4,1048(0x418)
1c003db4:	57defbff 	bl	-8456(0xfffdef8) # 1c001cac <myprintf>
1c003db8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003dbc:	0340098c 	andi	$r12,$r12,0x2
1c003dc0:	40001180 	beqz	$r12,16(0x10) # 1c003dd0 <Printf_KeyType+0x48>
1c003dc4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003dc8:	02902084 	addi.w	$r4,$r4,1032(0x408)
1c003dcc:	57dee3ff 	bl	-8480(0xfffdee0) # 1c001cac <myprintf>
1c003dd0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003dd4:	0340118c 	andi	$r12,$r12,0x4
1c003dd8:	40001180 	beqz	$r12,16(0x10) # 1c003de8 <Printf_KeyType+0x60>
1c003ddc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003de0:	028fe084 	addi.w	$r4,$r4,1016(0x3f8)
1c003de4:	57decbff 	bl	-8504(0xfffdec8) # 1c001cac <myprintf>
1c003de8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003dec:	0340218c 	andi	$r12,$r12,0x8
1c003df0:	40001180 	beqz	$r12,16(0x10) # 1c003e00 <Printf_KeyType+0x78>
1c003df4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003df8:	028fb084 	addi.w	$r4,$r4,1004(0x3ec)
1c003dfc:	57deb3ff 	bl	-8528(0xfffdeb0) # 1c001cac <myprintf>
1c003e00:	03400000 	andi	$r0,$r0,0x0
1c003e04:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003e08:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003e0c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003e10:	4c000020 	jirl	$r0,$r1,0

1c003e14 <Printf_KeyVal>:
Printf_KeyVal():
1c003e14:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003e18:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003e1c:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003e20:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003e24:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003e28:	5000d800 	b	216(0xd8) # 1c003f00 <Printf_KeyVal+0xec>
1c003e2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e30:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003e34:	00150184 	move	$r4,$r12
1c003e38:	57fe8bff 	bl	-376(0xffffe88) # 1c003cc0 <TOUCH_GetCountValue>
1c003e3c:	0015008c 	move	$r12,$r4
1c003e40:	0015018d 	move	$r13,$r12
1c003e44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e48:	0040898c 	slli.w	$r12,$r12,0x2
1c003e4c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003e50:	001031cc 	add.w	$r12,$r14,$r12
1c003e54:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003e58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e5c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003e60:	00150184 	move	$r4,$r12
1c003e64:	57fe13ff 	bl	-496(0xffffe10) # 1c003c74 <TOUCH_GetBaseVal>
1c003e68:	0015008c 	move	$r12,$r4
1c003e6c:	0015018d 	move	$r13,$r12
1c003e70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e74:	0040898c 	slli.w	$r12,$r12,0x2
1c003e78:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003e7c:	001031cc 	add.w	$r12,$r14,$r12
1c003e80:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003e84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e88:	0040898c 	slli.w	$r12,$r12,0x2
1c003e8c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e90:	001031ac 	add.w	$r12,$r13,$r12
1c003e94:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003e98:	40004980 	beqz	$r12,72(0x48) # 1c003ee0 <Printf_KeyVal+0xcc>
1c003e9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ea0:	0040898c 	slli.w	$r12,$r12,0x2
1c003ea4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ea8:	001031ac 	add.w	$r12,$r13,$r12
1c003eac:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003eb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003eb4:	0040898c 	slli.w	$r12,$r12,0x2
1c003eb8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003ebc:	001031cc 	add.w	$r12,$r14,$r12
1c003ec0:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003ec4:	001131ad 	sub.w	$r13,$r13,$r12
1c003ec8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ecc:	0040898c 	slli.w	$r12,$r12,0x2
1c003ed0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003ed4:	001031cc 	add.w	$r12,$r14,$r12
1c003ed8:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003edc:	50001800 	b	24(0x18) # 1c003ef4 <Printf_KeyVal+0xe0>
1c003ee0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ee4:	0040898c 	slli.w	$r12,$r12,0x2
1c003ee8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003eec:	001031ac 	add.w	$r12,$r13,$r12
1c003ef0:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003ef4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ef8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003efc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003f00:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003f04:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003f08:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003e2c <Printf_KeyVal+0x18>
1c003f0c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f10:	028b8084 	addi.w	$r4,$r4,736(0x2e0)
1c003f14:	57dd9bff 	bl	-8808(0xfffdd98) # 1c001cac <myprintf>
1c003f18:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f1c:	028bf084 	addi.w	$r4,$r4,764(0x2fc)
1c003f20:	57dd8fff 	bl	-8820(0xfffdd8c) # 1c001cac <myprintf>
1c003f24:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003f28:	50003400 	b	52(0x34) # 1c003f5c <Printf_KeyVal+0x148>
1c003f2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f30:	0040898c 	slli.w	$r12,$r12,0x2
1c003f34:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003f38:	001031ac 	add.w	$r12,$r13,$r12
1c003f3c:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003f40:	00150185 	move	$r5,$r12
1c003f44:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f48:	028b6084 	addi.w	$r4,$r4,728(0x2d8)
1c003f4c:	57dd63ff 	bl	-8864(0xfffdd60) # 1c001cac <myprintf>
1c003f50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f54:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003f58:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003f5c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003f60:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003f64:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003f2c <Printf_KeyVal+0x118>
1c003f68:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f6c:	028af084 	addi.w	$r4,$r4,700(0x2bc)
1c003f70:	57dd3fff 	bl	-8900(0xfffdd3c) # 1c001cac <myprintf>
1c003f74:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003f78:	50003400 	b	52(0x34) # 1c003fac <Printf_KeyVal+0x198>
1c003f7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f80:	0040898c 	slli.w	$r12,$r12,0x2
1c003f84:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003f88:	001031ac 	add.w	$r12,$r13,$r12
1c003f8c:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003f90:	00150185 	move	$r5,$r12
1c003f94:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f98:	028a2084 	addi.w	$r4,$r4,648(0x288)
1c003f9c:	57dd13ff 	bl	-8944(0xfffdd10) # 1c001cac <myprintf>
1c003fa0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fa4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003fa8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003fac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003fb0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003fb4:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003f7c <Printf_KeyVal+0x168>
1c003fb8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003fbc:	0289e084 	addi.w	$r4,$r4,632(0x278)
1c003fc0:	57dcefff 	bl	-8980(0xfffdcec) # 1c001cac <myprintf>
1c003fc4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003fc8:	50007400 	b	116(0x74) # 1c00403c <Printf_KeyVal+0x228>
1c003fcc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fd0:	0040898c 	slli.w	$r12,$r12,0x2
1c003fd4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003fd8:	001031ac 	add.w	$r12,$r13,$r12
1c003fdc:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003fe0:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c00400c <Printf_KeyVal+0x1f8>
1c003fe4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fe8:	0040898c 	slli.w	$r12,$r12,0x2
1c003fec:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ff0:	001031ac 	add.w	$r12,$r13,$r12
1c003ff4:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003ff8:	00150185 	move	$r5,$r12
1c003ffc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004000:	02890084 	addi.w	$r4,$r4,576(0x240)
1c004004:	57dcabff 	bl	-9048(0xfffdca8) # 1c001cac <myprintf>
1c004008:	50002800 	b	40(0x28) # 1c004030 <Printf_KeyVal+0x21c>
1c00400c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004010:	0040898c 	slli.w	$r12,$r12,0x2
1c004014:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004018:	001031ac 	add.w	$r12,$r13,$r12
1c00401c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c004020:	00150185 	move	$r5,$r12
1c004024:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004028:	02888084 	addi.w	$r4,$r4,544(0x220)
1c00402c:	57dc83ff 	bl	-9088(0xfffdc80) # 1c001cac <myprintf>
1c004030:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004034:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004038:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00403c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004040:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004044:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003fcc <Printf_KeyVal+0x1b8>
1c004048:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00404c:	0285e084 	addi.w	$r4,$r4,376(0x178)
1c004050:	57dc5fff 	bl	-9124(0xfffdc5c) # 1c001cac <myprintf>
1c004054:	03400000 	andi	$r0,$r0,0x0
1c004058:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c00405c:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c004060:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c004064:	4c000020 	jirl	$r0,$r1,0

1c004068 <TIM_Init>:
TIM_Init():
1c004068:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00406c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004070:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004074:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004078:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00407c:	29800180 	st.w	$r0,$r12,0
1c004080:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004084:	0380118c 	ori	$r12,$r12,0x4
1c004088:	29800180 	st.w	$r0,$r12,0
1c00408c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004090:	0380218c 	ori	$r12,$r12,0x8
1c004094:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004098:	288011ad 	ld.w	$r13,$r13,4(0x4)
1c00409c:	2980018d 	st.w	$r13,$r12,0
1c0040a0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040a4:	0380318c 	ori	$r12,$r12,0xc
1c0040a8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0040ac:	288021ad 	ld.w	$r13,$r13,8(0x8)
1c0040b0:	2980018d 	st.w	$r13,$r12,0
1c0040b4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040b8:	2880018e 	ld.w	$r14,$r12,0
1c0040bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0040c0:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c0040c4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040c8:	001535cd 	or	$r13,$r14,$r13
1c0040cc:	2980018d 	st.w	$r13,$r12,0
1c0040d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0040d4:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c0040d8:	40002180 	beqz	$r12,32(0x20) # 1c0040f8 <TIM_Init+0x90>
1c0040dc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0040e0:	2a00018c 	ld.bu	$r12,$r12,0
1c0040e4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0040e8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0040ec:	038005ad 	ori	$r13,$r13,0x1
1c0040f0:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0040f4:	2900018d 	st.b	$r13,$r12,0
1c0040f8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040fc:	2880018e 	ld.w	$r14,$r12,0
1c004100:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004104:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c004108:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00410c:	001535cd 	or	$r13,$r14,$r13
1c004110:	2980018d 	st.w	$r13,$r12,0
1c004114:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004118:	2880018e 	ld.w	$r14,$r12,0
1c00411c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004120:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c004124:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004128:	001535cd 	or	$r13,$r14,$r13
1c00412c:	2980018d 	st.w	$r13,$r12,0
1c004130:	03400000 	andi	$r0,$r0,0x0
1c004134:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004138:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00413c:	4c000020 	jirl	$r0,$r1,0

1c004140 <TIM_StructInit>:
TIM_StructInit():
1c004140:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004144:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004148:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00414c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004150:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004154:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c004158:	038801ad 	ori	$r13,$r13,0x200
1c00415c:	2980018d 	st.w	$r13,$r12,0
1c004160:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004164:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004168:	2980618d 	st.w	$r13,$r12,24(0x18)
1c00416c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004170:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c004174:	2980518d 	st.w	$r13,$r12,20(0x14)
1c004178:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00417c:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004180:	2980418d 	st.w	$r13,$r12,16(0x10)
1c004184:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004188:	1400002d 	lu12i.w	$r13,1(0x1)
1c00418c:	03bcfdad 	ori	$r13,$r13,0xf3f
1c004190:	2980118d 	st.w	$r13,$r12,4(0x4)
1c004194:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004198:	29802180 	st.w	$r0,$r12,8(0x8)
1c00419c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041a0:	29803180 	st.w	$r0,$r12,12(0xc)
1c0041a4:	03400000 	andi	$r0,$r0,0x0
1c0041a8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0041ac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0041b0:	4c000020 	jirl	$r0,$r1,0

1c0041b4 <timer_init>:
timer_init():
1c0041b4:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0041b8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0041bc:	2980e076 	st.w	$r22,$r3,56(0x38)
1c0041c0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0041c4:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0041c8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0041cc:	00150184 	move	$r4,$r12
1c0041d0:	57ff73ff 	bl	-144(0xfffff70) # 1c004140 <TIM_StructInit>
1c0041d4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c0041d8:	1400002c 	lu12i.w	$r12,1(0x1)
1c0041dc:	03bd018c 	ori	$r12,$r12,0xf40
1c0041e0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0041e4:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0041e8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0041ec:	00150184 	move	$r4,$r12
1c0041f0:	57fe7bff 	bl	-392(0xffffe78) # 1c004068 <TIM_Init>
1c0041f4:	03400000 	andi	$r0,$r0,0x0
1c0041f8:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0041fc:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c004200:	02810063 	addi.w	$r3,$r3,64(0x40)
1c004204:	4c000020 	jirl	$r0,$r1,0

1c004208 <TIM_GetITStatus>:
TIM_GetITStatus():
1c004208:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00420c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c004210:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004214:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004218:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00421c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004220:	2880018d 	ld.w	$r13,$r12,0
1c004224:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004228:	0014b1ac 	and	$r12,$r13,$r12
1c00422c:	40001180 	beqz	$r12,16(0x10) # 1c00423c <TIM_GetITStatus+0x34>
1c004230:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004234:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004238:	50000800 	b	8(0x8) # 1c004240 <TIM_GetITStatus+0x38>
1c00423c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004240:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004244:	00150184 	move	$r4,$r12
1c004248:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00424c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004250:	4c000020 	jirl	$r0,$r1,0

1c004254 <TIM_ClearIT>:
TIM_ClearIT():
1c004254:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004258:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00425c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004260:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004264:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004268:	2880018e 	ld.w	$r14,$r12,0
1c00426c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004270:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004274:	001535cd 	or	$r13,$r14,$r13
1c004278:	2980018d 	st.w	$r13,$r12,0
1c00427c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004280:	03800d8c 	ori	$r12,$r12,0x3
1c004284:	2a00018c 	ld.bu	$r12,$r12,0
1c004288:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00428c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004290:	03800d8c 	ori	$r12,$r12,0x3
1c004294:	038005ad 	ori	$r13,$r13,0x1
1c004298:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00429c:	2900018d 	st.b	$r13,$r12,0
1c0042a0:	03400000 	andi	$r0,$r0,0x0
1c0042a4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0042a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0042ac:	4c000020 	jirl	$r0,$r1,0

1c0042b0 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c0042b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042c0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0042c4:	028410c6 	addi.w	$r6,$r6,260(0x104)
1c0042c8:	02805c05 	addi.w	$r5,$r0,23(0x17)
1c0042cc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0042d0:	02be0084 	addi.w	$r4,$r4,-128(0xf80)
1c0042d4:	57d9dbff 	bl	-9768(0xfffd9d8) # 1c001cac <myprintf>
1c0042d8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0042dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042e0:	03808184 	ori	$r4,$r12,0x20
1c0042e4:	57f607ff 	bl	-2556(0xffff604) # 1c0038e8 <EXTI_ClearITPendingBit>
1c0042e8:	03400000 	andi	$r0,$r0,0x0
1c0042ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042f8:	4c000020 	jirl	$r0,$r1,0

1c0042fc <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c0042fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004300:	29803061 	st.w	$r1,$r3,12(0xc)
1c004304:	29802076 	st.w	$r22,$r3,8(0x8)
1c004308:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00430c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004310:	028340c6 	addi.w	$r6,$r6,208(0xd0)
1c004314:	02807005 	addi.w	$r5,$r0,28(0x1c)
1c004318:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00431c:	02bcd084 	addi.w	$r4,$r4,-204(0xf34)
1c004320:	57d98fff 	bl	-9844(0xfffd98c) # 1c001cac <myprintf>
1c004324:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004328:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00432c:	03808184 	ori	$r4,$r12,0x20
1c004330:	57f5bbff 	bl	-2632(0xffff5b8) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004334:	03400000 	andi	$r0,$r0,0x0
1c004338:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00433c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004340:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004344:	4c000020 	jirl	$r0,$r1,0

1c004348 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c004348:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00434c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004350:	29802076 	st.w	$r22,$r3,8(0x8)
1c004354:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004358:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00435c:	028270c6 	addi.w	$r6,$r6,156(0x9c)
1c004360:	02808405 	addi.w	$r5,$r0,33(0x21)
1c004364:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004368:	02bba084 	addi.w	$r4,$r4,-280(0xee8)
1c00436c:	57d943ff 	bl	-9920(0xfffd940) # 1c001cac <myprintf>
1c004370:	02801005 	addi.w	$r5,$r0,4(0x4)
1c004374:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004378:	03808184 	ori	$r4,$r12,0x20
1c00437c:	57f56fff 	bl	-2708(0xffff56c) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004380:	03400000 	andi	$r0,$r0,0x0
1c004384:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004388:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00438c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004390:	4c000020 	jirl	$r0,$r1,0

1c004394 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c004394:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004398:	29803061 	st.w	$r1,$r3,12(0xc)
1c00439c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043a4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043a8:	0281a0c6 	addi.w	$r6,$r6,104(0x68)
1c0043ac:	02809805 	addi.w	$r5,$r0,38(0x26)
1c0043b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043b4:	02ba7084 	addi.w	$r4,$r4,-356(0xe9c)
1c0043b8:	57d8f7ff 	bl	-9996(0xfffd8f4) # 1c001cac <myprintf>
1c0043bc:	02802005 	addi.w	$r5,$r0,8(0x8)
1c0043c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043c4:	03808184 	ori	$r4,$r12,0x20
1c0043c8:	57f523ff 	bl	-2784(0xffff520) # 1c0038e8 <EXTI_ClearITPendingBit>
1c0043cc:	03400000 	andi	$r0,$r0,0x0
1c0043d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043dc:	4c000020 	jirl	$r0,$r1,0

1c0043e0 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c0043e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043f0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043f4:	0280d0c6 	addi.w	$r6,$r6,52(0x34)
1c0043f8:	0280ac05 	addi.w	$r5,$r0,43(0x2b)
1c0043fc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004400:	02b94084 	addi.w	$r4,$r4,-432(0xe50)
1c004404:	57d8abff 	bl	-10072(0xfffd8a8) # 1c001cac <myprintf>
1c004408:	02804005 	addi.w	$r5,$r0,16(0x10)
1c00440c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004410:	03808184 	ori	$r4,$r12,0x20
1c004414:	57f4d7ff 	bl	-2860(0xffff4d4) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004418:	03400000 	andi	$r0,$r0,0x0
1c00441c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004420:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004424:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004428:	4c000020 	jirl	$r0,$r1,0

1c00442c <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c00442c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004430:	29803061 	st.w	$r1,$r3,12(0xc)
1c004434:	29802076 	st.w	$r22,$r3,8(0x8)
1c004438:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00443c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004440:	028000c6 	addi.w	$r6,$r6,0
1c004444:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c004448:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00444c:	02b81084 	addi.w	$r4,$r4,-508(0xe04)
1c004450:	57d85fff 	bl	-10148(0xfffd85c) # 1c001cac <myprintf>
1c004454:	02808005 	addi.w	$r5,$r0,32(0x20)
1c004458:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00445c:	03808184 	ori	$r4,$r12,0x20
1c004460:	57f48bff 	bl	-2936(0xffff488) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004464:	03400000 	andi	$r0,$r0,0x0
1c004468:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00446c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004470:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004474:	4c000020 	jirl	$r0,$r1,0

1c004478 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c004478:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00447c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004480:	29802076 	st.w	$r22,$r3,8(0x8)
1c004484:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004488:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00448c:	02bf30c6 	addi.w	$r6,$r6,-52(0xfcc)
1c004490:	0280d405 	addi.w	$r5,$r0,53(0x35)
1c004494:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004498:	02b6e084 	addi.w	$r4,$r4,-584(0xdb8)
1c00449c:	57d813ff 	bl	-10224(0xfffd810) # 1c001cac <myprintf>
1c0044a0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0044a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044a8:	03808184 	ori	$r4,$r12,0x20
1c0044ac:	57f43fff 	bl	-3012(0xffff43c) # 1c0038e8 <EXTI_ClearITPendingBit>
1c0044b0:	03400000 	andi	$r0,$r0,0x0
1c0044b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044c0:	4c000020 	jirl	$r0,$r1,0

1c0044c4 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c0044c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044d4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044d8:	02be60c6 	addi.w	$r6,$r6,-104(0xf98)
1c0044dc:	0280e805 	addi.w	$r5,$r0,58(0x3a)
1c0044e0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0044e4:	02b5b084 	addi.w	$r4,$r4,-660(0xd6c)
1c0044e8:	57d7c7ff 	bl	-10300(0xfffd7c4) # 1c001cac <myprintf>
1c0044ec:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0044f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044f4:	03808184 	ori	$r4,$r12,0x20
1c0044f8:	57f3f3ff 	bl	-3088(0xffff3f0) # 1c0038e8 <EXTI_ClearITPendingBit>
1c0044fc:	03400000 	andi	$r0,$r0,0x0
1c004500:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004504:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004508:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00450c:	4c000020 	jirl	$r0,$r1,0

1c004510 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c004510:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004514:	29803061 	st.w	$r1,$r3,12(0xc)
1c004518:	29802076 	st.w	$r22,$r3,8(0x8)
1c00451c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004520:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004524:	02bd90c6 	addi.w	$r6,$r6,-156(0xf64)
1c004528:	0280fc05 	addi.w	$r5,$r0,63(0x3f)
1c00452c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004530:	02b48084 	addi.w	$r4,$r4,-736(0xd20)
1c004534:	57d77bff 	bl	-10376(0xfffd778) # 1c001cac <myprintf>
1c004538:	02840005 	addi.w	$r5,$r0,256(0x100)
1c00453c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004540:	03808184 	ori	$r4,$r12,0x20
1c004544:	57f3a7ff 	bl	-3164(0xffff3a4) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004548:	03400000 	andi	$r0,$r0,0x0
1c00454c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004550:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004554:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004558:	4c000020 	jirl	$r0,$r1,0

1c00455c <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c00455c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004560:	29803061 	st.w	$r1,$r3,12(0xc)
1c004564:	29802076 	st.w	$r22,$r3,8(0x8)
1c004568:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00456c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004570:	02bcc0c6 	addi.w	$r6,$r6,-208(0xf30)
1c004574:	02811005 	addi.w	$r5,$r0,68(0x44)
1c004578:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00457c:	02b35084 	addi.w	$r4,$r4,-812(0xcd4)
1c004580:	57d72fff 	bl	-10452(0xfffd72c) # 1c001cac <myprintf>
1c004584:	02880005 	addi.w	$r5,$r0,512(0x200)
1c004588:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00458c:	03808184 	ori	$r4,$r12,0x20
1c004590:	57f35bff 	bl	-3240(0xffff358) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004594:	03400000 	andi	$r0,$r0,0x0
1c004598:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00459c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045a4:	4c000020 	jirl	$r0,$r1,0

1c0045a8 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c0045a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045b8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045bc:	02bbf0c6 	addi.w	$r6,$r6,-260(0xefc)
1c0045c0:	02812405 	addi.w	$r5,$r0,73(0x49)
1c0045c4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0045c8:	02b22084 	addi.w	$r4,$r4,-888(0xc88)
1c0045cc:	57d6e3ff 	bl	-10528(0xfffd6e0) # 1c001cac <myprintf>
1c0045d0:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c0045d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045d8:	03808184 	ori	$r4,$r12,0x20
1c0045dc:	57f30fff 	bl	-3316(0xffff30c) # 1c0038e8 <EXTI_ClearITPendingBit>
1c0045e0:	03400000 	andi	$r0,$r0,0x0
1c0045e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045f0:	4c000020 	jirl	$r0,$r1,0

1c0045f4 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c0045f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004600:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004604:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004608:	02bb20c6 	addi.w	$r6,$r6,-312(0xec8)
1c00460c:	02813805 	addi.w	$r5,$r0,78(0x4e)
1c004610:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004614:	02b0f084 	addi.w	$r4,$r4,-964(0xc3c)
1c004618:	57d697ff 	bl	-10604(0xfffd694) # 1c001cac <myprintf>
1c00461c:	03a00005 	ori	$r5,$r0,0x800
1c004620:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004624:	03808184 	ori	$r4,$r12,0x20
1c004628:	57f2c3ff 	bl	-3392(0xffff2c0) # 1c0038e8 <EXTI_ClearITPendingBit>
1c00462c:	03400000 	andi	$r0,$r0,0x0
1c004630:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004634:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004638:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00463c:	4c000020 	jirl	$r0,$r1,0

1c004640 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c004640:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004644:	29803061 	st.w	$r1,$r3,12(0xc)
1c004648:	29802076 	st.w	$r22,$r3,8(0x8)
1c00464c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004650:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004654:	02ba50c6 	addi.w	$r6,$r6,-364(0xe94)
1c004658:	02814c05 	addi.w	$r5,$r0,83(0x53)
1c00465c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004660:	02afc084 	addi.w	$r4,$r4,-1040(0xbf0)
1c004664:	57d64bff 	bl	-10680(0xfffd648) # 1c001cac <myprintf>
1c004668:	14000025 	lu12i.w	$r5,1(0x1)
1c00466c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004670:	03808184 	ori	$r4,$r12,0x20
1c004674:	57f277ff 	bl	-3468(0xffff274) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004678:	03400000 	andi	$r0,$r0,0x0
1c00467c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004680:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004684:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004688:	4c000020 	jirl	$r0,$r1,0

1c00468c <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c00468c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004690:	29803061 	st.w	$r1,$r3,12(0xc)
1c004694:	29802076 	st.w	$r22,$r3,8(0x8)
1c004698:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00469c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0046a0:	02b980c6 	addi.w	$r6,$r6,-416(0xe60)
1c0046a4:	02816005 	addi.w	$r5,$r0,88(0x58)
1c0046a8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046ac:	02ae9084 	addi.w	$r4,$r4,-1116(0xba4)
1c0046b0:	57d5ffff 	bl	-10756(0xfffd5fc) # 1c001cac <myprintf>
1c0046b4:	14000045 	lu12i.w	$r5,2(0x2)
1c0046b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046bc:	03808184 	ori	$r4,$r12,0x20
1c0046c0:	57f22bff 	bl	-3544(0xffff228) # 1c0038e8 <EXTI_ClearITPendingBit>
1c0046c4:	03400000 	andi	$r0,$r0,0x0
1c0046c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046d4:	4c000020 	jirl	$r0,$r1,0

1c0046d8 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c0046d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046e8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0046ec:	02b8b0c6 	addi.w	$r6,$r6,-468(0xe2c)
1c0046f0:	02817405 	addi.w	$r5,$r0,93(0x5d)
1c0046f4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046f8:	02ad6084 	addi.w	$r4,$r4,-1192(0xb58)
1c0046fc:	57d5b3ff 	bl	-10832(0xfffd5b0) # 1c001cac <myprintf>
1c004700:	14000085 	lu12i.w	$r5,4(0x4)
1c004704:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004708:	03808184 	ori	$r4,$r12,0x20
1c00470c:	57f1dfff 	bl	-3620(0xffff1dc) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004710:	03400000 	andi	$r0,$r0,0x0
1c004714:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004718:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00471c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004720:	4c000020 	jirl	$r0,$r1,0

1c004724 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c004724:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004728:	29803061 	st.w	$r1,$r3,12(0xc)
1c00472c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004730:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004734:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004738:	02b7e0c6 	addi.w	$r6,$r6,-520(0xdf8)
1c00473c:	02818805 	addi.w	$r5,$r0,98(0x62)
1c004740:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004744:	02ac3084 	addi.w	$r4,$r4,-1268(0xb0c)
1c004748:	57d567ff 	bl	-10908(0xfffd564) # 1c001cac <myprintf>
1c00474c:	14000105 	lu12i.w	$r5,8(0x8)
1c004750:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004754:	03808184 	ori	$r4,$r12,0x20
1c004758:	57f193ff 	bl	-3696(0xffff190) # 1c0038e8 <EXTI_ClearITPendingBit>
1c00475c:	03400000 	andi	$r0,$r0,0x0
1c004760:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004764:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004768:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00476c:	4c000020 	jirl	$r0,$r1,0

1c004770 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c004770:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004774:	29803061 	st.w	$r1,$r3,12(0xc)
1c004778:	29802076 	st.w	$r22,$r3,8(0x8)
1c00477c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004780:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004784:	02b710c6 	addi.w	$r6,$r6,-572(0xdc4)
1c004788:	0281a005 	addi.w	$r5,$r0,104(0x68)
1c00478c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004790:	02ab0084 	addi.w	$r4,$r4,-1344(0xac0)
1c004794:	57d51bff 	bl	-10984(0xfffd518) # 1c001cac <myprintf>
1c004798:	14000205 	lu12i.w	$r5,16(0x10)
1c00479c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047a0:	03808184 	ori	$r4,$r12,0x20
1c0047a4:	57f147ff 	bl	-3772(0xffff144) # 1c0038e8 <EXTI_ClearITPendingBit>
1c0047a8:	03400000 	andi	$r0,$r0,0x0
1c0047ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047b8:	4c000020 	jirl	$r0,$r1,0

1c0047bc <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c0047bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047cc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0047d0:	02b640c6 	addi.w	$r6,$r6,-624(0xd90)
1c0047d4:	0281b405 	addi.w	$r5,$r0,109(0x6d)
1c0047d8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0047dc:	02a9d084 	addi.w	$r4,$r4,-1420(0xa74)
1c0047e0:	57d4cfff 	bl	-11060(0xfffd4cc) # 1c001cac <myprintf>
1c0047e4:	14000405 	lu12i.w	$r5,32(0x20)
1c0047e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047ec:	03808184 	ori	$r4,$r12,0x20
1c0047f0:	57f0fbff 	bl	-3848(0xffff0f8) # 1c0038e8 <EXTI_ClearITPendingBit>
1c0047f4:	03400000 	andi	$r0,$r0,0x0
1c0047f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004800:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004804:	4c000020 	jirl	$r0,$r1,0

1c004808 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c004808:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00480c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004810:	29802076 	st.w	$r22,$r3,8(0x8)
1c004814:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004818:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00481c:	02b570c6 	addi.w	$r6,$r6,-676(0xd5c)
1c004820:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c004824:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004828:	02a8a084 	addi.w	$r4,$r4,-1496(0xa28)
1c00482c:	57d483ff 	bl	-11136(0xfffd480) # 1c001cac <myprintf>
1c004830:	14000805 	lu12i.w	$r5,64(0x40)
1c004834:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004838:	03808184 	ori	$r4,$r12,0x20
1c00483c:	57f0afff 	bl	-3924(0xffff0ac) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004840:	03400000 	andi	$r0,$r0,0x0
1c004844:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004848:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00484c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004850:	4c000020 	jirl	$r0,$r1,0

1c004854 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c004854:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004858:	29803061 	st.w	$r1,$r3,12(0xc)
1c00485c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004860:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004864:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004868:	02b4a0c6 	addi.w	$r6,$r6,-728(0xd28)
1c00486c:	0281dc05 	addi.w	$r5,$r0,119(0x77)
1c004870:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004874:	02a77084 	addi.w	$r4,$r4,-1572(0x9dc)
1c004878:	57d437ff 	bl	-11212(0xfffd434) # 1c001cac <myprintf>
1c00487c:	14001005 	lu12i.w	$r5,128(0x80)
1c004880:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004884:	03808184 	ori	$r4,$r12,0x20
1c004888:	57f063ff 	bl	-4000(0xffff060) # 1c0038e8 <EXTI_ClearITPendingBit>
1c00488c:	03400000 	andi	$r0,$r0,0x0
1c004890:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004894:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004898:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00489c:	4c000020 	jirl	$r0,$r1,0

1c0048a0 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c0048a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048b0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0048b4:	02b3d0c6 	addi.w	$r6,$r6,-780(0xcf4)
1c0048b8:	0281f005 	addi.w	$r5,$r0,124(0x7c)
1c0048bc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0048c0:	02a64084 	addi.w	$r4,$r4,-1648(0x990)
1c0048c4:	57d3ebff 	bl	-11288(0xfffd3e8) # 1c001cac <myprintf>
1c0048c8:	14002005 	lu12i.w	$r5,256(0x100)
1c0048cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048d0:	03808184 	ori	$r4,$r12,0x20
1c0048d4:	57f017ff 	bl	-4076(0xffff014) # 1c0038e8 <EXTI_ClearITPendingBit>
1c0048d8:	03400000 	andi	$r0,$r0,0x0
1c0048dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048e8:	4c000020 	jirl	$r0,$r1,0

1c0048ec <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c0048ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048fc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004900:	02b300c6 	addi.w	$r6,$r6,-832(0xcc0)
1c004904:	02820405 	addi.w	$r5,$r0,129(0x81)
1c004908:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00490c:	02a51084 	addi.w	$r4,$r4,-1724(0x944)
1c004910:	57d39fff 	bl	-11364(0xfffd39c) # 1c001cac <myprintf>
1c004914:	14004005 	lu12i.w	$r5,512(0x200)
1c004918:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00491c:	03808184 	ori	$r4,$r12,0x20
1c004920:	57efcbff 	bl	-4152(0xfffefc8) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004924:	03400000 	andi	$r0,$r0,0x0
1c004928:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00492c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004930:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004934:	4c000020 	jirl	$r0,$r1,0

1c004938 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c004938:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00493c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004940:	29802076 	st.w	$r22,$r3,8(0x8)
1c004944:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004948:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00494c:	02b230c6 	addi.w	$r6,$r6,-884(0xc8c)
1c004950:	02821805 	addi.w	$r5,$r0,134(0x86)
1c004954:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004958:	02a3e084 	addi.w	$r4,$r4,-1800(0x8f8)
1c00495c:	57d353ff 	bl	-11440(0xfffd350) # 1c001cac <myprintf>
1c004960:	14008005 	lu12i.w	$r5,1024(0x400)
1c004964:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004968:	03808184 	ori	$r4,$r12,0x20
1c00496c:	57ef7fff 	bl	-4228(0xfffef7c) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004970:	03400000 	andi	$r0,$r0,0x0
1c004974:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004978:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00497c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004980:	4c000020 	jirl	$r0,$r1,0

1c004984 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c004984:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004988:	29803061 	st.w	$r1,$r3,12(0xc)
1c00498c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004990:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004994:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004998:	02b160c6 	addi.w	$r6,$r6,-936(0xc58)
1c00499c:	02822c05 	addi.w	$r5,$r0,139(0x8b)
1c0049a0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0049a4:	02a2b084 	addi.w	$r4,$r4,-1876(0x8ac)
1c0049a8:	57d307ff 	bl	-11516(0xfffd304) # 1c001cac <myprintf>
1c0049ac:	14010005 	lu12i.w	$r5,2048(0x800)
1c0049b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049b4:	03808184 	ori	$r4,$r12,0x20
1c0049b8:	57ef33ff 	bl	-4304(0xfffef30) # 1c0038e8 <EXTI_ClearITPendingBit>
1c0049bc:	03400000 	andi	$r0,$r0,0x0
1c0049c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049c4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049cc:	4c000020 	jirl	$r0,$r1,0

1c0049d0 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c0049d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049d8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049e0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0049e4:	02b090c6 	addi.w	$r6,$r6,-988(0xc24)
1c0049e8:	02824005 	addi.w	$r5,$r0,144(0x90)
1c0049ec:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0049f0:	02a18084 	addi.w	$r4,$r4,-1952(0x860)
1c0049f4:	57d2bbff 	bl	-11592(0xfffd2b8) # 1c001cac <myprintf>
1c0049f8:	14020005 	lu12i.w	$r5,4096(0x1000)
1c0049fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a00:	03808184 	ori	$r4,$r12,0x20
1c004a04:	57eee7ff 	bl	-4380(0xfffeee4) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004a08:	03400000 	andi	$r0,$r0,0x0
1c004a0c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a10:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a14:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a18:	4c000020 	jirl	$r0,$r1,0

1c004a1c <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c004a1c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a20:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a24:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a28:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a2c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004a30:	02afc0c6 	addi.w	$r6,$r6,-1040(0xbf0)
1c004a34:	02825405 	addi.w	$r5,$r0,149(0x95)
1c004a38:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004a3c:	02a05084 	addi.w	$r4,$r4,-2028(0x814)
1c004a40:	57d26fff 	bl	-11668(0xfffd26c) # 1c001cac <myprintf>
1c004a44:	14040005 	lu12i.w	$r5,8192(0x2000)
1c004a48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a4c:	03808184 	ori	$r4,$r12,0x20
1c004a50:	57ee9bff 	bl	-4456(0xfffee98) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004a54:	03400000 	andi	$r0,$r0,0x0
1c004a58:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a5c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a60:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a64:	4c000020 	jirl	$r0,$r1,0

1c004a68 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004a68:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a6c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a70:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a74:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a78:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004a7c:	02aef0c6 	addi.w	$r6,$r6,-1092(0xbbc)
1c004a80:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c004a84:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004a88:	029f2084 	addi.w	$r4,$r4,1992(0x7c8)
1c004a8c:	57d223ff 	bl	-11744(0xfffd220) # 1c001cac <myprintf>
1c004a90:	14080005 	lu12i.w	$r5,16384(0x4000)
1c004a94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a98:	03808184 	ori	$r4,$r12,0x20
1c004a9c:	57ee4fff 	bl	-4532(0xfffee4c) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004aa0:	03400000 	andi	$r0,$r0,0x0
1c004aa4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004aa8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004aac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ab0:	4c000020 	jirl	$r0,$r1,0

1c004ab4 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004ab4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ab8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004abc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ac0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ac4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004ac8:	02ae20c6 	addi.w	$r6,$r6,-1144(0xb88)
1c004acc:	02827c05 	addi.w	$r5,$r0,159(0x9f)
1c004ad0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004ad4:	029df084 	addi.w	$r4,$r4,1916(0x77c)
1c004ad8:	57d1d7ff 	bl	-11820(0xfffd1d4) # 1c001cac <myprintf>
1c004adc:	14100005 	lu12i.w	$r5,32768(0x8000)
1c004ae0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ae4:	03808184 	ori	$r4,$r12,0x20
1c004ae8:	57ee03ff 	bl	-4608(0xfffee00) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004aec:	03400000 	andi	$r0,$r0,0x0
1c004af0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004af4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004af8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004afc:	4c000020 	jirl	$r0,$r1,0

1c004b00 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c004b00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b04:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b08:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b0c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b10:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004b14:	02ad50c6 	addi.w	$r6,$r6,-1196(0xb54)
1c004b18:	02829005 	addi.w	$r5,$r0,164(0xa4)
1c004b1c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004b20:	029cc084 	addi.w	$r4,$r4,1840(0x730)
1c004b24:	57d18bff 	bl	-11896(0xfffd188) # 1c001cac <myprintf>
1c004b28:	14200005 	lu12i.w	$r5,65536(0x10000)
1c004b2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b30:	03808184 	ori	$r4,$r12,0x20
1c004b34:	57edb7ff 	bl	-4684(0xfffedb4) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004b38:	03400000 	andi	$r0,$r0,0x0
1c004b3c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b40:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b44:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b48:	4c000020 	jirl	$r0,$r1,0

1c004b4c <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004b4c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b50:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b54:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b58:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b5c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004b60:	02ac80c6 	addi.w	$r6,$r6,-1248(0xb20)
1c004b64:	0282a805 	addi.w	$r5,$r0,170(0xaa)
1c004b68:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004b6c:	029b9084 	addi.w	$r4,$r4,1764(0x6e4)
1c004b70:	57d13fff 	bl	-11972(0xfffd13c) # 1c001cac <myprintf>
1c004b74:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004b78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b7c:	03808184 	ori	$r4,$r12,0x20
1c004b80:	57ed6bff 	bl	-4760(0xfffed68) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004b84:	03400000 	andi	$r0,$r0,0x0
1c004b88:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b8c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b90:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b94:	4c000020 	jirl	$r0,$r1,0

1c004b98 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004b98:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b9c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ba0:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ba4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ba8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004bac:	02abb0c6 	addi.w	$r6,$r6,-1300(0xaec)
1c004bb0:	0282bc05 	addi.w	$r5,$r0,175(0xaf)
1c004bb4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004bb8:	029a6084 	addi.w	$r4,$r4,1688(0x698)
1c004bbc:	57d0f3ff 	bl	-12048(0xfffd0f0) # 1c001cac <myprintf>
1c004bc0:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004bc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bc8:	03808184 	ori	$r4,$r12,0x20
1c004bcc:	57ed1fff 	bl	-4836(0xfffed1c) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004bd0:	03400000 	andi	$r0,$r0,0x0
1c004bd4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004bd8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004bdc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004be0:	4c000020 	jirl	$r0,$r1,0

1c004be4 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c004be4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004be8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004bec:	29802076 	st.w	$r22,$r3,8(0x8)
1c004bf0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004bf4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004bf8:	02aae0c6 	addi.w	$r6,$r6,-1352(0xab8)
1c004bfc:	0282d005 	addi.w	$r5,$r0,180(0xb4)
1c004c00:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004c04:	02993084 	addi.w	$r4,$r4,1612(0x64c)
1c004c08:	57d0a7ff 	bl	-12124(0xfffd0a4) # 1c001cac <myprintf>
1c004c0c:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c004c10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c14:	03808184 	ori	$r4,$r12,0x20
1c004c18:	57ecd3ff 	bl	-4912(0xfffecd0) # 1c0038e8 <EXTI_ClearITPendingBit>
1c004c1c:	03400000 	andi	$r0,$r0,0x0
1c004c20:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c24:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c28:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c2c:	4c000020 	jirl	$r0,$r1,0

1c004c30 <ext_handler>:
ext_handler():
1c004c30:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004c34:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004c38:	29806076 	st.w	$r22,$r3,24(0x18)
1c004c3c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004c40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c44:	0380f18c 	ori	$r12,$r12,0x3c
1c004c48:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004c4c:	2980018d 	st.w	$r13,$r12,0
1c004c50:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c54:	0380818c 	ori	$r12,$r12,0x20
1c004c58:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004c5c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004c60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c64:	0380818c 	ori	$r12,$r12,0x20
1c004c68:	2880018c 	ld.w	$r12,$r12,0
1c004c6c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004c70:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004c74:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004c78:	0014b1ac 	and	$r12,$r13,$r12
1c004c7c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004c80:	03400000 	andi	$r0,$r0,0x0
1c004c84:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004c88:	50004000 	b	64(0x40) # 1c004cc8 <ext_handler+0x98>
1c004c8c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004c90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c94:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004c98:	0340058c 	andi	$r12,$r12,0x1
1c004c9c:	40002180 	beqz	$r12,32(0x20) # 1c004cbc <ext_handler+0x8c>
1c004ca0:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004ca4:	029981ad 	addi.w	$r13,$r13,1632(0x660)
1c004ca8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004cac:	0040898c 	slli.w	$r12,$r12,0x2
1c004cb0:	001031ac 	add.w	$r12,$r13,$r12
1c004cb4:	2880018c 	ld.w	$r12,$r12,0
1c004cb8:	4c000181 	jirl	$r1,$r12,0
1c004cbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004cc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004cc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004cc8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004ccc:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c004cd0:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c004c8c <ext_handler+0x5c>
1c004cd4:	03400000 	andi	$r0,$r0,0x0
1c004cd8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004cdc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004ce0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004ce4:	4c000020 	jirl	$r0,$r1,0

1c004ce8 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004ce8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004cec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004cf0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004cf4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004cf8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004cfc:	0380f18c 	ori	$r12,$r12,0x3c
1c004d00:	1400020d 	lu12i.w	$r13,16(0x10)
1c004d04:	2980018d 	st.w	$r13,$r12,0
1c004d08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d0c:	0380118c 	ori	$r12,$r12,0x4
1c004d10:	2880018c 	ld.w	$r12,$r12,0
1c004d14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004d18:	57ed23ff 	bl	-4832(0xfffed20) # 1c003a38 <WDG_DogFeed>
1c004d1c:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004d20:	57e477ff 	bl	-7052(0xfffe474) # 1c003194 <Wake_Set>
1c004d24:	03400000 	andi	$r0,$r0,0x0
1c004d28:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004d2c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004d30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004d34:	4c000020 	jirl	$r0,$r1,0

1c004d38 <TOUCH>:
TOUCH():
1c004d38:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004d3c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004d40:	29806076 	st.w	$r22,$r3,24(0x18)
1c004d44:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004d48:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004d4c:	0380118c 	ori	$r12,$r12,0x4
1c004d50:	2880018c 	ld.w	$r12,$r12,0
1c004d54:	0044c18c 	srli.w	$r12,$r12,0x10
1c004d58:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004d5c:	037ffd8c 	andi	$r12,$r12,0xfff
1c004d60:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004d64:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004d68:	0380118c 	ori	$r12,$r12,0x4
1c004d6c:	2880018c 	ld.w	$r12,$r12,0
1c004d70:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004d74:	03403d8c 	andi	$r12,$r12,0xf
1c004d78:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004d7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d80:	0380f18c 	ori	$r12,$r12,0x3c
1c004d84:	1400040d 	lu12i.w	$r13,32(0x20)
1c004d88:	2980018d 	st.w	$r13,$r12,0
1c004d8c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004d90:	0380118c 	ori	$r12,$r12,0x4
1c004d94:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004d98:	2980018d 	st.w	$r13,$r12,0
1c004d9c:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004da0:	00150184 	move	$r4,$r12
1c004da4:	57efe7ff 	bl	-4124(0xfffefe4) # 1c003d88 <Printf_KeyType>
1c004da8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004dac:	00150184 	move	$r4,$r12
1c004db0:	57ef5fff 	bl	-4260(0xfffef5c) # 1c003d0c <Printf_KeyChannel>
1c004db4:	57f063ff 	bl	-4000(0xffff060) # 1c003e14 <Printf_KeyVal>
1c004db8:	03400000 	andi	$r0,$r0,0x0
1c004dbc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004dc0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004dc4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004dc8:	4c000020 	jirl	$r0,$r1,0

1c004dcc <UART2_INT>:
UART2_INT():
1c004dcc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004dd0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004dd4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004dd8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ddc:	0380f18c 	ori	$r12,$r12,0x3c
1c004de0:	1400080d 	lu12i.w	$r13,64(0x40)
1c004de4:	2980018d 	st.w	$r13,$r12,0
1c004de8:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004dec:	0380098c 	ori	$r12,$r12,0x2
1c004df0:	2a00018c 	ld.bu	$r12,$r12,0
1c004df4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004df8:	03400000 	andi	$r0,$r0,0x0
1c004dfc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004e00:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004e04:	4c000020 	jirl	$r0,$r1,0

1c004e08 <BAT_FAIL>:
BAT_FAIL():
1c004e08:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004e0c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004e10:	29806076 	st.w	$r22,$r3,24(0x18)
1c004e14:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004e18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e1c:	0380118c 	ori	$r12,$r12,0x4
1c004e20:	2880018c 	ld.w	$r12,$r12,0
1c004e24:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004e28:	03407d8c 	andi	$r12,$r12,0x1f
1c004e2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004e30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e34:	0380118c 	ori	$r12,$r12,0x4
1c004e38:	2880018e 	ld.w	$r14,$r12,0
1c004e3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e40:	0380f18c 	ori	$r12,$r12,0x3c
1c004e44:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004e48:	0014b5cd 	and	$r13,$r14,$r13
1c004e4c:	2980018d 	st.w	$r13,$r12,0
1c004e50:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004e54:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004e58:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004ec8 <BAT_FAIL+0xc0>
1c004e5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004e60:	0040898d 	slli.w	$r13,$r12,0x2
1c004e64:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c004e68:	0294718c 	addi.w	$r12,$r12,1308(0x51c)
1c004e6c:	001031ac 	add.w	$r12,$r13,$r12
1c004e70:	2880018c 	ld.w	$r12,$r12,0
1c004e74:	4c000180 	jirl	$r0,$r12,0
1c004e78:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004e7c:	02906084 	addi.w	$r4,$r4,1048(0x418)
1c004e80:	57ce2fff 	bl	-12756(0xfffce2c) # 1c001cac <myprintf>
1c004e84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e88:	0380118c 	ori	$r12,$r12,0x4
1c004e8c:	29800180 	st.w	$r0,$r12,0
1c004e90:	50003c00 	b	60(0x3c) # 1c004ecc <BAT_FAIL+0xc4>
1c004e94:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004e98:	02909084 	addi.w	$r4,$r4,1060(0x424)
1c004e9c:	57ce13ff 	bl	-12784(0xfffce10) # 1c001cac <myprintf>
1c004ea0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ea4:	0380118c 	ori	$r12,$r12,0x4
1c004ea8:	2880018e 	ld.w	$r14,$r12,0
1c004eac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004eb0:	0380118c 	ori	$r12,$r12,0x4
1c004eb4:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004eb8:	03bffdad 	ori	$r13,$r13,0xfff
1c004ebc:	0014b5cd 	and	$r13,$r14,$r13
1c004ec0:	2980018d 	st.w	$r13,$r12,0
1c004ec4:	50000800 	b	8(0x8) # 1c004ecc <BAT_FAIL+0xc4>
1c004ec8:	03400000 	andi	$r0,$r0,0x0
1c004ecc:	03400000 	andi	$r0,$r0,0x0
1c004ed0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004ed4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004ed8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004edc:	4c000020 	jirl	$r0,$r1,0

1c004ee0 <intc_handler>:
intc_handler():
1c004ee0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004ee4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004ee8:	29806076 	st.w	$r22,$r3,24(0x18)
1c004eec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004ef0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004ef4:	0380158c 	ori	$r12,$r12,0x5
1c004ef8:	2a00018c 	ld.bu	$r12,$r12,0
1c004efc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004f00:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004f04:	0340058c 	andi	$r12,$r12,0x1
1c004f08:	4001fd80 	beqz	$r12,508(0x1fc) # 1c005104 <intc_handler+0x224>
1c004f0c:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004f10:	57f2fbff 	bl	-3336(0xffff2f8) # 1c004208 <TIM_GetITStatus>
1c004f14:	0015008c 	move	$r12,$r4
1c004f18:	4001ed80 	beqz	$r12,492(0x1ec) # 1c005104 <intc_handler+0x224>
1c004f1c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f20:	0283918c 	addi.w	$r12,$r12,228(0xe4)
1c004f24:	2a00018c 	ld.bu	$r12,$r12,0
1c004f28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f2c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004f30:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f34:	0283418c 	addi.w	$r12,$r12,208(0xd0)
1c004f38:	2900018d 	st.b	$r13,$r12,0
1c004f3c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f40:	0283318c 	addi.w	$r12,$r12,204(0xcc)
1c004f44:	2a00018c 	ld.bu	$r12,$r12,0
1c004f48:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f4c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004f50:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f54:	0282e18c 	addi.w	$r12,$r12,184(0xb8)
1c004f58:	2900018d 	st.b	$r13,$r12,0
1c004f5c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f60:	0282d18c 	addi.w	$r12,$r12,180(0xb4)
1c004f64:	2a00018c 	ld.bu	$r12,$r12,0
1c004f68:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f6c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004f70:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f74:	0282818c 	addi.w	$r12,$r12,160(0xa0)
1c004f78:	2900018d 	st.b	$r13,$r12,0
1c004f7c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f80:	0282718c 	addi.w	$r12,$r12,156(0x9c)
1c004f84:	2a00018c 	ld.bu	$r12,$r12,0
1c004f88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f8c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004f90:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f94:	0282218c 	addi.w	$r12,$r12,136(0x88)
1c004f98:	2900018d 	st.b	$r13,$r12,0
1c004f9c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fa0:	0282118c 	addi.w	$r12,$r12,132(0x84)
1c004fa4:	2a00018c 	ld.bu	$r12,$r12,0
1c004fa8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004fac:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004fb0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fb4:	0281c18c 	addi.w	$r12,$r12,112(0x70)
1c004fb8:	2900018d 	st.b	$r13,$r12,0
1c004fbc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fc0:	0281b18c 	addi.w	$r12,$r12,108(0x6c)
1c004fc4:	2a00018c 	ld.bu	$r12,$r12,0
1c004fc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004fcc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004fd0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fd4:	0281618c 	addi.w	$r12,$r12,88(0x58)
1c004fd8:	2900018d 	st.b	$r13,$r12,0
1c004fdc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fe0:	0280918c 	addi.w	$r12,$r12,36(0x24)
1c004fe4:	2a00018d 	ld.bu	$r13,$r12,0
1c004fe8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004fec:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00500c <intc_handler+0x12c>
1c004ff0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ff4:	0280518c 	addi.w	$r12,$r12,20(0x14)
1c004ff8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004ffc:	2980018d 	st.w	$r13,$r12,0
1c005000:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005004:	0280018c 	addi.w	$r12,$r12,0
1c005008:	29000180 	st.b	$r0,$r12,0
1c00500c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005010:	02bff18c 	addi.w	$r12,$r12,-4(0xffc)
1c005014:	2a00018d 	ld.bu	$r13,$r12,0
1c005018:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00501c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00503c <intc_handler+0x15c>
1c005020:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005024:	02bfb18c 	addi.w	$r12,$r12,-20(0xfec)
1c005028:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00502c:	2980018d 	st.w	$r13,$r12,0
1c005030:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005034:	02bf618c 	addi.w	$r12,$r12,-40(0xfd8)
1c005038:	29000180 	st.b	$r0,$r12,0
1c00503c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005040:	02bf518c 	addi.w	$r12,$r12,-44(0xfd4)
1c005044:	2a00018d 	ld.bu	$r13,$r12,0
1c005048:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c00504c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00506c <intc_handler+0x18c>
1c005050:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005054:	02bf118c 	addi.w	$r12,$r12,-60(0xfc4)
1c005058:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00505c:	2980018d 	st.w	$r13,$r12,0
1c005060:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005064:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005068:	29000180 	st.b	$r0,$r12,0
1c00506c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005070:	02beb18c 	addi.w	$r12,$r12,-84(0xfac)
1c005074:	2a00018d 	ld.bu	$r13,$r12,0
1c005078:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00507c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00509c <intc_handler+0x1bc>
1c005080:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005084:	02be718c 	addi.w	$r12,$r12,-100(0xf9c)
1c005088:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00508c:	2980018d 	st.w	$r13,$r12,0
1c005090:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005094:	02be218c 	addi.w	$r12,$r12,-120(0xf88)
1c005098:	29000180 	st.b	$r0,$r12,0
1c00509c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050a0:	02be118c 	addi.w	$r12,$r12,-124(0xf84)
1c0050a4:	2a00018d 	ld.bu	$r13,$r12,0
1c0050a8:	0280c80c 	addi.w	$r12,$r0,50(0x32)
1c0050ac:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c0050cc <intc_handler+0x1ec>
1c0050b0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050b4:	02bdd18c 	addi.w	$r12,$r12,-140(0xf74)
1c0050b8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0050bc:	2980018d 	st.w	$r13,$r12,0
1c0050c0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050c4:	02bd818c 	addi.w	$r12,$r12,-160(0xf60)
1c0050c8:	29000180 	st.b	$r0,$r12,0
1c0050cc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050d0:	02bd718c 	addi.w	$r12,$r12,-164(0xf5c)
1c0050d4:	2a00018d 	ld.bu	$r13,$r12,0
1c0050d8:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c0050dc:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c0050fc <intc_handler+0x21c>
1c0050e0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050e4:	02bd318c 	addi.w	$r12,$r12,-180(0xf4c)
1c0050e8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0050ec:	2980018d 	st.w	$r13,$r12,0
1c0050f0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050f4:	02bce18c 	addi.w	$r12,$r12,-200(0xf38)
1c0050f8:	29000180 	st.b	$r0,$r12,0
1c0050fc:	02840004 	addi.w	$r4,$r0,256(0x100)
1c005100:	57f157ff 	bl	-3756(0xffff154) # 1c004254 <TIM_ClearIT>
1c005104:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005108:	0340118c 	andi	$r12,$r12,0x4
1c00510c:	40004980 	beqz	$r12,72(0x48) # 1c005154 <intc_handler+0x274>
1c005110:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c005114:	2a00018c 	ld.bu	$r12,$r12,0
1c005118:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00511c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005120:	02bc518c 	addi.w	$r12,$r12,-236(0xf14)
1c005124:	2900018d 	st.b	$r13,$r12,0
1c005128:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00512c:	02bc218c 	addi.w	$r12,$r12,-248(0xf08)
1c005130:	2a00018c 	ld.bu	$r12,$r12,0
1c005134:	00150185 	move	$r5,$r12
1c005138:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00513c:	02869084 	addi.w	$r4,$r4,420(0x1a4)
1c005140:	57cb6fff 	bl	-13460(0xfffcb6c) # 1c001cac <myprintf>
1c005144:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005148:	03800d8c 	ori	$r12,$r12,0x3
1c00514c:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005150:	2900018d 	st.b	$r13,$r12,0
1c005154:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005158:	0340218c 	andi	$r12,$r12,0x8
1c00515c:	40007d80 	beqz	$r12,124(0x7c) # 1c0051d8 <intc_handler+0x2f8>
1c005160:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c005164:	0380098c 	ori	$r12,$r12,0x2
1c005168:	2a00018c 	ld.bu	$r12,$r12,0
1c00516c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005170:	0340118c 	andi	$r12,$r12,0x4
1c005174:	40005580 	beqz	$r12,84(0x54) # 1c0051c8 <intc_handler+0x2e8>
1c005178:	50003800 	b	56(0x38) # 1c0051b0 <intc_handler+0x2d0>
1c00517c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c005180:	57d733ff 	bl	-10448(0xfffd730) # 1c0028b0 <UART_ReceiveData>
1c005184:	0015008c 	move	$r12,$r4
1c005188:	0015018d 	move	$r13,$r12
1c00518c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005190:	02ba958c 	addi.w	$r12,$r12,-347(0xea5)
1c005194:	2900018d 	st.b	$r13,$r12,0
1c005198:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00519c:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0051a0:	02ba54a5 	addi.w	$r5,$r5,-363(0xe95)
1c0051a4:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0051a8:	28bac084 	ld.w	$r4,$r4,-336(0xeb0)
1c0051ac:	54165800 	bl	5720(0x1658) # 1c006804 <Queue_Wirte>
1c0051b0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0051b4:	0380158c 	ori	$r12,$r12,0x5
1c0051b8:	2a00018c 	ld.bu	$r12,$r12,0
1c0051bc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0051c0:	0340058c 	andi	$r12,$r12,0x1
1c0051c4:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c00517c <intc_handler+0x29c>
1c0051c8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0051cc:	03800d8c 	ori	$r12,$r12,0x3
1c0051d0:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c0051d4:	2900018d 	st.b	$r13,$r12,0
1c0051d8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0051dc:	03800d8c 	ori	$r12,$r12,0x3
1c0051e0:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0051e4:	2900018d 	st.b	$r13,$r12,0
1c0051e8:	03400000 	andi	$r0,$r0,0x0
1c0051ec:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0051f0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0051f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0051f8:	4c000020 	jirl	$r0,$r1,0

1c0051fc <TIMER_HANDLER>:
TIMER_HANDLER():
1c0051fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005200:	29803061 	st.w	$r1,$r3,12(0xc)
1c005204:	29802076 	st.w	$r22,$r3,8(0x8)
1c005208:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00520c:	57df67ff 	bl	-8348(0xfffdf64) # 1c003170 <Set_Timer_clear>
1c005210:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005214:	02834084 	addi.w	$r4,$r4,208(0xd0)
1c005218:	57ca97ff 	bl	-13676(0xfffca94) # 1c001cac <myprintf>
1c00521c:	57df37ff 	bl	-8396(0xfffdf34) # 1c003150 <Set_Timer_stop>
1c005220:	03400000 	andi	$r0,$r0,0x0
1c005224:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005228:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00522c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005230:	4c000020 	jirl	$r0,$r1,0

1c005234 <executer_init>:
executer_init():
1c005234:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005238:	29803061 	st.w	$r1,$r3,12(0xc)
1c00523c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005240:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005244:	54071800 	bl	1816(0x718) # 1c00595c <led_init>
1c005248:	54177400 	bl	6004(0x1774) # 1c0069bc <mqtt_process_init>
1c00524c:	54020400 	bl	516(0x204) # 1c005450 <water_circle_process_init>
1c005250:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c005254:	57e2c7ff 	bl	-7484(0xfffe2c4) # 1c003518 <delay_ms>
1c005258:	02802804 	addi.w	$r4,$r0,10(0xa)
1c00525c:	57ef5bff 	bl	-4264(0xfffef58) # 1c0041b4 <timer_init>
1c005260:	03400000 	andi	$r0,$r0,0x0
1c005264:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005268:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00526c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005270:	4c000020 	jirl	$r0,$r1,0

1c005274 <executer_choose_run>:
executer_choose_run():
1c005274:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005278:	29803061 	st.w	$r1,$r3,12(0xc)
1c00527c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005280:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005284:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005288:	28b7218c 	ld.w	$r12,$r12,-568(0xdc8)
1c00528c:	2880018d 	ld.w	$r13,$r12,0
1c005290:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005294:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0052a8 <executer_choose_run+0x34>
1c005298:	54012c00 	bl	300(0x12c) # 1c0053c4 <run_function_10ms>
1c00529c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052a0:	28b6c18c 	ld.w	$r12,$r12,-592(0xdb0)
1c0052a4:	29800180 	st.w	$r0,$r12,0
1c0052a8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052ac:	28b6118c 	ld.w	$r12,$r12,-636(0xd84)
1c0052b0:	2880018d 	ld.w	$r13,$r12,0
1c0052b4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0052b8:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0052cc <executer_choose_run+0x58>
1c0052bc:	54012400 	bl	292(0x124) # 1c0053e0 <run_function_20ms>
1c0052c0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052c4:	28b5b18c 	ld.w	$r12,$r12,-660(0xd6c)
1c0052c8:	29800180 	st.w	$r0,$r12,0
1c0052cc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052d0:	28b5018c 	ld.w	$r12,$r12,-704(0xd40)
1c0052d4:	2880018d 	ld.w	$r13,$r12,0
1c0052d8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0052dc:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0052f0 <executer_choose_run+0x7c>
1c0052e0:	54009000 	bl	144(0x90) # 1c005370 <run_function_50ms>
1c0052e4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052e8:	28b4a18c 	ld.w	$r12,$r12,-728(0xd28)
1c0052ec:	29800180 	st.w	$r0,$r12,0
1c0052f0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052f4:	28b5218c 	ld.w	$r12,$r12,-696(0xd48)
1c0052f8:	2880018d 	ld.w	$r13,$r12,0
1c0052fc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005300:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c005314 <executer_choose_run+0xa0>
1c005304:	54008800 	bl	136(0x88) # 1c00538c <run_function_100ms>
1c005308:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00530c:	28b4c18c 	ld.w	$r12,$r12,-720(0xd30)
1c005310:	29800180 	st.w	$r0,$r12,0
1c005314:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005318:	28b4118c 	ld.w	$r12,$r12,-764(0xd04)
1c00531c:	2880018d 	ld.w	$r13,$r12,0
1c005320:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005324:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c005338 <executer_choose_run+0xc4>
1c005328:	54008000 	bl	128(0x80) # 1c0053a8 <run_function_500ms>
1c00532c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005330:	28b3b18c 	ld.w	$r12,$r12,-788(0xcec)
1c005334:	29800180 	st.w	$r0,$r12,0
1c005338:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00533c:	28b4618c 	ld.w	$r12,$r12,-744(0xd18)
1c005340:	2880018d 	ld.w	$r13,$r12,0
1c005344:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005348:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c00535c <executer_choose_run+0xe8>
1c00534c:	5400b000 	bl	176(0xb0) # 1c0053fc <run_function_1000ms>
1c005350:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005354:	28b4018c 	ld.w	$r12,$r12,-768(0xd00)
1c005358:	29800180 	st.w	$r0,$r12,0
1c00535c:	03400000 	andi	$r0,$r0,0x0
1c005360:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005364:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005368:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00536c:	4c000020 	jirl	$r0,$r1,0

1c005370 <run_function_50ms>:
run_function_50ms():
1c005370:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005374:	29803076 	st.w	$r22,$r3,12(0xc)
1c005378:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00537c:	03400000 	andi	$r0,$r0,0x0
1c005380:	28803076 	ld.w	$r22,$r3,12(0xc)
1c005384:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005388:	4c000020 	jirl	$r0,$r1,0

1c00538c <run_function_100ms>:
run_function_100ms():
1c00538c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005390:	29803076 	st.w	$r22,$r3,12(0xc)
1c005394:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005398:	03400000 	andi	$r0,$r0,0x0
1c00539c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0053a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0053a4:	4c000020 	jirl	$r0,$r1,0

1c0053a8 <run_function_500ms>:
run_function_500ms():
1c0053a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0053ac:	29803076 	st.w	$r22,$r3,12(0xc)
1c0053b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0053b4:	03400000 	andi	$r0,$r0,0x0
1c0053b8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0053bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0053c0:	4c000020 	jirl	$r0,$r1,0

1c0053c4 <run_function_10ms>:
run_function_10ms():
1c0053c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0053c8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0053cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0053d0:	03400000 	andi	$r0,$r0,0x0
1c0053d4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0053d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0053dc:	4c000020 	jirl	$r0,$r1,0

1c0053e0 <run_function_20ms>:
run_function_20ms():
1c0053e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0053e4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0053e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0053ec:	03400000 	andi	$r0,$r0,0x0
1c0053f0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0053f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0053f8:	4c000020 	jirl	$r0,$r1,0

1c0053fc <run_function_1000ms>:
run_function_1000ms():
1c0053fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005400:	29803061 	st.w	$r1,$r3,12(0xc)
1c005404:	29802076 	st.w	$r22,$r3,8(0x8)
1c005408:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00540c:	54007400 	bl	116(0x74) # 1c005480 <water_circle_process>
1c005410:	5415dc00 	bl	5596(0x15dc) # 1c0069ec <mqtt_process>
1c005414:	54057800 	bl	1400(0x578) # 1c00598c <led_show>
1c005418:	03400000 	andi	$r0,$r0,0x0
1c00541c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005420:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005424:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005428:	4c000020 	jirl	$r0,$r1,0

1c00542c <main>:
main():
1c00542c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005430:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005434:	29806076 	st.w	$r22,$r3,24(0x18)
1c005438:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00543c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005440:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c005444:	57fdf3ff 	bl	-528(0xffffdf0) # 1c005234 <executer_init>
1c005448:	57fe2fff 	bl	-468(0xffffe2c) # 1c005274 <executer_choose_run>
1c00544c:	53ffffff 	b	-4(0xffffffc) # 1c005448 <main+0x1c>

1c005450 <water_circle_process_init>:
water_circle_process_init():
1c005450:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005454:	29803061 	st.w	$r1,$r3,12(0xc)
1c005458:	29802076 	st.w	$r22,$r3,8(0x8)
1c00545c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005460:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005464:	28af7084 	ld.w	$r4,$r4,-1060(0xbdc)
1c005468:	54006000 	bl	96(0x60) # 1c0054c8 <Water_Circle_Init>
1c00546c:	03400000 	andi	$r0,$r0,0x0
1c005470:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005474:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005478:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00547c:	4c000020 	jirl	$r0,$r1,0

1c005480 <water_circle_process>:
water_circle_process():
1c005480:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005484:	29803061 	st.w	$r1,$r3,12(0xc)
1c005488:	29802076 	st.w	$r22,$r3,8(0x8)
1c00548c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005490:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005494:	28aeb084 	ld.w	$r4,$r4,-1108(0xbac)
1c005498:	54012000 	bl	288(0x120) # 1c0055b8 <Water_Circle_Get>
1c00549c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0054a0:	28ae8084 	ld.w	$r4,$r4,-1120(0xba0)
1c0054a4:	54041400 	bl	1044(0x414) # 1c0058b8 <Water_Circle_value_feedback>
1c0054a8:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0054ac:	28ae5084 	ld.w	$r4,$r4,-1132(0xb94)
1c0054b0:	54046800 	bl	1128(0x468) # 1c005918 <Water_Circle_Contrl>
1c0054b4:	03400000 	andi	$r0,$r0,0x0
1c0054b8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0054bc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0054c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0054c4:	4c000020 	jirl	$r0,$r1,0

1c0054c8 <Water_Circle_Init>:
Water_Circle_Init():
1c0054c8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0054cc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0054d0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0054d4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0054d8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0054dc:	540db400 	bl	3508(0xdb4) # 1c006290 <json_backage_value_get>
1c0054e0:	0015008d 	move	$r13,$r4
1c0054e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0054e8:	2981218d 	st.w	$r13,$r12,72(0x48)
1c0054ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0054f0:	29402980 	st.h	$r0,$r12,10(0xa)
1c0054f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0054f8:	29803180 	st.w	$r0,$r12,12(0xc)
1c0054fc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005500:	29406980 	st.h	$r0,$r12,26(0x1a)
1c005504:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005508:	29807180 	st.w	$r0,$r12,28(0x1c)
1c00550c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005510:	2940a980 	st.h	$r0,$r12,42(0x2a)
1c005514:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005518:	2980b180 	st.w	$r0,$r12,44(0x2c)
1c00551c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005520:	50005400 	b	84(0x54) # 1c005574 <Water_Circle_Init+0xac>
1c005524:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005528:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00552c:	0040858c 	slli.w	$r12,$r12,0x1
1c005530:	001031ac 	add.w	$r12,$r13,$r12
1c005534:	29400180 	st.h	$r0,$r12,0
1c005538:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00553c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005540:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005544:	0040858c 	slli.w	$r12,$r12,0x1
1c005548:	001031ac 	add.w	$r12,$r13,$r12
1c00554c:	29400180 	st.h	$r0,$r12,0
1c005550:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005554:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005558:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c00555c:	0040858c 	slli.w	$r12,$r12,0x1
1c005560:	001031ac 	add.w	$r12,$r13,$r12
1c005564:	29400180 	st.h	$r0,$r12,0
1c005568:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00556c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005570:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005574:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005578:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c00557c:	67ffa98d 	bge	$r12,$r13,-88(0x3ffa8) # 1c005524 <Water_Circle_Init+0x5c>
1c005580:	57e517ff 	bl	-6892(0xfffe514) # 1c003a94 <Adc_powerOn>
1c005584:	00150004 	move	$r4,$r0
1c005588:	57e563ff 	bl	-6816(0xfffe560) # 1c003ae8 <Adc_open>
1c00558c:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005590:	57e55bff 	bl	-6824(0xfffe558) # 1c003ae8 <Adc_open>
1c005594:	02801804 	addi.w	$r4,$r0,6(0x6)
1c005598:	57e553ff 	bl	-6832(0xfffe550) # 1c003ae8 <Adc_open>
1c00559c:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c0055a0:	57e54bff 	bl	-6840(0xfffe548) # 1c003ae8 <Adc_open>
1c0055a4:	03400000 	andi	$r0,$r0,0x0
1c0055a8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0055ac:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0055b0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0055b4:	4c000020 	jirl	$r0,$r1,0

1c0055b8 <Water_Circle_Get>:
Water_Circle_Get():
1c0055b8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0055bc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0055c0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0055c4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0055c8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0055cc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0055d0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0055d4:	297f8ac0 	st.h	$r0,$r22,-30(0xfe2)
1c0055d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0055dc:	29402980 	st.h	$r0,$r12,10(0xa)
1c0055e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0055e4:	29803180 	st.w	$r0,$r12,12(0xc)
1c0055e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0055ec:	29406980 	st.h	$r0,$r12,26(0x1a)
1c0055f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0055f4:	29807180 	st.w	$r0,$r12,28(0x1c)
1c0055f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0055fc:	2940a980 	st.h	$r0,$r12,42(0x2a)
1c005600:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005604:	2980b180 	st.w	$r0,$r12,44(0x2c)
1c005608:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00560c:	2940e980 	st.h	$r0,$r12,58(0x3a)
1c005610:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005614:	2980f180 	st.w	$r0,$r12,60(0x3c)
1c005618:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00561c:	50005400 	b	84(0x54) # 1c005670 <Water_Circle_Get+0xb8>
1c005620:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005624:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005628:	0040858c 	slli.w	$r12,$r12,0x1
1c00562c:	001031ac 	add.w	$r12,$r13,$r12
1c005630:	29400180 	st.h	$r0,$r12,0
1c005634:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005638:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00563c:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005640:	0040858c 	slli.w	$r12,$r12,0x1
1c005644:	001031ac 	add.w	$r12,$r13,$r12
1c005648:	29400180 	st.h	$r0,$r12,0
1c00564c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005650:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005654:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c005658:	0040858c 	slli.w	$r12,$r12,0x1
1c00565c:	001031ac 	add.w	$r12,$r13,$r12
1c005660:	29400180 	st.h	$r0,$r12,0
1c005664:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005668:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00566c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005670:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005674:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005678:	67ffa98d 	bge	$r12,$r13,-88(0x3ffa8) # 1c005620 <Water_Circle_Get+0x68>
1c00567c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005680:	5000b800 	b	184(0xb8) # 1c005738 <Water_Circle_Get+0x180>
1c005684:	02801004 	addi.w	$r4,$r0,4(0x4)
1c005688:	57e513ff 	bl	-6896(0xfffe510) # 1c003b98 <Adc_Measure>
1c00568c:	0015008c 	move	$r12,$r4
1c005690:	0015018d 	move	$r13,$r12
1c005694:	1400002c 	lu12i.w	$r12,1(0x1)
1c005698:	0011358c 	sub.w	$r12,$r12,$r13
1c00569c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0056a0:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c0056a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056a8:	0040858c 	slli.w	$r12,$r12,0x1
1c0056ac:	001031cc 	add.w	$r12,$r14,$r12
1c0056b0:	2940018d 	st.h	$r13,$r12,0
1c0056b4:	00150004 	move	$r4,$r0
1c0056b8:	57e4e3ff 	bl	-6944(0xfffe4e0) # 1c003b98 <Adc_Measure>
1c0056bc:	0015008c 	move	$r12,$r4
1c0056c0:	0015018e 	move	$r14,$r12
1c0056c4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0056c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056cc:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0056d0:	0040858c 	slli.w	$r12,$r12,0x1
1c0056d4:	001031ac 	add.w	$r12,$r13,$r12
1c0056d8:	2940018e 	st.h	$r14,$r12,0
1c0056dc:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c0056e0:	57e4bbff 	bl	-6984(0xfffe4b8) # 1c003b98 <Adc_Measure>
1c0056e4:	0015008c 	move	$r12,$r4
1c0056e8:	0015018e 	move	$r14,$r12
1c0056ec:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0056f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056f4:	0280418c 	addi.w	$r12,$r12,16(0x10)
1c0056f8:	0040858c 	slli.w	$r12,$r12,0x1
1c0056fc:	001031ac 	add.w	$r12,$r13,$r12
1c005700:	2940018e 	st.h	$r14,$r12,0
1c005704:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c005708:	57e493ff 	bl	-7024(0xfffe490) # 1c003b98 <Adc_Measure>
1c00570c:	0015008c 	move	$r12,$r4
1c005710:	0015018e 	move	$r14,$r12
1c005714:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005718:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00571c:	0280618c 	addi.w	$r12,$r12,24(0x18)
1c005720:	0040858c 	slli.w	$r12,$r12,0x1
1c005724:	001031ac 	add.w	$r12,$r13,$r12
1c005728:	2940018e 	st.h	$r14,$r12,0
1c00572c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005730:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005734:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005738:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00573c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005740:	67ff458d 	bge	$r12,$r13,-188(0x3ff44) # 1c005684 <Water_Circle_Get+0xcc>
1c005744:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005748:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00574c:	5000bc00 	b	188(0xbc) # 1c005808 <Water_Circle_Get+0x250>
1c005750:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005754:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c005758:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c00575c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005760:	004085ad 	slli.w	$r13,$r13,0x1
1c005764:	001035cd 	add.w	$r13,$r14,$r13
1c005768:	2a4001ad 	ld.hu	$r13,$r13,0
1c00576c:	0010358d 	add.w	$r13,$r12,$r13
1c005770:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005774:	2980318d 	st.w	$r13,$r12,12(0xc)
1c005778:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00577c:	2880718c 	ld.w	$r12,$r12,28(0x1c)
1c005780:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c005784:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005788:	028021ad 	addi.w	$r13,$r13,8(0x8)
1c00578c:	004085ad 	slli.w	$r13,$r13,0x1
1c005790:	001035cd 	add.w	$r13,$r14,$r13
1c005794:	2a4001ad 	ld.hu	$r13,$r13,0
1c005798:	0010358d 	add.w	$r13,$r12,$r13
1c00579c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0057a0:	2980718d 	st.w	$r13,$r12,28(0x1c)
1c0057a4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0057a8:	2880b18c 	ld.w	$r12,$r12,44(0x2c)
1c0057ac:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c0057b0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0057b4:	028041ad 	addi.w	$r13,$r13,16(0x10)
1c0057b8:	004085ad 	slli.w	$r13,$r13,0x1
1c0057bc:	001035cd 	add.w	$r13,$r14,$r13
1c0057c0:	2a4001ad 	ld.hu	$r13,$r13,0
1c0057c4:	0010358d 	add.w	$r13,$r12,$r13
1c0057c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0057cc:	2980b18d 	st.w	$r13,$r12,44(0x2c)
1c0057d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0057d4:	2880f18c 	ld.w	$r12,$r12,60(0x3c)
1c0057d8:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c0057dc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0057e0:	028061ad 	addi.w	$r13,$r13,24(0x18)
1c0057e4:	004085ad 	slli.w	$r13,$r13,0x1
1c0057e8:	001035cd 	add.w	$r13,$r14,$r13
1c0057ec:	2a4001ad 	ld.hu	$r13,$r13,0
1c0057f0:	0010358d 	add.w	$r13,$r12,$r13
1c0057f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0057f8:	2980f18d 	st.w	$r13,$r12,60(0x3c)
1c0057fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005800:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005804:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005808:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00580c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005810:	67ff418d 	bge	$r12,$r13,-192(0x3ff40) # 1c005750 <Water_Circle_Get+0x198>
1c005814:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005818:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c00581c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005820:	002131ae 	div.wu	$r14,$r13,$r12
1c005824:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00582c <Water_Circle_Get+0x274>
1c005828:	002a0007 	break	0x7
1c00582c:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005830:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005834:	2940298d 	st.h	$r13,$r12,10(0xa)
1c005838:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00583c:	2880718d 	ld.w	$r13,$r12,28(0x1c)
1c005840:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005844:	002131ae 	div.wu	$r14,$r13,$r12
1c005848:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005850 <Water_Circle_Get+0x298>
1c00584c:	002a0007 	break	0x7
1c005850:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005854:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005858:	2940698d 	st.h	$r13,$r12,26(0x1a)
1c00585c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005860:	2880b18d 	ld.w	$r13,$r12,44(0x2c)
1c005864:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005868:	002131ae 	div.wu	$r14,$r13,$r12
1c00586c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005874 <Water_Circle_Get+0x2bc>
1c005870:	002a0007 	break	0x7
1c005874:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005878:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00587c:	2940a98d 	st.h	$r13,$r12,42(0x2a)
1c005880:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005884:	2880f18d 	ld.w	$r13,$r12,60(0x3c)
1c005888:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00588c:	002131ae 	div.wu	$r14,$r13,$r12
1c005890:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005898 <Water_Circle_Get+0x2e0>
1c005894:	002a0007 	break	0x7
1c005898:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c00589c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0058a0:	2940e98d 	st.h	$r13,$r12,58(0x3a)
1c0058a4:	03400000 	andi	$r0,$r0,0x0
1c0058a8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0058ac:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0058b0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0058b4:	4c000020 	jirl	$r0,$r1,0

1c0058b8 <Water_Circle_value_feedback>:
Water_Circle_value_feedback():
1c0058b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0058bc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0058c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0058c4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0058c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0058cc:	2a40298d 	ld.hu	$r13,$r12,10(0xa)
1c0058d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0058d4:	2941018d 	st.h	$r13,$r12,64(0x40)
1c0058d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0058dc:	2a40698d 	ld.hu	$r13,$r12,26(0x1a)
1c0058e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0058e4:	2941098d 	st.h	$r13,$r12,66(0x42)
1c0058e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0058ec:	2a40a98d 	ld.hu	$r13,$r12,42(0x2a)
1c0058f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0058f4:	2941118d 	st.h	$r13,$r12,68(0x44)
1c0058f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0058fc:	2a40e98d 	ld.hu	$r13,$r12,58(0x3a)
1c005900:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005904:	2941198d 	st.h	$r13,$r12,70(0x46)
1c005908:	03400000 	andi	$r0,$r0,0x0
1c00590c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005910:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005914:	4c000020 	jirl	$r0,$r1,0

1c005918 <Water_Circle_Contrl>:
Water_Circle_Contrl():
1c005918:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00591c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005920:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005924:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005928:	03400000 	andi	$r0,$r0,0x0
1c00592c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005930:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005934:	4c000020 	jirl	$r0,$r1,0

1c005938 <water_circle_type_back>:
water_circle_type_back():
1c005938:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00593c:	29803076 	st.w	$r22,$r3,12(0xc)
1c005940:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005944:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005948:	289be18c 	ld.w	$r12,$r12,1784(0x6f8)
1c00594c:	00150184 	move	$r4,$r12
1c005950:	28803076 	ld.w	$r22,$r3,12(0xc)
1c005954:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005958:	4c000020 	jirl	$r0,$r1,0

1c00595c <led_init>:
led_init():
1c00595c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005960:	29803061 	st.w	$r1,$r3,12(0xc)
1c005964:	29802076 	st.w	$r22,$r3,8(0x8)
1c005968:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00596c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005970:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005974:	57bc27ff 	bl	-17372(0xfffbc24) # 1c001598 <gpio_write_pin>
1c005978:	03400000 	andi	$r0,$r0,0x0
1c00597c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005980:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005984:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005988:	4c000020 	jirl	$r0,$r1,0

1c00598c <led_show>:
led_show():
1c00598c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005990:	29803061 	st.w	$r1,$r3,12(0xc)
1c005994:	29802076 	st.w	$r22,$r3,8(0x8)
1c005998:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00599c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0059a0:	029a598c 	addi.w	$r12,$r12,1686(0x696)
1c0059a4:	2a00018c 	ld.bu	$r12,$r12,0
1c0059a8:	0240058c 	sltui	$r12,$r12,1(0x1)
1c0059ac:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0059b0:	0015018d 	move	$r13,$r12
1c0059b4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0059b8:	0299f98c 	addi.w	$r12,$r12,1662(0x67e)
1c0059bc:	2900018d 	st.b	$r13,$r12,0
1c0059c0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0059c4:	0299c98c 	addi.w	$r12,$r12,1650(0x672)
1c0059c8:	2a00018c 	ld.bu	$r12,$r12,0
1c0059cc:	00150185 	move	$r5,$r12
1c0059d0:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0059d4:	57bbc7ff 	bl	-17468(0xfffbbc4) # 1c001598 <gpio_write_pin>
1c0059d8:	03400000 	andi	$r0,$r0,0x0
1c0059dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0059e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0059e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0059e8:	4c000020 	jirl	$r0,$r1,0

1c0059ec <json_to_send>:
json_to_send():
1c0059ec:	02af0063 	addi.w	$r3,$r3,-1088(0xbc0)
1c0059f0:	2990f061 	st.w	$r1,$r3,1084(0x43c)
1c0059f4:	2990e076 	st.w	$r22,$r3,1080(0x438)
1c0059f8:	2990d077 	st.w	$r23,$r3,1076(0x434)
1c0059fc:	02910076 	addi.w	$r22,$r3,1088(0x440)
1c005a00:	29af32c4 	st.w	$r4,$r22,-1076(0xbcc)
1c005a04:	29af22c5 	st.w	$r5,$r22,-1080(0xbc8)
1c005a08:	293f9ec0 	st.b	$r0,$r22,-25(0xfe7)
1c005a0c:	293f9ac0 	st.b	$r0,$r22,-26(0xfe6)
1c005a10:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005a14:	5001bc00 	b	444(0x1bc) # 1c005bd0 <json_to_send+0x1e4>
1c005a18:	28af32cd 	ld.w	$r13,$r22,-1076(0xbcc)
1c005a1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a20:	0040898c 	slli.w	$r12,$r12,0x2
1c005a24:	001031ac 	add.w	$r12,$r13,$r12
1c005a28:	2880018c 	ld.w	$r12,$r12,0
1c005a2c:	00150184 	move	$r4,$r12
1c005a30:	57de6fff 	bl	-8596(0xfffde6c) # 1c00389c <strlen>
1c005a34:	0015008c 	move	$r12,$r4
1c005a38:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c005a3c:	28af32cd 	ld.w	$r13,$r22,-1076(0xbcc)
1c005a40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a44:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c005a48:	0040858c 	slli.w	$r12,$r12,0x1
1c005a4c:	001031ac 	add.w	$r12,$r13,$r12
1c005a50:	2a40018c 	ld.hu	$r12,$r12,0
1c005a54:	02bf82cd 	addi.w	$r13,$r22,-32(0xfe0)
1c005a58:	00150185 	move	$r5,$r12
1c005a5c:	001501a4 	move	$r4,$r13
1c005a60:	57dc23ff 	bl	-9184(0xfffdc20) # 1c003680 <itoa>
1c005a64:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c005a68:	00150184 	move	$r4,$r12
1c005a6c:	57de33ff 	bl	-8656(0xfffde30) # 1c00389c <strlen>
1c005a70:	0015008c 	move	$r12,$r4
1c005a74:	293f9acc 	st.b	$r12,$r22,-26(0xfe6)
1c005a78:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005a7c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005a80:	58002dac 	beq	$r13,$r12,44(0x2c) # 1c005aac <json_to_send+0xc0>
1c005a84:	2a3f9acc 	ld.bu	$r12,$r22,-26(0xfe6)
1c005a88:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005a8c:	001031ad 	add.w	$r13,$r13,$r12
1c005a90:	0280b00c 	addi.w	$r12,$r0,44(0x2c)
1c005a94:	293fc1ac 	st.b	$r12,$r13,-16(0xff0)
1c005a98:	2a3f9acc 	ld.bu	$r12,$r22,-26(0xfe6)
1c005a9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005aa0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005aa4:	001031ac 	add.w	$r12,$r13,$r12
1c005aa8:	293fc180 	st.b	$r0,$r12,-16(0xff0)
1c005aac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ab0:	0040a18c 	slli.w	$r12,$r12,0x8
1c005ab4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005ab8:	001031ac 	add.w	$r12,$r13,$r12
1c005abc:	0280880d 	addi.w	$r13,$r0,34(0x22)
1c005ac0:	292fc18d 	st.b	$r13,$r12,-1040(0xbf0)
1c005ac4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005ac8:	50005000 	b	80(0x50) # 1c005b18 <json_to_send+0x12c>
1c005acc:	28af32cd 	ld.w	$r13,$r22,-1076(0xbcc)
1c005ad0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ad4:	0040898c 	slli.w	$r12,$r12,0x2
1c005ad8:	001031ac 	add.w	$r12,$r13,$r12
1c005adc:	2880018d 	ld.w	$r13,$r12,0
1c005ae0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005ae4:	001031ac 	add.w	$r12,$r13,$r12
1c005ae8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005aec:	028005ae 	addi.w	$r14,$r13,1(0x1)
1c005af0:	2a00018d 	ld.bu	$r13,$r12,0
1c005af4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005af8:	0040a18c 	slli.w	$r12,$r12,0x8
1c005afc:	02bfc2cf 	addi.w	$r15,$r22,-16(0xff0)
1c005b00:	001031ec 	add.w	$r12,$r15,$r12
1c005b04:	0010398c 	add.w	$r12,$r12,$r14
1c005b08:	292fc18d 	st.b	$r13,$r12,-1040(0xbf0)
1c005b0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005b10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b14:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005b18:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c005b1c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005b20:	63ffadac 	blt	$r13,$r12,-84(0x3ffac) # 1c005acc <json_to_send+0xe0>
1c005b24:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c005b28:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c005b2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b30:	0040a18c 	slli.w	$r12,$r12,0x8
1c005b34:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c005b38:	001031cc 	add.w	$r12,$r14,$r12
1c005b3c:	0010358c 	add.w	$r12,$r12,$r13
1c005b40:	0280880d 	addi.w	$r13,$r0,34(0x22)
1c005b44:	292fc18d 	st.b	$r13,$r12,-1040(0xbf0)
1c005b48:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c005b4c:	0280098d 	addi.w	$r13,$r12,2(0x2)
1c005b50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b54:	0040a18c 	slli.w	$r12,$r12,0x8
1c005b58:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c005b5c:	001031cc 	add.w	$r12,$r14,$r12
1c005b60:	0010358c 	add.w	$r12,$r12,$r13
1c005b64:	0280e80d 	addi.w	$r13,$r0,58(0x3a)
1c005b68:	292fc18d 	st.b	$r13,$r12,-1040(0xbf0)
1c005b6c:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c005b70:	02800d8d 	addi.w	$r13,$r12,3(0x3)
1c005b74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b78:	0040a18c 	slli.w	$r12,$r12,0x8
1c005b7c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c005b80:	001031cc 	add.w	$r12,$r14,$r12
1c005b84:	0010358c 	add.w	$r12,$r12,$r13
1c005b88:	292fc180 	st.b	$r0,$r12,-1040(0xbf0)
1c005b8c:	02af82cd 	addi.w	$r13,$r22,-1056(0xbe0)
1c005b90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b94:	0040a18c 	slli.w	$r12,$r12,0x8
1c005b98:	001031ac 	add.w	$r12,$r13,$r12
1c005b9c:	02bf82cd 	addi.w	$r13,$r22,-32(0xfe0)
1c005ba0:	001501a5 	move	$r5,$r13
1c005ba4:	00150184 	move	$r4,$r12
1c005ba8:	57dc57ff 	bl	-9132(0xfffdc54) # 1c0037fc <strcat>
1c005bac:	0015008d 	move	$r13,$r4
1c005bb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005bb4:	0040898c 	slli.w	$r12,$r12,0x2
1c005bb8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c005bbc:	001031cc 	add.w	$r12,$r14,$r12
1c005bc0:	29af818d 	st.w	$r13,$r12,-1056(0xbe0)
1c005bc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005bc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005bcc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005bd0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005bd4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005bd8:	67fe418d 	bge	$r12,$r13,-448(0x3fe40) # 1c005a18 <json_to_send+0x2c>
1c005bdc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005be0:	2891918c 	ld.w	$r12,$r12,1124(0x464)
1c005be4:	2880018c 	ld.w	$r12,$r12,0
1c005be8:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c005bec:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005bf0:	2891518c 	ld.w	$r12,$r12,1108(0x454)
1c005bf4:	2980018d 	st.w	$r13,$r12,0
1c005bf8:	28af42cc 	ld.w	$r12,$r22,-1072(0xbd0)
1c005bfc:	28af52cd 	ld.w	$r13,$r22,-1068(0xbd4)
1c005c00:	001501a5 	move	$r5,$r13
1c005c04:	00150184 	move	$r4,$r12
1c005c08:	57dbf7ff 	bl	-9228(0xfffdbf4) # 1c0037fc <strcat>
1c005c0c:	00150097 	move	$r23,$r4
1c005c10:	28af62cc 	ld.w	$r12,$r22,-1064(0xbd8)
1c005c14:	28af72cd 	ld.w	$r13,$r22,-1060(0xbdc)
1c005c18:	001501a5 	move	$r5,$r13
1c005c1c:	00150184 	move	$r4,$r12
1c005c20:	57dbdfff 	bl	-9252(0xfffdbdc) # 1c0037fc <strcat>
1c005c24:	0015008c 	move	$r12,$r4
1c005c28:	00150185 	move	$r5,$r12
1c005c2c:	001502e4 	move	$r4,$r23
1c005c30:	57dbcfff 	bl	-9268(0xfffdbcc) # 1c0037fc <strcat>
1c005c34:	0015008d 	move	$r13,$r4
1c005c38:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c3c:	2890218c 	ld.w	$r12,$r12,1032(0x408)
1c005c40:	2980018d 	st.w	$r13,$r12,0
1c005c44:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c48:	288ff18c 	ld.w	$r12,$r12,1020(0x3fc)
1c005c4c:	2880018c 	ld.w	$r12,$r12,0
1c005c50:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005c54:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c58:	288fb18c 	ld.w	$r12,$r12,1004(0x3ec)
1c005c5c:	2980018d 	st.w	$r13,$r12,0
1c005c60:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c64:	288f818c 	ld.w	$r12,$r12,992(0x3e0)
1c005c68:	2880018c 	ld.w	$r12,$r12,0
1c005c6c:	0281ec0d 	addi.w	$r13,$r0,123(0x7b)
1c005c70:	2900018d 	st.b	$r13,$r12,0
1c005c74:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c78:	288f318c 	ld.w	$r12,$r12,972(0x3cc)
1c005c7c:	2880018c 	ld.w	$r12,$r12,0
1c005c80:	00150184 	move	$r4,$r12
1c005c84:	57dc1bff 	bl	-9192(0xfffdc18) # 1c00389c <strlen>
1c005c88:	0015008c 	move	$r12,$r4
1c005c8c:	293f96cc 	st.b	$r12,$r22,-27(0xfe5)
1c005c90:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c94:	288ec18c 	ld.w	$r12,$r12,944(0x3b0)
1c005c98:	2880018d 	ld.w	$r13,$r12,0
1c005c9c:	2a3f96cc 	ld.bu	$r12,$r22,-27(0xfe5)
1c005ca0:	001031ac 	add.w	$r12,$r13,$r12
1c005ca4:	0281f40d 	addi.w	$r13,$r0,125(0x7d)
1c005ca8:	2900018d 	st.b	$r13,$r12,0
1c005cac:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005cb0:	288e518c 	ld.w	$r12,$r12,916(0x394)
1c005cb4:	2880018d 	ld.w	$r13,$r12,0
1c005cb8:	2a3f96cc 	ld.bu	$r12,$r22,-27(0xfe5)
1c005cbc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005cc0:	001031ac 	add.w	$r12,$r13,$r12
1c005cc4:	29000180 	st.b	$r0,$r12,0
1c005cc8:	2a3f96cc 	ld.bu	$r12,$r22,-27(0xfe5)
1c005ccc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005cd0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005cd4:	28af22cc 	ld.w	$r12,$r22,-1080(0xbc8)
1c005cd8:	2900018d 	st.b	$r13,$r12,0
1c005cdc:	03400000 	andi	$r0,$r0,0x0
1c005ce0:	2890f061 	ld.w	$r1,$r3,1084(0x43c)
1c005ce4:	2890e076 	ld.w	$r22,$r3,1080(0x438)
1c005ce8:	2890d077 	ld.w	$r23,$r3,1076(0x434)
1c005cec:	02910063 	addi.w	$r3,$r3,1088(0x440)
1c005cf0:	4c000020 	jirl	$r0,$r1,0

1c005cf4 <esp8266_send_json>:
esp8266_send_json():
1c005cf4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005cf8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005cfc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005d00:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005d04:	0015008c 	move	$r12,$r4
1c005d08:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005d0c:	001500cd 	move	$r13,$r6
1c005d10:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005d14:	001501ac 	move	$r12,$r13
1c005d18:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005d1c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005d20:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005d24:	00150185 	move	$r5,$r12
1c005d28:	28bfa2c4 	ld.w	$r4,$r22,-24(0xfe8)
1c005d2c:	57d957ff 	bl	-9900(0xfffd954) # 1c003680 <itoa>
1c005d30:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c005d34:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005d38:	02a640a5 	addi.w	$r5,$r5,-1648(0x990)
1c005d3c:	00150004 	move	$r4,$r0
1c005d40:	57c313ff 	bl	-15600(0xfffc310) # 1c002050 <myprintf2>
1c005d44:	0280c804 	addi.w	$r4,$r0,50(0x32)
1c005d48:	57d7d3ff 	bl	-10288(0xfffd7d0) # 1c003518 <delay_ms>
1c005d4c:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005d50:	02a6d0a5 	addi.w	$r5,$r5,-1612(0x9b4)
1c005d54:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005d58:	288c0084 	ld.w	$r4,$r4,768(0x300)
1c005d5c:	54055800 	bl	1368(0x558) # 1c0062b4 <esp8266_check_cmd>
1c005d60:	0015008c 	move	$r12,$r4
1c005d64:	43ffe19f 	beqz	$r12,-32(0x7fffe0) # 1c005d44 <esp8266_send_json+0x50>
1c005d68:	54090000 	bl	2304(0x900) # 1c006668 <esp8266_send_isno>
1c005d6c:	54006000 	bl	96(0x60) # 1c005dcc <json_to_callback>
1c005d70:	03400000 	andi	$r0,$r0,0x0
1c005d74:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005d78:	288b318c 	ld.w	$r12,$r12,716(0x2cc)
1c005d7c:	2880018c 	ld.w	$r12,$r12,0
1c005d80:	00150184 	move	$r4,$r12
1c005d84:	5408a800 	bl	2216(0x8a8) # 1c00662c <esp8266_send_data>
1c005d88:	0280c804 	addi.w	$r4,$r0,50(0x32)
1c005d8c:	57d78fff 	bl	-10356(0xfffd78c) # 1c003518 <delay_ms>
1c005d90:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005d94:	02a5d0a5 	addi.w	$r5,$r5,-1676(0x974)
1c005d98:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005d9c:	288af084 	ld.w	$r4,$r4,700(0x2bc)
1c005da0:	54051400 	bl	1300(0x514) # 1c0062b4 <esp8266_check_cmd>
1c005da4:	0015008c 	move	$r12,$r4
1c005da8:	43ffe19f 	beqz	$r12,-32(0x7fffe0) # 1c005d88 <esp8266_send_json+0x94>
1c005dac:	5408bc00 	bl	2236(0x8bc) # 1c006668 <esp8266_send_isno>
1c005db0:	54001c00 	bl	28(0x1c) # 1c005dcc <json_to_callback>
1c005db4:	03400000 	andi	$r0,$r0,0x0
1c005db8:	03400000 	andi	$r0,$r0,0x0
1c005dbc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005dc0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005dc4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005dc8:	4c000020 	jirl	$r0,$r1,0

1c005dcc <json_to_callback>:
json_to_callback():
1c005dcc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005dd0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005dd4:	29806076 	st.w	$r22,$r3,24(0x18)
1c005dd8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005ddc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005de0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c005de4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005de8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005dec:	2888818c 	ld.w	$r12,$r12,544(0x220)
1c005df0:	29100180 	st.b	$r0,$r12,1024(0x400)
1c005df4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005df8:	2888518c 	ld.w	$r12,$r12,532(0x214)
1c005dfc:	29100580 	st.b	$r0,$r12,1025(0x401)
1c005e00:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005e04:	2888218c 	ld.w	$r12,$r12,520(0x208)
1c005e08:	29100980 	st.b	$r0,$r12,1026(0x402)
1c005e0c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005e10:	2887f18c 	ld.w	$r12,$r12,508(0x1fc)
1c005e14:	29100d80 	st.b	$r0,$r12,1027(0x403)
1c005e18:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005e1c:	28881084 	ld.w	$r4,$r4,516(0x204)
1c005e20:	5408c400 	bl	2244(0x8c4) # 1c0066e4 <Queue_isEmpty>
1c005e24:	0015008c 	move	$r12,$r4
1c005e28:	44045580 	bnez	$r12,1108(0x454) # 1c00627c <json_to_callback+0x4b0>
1c005e2c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005e30:	2887c084 	ld.w	$r4,$r4,496(0x1f0)
1c005e34:	54090000 	bl	2304(0x900) # 1c006734 <Queue_HadUse>
1c005e38:	0015008c 	move	$r12,$r4
1c005e3c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005e40:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005e44:	2887918c 	ld.w	$r12,$r12,484(0x1e4)
1c005e48:	2900018d 	st.b	$r13,$r12,0
1c005e4c:	02900006 	addi.w	$r6,$r0,1024(0x400)
1c005e50:	00150005 	move	$r5,$r0
1c005e54:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005e58:	28877084 	ld.w	$r4,$r4,476(0x1dc)
1c005e5c:	57d6ffff 	bl	-10500(0xfffd6fc) # 1c003558 <memset>
1c005e60:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005e64:	2887118c 	ld.w	$r12,$r12,452(0x1c4)
1c005e68:	2a00018c 	ld.bu	$r12,$r12,0
1c005e6c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005e70:	00150186 	move	$r6,$r12
1c005e74:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c005e78:	2886f0a5 	ld.w	$r5,$r5,444(0x1bc)
1c005e7c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005e80:	28868084 	ld.w	$r4,$r4,416(0x1a0)
1c005e84:	540a5c00 	bl	2652(0xa5c) # 1c0068e0 <Queue_Read>
1c005e88:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005e8c:	2886718c 	ld.w	$r12,$r12,412(0x19c)
1c005e90:	2a00018c 	ld.bu	$r12,$r12,0
1c005e94:	0015018d 	move	$r13,$r12
1c005e98:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005e9c:	2886618c 	ld.w	$r12,$r12,408(0x198)
1c005ea0:	0010358c 	add.w	$r12,$r12,$r13
1c005ea4:	29000180 	st.b	$r0,$r12,0
1c005ea8:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c005eac:	288620a5 	ld.w	$r5,$r5,392(0x188)
1c005eb0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005eb4:	02a18084 	addi.w	$r4,$r4,-1952(0x860)
1c005eb8:	57bdf7ff 	bl	-16908(0xfffbdf4) # 1c001cac <myprintf>
1c005ebc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ec0:	2885a18c 	ld.w	$r12,$r12,360(0x168)
1c005ec4:	2a00018c 	ld.bu	$r12,$r12,0
1c005ec8:	00150185 	move	$r5,$r12
1c005ecc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005ed0:	02a13084 	addi.w	$r4,$r4,-1972(0x84c)
1c005ed4:	57bddbff 	bl	-16936(0xfffbdd8) # 1c001cac <myprintf>
1c005ed8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005edc:	50005400 	b	84(0x54) # 1c005f30 <json_to_callback+0x164>
1c005ee0:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c005ee4:	288541ad 	ld.w	$r13,$r13,336(0x150)
1c005ee8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005eec:	001031ac 	add.w	$r12,$r13,$r12
1c005ef0:	2a00018d 	ld.bu	$r13,$r12,0
1c005ef4:	0280b00c 	addi.w	$r12,$r0,44(0x2c)
1c005ef8:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c005f24 <json_to_callback+0x158>
1c005efc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f00:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005f04:	1cc7ff6e 	pcaddu12i	$r14,409595(0x63ffb)
1c005f08:	2884c1ce 	ld.w	$r14,$r14,304(0x130)
1c005f0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005f10:	001031cc 	add.w	$r12,$r14,$r12
1c005f14:	2900018d 	st.b	$r13,$r12,0
1c005f18:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005f1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f20:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005f24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005f30:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005f34:	2883d18c 	ld.w	$r12,$r12,244(0xf4)
1c005f38:	2a00018c 	ld.bu	$r12,$r12,0
1c005f3c:	0015018d 	move	$r13,$r12
1c005f40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f44:	63ff9d8d 	blt	$r12,$r13,-100(0x3ff9c) # 1c005ee0 <json_to_callback+0x114>
1c005f48:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005f4c:	2883b18c 	ld.w	$r12,$r12,236(0xec)
1c005f50:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005f54:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f58:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005f5c:	50005400 	b	84(0x54) # 1c005fb0 <json_to_callback+0x1e4>
1c005f60:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005f64:	2883918c 	ld.w	$r12,$r12,228(0xe4)
1c005f68:	2880018d 	ld.w	$r13,$r12,0
1c005f6c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005f70:	2883218c 	ld.w	$r12,$r12,200(0xc8)
1c005f74:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005f78:	0015018e 	move	$r14,$r12
1c005f7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f80:	0011398c 	sub.w	$r12,$r12,$r14
1c005f84:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005f88:	001031ac 	add.w	$r12,$r13,$r12
1c005f8c:	1cc7ff6e 	pcaddu12i	$r14,409595(0x63ffb)
1c005f90:	288291ce 	ld.w	$r14,$r14,164(0xa4)
1c005f94:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005f98:	001035cd 	add.w	$r13,$r14,$r13
1c005f9c:	2a0001ad 	ld.bu	$r13,$r13,0
1c005fa0:	2900018d 	st.b	$r13,$r12,0
1c005fa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005fa8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005fac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005fb0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005fb4:	2882118c 	ld.w	$r12,$r12,132(0x84)
1c005fb8:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005fbc:	0015018d 	move	$r13,$r12
1c005fc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005fc4:	63ff9d8d 	blt	$r12,$r13,-100(0x3ff9c) # 1c005f60 <json_to_callback+0x194>
1c005fc8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005fcc:	2881b18c 	ld.w	$r12,$r12,108(0x6c)
1c005fd0:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005fd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005fd8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005fdc:	50005400 	b	84(0x54) # 1c006030 <json_to_callback+0x264>
1c005fe0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005fe4:	2881218c 	ld.w	$r12,$r12,72(0x48)
1c005fe8:	2880018d 	ld.w	$r13,$r12,0
1c005fec:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ff0:	2881218c 	ld.w	$r12,$r12,72(0x48)
1c005ff4:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005ff8:	0015018e 	move	$r14,$r12
1c005ffc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006000:	0011398c 	sub.w	$r12,$r12,$r14
1c006004:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006008:	001031ac 	add.w	$r12,$r13,$r12
1c00600c:	1cc7ff6e 	pcaddu12i	$r14,409595(0x63ffb)
1c006010:	288091ce 	ld.w	$r14,$r14,36(0x24)
1c006014:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006018:	001035cd 	add.w	$r13,$r14,$r13
1c00601c:	2a0001ad 	ld.bu	$r13,$r13,0
1c006020:	2900018d 	st.b	$r13,$r12,0
1c006024:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006028:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00602c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006030:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006034:	28bfd18c 	ld.w	$r12,$r12,-12(0xff4)
1c006038:	2a00018c 	ld.bu	$r12,$r12,0
1c00603c:	0015018d 	move	$r13,$r12
1c006040:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006044:	63ff9d8d 	blt	$r12,$r13,-100(0x3ff9c) # 1c005fe0 <json_to_callback+0x214>
1c006048:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00604c:	28bf818c 	ld.w	$r12,$r12,-32(0xfe0)
1c006050:	2880018c 	ld.w	$r12,$r12,0
1c006054:	2a00018c 	ld.bu	$r12,$r12,0
1c006058:	00150185 	move	$r5,$r12
1c00605c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006060:	029b1084 	addi.w	$r4,$r4,1732(0x6c4)
1c006064:	57bc4bff 	bl	-17336(0xfffbc48) # 1c001cac <myprintf>
1c006068:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00606c:	28bf018c 	ld.w	$r12,$r12,-64(0xfc0)
1c006070:	2880018c 	ld.w	$r12,$r12,0
1c006074:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006078:	2a00018c 	ld.bu	$r12,$r12,0
1c00607c:	00150185 	move	$r5,$r12
1c006080:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006084:	029a8084 	addi.w	$r4,$r4,1696(0x6a0)
1c006088:	57bc27ff 	bl	-17372(0xfffbc24) # 1c001cac <myprintf>
1c00608c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006090:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c006094:	2880018c 	ld.w	$r12,$r12,0
1c006098:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c00609c:	2a00018c 	ld.bu	$r12,$r12,0
1c0060a0:	00150185 	move	$r5,$r12
1c0060a4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0060a8:	0299f084 	addi.w	$r4,$r4,1660(0x67c)
1c0060ac:	57bc03ff 	bl	-17408(0xfffbc00) # 1c001cac <myprintf>
1c0060b0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0060b4:	28bde18c 	ld.w	$r12,$r12,-136(0xf78)
1c0060b8:	2880018c 	ld.w	$r12,$r12,0
1c0060bc:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c0060c0:	2a00018c 	ld.bu	$r12,$r12,0
1c0060c4:	00150185 	move	$r5,$r12
1c0060c8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0060cc:	02996084 	addi.w	$r4,$r4,1624(0x658)
1c0060d0:	57bbdfff 	bl	-17444(0xfffbbdc) # 1c001cac <myprintf>
1c0060d4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0060d8:	28bd518c 	ld.w	$r12,$r12,-172(0xf54)
1c0060dc:	2880018c 	ld.w	$r12,$r12,0
1c0060e0:	2a00018d 	ld.bu	$r13,$r12,0
1c0060e4:	0280c40c 	addi.w	$r12,$r0,49(0x31)
1c0060e8:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c006108 <json_to_callback+0x33c>
1c0060ec:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0060f0:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c0060f4:	57b4a7ff 	bl	-19292(0xfffb4a4) # 1c001598 <gpio_write_pin>
1c0060f8:	00150005 	move	$r5,$r0
1c0060fc:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006100:	57b49bff 	bl	-19304(0xfffb498) # 1c001598 <gpio_write_pin>
1c006104:	50003400 	b	52(0x34) # 1c006138 <json_to_callback+0x36c>
1c006108:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00610c:	28bc818c 	ld.w	$r12,$r12,-224(0xf20)
1c006110:	2880018c 	ld.w	$r12,$r12,0
1c006114:	2a00018d 	ld.bu	$r13,$r12,0
1c006118:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c00611c:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c006138 <json_to_callback+0x36c>
1c006120:	00150005 	move	$r5,$r0
1c006124:	02807404 	addi.w	$r4,$r0,29(0x1d)
1c006128:	57b473ff 	bl	-19344(0xfffb470) # 1c001598 <gpio_write_pin>
1c00612c:	00150005 	move	$r5,$r0
1c006130:	02807004 	addi.w	$r4,$r0,28(0x1c)
1c006134:	57b467ff 	bl	-19356(0xfffb464) # 1c001598 <gpio_write_pin>
1c006138:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00613c:	28bbc18c 	ld.w	$r12,$r12,-272(0xef0)
1c006140:	2880018c 	ld.w	$r12,$r12,0
1c006144:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006148:	2a00018d 	ld.bu	$r13,$r12,0
1c00614c:	0280c40c 	addi.w	$r12,$r0,49(0x31)
1c006150:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c006170 <json_to_callback+0x3a4>
1c006154:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006158:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c00615c:	57b43fff 	bl	-19396(0xfffb43c) # 1c001598 <gpio_write_pin>
1c006160:	00150005 	move	$r5,$r0
1c006164:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c006168:	57b433ff 	bl	-19408(0xfffb430) # 1c001598 <gpio_write_pin>
1c00616c:	50003800 	b	56(0x38) # 1c0061a4 <json_to_callback+0x3d8>
1c006170:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006174:	28bae18c 	ld.w	$r12,$r12,-328(0xeb8)
1c006178:	2880018c 	ld.w	$r12,$r12,0
1c00617c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006180:	2a00018d 	ld.bu	$r13,$r12,0
1c006184:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c006188:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c0061a4 <json_to_callback+0x3d8>
1c00618c:	00150005 	move	$r5,$r0
1c006190:	02806c04 	addi.w	$r4,$r0,27(0x1b)
1c006194:	57b407ff 	bl	-19452(0xfffb404) # 1c001598 <gpio_write_pin>
1c006198:	00150005 	move	$r5,$r0
1c00619c:	02806804 	addi.w	$r4,$r0,26(0x1a)
1c0061a0:	57b3fbff 	bl	-19464(0xfffb3f8) # 1c001598 <gpio_write_pin>
1c0061a4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0061a8:	28ba118c 	ld.w	$r12,$r12,-380(0xe84)
1c0061ac:	2880018c 	ld.w	$r12,$r12,0
1c0061b0:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0061b4:	2a00018d 	ld.bu	$r13,$r12,0
1c0061b8:	0280c40c 	addi.w	$r12,$r0,49(0x31)
1c0061bc:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c0061dc <json_to_callback+0x410>
1c0061c0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0061c4:	02805c04 	addi.w	$r4,$r0,23(0x17)
1c0061c8:	57b3d3ff 	bl	-19504(0xfffb3d0) # 1c001598 <gpio_write_pin>
1c0061cc:	00150005 	move	$r5,$r0
1c0061d0:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0061d4:	57b3c7ff 	bl	-19516(0xfffb3c4) # 1c001598 <gpio_write_pin>
1c0061d8:	50003800 	b	56(0x38) # 1c006210 <json_to_callback+0x444>
1c0061dc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0061e0:	28b9318c 	ld.w	$r12,$r12,-436(0xe4c)
1c0061e4:	2880018c 	ld.w	$r12,$r12,0
1c0061e8:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c0061ec:	2a00018d 	ld.bu	$r13,$r12,0
1c0061f0:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0061f4:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c006210 <json_to_callback+0x444>
1c0061f8:	00150005 	move	$r5,$r0
1c0061fc:	02805c04 	addi.w	$r4,$r0,23(0x17)
1c006200:	57b39bff 	bl	-19560(0xfffb398) # 1c001598 <gpio_write_pin>
1c006204:	00150005 	move	$r5,$r0
1c006208:	02805804 	addi.w	$r4,$r0,22(0x16)
1c00620c:	57b38fff 	bl	-19572(0xfffb38c) # 1c001598 <gpio_write_pin>
1c006210:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006214:	28b8618c 	ld.w	$r12,$r12,-488(0xe18)
1c006218:	2880018c 	ld.w	$r12,$r12,0
1c00621c:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c006220:	2a00018d 	ld.bu	$r13,$r12,0
1c006224:	0280c40c 	addi.w	$r12,$r0,49(0x31)
1c006228:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c006248 <json_to_callback+0x47c>
1c00622c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006230:	02806404 	addi.w	$r4,$r0,25(0x19)
1c006234:	57b367ff 	bl	-19612(0xfffb364) # 1c001598 <gpio_write_pin>
1c006238:	00150005 	move	$r5,$r0
1c00623c:	02806004 	addi.w	$r4,$r0,24(0x18)
1c006240:	57b35bff 	bl	-19624(0xfffb358) # 1c001598 <gpio_write_pin>
1c006244:	50003800 	b	56(0x38) # 1c00627c <json_to_callback+0x4b0>
1c006248:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00624c:	28b7818c 	ld.w	$r12,$r12,-544(0xde0)
1c006250:	2880018c 	ld.w	$r12,$r12,0
1c006254:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c006258:	2a00018d 	ld.bu	$r13,$r12,0
1c00625c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c006260:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c00627c <json_to_callback+0x4b0>
1c006264:	00150005 	move	$r5,$r0
1c006268:	02806404 	addi.w	$r4,$r0,25(0x19)
1c00626c:	57b32fff 	bl	-19668(0xfffb32c) # 1c001598 <gpio_write_pin>
1c006270:	00150005 	move	$r5,$r0
1c006274:	02806004 	addi.w	$r4,$r0,24(0x18)
1c006278:	57b323ff 	bl	-19680(0xfffb320) # 1c001598 <gpio_write_pin>
1c00627c:	03400000 	andi	$r0,$r0,0x0
1c006280:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006284:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006288:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00628c:	4c000020 	jirl	$r0,$r1,0

1c006290 <json_backage_value_get>:
json_backage_value_get():
1c006290:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006294:	29803076 	st.w	$r22,$r3,12(0xc)
1c006298:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00629c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062a0:	28b5b18c 	ld.w	$r12,$r12,-660(0xd6c)
1c0062a4:	00150184 	move	$r4,$r12
1c0062a8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0062ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0062b0:	4c000020 	jirl	$r0,$r1,0

1c0062b4 <esp8266_check_cmd>:
esp8266_check_cmd():
1c0062b4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0062b8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0062bc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0062c0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0062c4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0062c8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0062cc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0062d0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0062d4:	54041000 	bl	1040(0x410) # 1c0066e4 <Queue_isEmpty>
1c0062d8:	0015008c 	move	$r12,$r4
1c0062dc:	44008d80 	bnez	$r12,140(0x8c) # 1c006368 <esp8266_check_cmd+0xb4>
1c0062e0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0062e4:	54045000 	bl	1104(0x450) # 1c006734 <Queue_HadUse>
1c0062e8:	0015008c 	move	$r12,$r4
1c0062ec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0062f0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062f4:	28b4918c 	ld.w	$r12,$r12,-732(0xd24)
1c0062f8:	2900018d 	st.b	$r13,$r12,0
1c0062fc:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c006300:	00150005 	move	$r5,$r0
1c006304:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006308:	28b55084 	ld.w	$r4,$r4,-684(0xd54)
1c00630c:	57d24fff 	bl	-11700(0xfffd24c) # 1c003558 <memset>
1c006310:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006314:	28b4118c 	ld.w	$r12,$r12,-764(0xd04)
1c006318:	2a00018c 	ld.bu	$r12,$r12,0
1c00631c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006320:	00150186 	move	$r6,$r12
1c006324:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c006328:	28b4d0a5 	ld.w	$r5,$r5,-716(0xd34)
1c00632c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c006330:	5405b000 	bl	1456(0x5b0) # 1c0068e0 <Queue_Read>
1c006334:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006338:	28b3818c 	ld.w	$r12,$r12,-800(0xce0)
1c00633c:	2a00018c 	ld.bu	$r12,$r12,0
1c006340:	0015018d 	move	$r13,$r12
1c006344:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006348:	28b4518c 	ld.w	$r12,$r12,-748(0xd14)
1c00634c:	0010358c 	add.w	$r12,$r12,$r13
1c006350:	29000180 	st.b	$r0,$r12,0
1c006354:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c006358:	28b410a5 	ld.w	$r5,$r5,-764(0xd04)
1c00635c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006360:	028f2084 	addi.w	$r4,$r4,968(0x3c8)
1c006364:	57b94bff 	bl	-18104(0xfffb948) # 1c001cac <myprintf>
1c006368:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c00636c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006370:	28b3b084 	ld.w	$r4,$r4,-788(0xcec)
1c006374:	57d247ff 	bl	-11708(0xfffd244) # 1c0035b8 <pstrstr>
1c006378:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00637c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006380:	00150184 	move	$r4,$r12
1c006384:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006388:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00638c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006390:	4c000020 	jirl	$r0,$r1,0

1c006394 <esp8266_send_cmd>:
esp8266_send_cmd():
1c006394:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006398:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00639c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0063a0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0063a4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0063a8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0063ac:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0063b0:	001500ec 	move	$r12,$r7
1c0063b4:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c0063b8:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0063bc:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0063c0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0063c4:	028db084 	addi.w	$r4,$r4,876(0x36c)
1c0063c8:	57b8e7ff 	bl	-18204(0xfffb8e4) # 1c001cac <myprintf>
1c0063cc:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c0063d0:	1c000025 	pcaddu12i	$r5,1(0x1)
1c0063d4:	028da0a5 	addi.w	$r5,$r5,872(0x368)
1c0063d8:	00150004 	move	$r4,$r0
1c0063dc:	57bc77ff 	bl	-17292(0xfffbc74) # 1c002050 <myprintf2>
1c0063e0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0063e4:	40007d80 	beqz	$r12,124(0x7c) # 1c006460 <esp8266_send_cmd+0xcc>
1c0063e8:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c0063ec:	40007580 	beqz	$r12,116(0x74) # 1c006460 <esp8266_send_cmd+0xcc>
1c0063f0:	50003400 	b	52(0x34) # 1c006424 <esp8266_send_cmd+0x90>
1c0063f4:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c0063f8:	57d123ff 	bl	-12000(0xfffd120) # 1c003518 <delay_ms>
1c0063fc:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c006400:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c006404:	57feb3ff 	bl	-336(0xffffeb0) # 1c0062b4 <esp8266_check_cmd>
1c006408:	0015008c 	move	$r12,$r4
1c00640c:	40001980 	beqz	$r12,24(0x18) # 1c006424 <esp8266_send_cmd+0x90>
1c006410:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c006414:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006418:	028ca084 	addi.w	$r4,$r4,808(0x328)
1c00641c:	57b893ff 	bl	-18288(0xfffb890) # 1c001cac <myprintf>
1c006420:	50001800 	b	24(0x18) # 1c006438 <esp8266_send_cmd+0xa4>
1c006424:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c006428:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00642c:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c006430:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c006434:	47ffc19f 	bnez	$r12,-64(0x7fffc0) # 1c0063f4 <esp8266_send_cmd+0x60>
1c006438:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c00643c:	44001180 	bnez	$r12,16(0x10) # 1c00644c <esp8266_send_cmd+0xb8>
1c006440:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006444:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006448:	50001800 	b	24(0x18) # 1c006460 <esp8266_send_cmd+0xcc>
1c00644c:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c006450:	00150185 	move	$r5,$r12
1c006454:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006458:	028bd084 	addi.w	$r4,$r4,756(0x2f4)
1c00645c:	57b853ff 	bl	-18352(0xfffb850) # 1c001cac <myprintf>
1c006460:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c006464:	00150184 	move	$r4,$r12
1c006468:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00646c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006470:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006474:	4c000020 	jirl	$r0,$r1,0

1c006478 <esp8266_init>:
esp8266_init():
1c006478:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00647c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006480:	29802076 	st.w	$r22,$r3,8(0x8)
1c006484:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006488:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00648c:	028b3084 	addi.w	$r4,$r4,716(0x2cc)
1c006490:	57b81fff 	bl	-18404(0xfffb81c) # 1c001cac <myprintf>
1c006494:	02825807 	addi.w	$r7,$r0,150(0x96)
1c006498:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00649c:	028b10c6 	addi.w	$r6,$r6,708(0x2c4)
1c0064a0:	1c000025 	pcaddu12i	$r5,1(0x1)
1c0064a4:	028b00a5 	addi.w	$r5,$r5,704(0x2c0)
1c0064a8:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0064ac:	28aeb084 	ld.w	$r4,$r4,-1108(0xbac)
1c0064b0:	57fee7ff 	bl	-284(0xffffee4) # 1c006394 <esp8266_send_cmd>
1c0064b4:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0064b8:	57d063ff 	bl	-12192(0xfffd060) # 1c003518 <delay_ms>
1c0064bc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0064c0:	028aa084 	addi.w	$r4,$r4,680(0x2a8)
1c0064c4:	57b7ebff 	bl	-18456(0xfffb7e8) # 1c001cac <myprintf>
1c0064c8:	03400000 	andi	$r0,$r0,0x0
1c0064cc:	02825807 	addi.w	$r7,$r0,150(0x96)
1c0064d0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0064d4:	028a30c6 	addi.w	$r6,$r6,652(0x28c)
1c0064d8:	1c000025 	pcaddu12i	$r5,1(0x1)
1c0064dc:	028a70a5 	addi.w	$r5,$r5,668(0x29c)
1c0064e0:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0064e4:	28add084 	ld.w	$r4,$r4,-1164(0xb74)
1c0064e8:	57feafff 	bl	-340(0xffffeac) # 1c006394 <esp8266_send_cmd>
1c0064ec:	0015008c 	move	$r12,$r4
1c0064f0:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c0064cc <esp8266_init+0x54>
1c0064f4:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0064f8:	57d023ff 	bl	-12256(0xfffd020) # 1c003518 <delay_ms>
1c0064fc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006500:	028a1084 	addi.w	$r4,$r4,644(0x284)
1c006504:	57b7abff 	bl	-18520(0xfffb7a8) # 1c001cac <myprintf>
1c006508:	03400000 	andi	$r0,$r0,0x0
1c00650c:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c006510:	1c000026 	pcaddu12i	$r6,1(0x1)
1c006514:	028930c6 	addi.w	$r6,$r6,588(0x24c)
1c006518:	1c000025 	pcaddu12i	$r5,1(0x1)
1c00651c:	028a40a5 	addi.w	$r5,$r5,656(0x290)
1c006520:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006524:	28acd084 	ld.w	$r4,$r4,-1228(0xb34)
1c006528:	57fe6fff 	bl	-404(0xffffe6c) # 1c006394 <esp8266_send_cmd>
1c00652c:	0015008c 	move	$r12,$r4
1c006530:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c00650c <esp8266_init+0x94>
1c006534:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006538:	57cfe3ff 	bl	-12320(0xfffcfe0) # 1c003518 <delay_ms>
1c00653c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006540:	028a5084 	addi.w	$r4,$r4,660(0x294)
1c006544:	57b76bff 	bl	-18584(0xfffb768) # 1c001cac <myprintf>
1c006548:	03400000 	andi	$r0,$r0,0x0
1c00654c:	02825807 	addi.w	$r7,$r0,150(0x96)
1c006550:	1c000026 	pcaddu12i	$r6,1(0x1)
1c006554:	028830c6 	addi.w	$r6,$r6,524(0x20c)
1c006558:	1c000025 	pcaddu12i	$r5,1(0x1)
1c00655c:	028bb0a5 	addi.w	$r5,$r5,748(0x2ec)
1c006560:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006564:	28abd084 	ld.w	$r4,$r4,-1292(0xaf4)
1c006568:	57fe2fff 	bl	-468(0xffffe2c) # 1c006394 <esp8266_send_cmd>
1c00656c:	0015008c 	move	$r12,$r4
1c006570:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c00654c <esp8266_init+0xd4>
1c006574:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006578:	57cfa3ff 	bl	-12384(0xfffcfa0) # 1c003518 <delay_ms>
1c00657c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006580:	028d1084 	addi.w	$r4,$r4,836(0x344)
1c006584:	57b72bff 	bl	-18648(0xfffb728) # 1c001cac <myprintf>
1c006588:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c00658c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c006590:	028740c6 	addi.w	$r6,$r6,464(0x1d0)
1c006594:	1c000025 	pcaddu12i	$r5,1(0x1)
1c006598:	028e40a5 	addi.w	$r5,$r5,912(0x390)
1c00659c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0065a0:	28aae084 	ld.w	$r4,$r4,-1352(0xab8)
1c0065a4:	57fdf3ff 	bl	-528(0xffffdf0) # 1c006394 <esp8266_send_cmd>
1c0065a8:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0065ac:	57cf6fff 	bl	-12436(0xfffcf6c) # 1c003518 <delay_ms>
1c0065b0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0065b4:	028f7084 	addi.w	$r4,$r4,988(0x3dc)
1c0065b8:	57b6f7ff 	bl	-18700(0xfffb6f4) # 1c001cac <myprintf>
1c0065bc:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c0065c0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0065c4:	028670c6 	addi.w	$r6,$r6,412(0x19c)
1c0065c8:	1c000025 	pcaddu12i	$r5,1(0x1)
1c0065cc:	029030a5 	addi.w	$r5,$r5,1036(0x40c)
1c0065d0:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0065d4:	28aa1084 	ld.w	$r4,$r4,-1404(0xa84)
1c0065d8:	57fdbfff 	bl	-580(0xffffdbc) # 1c006394 <esp8266_send_cmd>
1c0065dc:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0065e0:	57cf3bff 	bl	-12488(0xfffcf38) # 1c003518 <delay_ms>
1c0065e4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0065e8:	0290d084 	addi.w	$r4,$r4,1076(0x434)
1c0065ec:	57b6c3ff 	bl	-18752(0xfffb6c0) # 1c001cac <myprintf>
1c0065f0:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c0065f4:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0065f8:	0285a0c6 	addi.w	$r6,$r6,360(0x168)
1c0065fc:	1c000025 	pcaddu12i	$r5,1(0x1)
1c006600:	0290c0a5 	addi.w	$r5,$r5,1072(0x430)
1c006604:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006608:	28a94084 	ld.w	$r4,$r4,-1456(0xa50)
1c00660c:	57fd8bff 	bl	-632(0xffffd88) # 1c006394 <esp8266_send_cmd>
1c006610:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006614:	57cf07ff 	bl	-12540(0xfffcf04) # 1c003518 <delay_ms>
1c006618:	03400000 	andi	$r0,$r0,0x0
1c00661c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006620:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006624:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006628:	4c000020 	jirl	$r0,$r1,0

1c00662c <esp8266_send_data>:
esp8266_send_data():
1c00662c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006630:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006634:	29806076 	st.w	$r22,$r3,24(0x18)
1c006638:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00663c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006640:	28bfb2c6 	ld.w	$r6,$r22,-20(0xfec)
1c006644:	1c000025 	pcaddu12i	$r5,1(0x1)
1c006648:	029060a5 	addi.w	$r5,$r5,1048(0x418)
1c00664c:	00150004 	move	$r4,$r0
1c006650:	57ba03ff 	bl	-17920(0xfffba00) # 1c002050 <myprintf2>
1c006654:	03400000 	andi	$r0,$r0,0x0
1c006658:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00665c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006660:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006664:	4c000020 	jirl	$r0,$r1,0

1c006668 <esp8266_send_isno>:
esp8266_send_isno():
1c006668:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00666c:	29803061 	st.w	$r1,$r3,12(0xc)
1c006670:	29802076 	st.w	$r22,$r3,8(0x8)
1c006674:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006678:	1c000025 	pcaddu12i	$r5,1(0x1)
1c00667c:	028fa0a5 	addi.w	$r5,$r5,1000(0x3e8)
1c006680:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006684:	28a76084 	ld.w	$r4,$r4,-1576(0x9d8)
1c006688:	57cf33ff 	bl	-12496(0xfffcf30) # 1c0035b8 <pstrstr>
1c00668c:	0015008c 	move	$r12,$r4
1c006690:	40002d80 	beqz	$r12,44(0x2c) # 1c0066bc <esp8266_send_isno+0x54>
1c006694:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006698:	28a6018c 	ld.w	$r12,$r12,-1664(0x980)
1c00669c:	2a00018c 	ld.bu	$r12,$r12,0
1c0066a0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0066a4:	00150186 	move	$r6,$r12
1c0066a8:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0066ac:	28a6c0a5 	ld.w	$r5,$r5,-1616(0x9b0)
1c0066b0:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0066b4:	28a5b084 	ld.w	$r4,$r4,-1684(0x96c)
1c0066b8:	54014c00 	bl	332(0x14c) # 1c006804 <Queue_Wirte>
1c0066bc:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c0066c0:	00150005 	move	$r5,$r0
1c0066c4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0066c8:	28a65084 	ld.w	$r4,$r4,-1644(0x994)
1c0066cc:	57ce8fff 	bl	-12660(0xfffce8c) # 1c003558 <memset>
1c0066d0:	03400000 	andi	$r0,$r0,0x0
1c0066d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0066d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0066dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0066e0:	4c000020 	jirl	$r0,$r1,0

1c0066e4 <Queue_isEmpty>:
Queue_isEmpty():
1c0066e4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0066e8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0066ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0066f0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0066f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0066f8:	44000d80 	bnez	$r12,12(0xc) # 1c006704 <Queue_isEmpty+0x20>
1c0066fc:	0015000c 	move	$r12,$r0
1c006700:	50002400 	b	36(0x24) # 1c006724 <Queue_isEmpty+0x40>
1c006704:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006708:	2a40018d 	ld.hu	$r13,$r12,0
1c00670c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006710:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c006714:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c006720 <Queue_isEmpty+0x3c>
1c006718:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00671c:	50000800 	b	8(0x8) # 1c006724 <Queue_isEmpty+0x40>
1c006720:	0015000c 	move	$r12,$r0
1c006724:	00150184 	move	$r4,$r12
1c006728:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00672c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006730:	4c000020 	jirl	$r0,$r1,0

1c006734 <Queue_HadUse>:
Queue_HadUse():
1c006734:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006738:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00673c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006740:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006744:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006748:	44000d80 	bnez	$r12,12(0xc) # 1c006754 <Queue_HadUse+0x20>
1c00674c:	0015000c 	move	$r12,$r0
1c006750:	50003800 	b	56(0x38) # 1c006788 <Queue_HadUse+0x54>
1c006754:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006758:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c00675c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006760:	2a40018c 	ld.hu	$r12,$r12,0
1c006764:	001131ac 	sub.w	$r12,$r13,$r12
1c006768:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00676c:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c006770:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006774:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006778:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c00677c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006784 <Queue_HadUse+0x50>
1c006780:	002a0007 	break	0x7
1c006784:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006788:	00150184 	move	$r4,$r12
1c00678c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006790:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006794:	4c000020 	jirl	$r0,$r1,0

1c006798 <Queue_NoUse>:
Queue_NoUse():
1c006798:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00679c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0067a0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0067a4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0067a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067ac:	44000d80 	bnez	$r12,12(0xc) # 1c0067b8 <Queue_NoUse+0x20>
1c0067b0:	0015000c 	move	$r12,$r0
1c0067b4:	50004000 	b	64(0x40) # 1c0067f4 <Queue_NoUse+0x5c>
1c0067b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067bc:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c0067c0:	0015018d 	move	$r13,$r12
1c0067c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067c8:	2a40018c 	ld.hu	$r12,$r12,0
1c0067cc:	001131ac 	sub.w	$r12,$r13,$r12
1c0067d0:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c0067d4:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0067d8:	0020b1ae 	mod.w	$r14,$r13,$r12
1c0067dc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0067e4 <Queue_NoUse+0x4c>
1c0067e0:	002a0007 	break	0x7
1c0067e4:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0067e8:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c0067ec:	001131ac 	sub.w	$r12,$r13,$r12
1c0067f0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0067f4:	00150184 	move	$r4,$r12
1c0067f8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0067fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006800:	4c000020 	jirl	$r0,$r1,0

1c006804 <Queue_Wirte>:
Queue_Wirte():
1c006804:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006808:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00680c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006810:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006814:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006818:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00681c:	001500cc 	move	$r12,$r6
1c006820:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c006824:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006828:	44000d80 	bnez	$r12,12(0xc) # 1c006834 <Queue_Wirte+0x30>
1c00682c:	0015000c 	move	$r12,$r0
1c006830:	50009c00 	b	156(0x9c) # 1c0068cc <Queue_Wirte+0xc8>
1c006834:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c006838:	57ff63ff 	bl	-160(0xfffff60) # 1c006798 <Queue_NoUse>
1c00683c:	0015008c 	move	$r12,$r4
1c006840:	0015018d 	move	$r13,$r12
1c006844:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006848:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c006854 <Queue_Wirte+0x50>
1c00684c:	0015000c 	move	$r12,$r0
1c006850:	50007c00 	b	124(0x7c) # 1c0068cc <Queue_Wirte+0xc8>
1c006854:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006858:	50006400 	b	100(0x64) # 1c0068bc <Queue_Wirte+0xb8>
1c00685c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006860:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006864:	001031ac 	add.w	$r12,$r13,$r12
1c006868:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00686c:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c006870:	001501ae 	move	$r14,$r13
1c006874:	2a00018d 	ld.bu	$r13,$r12,0
1c006878:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00687c:	0010398c 	add.w	$r12,$r12,$r14
1c006880:	2900118d 	st.b	$r13,$r12,4(0x4)
1c006884:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006888:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c00688c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006890:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006894:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006898:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c00689c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0068a4 <Queue_Wirte+0xa0>
1c0068a0:	002a0007 	break	0x7
1c0068a4:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c0068a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0068ac:	2940098d 	st.h	$r13,$r12,2(0x2)
1c0068b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0068b4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0068b8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0068bc:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c0068c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0068c4:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c00685c <Queue_Wirte+0x58>
1c0068c8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0068cc:	00150184 	move	$r4,$r12
1c0068d0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0068d4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0068d8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0068dc:	4c000020 	jirl	$r0,$r1,0

1c0068e0 <Queue_Read>:
Queue_Read():
1c0068e0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0068e4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0068e8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0068ec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0068f0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0068f4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0068f8:	001500cc 	move	$r12,$r6
1c0068fc:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c006900:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006904:	44000d80 	bnez	$r12,12(0xc) # 1c006910 <Queue_Read+0x30>
1c006908:	0015000c 	move	$r12,$r0
1c00690c:	50009c00 	b	156(0x9c) # 1c0069a8 <Queue_Read+0xc8>
1c006910:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c006914:	57fe23ff 	bl	-480(0xffffe20) # 1c006734 <Queue_HadUse>
1c006918:	0015008c 	move	$r12,$r4
1c00691c:	0015018d 	move	$r13,$r12
1c006920:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006924:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c006930 <Queue_Read+0x50>
1c006928:	0015000c 	move	$r12,$r0
1c00692c:	50007c00 	b	124(0x7c) # 1c0069a8 <Queue_Read+0xc8>
1c006930:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006934:	50006400 	b	100(0x64) # 1c006998 <Queue_Read+0xb8>
1c006938:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00693c:	2a40018c 	ld.hu	$r12,$r12,0
1c006940:	0015018e 	move	$r14,$r12
1c006944:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006948:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00694c:	001031ac 	add.w	$r12,$r13,$r12
1c006950:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006954:	001039ad 	add.w	$r13,$r13,$r14
1c006958:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c00695c:	2900018d 	st.b	$r13,$r12,0
1c006960:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006964:	2a40018c 	ld.hu	$r12,$r12,0
1c006968:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00696c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006970:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006974:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c006978:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006980 <Queue_Read+0xa0>
1c00697c:	002a0007 	break	0x7
1c006980:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c006984:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006988:	2940018d 	st.h	$r13,$r12,0
1c00698c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006990:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006994:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006998:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c00699c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0069a0:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c006938 <Queue_Read+0x58>
1c0069a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0069a8:	00150184 	move	$r4,$r12
1c0069ac:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0069b0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0069b4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0069b8:	4c000020 	jirl	$r0,$r1,0

1c0069bc <mqtt_process_init>:
mqtt_process_init():
1c0069bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0069c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0069c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0069c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0069cc:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c0069d0:	28991084 	ld.w	$r4,$r4,1604(0x644)
1c0069d4:	54004800 	bl	72(0x48) # 1c006a1c <Mqtt_System_Init>
1c0069d8:	03400000 	andi	$r0,$r0,0x0
1c0069dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0069e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0069e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0069e8:	4c000020 	jirl	$r0,$r1,0

1c0069ec <mqtt_process>:
mqtt_process():
1c0069ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0069f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0069f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0069f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0069fc:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006a00:	28985084 	ld.w	$r4,$r4,1556(0x614)
1c006a04:	54005400 	bl	84(0x54) # 1c006a58 <Mqtt_Feedback>
1c006a08:	03400000 	andi	$r0,$r0,0x0
1c006a0c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006a10:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006a14:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006a18:	4c000020 	jirl	$r0,$r1,0

1c006a1c <Mqtt_System_Init>:
Mqtt_System_Init():
1c006a1c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006a20:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006a24:	29806076 	st.w	$r22,$r3,24(0x18)
1c006a28:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006a2c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006a30:	57fa4bff 	bl	-1464(0xffffa48) # 1c006478 <esp8266_init>
1c006a34:	57ef07ff 	bl	-4348(0xfffef04) # 1c005938 <water_circle_type_back>
1c006a38:	0015008d 	move	$r13,$r4
1c006a3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a40:	2980018d 	st.w	$r13,$r12,0
1c006a44:	03400000 	andi	$r0,$r0,0x0
1c006a48:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006a4c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006a50:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006a54:	4c000020 	jirl	$r0,$r1,0

1c006a58 <Mqtt_Feedback>:
Mqtt_Feedback():
1c006a58:	02bb4063 	addi.w	$r3,$r3,-304(0xed0)
1c006a5c:	2984b061 	st.w	$r1,$r3,300(0x12c)
1c006a60:	2984a076 	st.w	$r22,$r3,296(0x128)
1c006a64:	0284c076 	addi.w	$r22,$r3,304(0x130)
1c006a68:	29bb72c4 	st.w	$r4,$r22,-292(0xedc)
1c006a6c:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006a70:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c006a74:	028001ad 	addi.w	$r13,$r13,0
1c006a78:	2980118d 	st.w	$r13,$r12,4(0x4)
1c006a7c:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006a80:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c006a84:	02bff1ad 	addi.w	$r13,$r13,-4(0xffc)
1c006a88:	2980218d 	st.w	$r13,$r12,8(0x8)
1c006a8c:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006a90:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c006a94:	02bfe1ad 	addi.w	$r13,$r13,-8(0xff8)
1c006a98:	2980318d 	st.w	$r13,$r12,12(0xc)
1c006a9c:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006aa0:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c006aa4:	02bfe1ad 	addi.w	$r13,$r13,-8(0xff8)
1c006aa8:	2980418d 	st.w	$r13,$r12,16(0x10)
1c006aac:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006ab0:	2880018c 	ld.w	$r12,$r12,0
1c006ab4:	2a41018d 	ld.hu	$r13,$r12,64(0x40)
1c006ab8:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006abc:	2940518d 	st.h	$r13,$r12,20(0x14)
1c006ac0:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006ac4:	2880018c 	ld.w	$r12,$r12,0
1c006ac8:	2a41098d 	ld.hu	$r13,$r12,66(0x42)
1c006acc:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006ad0:	2940598d 	st.h	$r13,$r12,22(0x16)
1c006ad4:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006ad8:	2880018c 	ld.w	$r12,$r12,0
1c006adc:	2a41118d 	ld.hu	$r13,$r12,68(0x44)
1c006ae0:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006ae4:	2940618d 	st.h	$r13,$r12,24(0x18)
1c006ae8:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006aec:	2880018c 	ld.w	$r12,$r12,0
1c006af0:	2a41198d 	ld.hu	$r13,$r12,70(0x46)
1c006af4:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006af8:	2940698d 	st.h	$r13,$r12,26(0x1a)
1c006afc:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006b00:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c006b04:	02bbbecd 	addi.w	$r13,$r22,-273(0xeef)
1c006b08:	001501a5 	move	$r5,$r13
1c006b0c:	00150184 	move	$r4,$r12
1c006b10:	57eedfff 	bl	-4388(0xfffeedc) # 1c0059ec <json_to_send>
1c006b14:	2a3bbecc 	ld.bu	$r12,$r22,-273(0xeef)
1c006b18:	0280c806 	addi.w	$r6,$r0,50(0x32)
1c006b1c:	1c000025 	pcaddu12i	$r5,1(0x1)
1c006b20:	02be40a5 	addi.w	$r5,$r5,-112(0xf90)
1c006b24:	00150184 	move	$r4,$r12
1c006b28:	57f1cfff 	bl	-3636(0xffff1cc) # 1c005cf4 <esp8266_send_json>
1c006b2c:	03400000 	andi	$r0,$r0,0x0
1c006b30:	2884b061 	ld.w	$r1,$r3,300(0x12c)
1c006b34:	2884a076 	ld.w	$r22,$r3,296(0x128)
1c006b38:	0284c063 	addi.w	$r3,$r3,304(0x130)
1c006b3c:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c006b40 <msg_wakeup>:
msg_wakeup():
1c006b40:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01d6a0 <_sidata+0x15bf0>
1c006b44:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c006b49 <hexdecarr>:
hexdecarr():
1c006b49:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c006b4d:	37363534 	0x37363534
1c006b51:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfecc89 <_start-0x13377>
1c006b55:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfed0b9 <_start-0x12f47>
1c006b59:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006b5d:	79654b0a 	0x79654b0a
1c006b61:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c006b65:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c006b69:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c006b6d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01dbdd <_sidata+0x1612d>
1c006b71:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffdad1 <_start-0x252f>
1c006b75:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c006b79:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffdadd <_start-0x2523>
1c006b7d:	72616220 	0x72616220
1c006b81:	0a0d216b 	0x0a0d216b
1c006b85:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006b89:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffccfd <_start-0x3303>
1c006b8d:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c006b91:	cc000a0d 	0xcc000a0d
1c006b95:	e81c001e 	0xe81c001e
1c006b99:	e81c001f 	0xe81c001f
1c006b9d:	e81c001f 	0xe81c001f
1c006ba1:	e81c001f 	0xe81c001f
1c006ba5:	e81c001f 	0xe81c001f
1c006ba9:	e81c001f 	0xe81c001f
1c006bad:	e81c001f 	0xe81c001f
1c006bb1:	e81c001f 	0xe81c001f
1c006bb5:	e81c001f 	0xe81c001f
1c006bb9:	e81c001f 	0xe81c001f
1c006bbd:	e41c001f 	0xe41c001f
1c006bc1:	6c1c001e 	bgeu	$r0,$r30,7168(0x1c00) # 1c0087c1 <_sidata+0xd11>
1c006bc5:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c0087c5 <_sidata+0xd15>
1c006bc9:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c0087c9 <_sidata+0xd19>
1c006bcd:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c0087cd <_sidata+0xd1d>
1c006bd1:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c0087d1 <_sidata+0xd21>
1c006bd5:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c0087d5 <_sidata+0xd25>
1c006bd9:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c0087d9 <_sidata+0xd29>
1c006bdd:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c0087dd <_sidata+0xd2d>
1c006be1:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c0087e1 <_sidata+0xd31>
1c006be5:	e81c001f 	0xe81c001f
1c006be9:	e81c001f 	0xe81c001f
1c006bed:	e81c001f 	0xe81c001f
1c006bf1:	e81c001f 	0xe81c001f
1c006bf5:	e81c001f 	0xe81c001f
1c006bf9:	e81c001f 	0xe81c001f
1c006bfd:	e81c001f 	0xe81c001f
1c006c01:	e81c001f 	0xe81c001f
1c006c05:	e81c001f 	0xe81c001f
1c006c09:	e81c001f 	0xe81c001f
1c006c0d:	e81c001f 	0xe81c001f
1c006c11:	e81c001f 	0xe81c001f
1c006c15:	e81c001f 	0xe81c001f
1c006c19:	e81c001f 	0xe81c001f
1c006c1d:	e81c001f 	0xe81c001f
1c006c21:	e81c001f 	0xe81c001f
1c006c25:	e81c001f 	0xe81c001f
1c006c29:	e81c001f 	0xe81c001f
1c006c2d:	e81c001f 	0xe81c001f
1c006c31:	e81c001f 	0xe81c001f
1c006c35:	e81c001f 	0xe81c001f
1c006c39:	e81c001f 	0xe81c001f
1c006c3d:	e81c001f 	0xe81c001f
1c006c41:	e81c001f 	0xe81c001f
1c006c45:	e81c001f 	0xe81c001f
1c006c49:	e81c001f 	0xe81c001f
1c006c4d:	e81c001f 	0xe81c001f
1c006c51:	e81c001f 	0xe81c001f
1c006c55:	e81c001f 	0xe81c001f
1c006c59:	e81c001f 	0xe81c001f
1c006c5d:	e81c001f 	0xe81c001f
1c006c61:	e81c001f 	0xe81c001f
1c006c65:	e81c001f 	0xe81c001f
1c006c69:	e81c001f 	0xe81c001f
1c006c6d:	e81c001f 	0xe81c001f
1c006c71:	e81c001f 	0xe81c001f
1c006c75:	e81c001f 	0xe81c001f
1c006c79:	e81c001f 	0xe81c001f
1c006c7d:	e81c001f 	0xe81c001f
1c006c81:	e81c001f 	0xe81c001f
1c006c85:	5c1c001f 	bne	$r0,$r31,7168(0x1c00) # 1c008885 <_sidata+0xdd5>
1c006c89:	841c001e 	0x841c001e
1c006c8d:	ec1c001d 	0xec1c001d
1c006c91:	e81c001d 	0xe81c001d
1c006c95:	e81c001f 	0xe81c001f
1c006c99:	e81c001f 	0xe81c001f
1c006c9d:	e81c001f 	0xe81c001f
1c006ca1:	e81c001f 	0xe81c001f
1c006ca5:	e81c001f 	0xe81c001f
1c006ca9:	e81c001f 	0xe81c001f
1c006cad:	e81c001f 	0xe81c001f
1c006cb1:	e81c001f 	0xe81c001f
1c006cb5:	e81c001f 	0xe81c001f
1c006cb9:	241c001f 	ldptr.w	$r31,$r0,7168(0x1c00)
1c006cbd:	941c001e 	0x941c001e
1c006cc1:	e81c001e 	0xe81c001e
1c006cc5:	e81c001f 	0xe81c001f
1c006cc9:	581c001f 	beq	$r0,$r31,7168(0x1c00) # 1c0088c9 <_sidata+0xe19>
1c006ccd:	e81c001d 	0xe81c001d
1c006cd1:	b41c001f 	0xb41c001f
1c006cd5:	e81c001d 	0xe81c001d
1c006cd9:	e81c001f 	0xe81c001f
1c006cdd:	941c001f 	0x941c001f
1c006ce1:	c01c001e 	0xc01c001e
1c006ce5:	e41c0022 	0xe41c0022
1c006ce9:	e41c0023 	0xe41c0023
1c006ced:	e41c0023 	0xe41c0023
1c006cf1:	e41c0023 	0xe41c0023
1c006cf5:	e41c0023 	0xe41c0023
1c006cf9:	e41c0023 	0xe41c0023
1c006cfd:	e41c0023 	0xe41c0023
1c006d01:	e41c0023 	0xe41c0023
1c006d05:	e41c0023 	0xe41c0023
1c006d09:	e41c0023 	0xe41c0023
1c006d0d:	e01c0023 	0xe01c0023
1c006d11:	681c0022 	bltu	$r1,$r2,7168(0x1c00) # 1c008911 <_sidata+0xe61>
1c006d15:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c008915 <_sidata+0xe65>
1c006d19:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c008919 <_sidata+0xe69>
1c006d1d:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c00891d <_sidata+0xe6d>
1c006d21:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c008921 <_sidata+0xe71>
1c006d25:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c008925 <_sidata+0xe75>
1c006d29:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c008929 <_sidata+0xe79>
1c006d2d:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c00892d <_sidata+0xe7d>
1c006d31:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c008931 <_sidata+0xe81>
1c006d35:	e41c0023 	0xe41c0023
1c006d39:	e41c0023 	0xe41c0023
1c006d3d:	e41c0023 	0xe41c0023
1c006d41:	e41c0023 	0xe41c0023
1c006d45:	e41c0023 	0xe41c0023
1c006d49:	e41c0023 	0xe41c0023
1c006d4d:	e41c0023 	0xe41c0023
1c006d51:	e41c0023 	0xe41c0023
1c006d55:	e41c0023 	0xe41c0023
1c006d59:	e41c0023 	0xe41c0023
1c006d5d:	e41c0023 	0xe41c0023
1c006d61:	e41c0023 	0xe41c0023
1c006d65:	e41c0023 	0xe41c0023
1c006d69:	e41c0023 	0xe41c0023
1c006d6d:	e41c0023 	0xe41c0023
1c006d71:	e41c0023 	0xe41c0023
1c006d75:	e41c0023 	0xe41c0023
1c006d79:	e41c0023 	0xe41c0023
1c006d7d:	e41c0023 	0xe41c0023
1c006d81:	e41c0023 	0xe41c0023
1c006d85:	e41c0023 	0xe41c0023
1c006d89:	e41c0023 	0xe41c0023
1c006d8d:	e41c0023 	0xe41c0023
1c006d91:	e41c0023 	0xe41c0023
1c006d95:	e41c0023 	0xe41c0023
1c006d99:	e41c0023 	0xe41c0023
1c006d9d:	e41c0023 	0xe41c0023
1c006da1:	e41c0023 	0xe41c0023
1c006da5:	e41c0023 	0xe41c0023
1c006da9:	e41c0023 	0xe41c0023
1c006dad:	7c1c0023 	0x7c1c0023
1c006db1:	e41c0022 	0xe41c0022
1c006db5:	e41c0023 	0xe41c0023
1c006db9:	e41c0023 	0xe41c0023
1c006dbd:	e41c0023 	0xe41c0023
1c006dc1:	e41c0023 	0xe41c0023
1c006dc5:	e41c0023 	0xe41c0023
1c006dc9:	e41c0023 	0xe41c0023
1c006dcd:	e41c0023 	0xe41c0023
1c006dd1:	e41c0023 	0xe41c0023
1c006dd5:	381c0023 	stx.d	$r3,$r1,$r0
1c006dd9:	341c0022 	0x341c0022
1c006ddd:	b01c0021 	0xb01c0021
1c006de1:	e41c0021 	0xe41c0021
1c006de5:	e41c0023 	0xe41c0023
1c006de9:	e41c0023 	0xe41c0023
1c006ded:	e41c0023 	0xe41c0023
1c006df1:	e41c0023 	0xe41c0023
1c006df5:	e41c0023 	0xe41c0023
1c006df9:	e41c0023 	0xe41c0023
1c006dfd:	e41c0023 	0xe41c0023
1c006e01:	e41c0023 	0xe41c0023
1c006e05:	e41c0023 	0xe41c0023
1c006e09:	f41c0023 	0xf41c0023
1c006e0d:	7c1c0021 	0x7c1c0021
1c006e11:	e41c0022 	0xe41c0022
1c006e15:	e41c0023 	0xe41c0023
1c006e19:	001c0023 	mul.w	$r3,$r1,$r0
1c006e1d:	e41c0021 	0xe41c0021
1c006e21:	6c1c0023 	bgeu	$r1,$r3,7168(0x1c00) # 1c008a21 <_sidata+0xf71>
1c006e25:	e41c0021 	0xe41c0021
1c006e29:	e41c0023 	0xe41c0023
1c006e2d:	7c1c0023 	0x7c1c0023
1c006e31:	0a1c0022 	xvfmadd.s	$xr2,$xr1,$xr0,$xr24
1c006e35:	7c000000 	0x7c000000
1c006e39:	7c7c7c7c 	0x7c7c7c7c
1c006e3d:	7c7c7c7c 	0x7c7c7c7c
1c006e41:	7c7c7c7c 	0x7c7c7c7c
1c006e45:	7c7c7c7c 	0x7c7c7c7c
1c006e49:	7c7c7c7c 	0x7c7c7c7c
1c006e4d:	7c7c7c7c 	0x7c7c7c7c
1c006e51:	7c7c7c7c 	0x7c7c7c7c
1c006e55:	7c7c7c7c 	0x7c7c7c7c
1c006e59:	7c7c7c7c 	0x7c7c7c7c
1c006e5d:	7c7c7c7c 	0x7c7c7c7c
1c006e61:	7c7c7c7c 	0x7c7c7c7c
1c006e65:	7c7c7c7c 	0x7c7c7c7c
1c006e69:	7c7c7c7c 	0x7c7c7c7c
1c006e6d:	7c7c7c7c 	0x7c7c7c7c
1c006e71:	7c7c7c7c 	0x7c7c7c7c
1c006e75:	7c7c7c7c 	0x7c7c7c7c
1c006e79:	7c7c7c7c 	0x7c7c7c7c
1c006e7d:	7c7c7c7c 	0x7c7c7c7c
1c006e81:	7c7c7c7c 	0x7c7c7c7c
1c006e85:	7c7c7c7c 	0x7c7c7c7c
1c006e89:	7c7c7c7c 	0x7c7c7c7c
1c006e8d:	7c7c7c7c 	0x7c7c7c7c
1c006e91:	7c7c7c7c 	0x7c7c7c7c
1c006e95:	7c7c7c7c 	0x7c7c7c7c
1c006e99:	7c00000a 	0x7c00000a
1c006e9d:	7c20207c 	0x7c20207c
1c006ea1:	7c7c7c7c 	0x7c7c7c7c
1c006ea5:	7c7c7c7c 	0x7c7c7c7c
1c006ea9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006ead:	7c202020 	0x7c202020
1c006eb1:	7c7c7c7c 	0x7c7c7c7c
1c006eb5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006eb9:	7c202020 	0x7c202020
1c006ebd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006ec1:	7c7c2020 	0x7c7c2020
1c006ec5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006ec9:	7c7c7c20 	0x7c7c7c20
1c006ecd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006ed1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006ed5:	7c7c7c7c 	0x7c7c7c7c
1c006ed9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006edd:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006ee1:	7c7c7c7c 	0x7c7c7c7c
1c006ee5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006ee9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006eed:	7c7c7c7c 	0x7c7c7c7c
1c006ef1:	7c202020 	0x7c202020
1c006ef5:	7c7c7c7c 	0x7c7c7c7c
1c006ef9:	7c7c2020 	0x7c7c2020
1c006efd:	7c00000a 	0x7c00000a
1c006f01:	7c20207c 	0x7c20207c
1c006f05:	7c7c7c7c 	0x7c7c7c7c
1c006f09:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f0d:	7c7c2020 	0x7c7c2020
1c006f11:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006f15:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f19:	7c7c2020 	0x7c7c2020
1c006f1d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006f21:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f25:	7c202020 	0x7c202020
1c006f29:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f2d:	7c7c7c20 	0x7c7c7c20
1c006f31:	7c20207c 	0x7c20207c
1c006f35:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f39:	7c7c7c20 	0x7c7c7c20
1c006f3d:	7c202020 	0x7c202020
1c006f41:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f45:	7c7c7c20 	0x7c7c7c20
1c006f49:	7c202020 	0x7c202020
1c006f4d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f51:	7c7c7c20 	0x7c7c7c20
1c006f55:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006f59:	7c7c7c7c 	0x7c7c7c7c
1c006f5d:	7c7c2020 	0x7c7c2020
1c006f61:	7c00000a 	0x7c00000a
1c006f65:	7c20207c 	0x7c20207c
1c006f69:	7c7c7c7c 	0x7c7c7c7c
1c006f6d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f71:	7c7c7c20 	0x7c7c7c20
1c006f75:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f79:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f7d:	7c7c7c20 	0x7c7c7c20
1c006f81:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f85:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f89:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c006f8d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006f91:	7c7c7c20 	0x7c7c7c20
1c006f95:	7c7c2020 	0x7c7c2020
1c006f99:	7c7c7c7c 	0x7c7c7c7c
1c006f9d:	7c7c7c7c 	0x7c7c7c7c
1c006fa1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006fa5:	7c7c7c20 	0x7c7c7c20
1c006fa9:	7c7c7c7c 	0x7c7c7c7c
1c006fad:	7c7c2020 	0x7c7c2020
1c006fb1:	7c7c7c7c 	0x7c7c7c7c
1c006fb5:	7c7c7c20 	0x7c7c7c20
1c006fb9:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c006fbd:	7c7c7c20 	0x7c7c7c20
1c006fc1:	7c7c2020 	0x7c7c2020
1c006fc5:	7c00000a 	0x7c00000a
1c006fc9:	7c20207c 	0x7c20207c
1c006fcd:	7c7c7c7c 	0x7c7c7c7c
1c006fd1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006fd5:	7c7c7c20 	0x7c7c7c20
1c006fd9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006fdd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006fe1:	7c7c7c20 	0x7c7c7c20
1c006fe5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006fe9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006fed:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006ff1:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006ff5:	7c7c7c20 	0x7c7c7c20
1c006ff9:	7c7c2020 	0x7c7c2020
1c006ffd:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007001:	7c7c7c20 	0x7c7c7c20
1c007005:	7c7c7c7c 	0x7c7c7c7c
1c007009:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00700d:	7c7c7c7c 	0x7c7c7c7c
1c007011:	7c7c2020 	0x7c7c2020
1c007015:	7c7c7c7c 	0x7c7c7c7c
1c007019:	7c7c7c20 	0x7c7c7c20
1c00701d:	7c7c2020 	0x7c7c2020
1c007021:	7c7c2020 	0x7c7c2020
1c007025:	7c7c2020 	0x7c7c2020
1c007029:	7c00000a 	0x7c00000a
1c00702d:	7c20207c 	0x7c20207c
1c007031:	7c7c7c7c 	0x7c7c7c7c
1c007035:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007039:	7c7c7c20 	0x7c7c7c20
1c00703d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007041:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007045:	7c7c7c20 	0x7c7c7c20
1c007049:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00704d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007051:	7c7c7c20 	0x7c7c7c20
1c007055:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c007059:	7c7c7c20 	0x7c7c7c20
1c00705d:	7c7c2020 	0x7c7c2020
1c007061:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007065:	7c7c7c20 	0x7c7c7c20
1c007069:	7c7c7c7c 	0x7c7c7c7c
1c00706d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007071:	7c7c7c20 	0x7c7c7c20
1c007075:	7c7c2020 	0x7c7c2020
1c007079:	7c7c7c7c 	0x7c7c7c7c
1c00707d:	7c7c7c20 	0x7c7c7c20
1c007081:	7c7c2020 	0x7c7c2020
1c007085:	7c20207c 	0x7c20207c
1c007089:	7c7c2020 	0x7c7c2020
1c00708d:	7c00000a 	0x7c00000a
1c007091:	7c20207c 	0x7c20207c
1c007095:	7c7c7c7c 	0x7c7c7c7c
1c007099:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00709d:	7c7c2020 	0x7c7c2020
1c0070a1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0070a5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0070a9:	7c7c2020 	0x7c7c2020
1c0070ad:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0070b1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0070b5:	7c7c7c20 	0x7c7c7c20
1c0070b9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0070bd:	7c7c7c20 	0x7c7c7c20
1c0070c1:	7c202020 	0x7c202020
1c0070c5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0070c9:	7c7c7c20 	0x7c7c7c20
1c0070cd:	7c202020 	0x7c202020
1c0070d1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0070d5:	7c7c7c7c 	0x7c7c7c7c
1c0070d9:	7c202020 	0x7c202020
1c0070dd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0070e1:	7c7c7c20 	0x7c7c7c20
1c0070e5:	7c7c2020 	0x7c7c2020
1c0070e9:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0070ed:	7c7c2020 	0x7c7c2020
1c0070f1:	7c00000a 	0x7c00000a
1c0070f5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0070f9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0070fd:	7c7c7c7c 	0x7c7c7c7c
1c007101:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007105:	7c202020 	0x7c202020
1c007109:	7c7c7c7c 	0x7c7c7c7c
1c00710d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007111:	7c202020 	0x7c202020
1c007115:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007119:	7c7c7c20 	0x7c7c7c20
1c00711d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007121:	7c7c7c20 	0x7c7c7c20
1c007125:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007129:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00712d:	7c7c7c7c 	0x7c7c7c7c
1c007131:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007135:	7c202020 	0x7c202020
1c007139:	7c7c7c7c 	0x7c7c7c7c
1c00713d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007141:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007145:	7c7c7c7c 	0x7c7c7c7c
1c007149:	7c7c2020 	0x7c7c2020
1c00714d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007151:	7c7c2020 	0x7c7c2020
1c007155:	7c00000a 	0x7c00000a
1c007159:	7c7c7c7c 	0x7c7c7c7c
1c00715d:	7c7c7c7c 	0x7c7c7c7c
1c007161:	7c7c7c7c 	0x7c7c7c7c
1c007165:	7c7c7c7c 	0x7c7c7c7c
1c007169:	7c7c7c7c 	0x7c7c7c7c
1c00716d:	7c7c7c7c 	0x7c7c7c7c
1c007171:	7c7c7c7c 	0x7c7c7c7c
1c007175:	7c7c7c7c 	0x7c7c7c7c
1c007179:	7c7c7c7c 	0x7c7c7c7c
1c00717d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c007181:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c007185:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c007189:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c00718d:	7c7c7c5d 	0x7c7c7c5d
1c007191:	7c7c7c7c 	0x7c7c7c7c
1c007195:	7c7c7c7c 	0x7c7c7c7c
1c007199:	7c7c7c7c 	0x7c7c7c7c
1c00719d:	7c7c7c7c 	0x7c7c7c7c
1c0071a1:	7c7c7c7c 	0x7c7c7c7c
1c0071a5:	7c7c7c7c 	0x7c7c7c7c
1c0071a9:	7c7c7c7c 	0x7c7c7c7c
1c0071ad:	7c7c7c7c 	0x7c7c7c7c
1c0071b1:	7c7c7c7c 	0x7c7c7c7c
1c0071b5:	7c7c7c7c 	0x7c7c7c7c
1c0071b9:	0900000a 	0x0900000a
1c0071bd:	0a006425 	0x0a006425
1c0071c1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0071c5:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c0071c9:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c0071cd:	0050550a 	0x0050550a
1c0071d1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0071d5:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00e721 <_sidata+0x6c71>
1c0071d9:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c0071dd:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c0071e1:	756f430a 	0x756f430a
1c0071e5:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c0071e9:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c0071ed:	3030090a 	0x3030090a
1c0071f1:	09313009 	0x09313009
1c0071f5:	30093230 	0x30093230
1c0071f9:	34300933 	0x34300933
1c0071fd:	09353009 	0x09353009
1c007201:	30093630 	0x30093630
1c007205:	38300937 	fldx.s	$f23,$r9,$r2
1c007209:	09393009 	0x09393009
1c00720d:	31093031 	0x31093031
1c007211:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c007215:	746e630a 	0x746e630a
1c007219:	09000000 	0x09000000
1c00721d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c007221:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007225:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c007229:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00d37d <_sidata+0x58cd>
1c00722d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007231:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfee781 <_start-0x1187f>
1c007235:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c007239:	09000000 	0x09000000
1c00723d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c007241:	09000000 	0x09000000
1c007245:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c007249:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00724d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c007251:	3a515249 	0x3a515249
1c007255:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c007259:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffe0cd <_start-0x1f33>
1c00725d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c007261:	0d3e2020 	0x0d3e2020
1c007265:	0a00000a 	0x0a00000a
1c007269:	2e2e2e2e 	0x2e2e2e2e
1c00726d:	2e2e2e2e 	0x2e2e2e2e
1c007271:	2e2e2e2e 	0x2e2e2e2e
1c007275:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ac1c5 <_sidata+0x3a4715>
1c007279:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c00727d:	2e2e2e54 	0x2e2e2e54
1c007281:	2e2e2e2e 	0x2e2e2e2e
1c007285:	2e2e2e2e 	0x2e2e2e2e
1c007289:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00728d:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c007291:	2e2e2e0a 	0x2e2e2e0a
1c007295:	2e2e2e2e 	0x2e2e2e2e
1c007299:	2e2e2e2e 	0x2e2e2e2e
1c00729d:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39b4c9 <_sidata+0x393a19>
1c0072a1:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1b8fd <_start-0x2e4703>
1c0072a5:	2e2e4c49 	0x2e2e4c49
1c0072a9:	2e2e2e2e 	0x2e2e2e2e
1c0072ad:	2e2e2e2e 	0x2e2e2e2e
1c0072b1:	2e2e2e2e 	0x2e2e2e2e
1c0072b5:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c0072b9:	2e2e2e0a 	0x2e2e2e0a
1c0072bd:	2e2e2e2e 	0x2e2e2e2e
1c0072c1:	2e2e2e2e 	0x2e2e2e2e
1c0072c5:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38b3f1 <_sidata+0x383941>
1c0072c9:	2e2e2e43 	0x2e2e2e43
1c0072cd:	2e2e2e2e 	0x2e2e2e2e
1c0072d1:	2e2e2e2e 	0x2e2e2e2e
1c0072d5:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c0072d9:	2500000a 	stptr.w	$r10,$r0,0
1c0072dd:	43000a64 	beqz	$r19,1245192(0x130008) # 1c1372e5 <_sidata+0x12f835>
1c0072e1:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c0072e5:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01e04d <_sidata+0x1659d>
1c0072e9:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00d609 <_sidata+0x5b59>
1c0072ed:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c0072f1:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01e75d <_sidata+0x16cad>
1c0072f5:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c0072f9:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c0072fd:	 	0xb000000a

1c007300 <Ext_IrqHandle>:
1c007300:	1c0042b0 	pcaddu12i	$r16,533(0x215)
1c007304:	1c0042fc 	pcaddu12i	$r28,535(0x217)
1c007308:	1c004348 	pcaddu12i	$r8,538(0x21a)
1c00730c:	1c004394 	pcaddu12i	$r20,540(0x21c)
1c007310:	1c0043e0 	pcaddu12i	$r0,543(0x21f)
1c007314:	1c00442c 	pcaddu12i	$r12,545(0x221)
1c007318:	1c004478 	pcaddu12i	$r24,547(0x223)
1c00731c:	1c0044c4 	pcaddu12i	$r4,550(0x226)
1c007320:	1c004510 	pcaddu12i	$r16,552(0x228)
1c007324:	1c00455c 	pcaddu12i	$r28,554(0x22a)
1c007328:	1c0045a8 	pcaddu12i	$r8,557(0x22d)
1c00732c:	1c0045f4 	pcaddu12i	$r20,559(0x22f)
1c007330:	1c004640 	pcaddu12i	$r0,562(0x232)
1c007334:	1c00468c 	pcaddu12i	$r12,564(0x234)
1c007338:	1c0046d8 	pcaddu12i	$r24,566(0x236)
1c00733c:	1c004724 	pcaddu12i	$r4,569(0x239)
1c007340:	1c004770 	pcaddu12i	$r16,571(0x23b)
1c007344:	1c0047bc 	pcaddu12i	$r28,573(0x23d)
1c007348:	1c004808 	pcaddu12i	$r8,576(0x240)
1c00734c:	1c004854 	pcaddu12i	$r20,578(0x242)
1c007350:	1c0048a0 	pcaddu12i	$r0,581(0x245)
1c007354:	1c0048ec 	pcaddu12i	$r12,583(0x247)
1c007358:	1c004938 	pcaddu12i	$r24,585(0x249)
1c00735c:	1c004984 	pcaddu12i	$r4,588(0x24c)
1c007360:	1c0049d0 	pcaddu12i	$r16,590(0x24e)
1c007364:	1c004a1c 	pcaddu12i	$r28,592(0x250)
1c007368:	1c004a68 	pcaddu12i	$r8,595(0x253)
1c00736c:	1c004ab4 	pcaddu12i	$r20,597(0x255)
1c007370:	1c004b00 	pcaddu12i	$r0,600(0x258)
1c007374:	1c004b4c 	pcaddu12i	$r12,602(0x25a)
1c007378:	1c004b98 	pcaddu12i	$r24,604(0x25c)
1c00737c:	1c004be4 	pcaddu12i	$r4,607(0x25f)
1c007380:	1c004ec8 	pcaddu12i	$r8,630(0x276)
1c007384:	1c004e78 	pcaddu12i	$r24,627(0x273)
1c007388:	1c004ec8 	pcaddu12i	$r8,630(0x276)
1c00738c:	1c004ec8 	pcaddu12i	$r8,630(0x276)
1c007390:	1c004ec8 	pcaddu12i	$r8,630(0x276)
1c007394:	1c004ec8 	pcaddu12i	$r8,630(0x276)
1c007398:	1c004ec8 	pcaddu12i	$r8,630(0x276)
1c00739c:	1c004ec8 	pcaddu12i	$r8,630(0x276)
1c0073a0:	1c004ec8 	pcaddu12i	$r8,630(0x276)
1c0073a4:	1c004ec8 	pcaddu12i	$r8,630(0x276)
1c0073a8:	1c004ec8 	pcaddu12i	$r8,630(0x276)
1c0073ac:	1c004ec8 	pcaddu12i	$r8,630(0x276)
1c0073b0:	1c004ec8 	pcaddu12i	$r8,630(0x276)
1c0073b4:	1c004ec8 	pcaddu12i	$r8,630(0x276)
1c0073b8:	1c004ec8 	pcaddu12i	$r8,630(0x276)
1c0073bc:	1c004ec8 	pcaddu12i	$r8,630(0x276)
1c0073c0:	1c004e94 	pcaddu12i	$r20,628(0x274)

1c0073c4 <__FUNCTION__.1780>:
1c0073c4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e83c <_sidata+0x16d8c>
1c0073c8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e42c <_sidata+0x1697c>
1c0073cc:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffa42c <_start-0x5bd4>
1c0073d0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe540 <_start-0x1ac0>
1c0073d4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e234 <_sidata+0x6784>
1c0073d8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0073dc <__FUNCTION__.1784>:
1c0073dc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e854 <_sidata+0x16da4>
1c0073e0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e444 <_sidata+0x16994>
1c0073e4:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffa544 <_start-0x5abc>
1c0073e8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe558 <_start-0x1aa8>
1c0073ec:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e24c <_sidata+0x679c>
1c0073f0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0073f4 <__FUNCTION__.1788>:
1c0073f4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e86c <_sidata+0x16dbc>
1c0073f8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e45c <_sidata+0x169ac>
1c0073fc:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffa65c <_start-0x59a4>
1c007400:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe570 <_start-0x1a90>
1c007404:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e264 <_sidata+0x67b4>
1c007408:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00740c <__FUNCTION__.1792>:
1c00740c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e884 <_sidata+0x16dd4>
1c007410:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e474 <_sidata+0x169c4>
1c007414:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffa774 <_start-0x588c>
1c007418:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe588 <_start-0x1a78>
1c00741c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e27c <_sidata+0x67cc>
1c007420:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007424 <__FUNCTION__.1796>:
1c007424:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e89c <_sidata+0x16dec>
1c007428:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e48c <_sidata+0x169dc>
1c00742c:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffa88c <_start-0x5774>
1c007430:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe5a0 <_start-0x1a60>
1c007434:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e294 <_sidata+0x67e4>
1c007438:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00743c <__FUNCTION__.1800>:
1c00743c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e8b4 <_sidata+0x16e04>
1c007440:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e4a4 <_sidata+0x169f4>
1c007444:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffa9a4 <_start-0x565c>
1c007448:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe5b8 <_start-0x1a48>
1c00744c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e2ac <_sidata+0x67fc>
1c007450:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007454 <__FUNCTION__.1804>:
1c007454:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e8cc <_sidata+0x16e1c>
1c007458:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e4bc <_sidata+0x16a0c>
1c00745c:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffaabc <_start-0x5544>
1c007460:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe5d0 <_start-0x1a30>
1c007464:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e2c4 <_sidata+0x6814>
1c007468:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00746c <__FUNCTION__.1808>:
1c00746c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e8e4 <_sidata+0x16e34>
1c007470:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e4d4 <_sidata+0x16a24>
1c007474:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffabd4 <_start-0x542c>
1c007478:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe5e8 <_start-0x1a18>
1c00747c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e2dc <_sidata+0x682c>
1c007480:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007484 <__FUNCTION__.1812>:
1c007484:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e8fc <_sidata+0x16e4c>
1c007488:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e4ec <_sidata+0x16a3c>
1c00748c:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffa4ec <_start-0x5b14>
1c007490:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe600 <_start-0x1a00>
1c007494:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e2f4 <_sidata+0x6844>
1c007498:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00749c <__FUNCTION__.1816>:
1c00749c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e914 <_sidata+0x16e64>
1c0074a0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e504 <_sidata+0x16a54>
1c0074a4:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffa604 <_start-0x59fc>
1c0074a8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe618 <_start-0x19e8>
1c0074ac:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e30c <_sidata+0x685c>
1c0074b0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0074b4 <__FUNCTION__.1820>:
1c0074b4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e92c <_sidata+0x16e7c>
1c0074b8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e51c <_sidata+0x16a6c>
1c0074bc:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffa71c <_start-0x58e4>
1c0074c0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe630 <_start-0x19d0>
1c0074c4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e324 <_sidata+0x6874>
1c0074c8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0074cc <__FUNCTION__.1824>:
1c0074cc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e944 <_sidata+0x16e94>
1c0074d0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e534 <_sidata+0x16a84>
1c0074d4:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffa834 <_start-0x57cc>
1c0074d8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe648 <_start-0x19b8>
1c0074dc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e33c <_sidata+0x688c>
1c0074e0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0074e4 <__FUNCTION__.1828>:
1c0074e4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e95c <_sidata+0x16eac>
1c0074e8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e54c <_sidata+0x16a9c>
1c0074ec:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffa94c <_start-0x56b4>
1c0074f0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe660 <_start-0x19a0>
1c0074f4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e354 <_sidata+0x68a4>
1c0074f8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0074fc <__FUNCTION__.1832>:
1c0074fc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e974 <_sidata+0x16ec4>
1c007500:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e564 <_sidata+0x16ab4>
1c007504:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffaa64 <_start-0x559c>
1c007508:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe678 <_start-0x1988>
1c00750c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e36c <_sidata+0x68bc>
1c007510:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007514 <__FUNCTION__.1836>:
1c007514:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e98c <_sidata+0x16edc>
1c007518:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e57c <_sidata+0x16acc>
1c00751c:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffab7c <_start-0x5484>
1c007520:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe690 <_start-0x1970>
1c007524:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e384 <_sidata+0x68d4>
1c007528:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00752c <__FUNCTION__.1840>:
1c00752c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e9a4 <_sidata+0x16ef4>
1c007530:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e594 <_sidata+0x16ae4>
1c007534:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffac94 <_start-0x536c>
1c007538:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe6a8 <_start-0x1958>
1c00753c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e39c <_sidata+0x68ec>
1c007540:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007544 <__FUNCTION__.1844>:
1c007544:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e9bc <_sidata+0x16f0c>
1c007548:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e5ac <_sidata+0x16afc>
1c00754c:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffa5ac <_start-0x5a54>
1c007550:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe6c0 <_start-0x1940>
1c007554:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e3b4 <_sidata+0x6904>
1c007558:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00755c <__FUNCTION__.1848>:
1c00755c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e9d4 <_sidata+0x16f24>
1c007560:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e5c4 <_sidata+0x16b14>
1c007564:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffa6c4 <_start-0x593c>
1c007568:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe6d8 <_start-0x1928>
1c00756c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e3cc <_sidata+0x691c>
1c007570:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007574 <__FUNCTION__.1852>:
1c007574:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e9ec <_sidata+0x16f3c>
1c007578:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e5dc <_sidata+0x16b2c>
1c00757c:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffa7dc <_start-0x5824>
1c007580:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe6f0 <_start-0x1910>
1c007584:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e3e4 <_sidata+0x6934>
1c007588:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00758c <__FUNCTION__.1856>:
1c00758c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea04 <_sidata+0x16f54>
1c007590:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e5f4 <_sidata+0x16b44>
1c007594:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffa8f4 <_start-0x570c>
1c007598:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe708 <_start-0x18f8>
1c00759c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e3fc <_sidata+0x694c>
1c0075a0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0075a4 <__FUNCTION__.1860>:
1c0075a4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea1c <_sidata+0x16f6c>
1c0075a8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e60c <_sidata+0x16b5c>
1c0075ac:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffaa0c <_start-0x55f4>
1c0075b0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe720 <_start-0x18e0>
1c0075b4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e414 <_sidata+0x6964>
1c0075b8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0075bc <__FUNCTION__.1864>:
1c0075bc:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea34 <_sidata+0x16f84>
1c0075c0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e624 <_sidata+0x16b74>
1c0075c4:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffab24 <_start-0x54dc>
1c0075c8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe738 <_start-0x18c8>
1c0075cc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e42c <_sidata+0x697c>
1c0075d0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0075d4 <__FUNCTION__.1868>:
1c0075d4:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea4c <_sidata+0x16f9c>
1c0075d8:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e63c <_sidata+0x16b8c>
1c0075dc:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffac3c <_start-0x53c4>
1c0075e0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe750 <_start-0x18b0>
1c0075e4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e444 <_sidata+0x6994>
1c0075e8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0075ec <__FUNCTION__.1872>:
1c0075ec:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea64 <_sidata+0x16fb4>
1c0075f0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e654 <_sidata+0x16ba4>
1c0075f4:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffad54 <_start-0x52ac>
1c0075f8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe768 <_start-0x1898>
1c0075fc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e45c <_sidata+0x69ac>
1c007600:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007604 <__FUNCTION__.1876>:
1c007604:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea7c <_sidata+0x16fcc>
1c007608:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e66c <_sidata+0x16bbc>
1c00760c:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffa670 <_start-0x5990>
1c007610:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe780 <_start-0x1880>
1c007614:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e474 <_sidata+0x69c4>
1c007618:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00761c <__FUNCTION__.1880>:
1c00761c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ea94 <_sidata+0x16fe4>
1c007620:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e684 <_sidata+0x16bd4>
1c007624:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffa788 <_start-0x5878>
1c007628:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe798 <_start-0x1868>
1c00762c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e48c <_sidata+0x69dc>
1c007630:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007634 <__FUNCTION__.1884>:
1c007634:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eaac <_sidata+0x16ffc>
1c007638:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e69c <_sidata+0x16bec>
1c00763c:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffa8a0 <_start-0x5760>
1c007640:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe7b0 <_start-0x1850>
1c007644:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e4a4 <_sidata+0x69f4>
1c007648:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00764c <__FUNCTION__.1888>:
1c00764c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eac4 <_sidata+0x17014>
1c007650:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e6b4 <_sidata+0x16c04>
1c007654:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffa9b8 <_start-0x5648>
1c007658:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe7c8 <_start-0x1838>
1c00765c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e4bc <_sidata+0x6a0c>
1c007660:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007664 <__FUNCTION__.1892>:
1c007664:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eadc <_sidata+0x1702c>
1c007668:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e6cc <_sidata+0x16c1c>
1c00766c:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffaad0 <_start-0x5530>
1c007670:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe7e0 <_start-0x1820>
1c007674:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e4d4 <_sidata+0x6a24>
1c007678:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c00767c <__FUNCTION__.1896>:
1c00767c:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eaf4 <_sidata+0x17044>
1c007680:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e6e4 <_sidata+0x16c34>
1c007684:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffabe8 <_start-0x5418>
1c007688:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe7f8 <_start-0x1808>
1c00768c:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e4ec <_sidata+0x6a3c>
1c007690:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007694 <__FUNCTION__.1900>:
1c007694:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb0c <_sidata+0x1705c>
1c007698:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e6fc <_sidata+0x16c4c>
1c00769c:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffad00 <_start-0x5300>
1c0076a0:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe810 <_start-0x17f0>
1c0076a4:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e504 <_sidata+0x6a54>
1c0076a8:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0076ac <__FUNCTION__.1904>:
1c0076ac:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eb24 <_sidata+0x17074>
1c0076b0:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e714 <_sidata+0x16c64>
1c0076b4:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffae18 <_start-0x51e8>
1c0076b8:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffe828 <_start-0x17d8>
1c0076bc:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e51c <_sidata+0x6a6c>
1c0076c0:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c0076c4:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c0076c8:	50545451 	b	21255252(0x1445454) # 1d44cb1c <_sidata+0x144506c>
1c0076cc:	41524255 	beqz	$r18,-2796992(0x555240) # 1bd5c90c <_start-0x2a36f4>
1c0076d0:	2c303d57 	vld	$vr23,$r10,-1009(0xc0f)
1c0076d4:	316b2f22 	0x316b2f22
1c0076d8:	65336c64 	bge	$r3,$r4,78700(0x1336c) # 1c01aa44 <_sidata+0x12f94>
1c0076dc:	4252324a 	beqz	$r18,2773552(0x2a5230) # 1c2ac90c <_sidata+0x2a4e5c>
1c0076e0:	63312f42 	blt	$r26,$r2,-52948(0x3312c) # 1bffa80c <_start-0x57f4>
1c0076e4:	66323031 	bge	$r1,$r17,-118224(0x23230) # 1bfea914 <_start-0x156ec>
1c0076e8:	6573752f 	bge	$r9,$r15,95092(0x17374) # 1c01ea5c <_sidata+0x16fac>
1c0076ec:	70752f72 	vmax.wu	$vr18,$vr27,$vr11
1c0076f0:	65746164 	bge	$r11,$r4,95328(0x17460) # 1c01eb50 <_sidata+0x170a0>
1c0076f4:	73252c22 	vsat.d	$vr2,$vr1,0xb
1c0076f8:	302c302c 	vldrepl.w	$vr12,$r1,-976(0xc30)
1c0076fc:	0000000a 	0x0000000a
1c007700:	00004b4f 	bitrev.4b	$r15,$r26
1c007704:	54514d2b 	bl	78401868(0x4ac514c) # 20acc850 <_sidata+0x4ac4da0>
1c007708:	42555054 	beqz	$r2,-2992816(0x525550) # 1bd2cc58 <_start-0x2d33a8>
1c00770c:	004b4f3a 	0x004b4f3a
1c007710:	0a0d7325 	0x0a0d7325
1c007714:	00000000 	0x00000000
1c007718:	0a0d6425 	0x0a0d6425
1c00771c:	00000000 	0x00000000
1c007720:	000a6425 	0x000a6425
1c007724:	0a0d7325 	0x0a0d7325
1c007728:	00000000 	0x00000000
1c00772c:	3a646d63 	0x3a646d63
1c007730:	0a0d7325 	0x0a0d7325
1c007734:	00000000 	0x00000000
1c007738:	000a7325 	0x000a7325
1c00773c:	3a6b6361 	0x3a6b6361
1c007740:	0a0d7325 	0x0a0d7325
1c007744:	00000000 	0x00000000
1c007748:	3a736572 	0x3a736572
1c00774c:	0a0d6425 	0x0a0d6425
1c007750:	00000000 	0x00000000
1c007754:	0a0d5441 	0x0a0d5441
1c007758:	00000000 	0x00000000
1c00775c:	00004b4f 	bitrev.4b	$r15,$r26
1c007760:	00005441 	bitrev.d	$r1,$r2
1c007764:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07a2b8 <_sidata+0x72808>
1c007768:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdcc6b4 <_start-0x23394c>
1c00776c:	0d313d45 	0x0d313d45
1c007770:	0000000a 	0x0000000a
1c007774:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07a2c8 <_sidata+0x72818>
1c007778:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdcc6c4 <_start-0x23393c>
1c00777c:	00313d45 	0x00313d45
1c007780:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07a2d4 <_sidata+0x72824>
1c007784:	50414a57 	b	-111394488(0x95c4148) # 155cb8cc <_start-0x6a34734>
1c007788:	6e65543d 	bgeu	$r1,$r29,-105132(0x26554) # 1bfedcdc <_start-0x12324>
1c00778c:	425f6164 	beqz	$r11,1204064(0x125f60) # 1c12d6ec <_sidata+0x125c3c>
1c007790:	45393743 	bnez	$r26,866612(0xd3934) # 1c0db0c4 <_sidata+0xd3614>
1c007794:	74732c30 	xvmin.w	$xr16,$xr1,$xr11
1c007798:	6632336d 	bge	$r27,$r13,-118224(0x23230) # 1bfea9c8 <_start-0x15638>
1c00779c:	63333031 	blt	$r1,$r17,-52432(0x33330) # 1bffaacc <_start-0x5534>
1c0077a0:	0d367438 	0x0d367438
1c0077a4:	0000000a 	0x0000000a
1c0077a8:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07a2fc <_sidata+0x7284c>
1c0077ac:	50414a57 	b	-111394488(0x95c4148) # 155cb8f4 <_start-0x6a3470c>
1c0077b0:	6554223d 	bge	$r17,$r29,87072(0x15420) # 1c01cbd0 <_sidata+0x15120>
1c0077b4:	5f61646e 	bne	$r3,$r14,-40604(0x36164) # 1bffd918 <_start-0x26e8>
1c0077b8:	39374342 	0x39374342
1c0077bc:	2c223045 	vld	$vr5,$r2,-1908(0x88c)
1c0077c0:	6d747322 	bgeu	$r25,$r2,95344(0x17470) # 1c01ec30 <_sidata+0x17180>
1c0077c4:	31663233 	0x31663233
1c0077c8:	38633330 	amor.w	$r16,$r12,$r25
1c0077cc:	00223674 	div.d	$r20,$r19,$r13
1c0077d0:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c0077d4:	55545451 	bl	21320788(0x1455454) # 1d45cc28 <_sidata+0x1455178>
1c0077d8:	43524553 	beqz	$r10,-3190204(0x4f5244) # 1bcfca1c <_start-0x3035e4>
1c0077dc:	313d4746 	0x313d4746
1c0077e0:	4c554e2c 	jirl	$r12,$r17,21836(0x554c)
1c0077e4:	63312c4c 	blt	$r2,$r12,-52948(0x3312c) # 1bffa910 <_start-0x56f0>
1c0077e8:	66323031 	bge	$r1,$r17,-118224(0x23230) # 1bfeaa18 <_start-0x155e8>
1c0077ec:	64316b26 	bge	$r25,$r6,12648(0x3168) # 1c00a954 <_sidata+0x2ea4>
1c0077f0:	4a65336c 	0x4a65336c
1c0077f4:	42425232 	beqz	$r17,-3521968(0x4a4250) # 1bcaba44 <_start-0x3545bc>
1c0077f8:	6336632c 	blt	$r25,$r12,-51616(0x33660) # 1bffae58 <_start-0x51a8>
1c0077fc:	36373532 	0x36373532
1c007800:	32326138 	0x32326138
1c007804:	33353534 	xvstelm.w	$xr20,$r9,308(0x134),0x5
1c007808:	32396136 	0x32396136
1c00780c:	31366135 	0x31366135
1c007810:	65316435 	bge	$r1,$r21,78180(0x13164) # 1c01a974 <_sidata+0x12ec4>
1c007814:	32383838 	0x32383838
1c007818:	62343231 	blt	$r17,$r17,-117712(0x23430) # 1bfeac48 <_start-0x153b8>
1c00781c:	64613334 	bge	$r25,$r20,24880(0x6130) # 1c00d94c <_sidata+0x5e9c>
1c007820:	62386563 	blt	$r11,$r3,-116636(0x23864) # 1bfeb084 <_start-0x14f7c>
1c007824:	36353263 	0x36353263
1c007828:	66323338 	bge	$r25,$r24,-118224(0x23230) # 1bfeaa58 <_start-0x155a8>
1c00782c:	63323831 	blt	$r1,$r17,-52680(0x33238) # 1bffaa64 <_start-0x559c>
1c007830:	36646566 	0x36646566
1c007834:	64623362 	bge	$r27,$r2,25136(0x6230) # 1c00da64 <_sidata+0x5fb4>
1c007838:	2c302c64 	vld	$vr4,$r3,-1013(0xc0b)
1c00783c:	22222c30 	ll.d	$r16,$r1,8748(0x222c)
1c007840:	00000a0d 	0x00000a0d
1c007844:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007848:	55545451 	bl	21320788(0x1455454) # 1d45cc9c <_sidata+0x14551ec>
1c00784c:	43524553 	beqz	$r10,-3190204(0x4f5244) # 1bcfca90 <_start-0x303570>
1c007850:	303d4746 	0x303d4746
1c007854:	222c312c 	ll.d	$r12,$r9,11312(0x2c30)
1c007858:	4c4c554e 	jirl	$r14,$r10,19540(0x4c54)
1c00785c:	31222c22 	vstelm.w	$vr2,$r1,-468(0x22c),0x0
1c007860:	32303163 	0x32303163
1c007864:	316b2666 	0x316b2666
1c007868:	65336c64 	bge	$r3,$r4,78700(0x1336c) # 1c01abd4 <_sidata+0x13124>
1c00786c:	4252324a 	beqz	$r18,2773552(0x2a5230) # 1c2aca9c <_sidata+0x2a4fec>
1c007870:	222c2242 	ll.d	$r2,$r18,11296(0x2c20)
1c007874:	32633663 	0x32633663
1c007878:	38363735 	0x38363735
1c00787c:	34323261 	0x34323261
1c007880:	36333535 	0x36333535
1c007884:	35323961 	0x35323961
1c007888:	35313661 	0x35313661
1c00788c:	38653164 	ammax.w	$r4,$r12,$r11
1c007890:	31323838 	0x31323838
1c007894:	34623432 	0x34623432
1c007898:	63646133 	blt	$r9,$r19,-39840(0x36460) # 1bffdcf8 <_start-0x2308>
1c00789c:	63623865 	blt	$r3,$r5,-40392(0x36238) # 1bffdad4 <_start-0x252c>
1c0078a0:	38363532 	0x38363532
1c0078a4:	31663233 	0x31663233
1c0078a8:	66633238 	bge	$r17,$r24,-105680(0x26330) # 1bfedbd8 <_start-0x12428>
1c0078ac:	62366465 	blt	$r3,$r5,-117148(0x23664) # 1bfeaf10 <_start-0x150f0>
1c0078b0:	64646233 	bge	$r17,$r19,25696(0x6460) # 1c00dd10 <_sidata+0x6260>
1c0078b4:	2c302c22 	vld	$vr2,$r1,-1013(0xc0b)
1c0078b8:	22222c30 	ll.d	$r16,$r1,8748(0x222c)
1c0078bc:	00000000 	0x00000000
1c0078c0:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c0078c4:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7cd18 <_start-0x3832e8>
1c0078c8:	4e45494c 	jirl	$r12,$r10,-113336(0x24548)
1c0078cc:	3d444954 	0x3d444954
1c0078d0:	316b2c30 	0x316b2c30
1c0078d4:	65336c64 	bge	$r3,$r4,78700(0x1336c) # 1c01ac40 <_sidata+0x13190>
1c0078d8:	4252324a 	beqz	$r18,2773552(0x2a5230) # 1c2acb08 <_sidata+0x2a5058>
1c0078dc:	63312e42 	blt	$r18,$r2,-52948(0x3312c) # 1bffaa08 <_start-0x55f8>
1c0078e0:	66323031 	bge	$r1,$r17,-118224(0x23230) # 1bfeab10 <_start-0x154f0>
1c0078e4:	6365737c 	blt	$r27,$r28,-39568(0x36570) # 1bffde54 <_start-0x21ac>
1c0078e8:	6d657275 	bgeu	$r19,$r21,91504(0x16570) # 1c01de58 <_sidata+0x163a8>
1c0078ec:	3d65646f 	0x3d65646f
1c0078f0:	69732c32 	bltu	$r1,$r18,95020(0x1732c) # 1c01ec1c <_sidata+0x1716c>
1c0078f4:	656d6e67 	bge	$r19,$r7,93548(0x16d6c) # 1c01e660 <_sidata+0x16bb0>
1c0078f8:	646f6874 	bge	$r3,$r20,28520(0x6f68) # 1c00e860 <_sidata+0x6db0>
1c0078fc:	616d683d 	blt	$r1,$r29,93544(0x16d68) # 1c01e664 <_sidata+0x16bb4>
1c007900:	61687363 	blt	$r27,$r3,92272(0x16870) # 1c01e170 <_sidata+0x166c0>
1c007904:	2c363532 	vld	$vr18,$r9,-627(0xd8d)
1c007908:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01e670 <_sidata+0x16bc0>
1c00790c:	6d617473 	bgeu	$r3,$r19,90484(0x16174) # 1c01da80 <_sidata+0x15fd0>
1c007910:	37313d70 	0x37313d70
1c007914:	36343931 	0x36343931
1c007918:	32323939 	0x32323939
1c00791c:	7c313934 	0x7c313934
1c007920:	00000a0d 	0x00000a0d
1c007924:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007928:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7cd7c <_start-0x383284>
1c00792c:	4e45494c 	jirl	$r12,$r10,-113336(0x24548)
1c007930:	3d444954 	0x3d444954
1c007934:	6b222c30 	bltu	$r1,$r16,-56788(0x3222c) # 1bff9b60 <_start-0x64a0>
1c007938:	336c6431 	xvstelm.h	$xr17,$r1,50(0x32),0xb
1c00793c:	52324a65 	b	-107597240(0x9963248) # 1596ab84 <_start-0x669547c>
1c007940:	312e4242 	vstelm.w	$vr2,$r18,-448(0x240),0x3
1c007944:	32303163 	0x32303163
1c007948:	65737c66 	bge	$r3,$r6,95100(0x1737c) # 1c01ecc4 <_sidata+0x17214>
1c00794c:	65727563 	bge	$r11,$r3,94836(0x17274) # 1c01ebc0 <_sidata+0x17110>
1c007950:	65646f6d 	bge	$r27,$r13,91244(0x1646c) # 1c01ddbc <_sidata+0x1630c>
1c007954:	2c5c323d 	vst	$vr29,$r17,1804(0x70c)
1c007958:	6e676973 	bgeu	$r11,$r19,-104600(0x26768) # 1bfee0c0 <_start-0x11f40>
1c00795c:	6874656d 	bltu	$r11,$r13,29796(0x7464) # 1c00edc0 <_sidata+0x7310>
1c007960:	683d646f 	bltu	$r3,$r15,15716(0x3d64) # 1c00b6c4 <_sidata+0x3c14>
1c007964:	7363616d 	vssrani.d.q	$vr13,$vr11,0x58
1c007968:	35326168 	0x35326168
1c00796c:	742c5c36 	0x742c5c36
1c007970:	73656d69 	vssrani.wu.d	$vr9,$vr11,0x1b
1c007974:	706d6174 	0x706d6174
1c007978:	3137313d 	0x3137313d
1c00797c:	39363439 	0x39363439
1c007980:	34323239 	0x34323239
1c007984:	227c3139 	ll.d	$r25,$r9,31792(0x7c30)
1c007988:	00000000 	0x00000000
1c00798c:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007990:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7cde4 <_start-0x38321c>
1c007994:	3d4e4e4f 	0x3d4e4e4f
1c007998:	69222c30 	bltu	$r1,$r16,74284(0x1222c) # 1c019bc4 <_sidata+0x12114>
1c00799c:	302d746f 	vldrepl.w	$vr15,$r3,-652(0xd74)
1c0079a0:	30307a36 	0x30307a36
1c0079a4:	36397a62 	0x36397a62
1c0079a8:	62783437 	blt	$r1,$r23,-100300(0x27834) # 1bfef1dc <_start-0x10e24>
1c0079ac:	6d2e7665 	bgeu	$r19,$r5,77428(0x12e74) # 1c01a820 <_sidata+0x12d70>
1c0079b0:	2e747471 	0x2e747471
1c0079b4:	68746f69 	bltu	$r27,$r9,29804(0x746c) # 1c00ee20 <_sidata+0x7370>
1c0079b8:	612e6275 	blt	$r19,$r21,77408(0x12e60) # 1c01a818 <_sidata+0x12d68>
1c0079bc:	7579696c 	0x7579696c
1c0079c0:	2e73636e 	0x2e73636e
1c0079c4:	226d6f63 	ll.d	$r3,$r27,28012(0x6d6c)
1c0079c8:	3838312c 	fstx.s	$f12,$r9,$r12
1c0079cc:	0d312c33 	0x0d312c33
1c0079d0:	0000000a 	0x0000000a
1c0079d4:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c0079d8:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7ce2c <_start-0x3831d4>
1c0079dc:	3d4e4e4f 	0x3d4e4e4f
1c0079e0:	69222c30 	bltu	$r1,$r16,74284(0x1222c) # 1c019c0c <_sidata+0x1215c>
1c0079e4:	302d746f 	vldrepl.w	$vr15,$r3,-652(0xd74)
1c0079e8:	30307a36 	0x30307a36
1c0079ec:	36397a62 	0x36397a62
1c0079f0:	62783437 	blt	$r1,$r23,-100300(0x27834) # 1bfef224 <_start-0x10ddc>
1c0079f4:	6d2e7665 	bgeu	$r19,$r5,77428(0x12e74) # 1c01a868 <_sidata+0x12db8>
1c0079f8:	2e747471 	0x2e747471
1c0079fc:	68746f69 	bltu	$r27,$r9,29804(0x746c) # 1c00ee68 <_sidata+0x73b8>
1c007a00:	612e6275 	blt	$r19,$r21,77408(0x12e60) # 1c01a860 <_sidata+0x12db0>
1c007a04:	7579696c 	0x7579696c
1c007a08:	2e73636e 	0x2e73636e
1c007a0c:	226d6f63 	ll.d	$r3,$r27,28012(0x6d6c)
1c007a10:	3838312c 	fstx.s	$f12,$r9,$r12
1c007a14:	00312c33 	0x00312c33
1c007a18:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007a1c:	53545451 	b	21451860(0x1475454) # 1d47ce70 <_sidata+0x14753c0>
1c007a20:	303d4255 	0x303d4255
1c007a24:	0d312c2c 	0x0d312c2c
1c007a28:	0000000a 	0x0000000a
1c007a2c:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007a30:	53545451 	b	21451860(0x1475454) # 1d47ce84 <_sidata+0x14753d4>
1c007a34:	303d4255 	0x303d4255
1c007a38:	6b2f222c 	bltu	$r17,$r12,-53472(0x32f20) # 1bffa958 <_start-0x56a8>
1c007a3c:	336c6431 	xvstelm.h	$xr17,$r1,50(0x32),0xb
1c007a40:	52324a65 	b	-107597240(0x9963248) # 1596ac88 <_start-0x6695378>
1c007a44:	312f4242 	vstelm.w	$vr2,$r18,-192(0x340),0x3
1c007a48:	32303163 	0x32303163
1c007a4c:	73752f66 	0x73752f66
1c007a50:	672f7265 	bge	$r19,$r5,-53392(0x32f70) # 1bffa9c0 <_start-0x5640>
1c007a54:	2c227465 	vld	$vr5,$r3,-1891(0x89d)
1c007a58:	00000031 	0x00000031
1c007a5c:	00007325 	0x00007325
1c007a60:	54514d2b 	bl	78401868(0x4ac514c) # 20accbac <_sidata+0x4ac50fc>
1c007a64:	42555354 	beqz	$r26,-2992816(0x525550) # 1bd2cfb4 <_start-0x2d304c>
1c007a68:	56434552 	bl	88752964(0x54a4344) # 214abdac <_sidata+0x54a42fc>
1c007a6c:	00000000 	0x00000000
1c007a70:	65746177 	bge	$r11,$r23,95328(0x17460) # 1c01eed0 <_sidata+0x17420>
1c007a74:	68705f72 	bltu	$r27,$r18,28764(0x705c) # 1c00ead0 <_sidata+0x7020>
1c007a78:	00000000 	0x00000000
1c007a7c:	65746177 	bge	$r11,$r23,95328(0x17460) # 1c01eedc <_sidata+0x1742c>
1c007a80:	656c5f72 	bge	$r27,$r18,93276(0x16c5c) # 1c01e6dc <_sidata+0x16c2c>
1c007a84:	006c6576 	bstrins.w	$r22,$r11,0xc,0x19
1c007a88:	65746177 	bge	$r11,$r23,95328(0x17460) # 1c01eee8 <_sidata+0x17438>
1c007a8c:	75745f72 	0x75745f72
1c007a90:	64696272 	bge	$r19,$r18,26976(0x6960) # 1c00e3f0 <_sidata+0x6940>
1c007a94:	00797469 	bstrins.w	$r9,$r3,0x19,0x1d
1c007a98:	65746177 	bge	$r11,$r23,95328(0x17460) # 1c01eef8 <_sidata+0x17448>
1c007a9c:	65745f72 	bge	$r27,$r18,95324(0x1745c) # 1c01eef8 <_sidata+0x17448>
1c007aa0:	6572706d 	bge	$r3,$r13,94832(0x17270) # 1c01ed10 <_sidata+0x17260>
1c007aa4:	65727574 	bge	$r11,$r20,94836(0x17274) # 1c01ed18 <_sidata+0x17268>
1c007aa8:	00000000 	0x00000000
1c007aac:	00004b4f 	bitrev.4b	$r15,$r26

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c006b49 	pcaddu12i	$r9,858(0x35a)
80001008:	80000080 	0x80000080
8000100c:	80000014 	0x80000014
80001010:	80000c34 	0x80000c34
80001014:	800008a4 	0x800008a4
80001018:	80000024 	0x80000024
8000101c:	800009d4 	0x800009d4
80001020:	8000105c 	0x8000105c
80001024:	80000484 	0x80000484
80001028:	80000488 	0x80000488
8000102c:	8000000c 	0x8000000c
80001030:	8000048c 	0x8000048c
80001034:	8000088c 	0x8000088c
80001038:	8000001c 	0x8000001c
8000103c:	80000034 	0x80000034
80001040:	8000089c 	0x8000089c
80001044:	800008a0 	0x800008a0
80001048:	1c006b40 	pcaddu12i	$r0,858(0x35a)
8000104c:	80000004 	0x80000004
80001050:	8000002c 	0x8000002c
80001054:	80000b04 	0x80000b04
80001058:	800008a8 	0x800008a8

8000105c <g_SystemFreq>:
8000105c:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

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

80000030 <receive_data_uart1.1967>:
	...

80000031 <receive_data_uart0.1968>:
	...

80000032 <temp>:
	...

80000034 <water_circle_type>:
	...

80000080 <json_backage>:
	...

80000484 <Json_Read_length>:
80000484:	00000000 	0x00000000

80000488 <Json_recive_data>:
80000488:	00000000 	0x00000000

8000048c <Json_Read_Buffer>:
	...

8000088c <Json_Comma_Flag>:
	...

8000089c <mqtt_data>:
8000089c:	00000000 	0x00000000

800008a0 <Json_recive_data_lenth>:
800008a0:	00000000 	0x00000000

800008a4 <Read_length>:
800008a4:	00000000 	0x00000000

800008a8 <Read_Buffer>:
	...

800009d4 <Circular_queue_recv>:
	...

80000b04 <Circular_queue_send>:
	...

80000c34 <mqtt_esp_type>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...