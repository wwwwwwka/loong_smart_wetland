
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
1c00000c:	03be71ef 	ori	$r15,$r15,0xf9c
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
1c000030:	0381e1ef 	ori	$r15,$r15,0x78
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	03b271ad 	ori	$r13,$r13,0xc9c
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
1c001090:	543c9800 	bl	15512(0x3c98) # 1c004d28 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	543ce000 	bl	15584(0x3ce0) # 1c004d78 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	543d6c00 	bl	15724(0x3d6c) # 1c004e0c <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	543da000 	bl	15776(0x3da0) # 1c004e48 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	543bc000 	bl	15296(0x3bc0) # 1c004c70 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	54415400 	bl	16724(0x4154) # 1c00520c <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543e5800 	bl	15960(0x3e58) # 1c004f20 <intc_handler>
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
1c001290:	28b73084 	ld.w	$r4,$r4,-564(0xdcc)
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
1c0013d4:	541d7400 	bl	7540(0x1d74) # 1c003148 <DisableInt>
1c0013d8:	541c9c00 	bl	7324(0x1c9c) # 1c003074 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	5426c400 	bl	9924(0x26c4) # 1c003aa4 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54260400 	bl	9732(0x2604) # 1c0039ec <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	54150800 	bl	5384(0x1508) # 1c0028fc <Uart0_init>
1c0013f8:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013fc:	03880184 	ori	$r4,$r12,0x200
1c001400:	5415c000 	bl	5568(0x15c0) # 1c0029c0 <Uart1_init>
1c001404:	541f3800 	bl	7992(0x1f38) # 1c00333c <ls1x_logo>
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	2880018e 	ld.w	$r14,$r12,0
1c001414:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001418:	0380118c 	ori	$r12,$r12,0x4
1c00141c:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001420:	001535cd 	or	$r13,$r14,$r13
1c001424:	2980018d 	st.w	$r13,$r12,0
1c001428:	541d4400 	bl	7492(0x1d44) # 1c00316c <EnableInt>
1c00142c:	541fd800 	bl	8152(0x1fd8) # 1c003404 <open_count>
1c001430:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001434:	541da000 	bl	7584(0x1da0) # 1c0031d4 <Wake_Set>
1c001438:	54264000 	bl	9792(0x2640) # 1c003a78 <WDG_DogFeed>
1c00143c:	541e4400 	bl	7748(0x1e44) # 1c003280 <PMU_GetRstRrc>
1c001440:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001448:	44003180 	bnez	$r12,48(0x30) # 1c001478 <bsp_init+0xb4>
1c00144c:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c001450:	02b0c084 	addi.w	$r4,$r4,-976(0xc30)
1c001454:	54085800 	bl	2136(0x858) # 1c001cac <myprintf>
1c001458:	541e9400 	bl	7828(0x1e94) # 1c0032ec <PMU_GetBootSpiStatus>
1c00145c:	0015008c 	move	$r12,$r4
1c001460:	40001180 	beqz	$r12,16(0x10) # 1c001470 <bsp_init+0xac>
1c001464:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c001468:	02b0a084 	addi.w	$r4,$r4,-984(0xc28)
1c00146c:	54084000 	bl	2112(0x840) # 1c001cac <myprintf>
1c001470:	543fd400 	bl	16340(0x3fd4) # 1c005444 <main>
1c001474:	50004000 	b	64(0x40) # 1c0014b4 <bsp_init+0xf0>
1c001478:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00147c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001480:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c001498 <bsp_init+0xd4>
1c001484:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c001488:	02b05084 	addi.w	$r4,$r4,-1004(0xc14)
1c00148c:	54082000 	bl	2080(0x820) # 1c001cac <myprintf>
1c001490:	543fb400 	bl	16308(0x3fb4) # 1c005444 <main>
1c001494:	50002000 	b	32(0x20) # 1c0014b4 <bsp_init+0xf0>
1c001498:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00149c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0014a0:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014b4 <bsp_init+0xf0>
1c0014a4:	1c0000c4 	pcaddu12i	$r4,6(0x6)
1c0014a8:	02b01084 	addi.w	$r4,$r4,-1020(0xc04)
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
1c00188c:	5411f800 	bl	4600(0x11f8) # 1c002a84 <Uart0_send>
1c001890:	50003800 	b	56(0x38) # 1c0018c8 <myputchar2+0x70>
1c001894:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c001898:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00189c:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0018b0 <myputchar2+0x58>
1c0018a0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0018a4:	00150184 	move	$r4,$r12
1c0018a8:	54121800 	bl	4632(0x1218) # 1c002ac0 <Uart1_send>
1c0018ac:	50001c00 	b	28(0x1c) # 1c0018c8 <myputchar2+0x70>
1c0018b0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0018b4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0018b8:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0018c8 <myputchar2+0x70>
1c0018bc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0018c0:	00150184 	move	$r4,$r12
1c0018c4:	54123800 	bl	4664(0x1238) # 1c002afc <Uart2_send>
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
1c001d48:	028dc18c 	addi.w	$r12,$r12,880(0x370)
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
1c0020f0:	0284618c 	addi.w	$r12,$r12,280(0x118)
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
1c002938:	289bc18c 	ld.w	$r12,$r12,1776(0x6f0)
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
1c0029fc:	2898b18c 	ld.w	$r12,$r12,1580(0x62c)
1c002a00:	2880018c 	ld.w	$r12,$r12,0
1c002a04:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002a08:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a0c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002a10:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002a14:	00150185 	move	$r5,$r12
1c002a18:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a1c:	57fa4bff 	bl	-1464(0xffffa48) # 1c002464 <UART_Init>
1c002a20:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002a24:	0380098c 	ori	$r12,$r12,0x2
1c002a28:	2a00018c 	ld.bu	$r12,$r12,0
1c002a2c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002a30:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002a34:	0380098c 	ori	$r12,$r12,0x2
1c002a38:	038011ad 	ori	$r13,$r13,0x4
1c002a3c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002a40:	2900018d 	st.b	$r13,$r12,0
1c002a44:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002a48:	2a00018c 	ld.bu	$r12,$r12,0
1c002a4c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002a50:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002a54:	038011ad 	ori	$r13,$r13,0x4
1c002a58:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002a5c:	2900018d 	st.b	$r13,$r12,0
1c002a60:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002a64:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a68:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a6c:	57fd73ff 	bl	-656(0xffffd70) # 1c0027dc <UART_ITConfig>
1c002a70:	03400000 	andi	$r0,$r0,0x0
1c002a74:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002a78:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002a7c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a80:	4c000020 	jirl	$r0,$r1,0

1c002a84 <Uart0_send>:
Uart0_send():
1c002a84:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002a88:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002a8c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002a90:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002a94:	0015008c 	move	$r12,$r4
1c002a98:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a9c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002aa0:	00150185 	move	$r5,$r12
1c002aa4:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002aa8:	57fdbfff 	bl	-580(0xffffdbc) # 1c002864 <UART_SendData>
1c002aac:	03400000 	andi	$r0,$r0,0x0
1c002ab0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002ab4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002ab8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002abc:	4c000020 	jirl	$r0,$r1,0

1c002ac0 <Uart1_send>:
Uart1_send():
1c002ac0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002ac4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002ac8:	29806076 	st.w	$r22,$r3,24(0x18)
1c002acc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002ad0:	0015008c 	move	$r12,$r4
1c002ad4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002ad8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002adc:	00150185 	move	$r5,$r12
1c002ae0:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002ae4:	57fd83ff 	bl	-640(0xffffd80) # 1c002864 <UART_SendData>
1c002ae8:	03400000 	andi	$r0,$r0,0x0
1c002aec:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002af0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002af4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002af8:	4c000020 	jirl	$r0,$r1,0

1c002afc <Uart2_send>:
Uart2_send():
1c002afc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b00:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002b04:	29806076 	st.w	$r22,$r3,24(0x18)
1c002b08:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b0c:	0015008c 	move	$r12,$r4
1c002b10:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002b14:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002b18:	00150185 	move	$r5,$r12
1c002b1c:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c002b20:	57fd47ff 	bl	-700(0xffffd44) # 1c002864 <UART_SendData>
1c002b24:	03400000 	andi	$r0,$r0,0x0
1c002b28:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002b2c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002b30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002b34:	4c000020 	jirl	$r0,$r1,0

1c002b38 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002b38:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b3c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002b40:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b44:	1400006c 	lu12i.w	$r12,3(0x3)
1c002b48:	03ba018c 	ori	$r12,$r12,0xe80
1c002b4c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b50:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002b54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b58:	2880018d 	ld.w	$r13,$r12,0
1c002b5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b60:	038101ad 	ori	$r13,$r13,0x40
1c002b64:	2980018d 	st.w	$r13,$r12,0
1c002b68:	03400000 	andi	$r0,$r0,0x0
1c002b6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002b70:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002b74:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002b78:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002b6c <CLOCK_WaitForHSEStartUp+0x34>
1c002b7c:	50001c00 	b	28(0x1c) # 1c002b98 <CLOCK_WaitForHSEStartUp+0x60>
1c002b80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b84:	2880018e 	ld.w	$r14,$r12,0
1c002b88:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b8c:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002b90:	0014b5cd 	and	$r13,$r14,$r13
1c002b94:	2980018d 	st.w	$r13,$r12,0
1c002b98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002b9c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002ba0:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002b80 <CLOCK_WaitForHSEStartUp+0x48>
1c002ba4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ba8:	2880018d 	ld.w	$r13,$r12,0
1c002bac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bb0:	038201ad 	ori	$r13,$r13,0x80
1c002bb4:	2980018d 	st.w	$r13,$r12,0
1c002bb8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002bbc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002bc0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002bc4:	00150184 	move	$r4,$r12
1c002bc8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002bcc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002bd0:	4c000020 	jirl	$r0,$r1,0

1c002bd4 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002bd4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002bd8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002bdc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002be0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002be4:	50008800 	b	136(0x88) # 1c002c6c <CLOCK_WaitForLSEStartUp+0x98>
1c002be8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bec:	2880018e 	ld.w	$r14,$r12,0
1c002bf0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bf4:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002bf8:	0014b5cd 	and	$r13,$r14,$r13
1c002bfc:	2980018d 	st.w	$r13,$r12,0
1c002c00:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002c04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c08:	50001400 	b	20(0x14) # 1c002c1c <CLOCK_WaitForLSEStartUp+0x48>
1c002c0c:	03400000 	andi	$r0,$r0,0x0
1c002c10:	03400000 	andi	$r0,$r0,0x0
1c002c14:	03400000 	andi	$r0,$r0,0x0
1c002c18:	03400000 	andi	$r0,$r0,0x0
1c002c1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c20:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c24:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002c28:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c0c <CLOCK_WaitForLSEStartUp+0x38>
1c002c2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c30:	2880018d 	ld.w	$r13,$r12,0
1c002c34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c38:	038081ad 	ori	$r13,$r13,0x20
1c002c3c:	2980018d 	st.w	$r13,$r12,0
1c002c40:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002c44:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c48:	50001400 	b	20(0x14) # 1c002c5c <CLOCK_WaitForLSEStartUp+0x88>
1c002c4c:	03400000 	andi	$r0,$r0,0x0
1c002c50:	03400000 	andi	$r0,$r0,0x0
1c002c54:	03400000 	andi	$r0,$r0,0x0
1c002c58:	03400000 	andi	$r0,$r0,0x0
1c002c5c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c60:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c64:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002c68:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c4c <CLOCK_WaitForLSEStartUp+0x78>
1c002c6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c70:	0380118c 	ori	$r12,$r12,0x4
1c002c74:	2880018d 	ld.w	$r13,$r12,0
1c002c78:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002c7c:	0014b1ac 	and	$r12,$r13,$r12
1c002c80:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002be8 <CLOCK_WaitForLSEStartUp+0x14>
1c002c84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c88:	0380118c 	ori	$r12,$r12,0x4
1c002c8c:	2880018d 	ld.w	$r13,$r12,0
1c002c90:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002c94:	0014b1ac 	and	$r12,$r13,$r12
1c002c98:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002be8 <CLOCK_WaitForLSEStartUp+0x14>
1c002c9c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002ca0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002ca4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002ca8:	00150184 	move	$r4,$r12
1c002cac:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002cb0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002cb4:	4c000020 	jirl	$r0,$r1,0

1c002cb8 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002cb8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002cbc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002cc0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002cc4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002cc8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002ccc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002cd0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cd4:	2880018e 	ld.w	$r14,$r12,0
1c002cd8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002cdc:	0014300d 	nor	$r13,$r0,$r12
1c002ce0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ce4:	0014b5cd 	and	$r13,$r14,$r13
1c002ce8:	2980018d 	st.w	$r13,$r12,0
1c002cec:	1400002c 	lu12i.w	$r12,1(0x1)
1c002cf0:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002cf4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002cf8:	50001400 	b	20(0x14) # 1c002d0c <CLOCK_HSEConfig+0x54>
1c002cfc:	03400000 	andi	$r0,$r0,0x0
1c002d00:	03400000 	andi	$r0,$r0,0x0
1c002d04:	03400000 	andi	$r0,$r0,0x0
1c002d08:	03400000 	andi	$r0,$r0,0x0
1c002d0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002d10:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002d14:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002d18:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002cfc <CLOCK_HSEConfig+0x44>
1c002d1c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002d20:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002d24:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002d34 <CLOCK_HSEConfig+0x7c>
1c002d28:	57fe13ff 	bl	-496(0xffffe10) # 1c002b38 <CLOCK_WaitForHSEStartUp>
1c002d2c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002d30:	50002400 	b	36(0x24) # 1c002d54 <CLOCK_HSEConfig+0x9c>
1c002d34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d38:	2880018e 	ld.w	$r14,$r12,0
1c002d3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d40:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002d44:	0014b5cd 	and	$r13,$r14,$r13
1c002d48:	2980018d 	st.w	$r13,$r12,0
1c002d4c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d50:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d58:	00150184 	move	$r4,$r12
1c002d5c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002d60:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002d64:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002d68:	4c000020 	jirl	$r0,$r1,0

1c002d6c <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002d6c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d70:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d74:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d78:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d7c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d80:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d84:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002d88:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002d8c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002d9c <CLOCK_LSEConfig+0x30>
1c002d90:	57fe47ff 	bl	-444(0xffffe44) # 1c002bd4 <CLOCK_WaitForLSEStartUp>
1c002d94:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002d98:	50002400 	b	36(0x24) # 1c002dbc <CLOCK_LSEConfig+0x50>
1c002d9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002da0:	2880018e 	ld.w	$r14,$r12,0
1c002da4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002da8:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002dac:	0014b5cd 	and	$r13,$r14,$r13
1c002db0:	2980018d 	st.w	$r13,$r12,0
1c002db4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002db8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002dbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dc0:	00150184 	move	$r4,$r12
1c002dc4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002dc8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002dcc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002dd0:	4c000020 	jirl	$r0,$r1,0

1c002dd4 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002dd4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002dd8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002ddc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002de0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002de4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002de8:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002dec:	2980018d 	st.w	$r13,$r12,0
1c002df0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002df4:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002df8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002dfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e00:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002e04:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002e08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e0c:	29803180 	st.w	$r0,$r12,12(0xc)
1c002e10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e14:	29804180 	st.w	$r0,$r12,16(0x10)
1c002e18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e1c:	29805180 	st.w	$r0,$r12,20(0x14)
1c002e20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e24:	29806180 	st.w	$r0,$r12,24(0x18)
1c002e28:	03400000 	andi	$r0,$r0,0x0
1c002e2c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002e30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002e34:	4c000020 	jirl	$r0,$r1,0

1c002e38 <CLOCK_Init>:
CLOCK_Init():
1c002e38:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e3c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e40:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e44:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e48:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e4c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e50:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e54:	2880018e 	ld.w	$r14,$r12,0
1c002e58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e5c:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002e60:	0014b5cd 	and	$r13,$r14,$r13
1c002e64:	2980018d 	st.w	$r13,$r12,0
1c002e68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e6c:	2880018e 	ld.w	$r14,$r12,0
1c002e70:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e74:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002e78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e7c:	001535cd 	or	$r13,$r14,$r13
1c002e80:	2980018d 	st.w	$r13,$r12,0
1c002e84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e88:	2880018e 	ld.w	$r14,$r12,0
1c002e8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e90:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002e94:	0014b5cd 	and	$r13,$r14,$r13
1c002e98:	2980018d 	st.w	$r13,$r12,0
1c002e9c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ea0:	2880018e 	ld.w	$r14,$r12,0
1c002ea4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ea8:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002eac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002eb0:	001535cd 	or	$r13,$r14,$r13
1c002eb4:	2980018d 	st.w	$r13,$r12,0
1c002eb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ebc:	2880018e 	ld.w	$r14,$r12,0
1c002ec0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ec4:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002ec8:	039ffdad 	ori	$r13,$r13,0x7ff
1c002ecc:	0014b5cd 	and	$r13,$r14,$r13
1c002ed0:	2980018d 	st.w	$r13,$r12,0
1c002ed4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ed8:	2880018e 	ld.w	$r14,$r12,0
1c002edc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ee0:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002ee4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ee8:	001535cd 	or	$r13,$r14,$r13
1c002eec:	2980018d 	st.w	$r13,$r12,0
1c002ef0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ef4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002ef8:	00150184 	move	$r4,$r12
1c002efc:	57fdbfff 	bl	-580(0xffffdbc) # 1c002cb8 <CLOCK_HSEConfig>
1c002f00:	0015008d 	move	$r13,$r4
1c002f04:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002f08:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002f14 <CLOCK_Init+0xdc>
1c002f0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f10:	50015000 	b	336(0x150) # 1c003060 <CLOCK_Init+0x228>
1c002f14:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f18:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002f1c:	00150184 	move	$r4,$r12
1c002f20:	57fe4fff 	bl	-436(0xffffe4c) # 1c002d6c <CLOCK_LSEConfig>
1c002f24:	0015008d 	move	$r13,$r4
1c002f28:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002f2c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002f38 <CLOCK_Init+0x100>
1c002f30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f34:	50012c00 	b	300(0x12c) # 1c003060 <CLOCK_Init+0x228>
1c002f38:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f3c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002f40:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002f44:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c003040 <CLOCK_Init+0x208>
1c002f48:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f4c:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002f50:	4000a180 	beqz	$r12,160(0xa0) # 1c002ff0 <CLOCK_Init+0x1b8>
1c002f54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f58:	2880018e 	ld.w	$r14,$r12,0
1c002f5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f60:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002f64:	03bffdad 	ori	$r13,$r13,0xfff
1c002f68:	0014b5cd 	and	$r13,$r14,$r13
1c002f6c:	2980018d 	st.w	$r13,$r12,0
1c002f70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f74:	2880018e 	ld.w	$r14,$r12,0
1c002f78:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f7c:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c002f80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f84:	001535cd 	or	$r13,$r14,$r13
1c002f88:	2980018d 	st.w	$r13,$r12,0
1c002f8c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002f90:	0386c18c 	ori	$r12,$r12,0x1b0
1c002f94:	2880018c 	ld.w	$r12,$r12,0
1c002f98:	40004180 	beqz	$r12,64(0x40) # 1c002fd8 <CLOCK_Init+0x1a0>
1c002f9c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002fa0:	0386c18c 	ori	$r12,$r12,0x1b0
1c002fa4:	2880018c 	ld.w	$r12,$r12,0
1c002fa8:	0040898e 	slli.w	$r14,$r12,0x2
1c002fac:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002fb0:	002031cd 	div.w	$r13,$r14,$r12
1c002fb4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002fbc <CLOCK_Init+0x184>
1c002fb8:	002a0007 	break	0x7
1c002fbc:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c002fc0:	001c31ac 	mul.w	$r12,$r13,$r12
1c002fc4:	0015018d 	move	$r13,$r12
1c002fc8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002fcc:	0282918c 	addi.w	$r12,$r12,164(0xa4)
1c002fd0:	2980018d 	st.w	$r13,$r12,0
1c002fd4:	50008000 	b	128(0x80) # 1c003054 <CLOCK_Init+0x21c>
1c002fd8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002fdc:	0282518c 	addi.w	$r12,$r12,148(0x94)
1c002fe0:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c002fe4:	038fe1ad 	ori	$r13,$r13,0x3f8
1c002fe8:	2980018d 	st.w	$r13,$r12,0
1c002fec:	50006800 	b	104(0x68) # 1c003054 <CLOCK_Init+0x21c>
1c002ff0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002ff4:	0386c18c 	ori	$r12,$r12,0x1b0
1c002ff8:	2880018c 	ld.w	$r12,$r12,0
1c002ffc:	40002d80 	beqz	$r12,44(0x2c) # 1c003028 <CLOCK_Init+0x1f0>
1c003000:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003004:	0386c18c 	ori	$r12,$r12,0x1b0
1c003008:	2880018d 	ld.w	$r13,$r12,0
1c00300c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c003010:	001c31ac 	mul.w	$r12,$r13,$r12
1c003014:	0015018d 	move	$r13,$r12
1c003018:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00301c:	0281518c 	addi.w	$r12,$r12,84(0x54)
1c003020:	2980018d 	st.w	$r13,$r12,0
1c003024:	50003000 	b	48(0x30) # 1c003054 <CLOCK_Init+0x21c>
1c003028:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00302c:	0281118c 	addi.w	$r12,$r12,68(0x44)
1c003030:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003034:	038801ad 	ori	$r13,$r13,0x200
1c003038:	2980018d 	st.w	$r13,$r12,0
1c00303c:	50001800 	b	24(0x18) # 1c003054 <CLOCK_Init+0x21c>
1c003040:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003044:	0280b18c 	addi.w	$r12,$r12,44(0x2c)
1c003048:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c00304c:	038801ad 	ori	$r13,$r13,0x200
1c003050:	2980018d 	st.w	$r13,$r12,0
1c003054:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003058:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00305c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003060:	00150184 	move	$r4,$r12
1c003064:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003068:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00306c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003070:	4c000020 	jirl	$r0,$r1,0

1c003074 <SystemClockInit>:
SystemClockInit():
1c003074:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003078:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00307c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003080:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003084:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c003088:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c00308c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c003090:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003094:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003098:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00309c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0030a0:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0030a4:	00150184 	move	$r4,$r12
1c0030a8:	57fd2fff 	bl	-724(0xffffd2c) # 1c002dd4 <CLOCK_StructInit>
1c0030ac:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c0030b0:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c0030b4:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0030b8:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0030bc:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0030c0:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0030c4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0030c8:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c0030cc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0030d0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0030d4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0030d8:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0030dc:	00150184 	move	$r4,$r12
1c0030e0:	57fd5bff 	bl	-680(0xffffd58) # 1c002e38 <CLOCK_Init>
1c0030e4:	0015008d 	move	$r13,$r4
1c0030e8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0030ec:	58000dac 	beq	$r13,$r12,12(0xc) # 1c0030f8 <SystemClockInit+0x84>
1c0030f0:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0030f4:	50000800 	b	8(0x8) # 1c0030fc <SystemClockInit+0x88>
1c0030f8:	0015000c 	move	$r12,$r0
1c0030fc:	00150184 	move	$r4,$r12
1c003100:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003104:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003108:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00310c:	4c000020 	jirl	$r0,$r1,0

1c003110 <IsGlobalIntOpen>:
IsGlobalIntOpen():
1c003110:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003114:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003118:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00311c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003120:	0400000c 	csrrd	$r12,0x0
1c003124:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003128:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00312c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003130:	0340118c 	andi	$r12,$r12,0x4
1c003134:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003138:	00150184 	move	$r4,$r12
1c00313c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003140:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003144:	4c000020 	jirl	$r0,$r1,0

1c003148 <DisableInt>:
DisableInt():
1c003148:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00314c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003150:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003154:	0380100c 	ori	$r12,$r0,0x4
1c003158:	04000180 	csrxchg	$r0,$r12,0x0
1c00315c:	03400000 	andi	$r0,$r0,0x0
1c003160:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003164:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003168:	4c000020 	jirl	$r0,$r1,0

1c00316c <EnableInt>:
EnableInt():
1c00316c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003170:	29803076 	st.w	$r22,$r3,12(0xc)
1c003174:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003178:	0380100c 	ori	$r12,$r0,0x4
1c00317c:	0400018c 	csrxchg	$r12,$r12,0x0
1c003180:	03400000 	andi	$r0,$r0,0x0
1c003184:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003188:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00318c:	4c000020 	jirl	$r0,$r1,0

1c003190 <Set_Timer_stop>:
Set_Timer_stop():
1c003190:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003194:	29803076 	st.w	$r22,$r3,12(0xc)
1c003198:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00319c:	04010420 	csrwr	$r0,0x41
1c0031a0:	03400000 	andi	$r0,$r0,0x0
1c0031a4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031ac:	4c000020 	jirl	$r0,$r1,0

1c0031b0 <Set_Timer_clear>:
Set_Timer_clear():
1c0031b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031b4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031bc:	0380040c 	ori	$r12,$r0,0x1
1c0031c0:	0401102c 	csrwr	$r12,0x44
1c0031c4:	03400000 	andi	$r0,$r0,0x0
1c0031c8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031d0:	4c000020 	jirl	$r0,$r1,0

1c0031d4 <Wake_Set>:
Wake_Set():
1c0031d4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0031d8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0031dc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0031e0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0031e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0031e8:	40006980 	beqz	$r12,104(0x68) # 1c003250 <Wake_Set+0x7c>
1c0031ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0031f0:	0040a18c 	slli.w	$r12,$r12,0x8
1c0031f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0031f8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0031fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003200:	0380218c 	ori	$r12,$r12,0x8
1c003204:	2880018d 	ld.w	$r13,$r12,0
1c003208:	14001fec 	lu12i.w	$r12,255(0xff)
1c00320c:	03bffd8c 	ori	$r12,$r12,0xfff
1c003210:	0014b1ac 	and	$r12,$r13,$r12
1c003214:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003218:	001031ac 	add.w	$r12,$r13,$r12
1c00321c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003220:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003224:	0380318c 	ori	$r12,$r12,0xc
1c003228:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00322c:	2980018d 	st.w	$r13,$r12,0
1c003230:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003234:	0380118c 	ori	$r12,$r12,0x4
1c003238:	2880018d 	ld.w	$r13,$r12,0
1c00323c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003240:	0380118c 	ori	$r12,$r12,0x4
1c003244:	038601ad 	ori	$r13,$r13,0x180
1c003248:	2980018d 	st.w	$r13,$r12,0
1c00324c:	50002400 	b	36(0x24) # 1c003270 <Wake_Set+0x9c>
1c003250:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003254:	0380118c 	ori	$r12,$r12,0x4
1c003258:	2880018e 	ld.w	$r14,$r12,0
1c00325c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003260:	0380118c 	ori	$r12,$r12,0x4
1c003264:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c003268:	0014b5cd 	and	$r13,$r14,$r13
1c00326c:	2980018d 	st.w	$r13,$r12,0
1c003270:	03400000 	andi	$r0,$r0,0x0
1c003274:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003278:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00327c:	4c000020 	jirl	$r0,$r1,0

1c003280 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c003280:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003284:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003288:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00328c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003290:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003294:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003298:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c00329c:	0014b1ac 	and	$r12,$r13,$r12
1c0032a0:	44000d80 	bnez	$r12,12(0xc) # 1c0032ac <PMU_GetRstRrc+0x2c>
1c0032a4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0032a8:	50003000 	b	48(0x30) # 1c0032d8 <PMU_GetRstRrc+0x58>
1c0032ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032b0:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0032b4:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0032b8:	0014b1ad 	and	$r13,$r13,$r12
1c0032bc:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0032c0:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0032d0 <PMU_GetRstRrc+0x50>
1c0032c4:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0032c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0032cc:	50000c00 	b	12(0xc) # 1c0032d8 <PMU_GetRstRrc+0x58>
1c0032d0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0032d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0032d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0032dc:	00150184 	move	$r4,$r12
1c0032e0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0032e4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0032e8:	4c000020 	jirl	$r0,$r1,0

1c0032ec <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c0032ec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0032f0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0032f4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0032f8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0032fc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003300:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003304:	0380198c 	ori	$r12,$r12,0x6
1c003308:	2a00018c 	ld.bu	$r12,$r12,0
1c00330c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003310:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003314:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003318:	0340058c 	andi	$r12,$r12,0x1
1c00331c:	40000d80 	beqz	$r12,12(0xc) # 1c003328 <PMU_GetBootSpiStatus+0x3c>
1c003320:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003324:	50000800 	b	8(0x8) # 1c00332c <PMU_GetBootSpiStatus+0x40>
1c003328:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00332c:	00150184 	move	$r4,$r12
1c003330:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003334:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003338:	4c000020 	jirl	$r0,$r1,0

1c00333c <ls1x_logo>:
ls1x_logo():
1c00333c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003340:	29803061 	st.w	$r1,$r3,12(0xc)
1c003344:	29802076 	st.w	$r22,$r3,8(0x8)
1c003348:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00334c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003350:	02802084 	addi.w	$r4,$r4,8(0x8)
1c003354:	57e95bff 	bl	-5800(0xfffe958) # 1c001cac <myprintf>
1c003358:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00335c:	02800084 	addi.w	$r4,$r4,0
1c003360:	57e94fff 	bl	-5812(0xfffe94c) # 1c001cac <myprintf>
1c003364:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003368:	02816084 	addi.w	$r4,$r4,88(0x58)
1c00336c:	57e943ff 	bl	-5824(0xfffe940) # 1c001cac <myprintf>
1c003370:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003374:	0282c084 	addi.w	$r4,$r4,176(0xb0)
1c003378:	57e937ff 	bl	-5836(0xfffe934) # 1c001cac <myprintf>
1c00337c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003380:	02842084 	addi.w	$r4,$r4,264(0x108)
1c003384:	57e92bff 	bl	-5848(0xfffe928) # 1c001cac <myprintf>
1c003388:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00338c:	02858084 	addi.w	$r4,$r4,352(0x160)
1c003390:	57e91fff 	bl	-5860(0xfffe91c) # 1c001cac <myprintf>
1c003394:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003398:	0286e084 	addi.w	$r4,$r4,440(0x1b8)
1c00339c:	57e913ff 	bl	-5872(0xfffe910) # 1c001cac <myprintf>
1c0033a0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033a4:	02884084 	addi.w	$r4,$r4,528(0x210)
1c0033a8:	57e907ff 	bl	-5884(0xfffe904) # 1c001cac <myprintf>
1c0033ac:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033b0:	0289a084 	addi.w	$r4,$r4,616(0x268)
1c0033b4:	57e8fbff 	bl	-5896(0xfffe8f8) # 1c001cac <myprintf>
1c0033b8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0033bc:	028b0084 	addi.w	$r4,$r4,704(0x2c0)
1c0033c0:	57e8efff 	bl	-5908(0xfffe8ec) # 1c001cac <myprintf>
1c0033c4:	03400000 	andi	$r0,$r0,0x0
1c0033c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0033cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0033d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0033d4:	4c000020 	jirl	$r0,$r1,0

1c0033d8 <get_count>:
get_count():
1c0033d8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0033dc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0033e0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0033e4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0033e8:	0000600c 	rdtimel.w	$r12,$r0
1c0033ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0033f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033f4:	00150184 	move	$r4,$r12
1c0033f8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0033fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003400:	4c000020 	jirl	$r0,$r1,0

1c003404 <open_count>:
open_count():
1c003404:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003408:	29803076 	st.w	$r22,$r3,12(0xc)
1c00340c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003410:	0380400c 	ori	$r12,$r0,0x10
1c003414:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c003418:	03400000 	andi	$r0,$r0,0x0
1c00341c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003420:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003424:	4c000020 	jirl	$r0,$r1,0

1c003428 <start_count>:
start_count():
1c003428:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00342c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003430:	29806076 	st.w	$r22,$r3,24(0x18)
1c003434:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003438:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00343c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003440:	29800180 	st.w	$r0,$r12,0
1c003444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003448:	29801180 	st.w	$r0,$r12,4(0x4)
1c00344c:	57ff8fff 	bl	-116(0xfffff8c) # 1c0033d8 <get_count>
1c003450:	0015008d 	move	$r13,$r4
1c003454:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003458:	2980018d 	st.w	$r13,$r12,0
1c00345c:	03400000 	andi	$r0,$r0,0x0
1c003460:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003464:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003468:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00346c:	4c000020 	jirl	$r0,$r1,0

1c003470 <stop_count>:
stop_count():
1c003470:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003474:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003478:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00347c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003480:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003484:	57ff57ff 	bl	-172(0xfffff54) # 1c0033d8 <get_count>
1c003488:	0015008d 	move	$r13,$r4
1c00348c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003490:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003494:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003498:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00349c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034a0:	2880018c 	ld.w	$r12,$r12,0
1c0034a4:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c0034c0 <stop_count+0x50>
1c0034a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034ac:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0034b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034b4:	2880018c 	ld.w	$r12,$r12,0
1c0034b8:	001131ac 	sub.w	$r12,$r13,$r12
1c0034bc:	50002800 	b	40(0x28) # 1c0034e4 <stop_count+0x74>
1c0034c0:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0034c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0034c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034cc:	2880018c 	ld.w	$r12,$r12,0
1c0034d0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0034d4:	001131ad 	sub.w	$r13,$r13,$r12
1c0034d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034dc:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0034e0:	001031ac 	add.w	$r12,$r13,$r12
1c0034e4:	00150184 	move	$r4,$r12
1c0034e8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0034ec:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0034f0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0034f4:	4c000020 	jirl	$r0,$r1,0

1c0034f8 <delay_cycle>:
delay_cycle():
1c0034f8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0034fc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003500:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003504:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003508:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00350c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003510:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003514:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003518:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c00351c:	00150184 	move	$r4,$r12
1c003520:	57ff0bff 	bl	-248(0xfffff08) # 1c003428 <start_count>
1c003524:	50001400 	b	20(0x14) # 1c003538 <delay_cycle+0x40>
1c003528:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c00352c:	00150184 	move	$r4,$r12
1c003530:	57ff43ff 	bl	-192(0xfffff40) # 1c003470 <stop_count>
1c003534:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003538:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00353c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003540:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c003528 <delay_cycle+0x30>
1c003544:	03400000 	andi	$r0,$r0,0x0
1c003548:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00354c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003550:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003554:	4c000020 	jirl	$r0,$r1,0

1c003558 <delay_ms>:
delay_ms():
1c003558:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00355c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003560:	29806076 	st.w	$r22,$r3,24(0x18)
1c003564:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003568:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00356c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003570:	1400002c 	lu12i.w	$r12,1(0x1)
1c003574:	03bd018c 	ori	$r12,$r12,0xf40
1c003578:	001c31ac 	mul.w	$r12,$r13,$r12
1c00357c:	00150184 	move	$r4,$r12
1c003580:	57ff7bff 	bl	-136(0xfffff78) # 1c0034f8 <delay_cycle>
1c003584:	03400000 	andi	$r0,$r0,0x0
1c003588:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00358c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003590:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003594:	4c000020 	jirl	$r0,$r1,0

1c003598 <memset>:
memset():
1c003598:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00359c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0035a0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035a4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0035a8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0035ac:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0035b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0035b8:	50001c00 	b	28(0x1c) # 1c0035d4 <memset+0x3c>
1c0035bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035c0:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0035c4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0035c8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0035cc:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0035d0:	2900018d 	st.b	$r13,$r12,0
1c0035d4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0035d8:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0035dc:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0035e0:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c0035bc <memset+0x24>
1c0035e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035e8:	00150184 	move	$r4,$r12
1c0035ec:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0035f0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0035f4:	4c000020 	jirl	$r0,$r1,0

1c0035f8 <pstrstr>:
pstrstr():
1c0035f8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035fc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003600:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003604:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003608:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00360c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003610:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003614:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003618:	2800018c 	ld.b	$r12,$r12,0
1c00361c:	44008580 	bnez	$r12,132(0x84) # 1c0036a0 <pstrstr+0xa8>
1c003620:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003624:	50008c00 	b	140(0x8c) # 1c0036b0 <pstrstr+0xb8>
1c003628:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00362c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003630:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003634:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003638:	50001c00 	b	28(0x1c) # 1c003654 <pstrstr+0x5c>
1c00363c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003640:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003644:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003648:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00364c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003650:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003654:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003658:	2800018c 	ld.b	$r12,$r12,0
1c00365c:	40002580 	beqz	$r12,36(0x24) # 1c003680 <pstrstr+0x88>
1c003660:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003664:	2800018c 	ld.b	$r12,$r12,0
1c003668:	40001980 	beqz	$r12,24(0x18) # 1c003680 <pstrstr+0x88>
1c00366c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003670:	2800018d 	ld.b	$r13,$r12,0
1c003674:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003678:	2800018c 	ld.b	$r12,$r12,0
1c00367c:	5bffc1ac 	beq	$r13,$r12,-64(0x3ffc0) # 1c00363c <pstrstr+0x44>
1c003680:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003684:	2800018c 	ld.b	$r12,$r12,0
1c003688:	44000d80 	bnez	$r12,12(0xc) # 1c003694 <pstrstr+0x9c>
1c00368c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003690:	50002000 	b	32(0x20) # 1c0036b0 <pstrstr+0xb8>
1c003694:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003698:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00369c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036a4:	2800018c 	ld.b	$r12,$r12,0
1c0036a8:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c003628 <pstrstr+0x30>
1c0036ac:	0015000c 	move	$r12,$r0
1c0036b0:	00150184 	move	$r4,$r12
1c0036b4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0036b8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0036bc:	4c000020 	jirl	$r0,$r1,0

1c0036c0 <itoa>:
itoa():
1c0036c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0036c4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0036c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0036cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0036d0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0036d4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0036d8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0036dc:	4400a180 	bnez	$r12,160(0xa0) # 1c00377c <itoa+0xbc>
1c0036e0:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0036e4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0036e8:	0020b1ae 	mod.w	$r14,$r13,$r12
1c0036ec:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0036f4 <itoa+0x34>
1c0036f0:	002a0007 	break	0x7
1c0036f4:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c0036f8:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0036fc:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003700:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003704:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003708:	001031ac 	add.w	$r12,$r13,$r12
1c00370c:	00005dcd 	ext.w.b	$r13,$r14
1c003710:	2900018d 	st.b	$r13,$r12,0
1c003714:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003718:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00371c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003720:	50005c00 	b	92(0x5c) # 1c00377c <itoa+0xbc>
1c003724:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003728:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00372c:	0020b1ae 	mod.w	$r14,$r13,$r12
1c003730:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003738 <itoa+0x78>
1c003734:	002a0007 	break	0x7
1c003738:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c00373c:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c003740:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003744:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003748:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00374c:	001031ac 	add.w	$r12,$r13,$r12
1c003750:	00005dcd 	ext.w.b	$r13,$r14
1c003754:	2900018d 	st.b	$r13,$r12,0
1c003758:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00375c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003760:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003764:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c003768:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c00376c:	002035cc 	div.w	$r12,$r14,$r13
1c003770:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c003778 <itoa+0xb8>
1c003774:	002a0007 	break	0x7
1c003778:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00377c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003780:	47ffa59f 	bnez	$r12,-92(0x7fffa4) # 1c003724 <itoa+0x64>
1c003784:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003788:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00378c:	001031ac 	add.w	$r12,$r13,$r12
1c003790:	29000180 	st.b	$r0,$r12,0
1c003794:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003798:	50007800 	b	120(0x78) # 1c003810 <itoa+0x150>
1c00379c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037a0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0037a4:	001031ac 	add.w	$r12,$r13,$r12
1c0037a8:	2a00018c 	ld.bu	$r12,$r12,0
1c0037ac:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c0037b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037b4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0037b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037bc:	001131ac 	sub.w	$r12,$r13,$r12
1c0037c0:	0015018d 	move	$r13,$r12
1c0037c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0037c8:	0010358d 	add.w	$r13,$r12,$r13
1c0037cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037d0:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c0037d4:	001031cc 	add.w	$r12,$r14,$r12
1c0037d8:	280001ad 	ld.b	$r13,$r13,0
1c0037dc:	2900018d 	st.b	$r13,$r12,0
1c0037e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037e4:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0037e8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037ec:	001131ac 	sub.w	$r12,$r13,$r12
1c0037f0:	0015018d 	move	$r13,$r12
1c0037f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0037f8:	0010358c 	add.w	$r12,$r12,$r13
1c0037fc:	2a3f9ecd 	ld.bu	$r13,$r22,-25(0xfe7)
1c003800:	2900018d 	st.b	$r13,$r12,0
1c003804:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003808:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00380c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003810:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003814:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c003818:	001031ac 	add.w	$r12,$r13,$r12
1c00381c:	0048858c 	srai.w	$r12,$r12,0x1
1c003820:	0015018d 	move	$r13,$r12
1c003824:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003828:	63ff758d 	blt	$r12,$r13,-140(0x3ff74) # 1c00379c <itoa+0xdc>
1c00382c:	03400000 	andi	$r0,$r0,0x0
1c003830:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003834:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003838:	4c000020 	jirl	$r0,$r1,0

1c00383c <strcat>:
strcat():
1c00383c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003840:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003844:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003848:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00384c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003850:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003854:	40000d80 	beqz	$r12,12(0xc) # 1c003860 <strcat+0x24>
1c003858:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00385c:	44000d80 	bnez	$r12,12(0xc) # 1c003868 <strcat+0x2c>
1c003860:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003864:	50006800 	b	104(0x68) # 1c0038cc <strcat+0x90>
1c003868:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00386c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003870:	50001000 	b	16(0x10) # 1c003880 <strcat+0x44>
1c003874:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003878:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00387c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003880:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003884:	2800018c 	ld.b	$r12,$r12,0
1c003888:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c003874 <strcat+0x38>
1c00388c:	50002800 	b	40(0x28) # 1c0038b4 <strcat+0x78>
1c003890:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003894:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003898:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c00389c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0038a0:	280001ad 	ld.b	$r13,$r13,0
1c0038a4:	2900018d 	st.b	$r13,$r12,0
1c0038a8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0038ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0038b0:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0038b4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0038b8:	2800018c 	ld.b	$r12,$r12,0
1c0038bc:	47ffd59f 	bnez	$r12,-44(0x7fffd4) # 1c003890 <strcat+0x54>
1c0038c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038c4:	29000180 	st.b	$r0,$r12,0
1c0038c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038cc:	00150184 	move	$r4,$r12
1c0038d0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0038d4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0038d8:	4c000020 	jirl	$r0,$r1,0

1c0038dc <strlen>:
strlen():
1c0038dc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0038e0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0038e4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0038e8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0038ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0038f0:	50001000 	b	16(0x10) # 1c003900 <strlen+0x24>
1c0038f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0038fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003900:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003904:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003908:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c00390c:	2800018c 	ld.b	$r12,$r12,0
1c003910:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0038f4 <strlen+0x18>
1c003914:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003918:	00150184 	move	$r4,$r12
1c00391c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003920:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003924:	4c000020 	jirl	$r0,$r1,0

1c003928 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c003928:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00392c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003930:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003934:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003938:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c00393c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003940:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003944:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003948:	001531ad 	or	$r13,$r13,$r12
1c00394c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003950:	2980318d 	st.w	$r13,$r12,12(0xc)
1c003954:	03400000 	andi	$r0,$r0,0x0
1c003958:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00395c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003960:	4c000020 	jirl	$r0,$r1,0

1c003964 <WDG_getOddValue>:
WDG_getOddValue():
1c003964:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003968:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00396c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003970:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003974:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003978:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00397c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003980:	50003800 	b	56(0x38) # 1c0039b8 <WDG_getOddValue+0x54>
1c003984:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003988:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00398c:	001731ac 	sll.w	$r12,$r13,$r12
1c003990:	0015018d 	move	$r13,$r12
1c003994:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003998:	0014b1ac 	and	$r12,$r13,$r12
1c00399c:	40001180 	beqz	$r12,16(0x10) # 1c0039ac <WDG_getOddValue+0x48>
1c0039a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0039a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0039a8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0039ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039b0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0039b4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0039b8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0039bc:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0039c0:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c003984 <WDG_getOddValue+0x20>
1c0039c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0039c8:	0340058c 	andi	$r12,$r12,0x1
1c0039cc:	44000d80 	bnez	$r12,12(0xc) # 1c0039d8 <WDG_getOddValue+0x74>
1c0039d0:	1400010c 	lu12i.w	$r12,8(0x8)
1c0039d4:	50000800 	b	8(0x8) # 1c0039dc <WDG_getOddValue+0x78>
1c0039d8:	0015000c 	move	$r12,$r0
1c0039dc:	00150184 	move	$r4,$r12
1c0039e0:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0039e4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0039e8:	4c000020 	jirl	$r0,$r1,0

1c0039ec <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c0039ec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0039f0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0039f4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0039f8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0039fc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003a00:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a04:	140000ec 	lu12i.w	$r12,7(0x7)
1c003a08:	03bffd8c 	ori	$r12,$r12,0xfff
1c003a0c:	0014b1ac 	and	$r12,$r13,$r12
1c003a10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a14:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003a18:	57ff4fff 	bl	-180(0xfffff4c) # 1c003964 <WDG_getOddValue>
1c003a1c:	0015008c 	move	$r12,$r4
1c003a20:	0015018d 	move	$r13,$r12
1c003a24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a28:	0015358c 	or	$r12,$r12,$r13
1c003a2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a34:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003a38:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003a3c:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003a40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a44:	0014300c 	nor	$r12,$r0,$r12
1c003a48:	0040c18c 	slli.w	$r12,$r12,0x10
1c003a4c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a50:	001531ac 	or	$r12,$r13,$r12
1c003a54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a5c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a60:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c003a64:	03400000 	andi	$r0,$r0,0x0
1c003a68:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003a6c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003a70:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a74:	4c000020 	jirl	$r0,$r1,0

1c003a78 <WDG_DogFeed>:
WDG_DogFeed():
1c003a78:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003a7c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003a80:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003a84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a88:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003a8c:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003a90:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003a94:	03400000 	andi	$r0,$r0,0x0
1c003a98:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003a9c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003aa0:	4c000020 	jirl	$r0,$r1,0

1c003aa4 <WdgInit>:
WdgInit():
1c003aa4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003aa8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003aac:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ab0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ab4:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003ab8:	03bffd84 	ori	$r4,$r12,0xfff
1c003abc:	57ff33ff 	bl	-208(0xfffff30) # 1c0039ec <WDG_SetWatchDog>
1c003ac0:	03400000 	andi	$r0,$r0,0x0
1c003ac4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ac8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003acc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ad0:	4c000020 	jirl	$r0,$r1,0

1c003ad4 <Adc_powerOn>:
Adc_powerOn():
1c003ad4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003ad8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003adc:	29806076 	st.w	$r22,$r3,24(0x18)
1c003ae0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003ae4:	57f62fff 	bl	-2516(0xffff62c) # 1c003110 <IsGlobalIntOpen>
1c003ae8:	0015008c 	move	$r12,$r4
1c003aec:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003af0:	57f65bff 	bl	-2472(0xffff658) # 1c003148 <DisableInt>
1c003af4:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003af8:	288001ac 	ld.w	$r12,$r13,0
1c003afc:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c003b00:	007041cc 	bstrins.w	$r12,$r14,0x10,0x10
1c003b04:	298001ac 	st.w	$r12,$r13,0
1c003b08:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003b0c:	40000980 	beqz	$r12,8(0x8) # 1c003b14 <Adc_powerOn+0x40>
1c003b10:	57f65fff 	bl	-2468(0xffff65c) # 1c00316c <EnableInt>
1c003b14:	03400000 	andi	$r0,$r0,0x0
1c003b18:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003b1c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003b20:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b24:	4c000020 	jirl	$r0,$r1,0

1c003b28 <Adc_open>:
Adc_open():
1c003b28:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003b2c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003b30:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003b34:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003b38:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003b3c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003b40:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003b44:	001731ac 	sll.w	$r12,$r13,$r12
1c003b48:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b50:	0340058c 	andi	$r12,$r12,0x1
1c003b54:	40003580 	beqz	$r12,52(0x34) # 1c003b88 <Adc_open+0x60>
1c003b58:	57f5bbff 	bl	-2632(0xffff5b8) # 1c003110 <IsGlobalIntOpen>
1c003b5c:	0015008c 	move	$r12,$r4
1c003b60:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c003b64:	57f5e7ff 	bl	-2588(0xffff5e4) # 1c003148 <DisableInt>
1c003b68:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003b6c:	288001ac 	ld.w	$r12,$r13,0
1c003b70:	0071440c 	bstrins.w	$r12,$r0,0x11,0x11
1c003b74:	298001ac 	st.w	$r12,$r13,0
1c003b78:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c003b7c:	40004980 	beqz	$r12,72(0x48) # 1c003bc4 <Adc_open+0x9c>
1c003b80:	57f5efff 	bl	-2580(0xffff5ec) # 1c00316c <EnableInt>
1c003b84:	50004000 	b	64(0x40) # 1c003bc4 <Adc_open+0x9c>
1c003b88:	57f58bff 	bl	-2680(0xffff588) # 1c003110 <IsGlobalIntOpen>
1c003b8c:	0015008c 	move	$r12,$r4
1c003b90:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c003b94:	57f5b7ff 	bl	-2636(0xffff5b4) # 1c003148 <DisableInt>
1c003b98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b9c:	0044918c 	srli.w	$r12,$r12,0x4
1c003ba0:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003ba4:	03403d8c 	andi	$r12,$r12,0xf
1c003ba8:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003bac:	288001ac 	ld.w	$r12,$r13,0
1c003bb0:	007751cc 	bstrins.w	$r12,$r14,0x17,0x14
1c003bb4:	298001ac 	st.w	$r12,$r13,0
1c003bb8:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c003bbc:	40000980 	beqz	$r12,8(0x8) # 1c003bc4 <Adc_open+0x9c>
1c003bc0:	57f5afff 	bl	-2644(0xffff5ac) # 1c00316c <EnableInt>
1c003bc4:	03400000 	andi	$r0,$r0,0x0
1c003bc8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003bcc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003bd0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003bd4:	4c000020 	jirl	$r0,$r1,0

1c003bd8 <Adc_Measure>:
Adc_Measure():
1c003bd8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003bdc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003be0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003be4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003be8:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c003bec:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c003bf0:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c003bf4:	50008400 	b	132(0x84) # 1c003c78 <Adc_Measure+0xa0>
1c003bf8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003bfc:	0381b18c 	ori	$r12,$r12,0x6c
1c003c00:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003c04:	038401ad 	ori	$r13,$r13,0x100
1c003c08:	2980018d 	st.w	$r13,$r12,0
1c003c0c:	03400000 	andi	$r0,$r0,0x0
1c003c10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c14:	0381b18c 	ori	$r12,$r12,0x6c
1c003c18:	2880018c 	ld.w	$r12,$r12,0
1c003c1c:	0344018c 	andi	$r12,$r12,0x100
1c003c20:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c003c10 <Adc_Measure+0x38>
1c003c24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c28:	0381c18c 	ori	$r12,$r12,0x70
1c003c2c:	2880018c 	ld.w	$r12,$r12,0
1c003c30:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c34:	037ffd8c 	andi	$r12,$r12,0xfff
1c003c38:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c003c3c:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003c40:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003c44:	6c00298d 	bgeu	$r12,$r13,40(0x28) # 1c003c6c <Adc_Measure+0x94>
1c003c48:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003c4c:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003c50:	001031ac 	add.w	$r12,$r13,$r12
1c003c54:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c003c58:	2a7fa2cd 	ld.hu	$r13,$r22,-24(0xfe8)
1c003c5c:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003c60:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c003c6c <Adc_Measure+0x94>
1c003c64:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003c68:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c003c6c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003c70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003c74:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003c78:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003c7c:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c003c80:	6fff798d 	bgeu	$r12,$r13,-136(0x3ff78) # 1c003bf8 <Adc_Measure+0x20>
1c003c84:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003c88:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003c8c:	001131ad 	sub.w	$r13,$r13,$r12
1c003c90:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003c94:	002031ae 	div.w	$r14,$r13,$r12
1c003c98:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003ca0 <Adc_Measure+0xc8>
1c003c9c:	002a0007 	break	0x7
1c003ca0:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c003ca4:	00150184 	move	$r4,$r12
1c003ca8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003cac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003cb0:	4c000020 	jirl	$r0,$r1,0

1c003cb4 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003cb4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003cb8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003cbc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003cc0:	0015008c 	move	$r12,$r4
1c003cc4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003cc8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003ccc:	0040898c 	slli.w	$r12,$r12,0x2
1c003cd0:	0015018d 	move	$r13,$r12
1c003cd4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003cd8:	0381018c 	ori	$r12,$r12,0x40
1c003cdc:	001031ac 	add.w	$r12,$r13,$r12
1c003ce0:	2880018c 	ld.w	$r12,$r12,0
1c003ce4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ce8:	037ffd8c 	andi	$r12,$r12,0xfff
1c003cec:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003cf0:	00150184 	move	$r4,$r12
1c003cf4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003cf8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003cfc:	4c000020 	jirl	$r0,$r1,0

1c003d00 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003d00:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003d04:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003d08:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003d0c:	0015008c 	move	$r12,$r4
1c003d10:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003d14:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003d18:	0040898c 	slli.w	$r12,$r12,0x2
1c003d1c:	0015018d 	move	$r13,$r12
1c003d20:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003d24:	0382018c 	ori	$r12,$r12,0x80
1c003d28:	001031ac 	add.w	$r12,$r13,$r12
1c003d2c:	2880018c 	ld.w	$r12,$r12,0
1c003d30:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d34:	037ffd8c 	andi	$r12,$r12,0xfff
1c003d38:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d3c:	00150184 	move	$r4,$r12
1c003d40:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003d44:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003d48:	4c000020 	jirl	$r0,$r1,0

1c003d4c <Printf_KeyChannel>:
Printf_KeyChannel():
1c003d4c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003d50:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003d54:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003d58:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003d5c:	0015008c 	move	$r12,$r4
1c003d60:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003d64:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003d68:	50003400 	b	52(0x34) # 1c003d9c <Printf_KeyChannel+0x50>
1c003d6c:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003d70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d74:	001831ac 	sra.w	$r12,$r13,$r12
1c003d78:	0340058c 	andi	$r12,$r12,0x1
1c003d7c:	40001580 	beqz	$r12,20(0x14) # 1c003d90 <Printf_KeyChannel+0x44>
1c003d80:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003d84:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003d88:	02a56084 	addi.w	$r4,$r4,-1704(0x958)
1c003d8c:	57df23ff 	bl	-8416(0xfffdf20) # 1c001cac <myprintf>
1c003d90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d94:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003d98:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d9c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003da0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003da4:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003d6c <Printf_KeyChannel+0x20>
1c003da8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003dac:	02a4e084 	addi.w	$r4,$r4,-1736(0x938)
1c003db0:	57deffff 	bl	-8452(0xfffdefc) # 1c001cac <myprintf>
1c003db4:	03400000 	andi	$r0,$r0,0x0
1c003db8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003dbc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003dc0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003dc4:	4c000020 	jirl	$r0,$r1,0

1c003dc8 <Printf_KeyType>:
Printf_KeyType():
1c003dc8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003dcc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003dd0:	29806076 	st.w	$r22,$r3,24(0x18)
1c003dd4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003dd8:	0015008c 	move	$r12,$r4
1c003ddc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003de0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003de4:	0340058c 	andi	$r12,$r12,0x1
1c003de8:	40001180 	beqz	$r12,16(0x10) # 1c003df8 <Printf_KeyType+0x30>
1c003dec:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003df0:	02a3e084 	addi.w	$r4,$r4,-1800(0x8f8)
1c003df4:	57debbff 	bl	-8520(0xfffdeb8) # 1c001cac <myprintf>
1c003df8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003dfc:	0340098c 	andi	$r12,$r12,0x2
1c003e00:	40001180 	beqz	$r12,16(0x10) # 1c003e10 <Printf_KeyType+0x48>
1c003e04:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e08:	02a3a084 	addi.w	$r4,$r4,-1816(0x8e8)
1c003e0c:	57dea3ff 	bl	-8544(0xfffdea0) # 1c001cac <myprintf>
1c003e10:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003e14:	0340118c 	andi	$r12,$r12,0x4
1c003e18:	40001180 	beqz	$r12,16(0x10) # 1c003e28 <Printf_KeyType+0x60>
1c003e1c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e20:	02a36084 	addi.w	$r4,$r4,-1832(0x8d8)
1c003e24:	57de8bff 	bl	-8568(0xfffde88) # 1c001cac <myprintf>
1c003e28:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003e2c:	0340218c 	andi	$r12,$r12,0x8
1c003e30:	40001180 	beqz	$r12,16(0x10) # 1c003e40 <Printf_KeyType+0x78>
1c003e34:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003e38:	02a33084 	addi.w	$r4,$r4,-1844(0x8cc)
1c003e3c:	57de73ff 	bl	-8592(0xfffde70) # 1c001cac <myprintf>
1c003e40:	03400000 	andi	$r0,$r0,0x0
1c003e44:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003e48:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003e4c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003e50:	4c000020 	jirl	$r0,$r1,0

1c003e54 <Printf_KeyVal>:
Printf_KeyVal():
1c003e54:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003e58:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003e5c:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003e60:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003e64:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003e68:	5000d800 	b	216(0xd8) # 1c003f40 <Printf_KeyVal+0xec>
1c003e6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e70:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003e74:	00150184 	move	$r4,$r12
1c003e78:	57fe8bff 	bl	-376(0xffffe88) # 1c003d00 <TOUCH_GetCountValue>
1c003e7c:	0015008c 	move	$r12,$r4
1c003e80:	0015018d 	move	$r13,$r12
1c003e84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e88:	0040898c 	slli.w	$r12,$r12,0x2
1c003e8c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003e90:	001031cc 	add.w	$r12,$r14,$r12
1c003e94:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003e98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e9c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ea0:	00150184 	move	$r4,$r12
1c003ea4:	57fe13ff 	bl	-496(0xffffe10) # 1c003cb4 <TOUCH_GetBaseVal>
1c003ea8:	0015008c 	move	$r12,$r4
1c003eac:	0015018d 	move	$r13,$r12
1c003eb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003eb4:	0040898c 	slli.w	$r12,$r12,0x2
1c003eb8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003ebc:	001031cc 	add.w	$r12,$r14,$r12
1c003ec0:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003ec4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ec8:	0040898c 	slli.w	$r12,$r12,0x2
1c003ecc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ed0:	001031ac 	add.w	$r12,$r13,$r12
1c003ed4:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003ed8:	40004980 	beqz	$r12,72(0x48) # 1c003f20 <Printf_KeyVal+0xcc>
1c003edc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ee0:	0040898c 	slli.w	$r12,$r12,0x2
1c003ee4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ee8:	001031ac 	add.w	$r12,$r13,$r12
1c003eec:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003ef0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ef4:	0040898c 	slli.w	$r12,$r12,0x2
1c003ef8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003efc:	001031cc 	add.w	$r12,$r14,$r12
1c003f00:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003f04:	001131ad 	sub.w	$r13,$r13,$r12
1c003f08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f0c:	0040898c 	slli.w	$r12,$r12,0x2
1c003f10:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003f14:	001031cc 	add.w	$r12,$r14,$r12
1c003f18:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003f1c:	50001800 	b	24(0x18) # 1c003f34 <Printf_KeyVal+0xe0>
1c003f20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f24:	0040898c 	slli.w	$r12,$r12,0x2
1c003f28:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003f2c:	001031ac 	add.w	$r12,$r13,$r12
1c003f30:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003f34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003f3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003f40:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003f44:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003f48:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003e6c <Printf_KeyVal+0x18>
1c003f4c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f50:	029f0084 	addi.w	$r4,$r4,1984(0x7c0)
1c003f54:	57dd5bff 	bl	-8872(0xfffdd58) # 1c001cac <myprintf>
1c003f58:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f5c:	029f7084 	addi.w	$r4,$r4,2012(0x7dc)
1c003f60:	57dd4fff 	bl	-8884(0xfffdd4c) # 1c001cac <myprintf>
1c003f64:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003f68:	50003400 	b	52(0x34) # 1c003f9c <Printf_KeyVal+0x148>
1c003f6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f70:	0040898c 	slli.w	$r12,$r12,0x2
1c003f74:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003f78:	001031ac 	add.w	$r12,$r13,$r12
1c003f7c:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003f80:	00150185 	move	$r5,$r12
1c003f84:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f88:	029ee084 	addi.w	$r4,$r4,1976(0x7b8)
1c003f8c:	57dd23ff 	bl	-8928(0xfffdd20) # 1c001cac <myprintf>
1c003f90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f94:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003f98:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003f9c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003fa0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003fa4:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003f6c <Printf_KeyVal+0x118>
1c003fa8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003fac:	029e7084 	addi.w	$r4,$r4,1948(0x79c)
1c003fb0:	57dcffff 	bl	-8964(0xfffdcfc) # 1c001cac <myprintf>
1c003fb4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003fb8:	50003400 	b	52(0x34) # 1c003fec <Printf_KeyVal+0x198>
1c003fbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fc0:	0040898c 	slli.w	$r12,$r12,0x2
1c003fc4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003fc8:	001031ac 	add.w	$r12,$r13,$r12
1c003fcc:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003fd0:	00150185 	move	$r5,$r12
1c003fd4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003fd8:	029da084 	addi.w	$r4,$r4,1896(0x768)
1c003fdc:	57dcd3ff 	bl	-9008(0xfffdcd0) # 1c001cac <myprintf>
1c003fe0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fe4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003fe8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003fec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ff0:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003ff4:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003fbc <Printf_KeyVal+0x168>
1c003ff8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ffc:	029d6084 	addi.w	$r4,$r4,1880(0x758)
1c004000:	57dcafff 	bl	-9044(0xfffdcac) # 1c001cac <myprintf>
1c004004:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004008:	50007400 	b	116(0x74) # 1c00407c <Printf_KeyVal+0x228>
1c00400c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004010:	0040898c 	slli.w	$r12,$r12,0x2
1c004014:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004018:	001031ac 	add.w	$r12,$r13,$r12
1c00401c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c004020:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c00404c <Printf_KeyVal+0x1f8>
1c004024:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004028:	0040898c 	slli.w	$r12,$r12,0x2
1c00402c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004030:	001031ac 	add.w	$r12,$r13,$r12
1c004034:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c004038:	00150185 	move	$r5,$r12
1c00403c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004040:	029c8084 	addi.w	$r4,$r4,1824(0x720)
1c004044:	57dc6bff 	bl	-9112(0xfffdc68) # 1c001cac <myprintf>
1c004048:	50002800 	b	40(0x28) # 1c004070 <Printf_KeyVal+0x21c>
1c00404c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004050:	0040898c 	slli.w	$r12,$r12,0x2
1c004054:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c004058:	001031ac 	add.w	$r12,$r13,$r12
1c00405c:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c004060:	00150185 	move	$r5,$r12
1c004064:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004068:	029c0084 	addi.w	$r4,$r4,1792(0x700)
1c00406c:	57dc43ff 	bl	-9152(0xfffdc40) # 1c001cac <myprintf>
1c004070:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004074:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004078:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00407c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004080:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c004084:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c00400c <Printf_KeyVal+0x1b8>
1c004088:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00408c:	02996084 	addi.w	$r4,$r4,1624(0x658)
1c004090:	57dc1fff 	bl	-9188(0xfffdc1c) # 1c001cac <myprintf>
1c004094:	03400000 	andi	$r0,$r0,0x0
1c004098:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c00409c:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c0040a0:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c0040a4:	4c000020 	jirl	$r0,$r1,0

1c0040a8 <TIM_Init>:
TIM_Init():
1c0040a8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0040ac:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0040b0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0040b4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0040b8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040bc:	29800180 	st.w	$r0,$r12,0
1c0040c0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040c4:	0380118c 	ori	$r12,$r12,0x4
1c0040c8:	29800180 	st.w	$r0,$r12,0
1c0040cc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040d0:	0380218c 	ori	$r12,$r12,0x8
1c0040d4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0040d8:	288011ad 	ld.w	$r13,$r13,4(0x4)
1c0040dc:	2980018d 	st.w	$r13,$r12,0
1c0040e0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040e4:	0380318c 	ori	$r12,$r12,0xc
1c0040e8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0040ec:	288021ad 	ld.w	$r13,$r13,8(0x8)
1c0040f0:	2980018d 	st.w	$r13,$r12,0
1c0040f4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040f8:	2880018e 	ld.w	$r14,$r12,0
1c0040fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004100:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c004104:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004108:	001535cd 	or	$r13,$r14,$r13
1c00410c:	2980018d 	st.w	$r13,$r12,0
1c004110:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004114:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c004118:	40002180 	beqz	$r12,32(0x20) # 1c004138 <TIM_Init+0x90>
1c00411c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004120:	2a00018c 	ld.bu	$r12,$r12,0
1c004124:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004128:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00412c:	038005ad 	ori	$r13,$r13,0x1
1c004130:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c004134:	2900018d 	st.b	$r13,$r12,0
1c004138:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00413c:	2880018e 	ld.w	$r14,$r12,0
1c004140:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004144:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c004148:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00414c:	001535cd 	or	$r13,$r14,$r13
1c004150:	2980018d 	st.w	$r13,$r12,0
1c004154:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004158:	2880018e 	ld.w	$r14,$r12,0
1c00415c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004160:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c004164:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004168:	001535cd 	or	$r13,$r14,$r13
1c00416c:	2980018d 	st.w	$r13,$r12,0
1c004170:	03400000 	andi	$r0,$r0,0x0
1c004174:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004178:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00417c:	4c000020 	jirl	$r0,$r1,0

1c004180 <TIM_StructInit>:
TIM_StructInit():
1c004180:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004184:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004188:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00418c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004190:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004194:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c004198:	038801ad 	ori	$r13,$r13,0x200
1c00419c:	2980018d 	st.w	$r13,$r12,0
1c0041a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041a4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0041a8:	2980618d 	st.w	$r13,$r12,24(0x18)
1c0041ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041b0:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0041b4:	2980518d 	st.w	$r13,$r12,20(0x14)
1c0041b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041bc:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c0041c0:	2980418d 	st.w	$r13,$r12,16(0x10)
1c0041c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041c8:	1400002d 	lu12i.w	$r13,1(0x1)
1c0041cc:	03bcfdad 	ori	$r13,$r13,0xf3f
1c0041d0:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0041d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041d8:	29802180 	st.w	$r0,$r12,8(0x8)
1c0041dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0041e0:	29803180 	st.w	$r0,$r12,12(0xc)
1c0041e4:	03400000 	andi	$r0,$r0,0x0
1c0041e8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0041ec:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0041f0:	4c000020 	jirl	$r0,$r1,0

1c0041f4 <timer_init>:
timer_init():
1c0041f4:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c0041f8:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c0041fc:	2980e076 	st.w	$r22,$r3,56(0x38)
1c004200:	02810076 	addi.w	$r22,$r3,64(0x40)
1c004204:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c004208:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c00420c:	00150184 	move	$r4,$r12
1c004210:	57ff73ff 	bl	-144(0xfffff70) # 1c004180 <TIM_StructInit>
1c004214:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c004218:	1400002c 	lu12i.w	$r12,1(0x1)
1c00421c:	03bd018c 	ori	$r12,$r12,0xf40
1c004220:	001c31ac 	mul.w	$r12,$r13,$r12
1c004224:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c004228:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c00422c:	00150184 	move	$r4,$r12
1c004230:	57fe7bff 	bl	-392(0xffffe78) # 1c0040a8 <TIM_Init>
1c004234:	03400000 	andi	$r0,$r0,0x0
1c004238:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c00423c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c004240:	02810063 	addi.w	$r3,$r3,64(0x40)
1c004244:	4c000020 	jirl	$r0,$r1,0

1c004248 <TIM_GetITStatus>:
TIM_GetITStatus():
1c004248:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00424c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c004250:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004254:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004258:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00425c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004260:	2880018d 	ld.w	$r13,$r12,0
1c004264:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004268:	0014b1ac 	and	$r12,$r13,$r12
1c00426c:	40001180 	beqz	$r12,16(0x10) # 1c00427c <TIM_GetITStatus+0x34>
1c004270:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004274:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004278:	50000800 	b	8(0x8) # 1c004280 <TIM_GetITStatus+0x38>
1c00427c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004280:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004284:	00150184 	move	$r4,$r12
1c004288:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00428c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004290:	4c000020 	jirl	$r0,$r1,0

1c004294 <TIM_ClearIT>:
TIM_ClearIT():
1c004294:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004298:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00429c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0042a0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0042a4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0042a8:	2880018e 	ld.w	$r14,$r12,0
1c0042ac:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0042b0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0042b4:	001535cd 	or	$r13,$r14,$r13
1c0042b8:	2980018d 	st.w	$r13,$r12,0
1c0042bc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0042c0:	03800d8c 	ori	$r12,$r12,0x3
1c0042c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0042c8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0042cc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0042d0:	03800d8c 	ori	$r12,$r12,0x3
1c0042d4:	038005ad 	ori	$r13,$r13,0x1
1c0042d8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0042dc:	2900018d 	st.b	$r13,$r12,0
1c0042e0:	03400000 	andi	$r0,$r0,0x0
1c0042e4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0042e8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0042ec:	4c000020 	jirl	$r0,$r1,0

1c0042f0 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c0042f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004300:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004304:	029780c6 	addi.w	$r6,$r6,1504(0x5e0)
1c004308:	02805405 	addi.w	$r5,$r0,21(0x15)
1c00430c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004310:	02918084 	addi.w	$r4,$r4,1120(0x460)
1c004314:	57d99bff 	bl	-9832(0xfffd998) # 1c001cac <myprintf>
1c004318:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00431c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004320:	03808184 	ori	$r4,$r12,0x20
1c004324:	57f607ff 	bl	-2556(0xffff604) # 1c003928 <EXTI_ClearITPendingBit>
1c004328:	03400000 	andi	$r0,$r0,0x0
1c00432c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004330:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004334:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004338:	4c000020 	jirl	$r0,$r1,0

1c00433c <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c00433c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004340:	29803061 	st.w	$r1,$r3,12(0xc)
1c004344:	29802076 	st.w	$r22,$r3,8(0x8)
1c004348:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00434c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004350:	0296b0c6 	addi.w	$r6,$r6,1452(0x5ac)
1c004354:	02806805 	addi.w	$r5,$r0,26(0x1a)
1c004358:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00435c:	02905084 	addi.w	$r4,$r4,1044(0x414)
1c004360:	57d94fff 	bl	-9908(0xfffd94c) # 1c001cac <myprintf>
1c004364:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004368:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00436c:	03808184 	ori	$r4,$r12,0x20
1c004370:	57f5bbff 	bl	-2632(0xffff5b8) # 1c003928 <EXTI_ClearITPendingBit>
1c004374:	03400000 	andi	$r0,$r0,0x0
1c004378:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00437c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004380:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004384:	4c000020 	jirl	$r0,$r1,0

1c004388 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c004388:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00438c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004390:	29802076 	st.w	$r22,$r3,8(0x8)
1c004394:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004398:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00439c:	0295e0c6 	addi.w	$r6,$r6,1400(0x578)
1c0043a0:	02807c05 	addi.w	$r5,$r0,31(0x1f)
1c0043a4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043a8:	028f2084 	addi.w	$r4,$r4,968(0x3c8)
1c0043ac:	57d903ff 	bl	-9984(0xfffd900) # 1c001cac <myprintf>
1c0043b0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0043b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043b8:	03808184 	ori	$r4,$r12,0x20
1c0043bc:	57f56fff 	bl	-2708(0xffff56c) # 1c003928 <EXTI_ClearITPendingBit>
1c0043c0:	03400000 	andi	$r0,$r0,0x0
1c0043c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043d0:	4c000020 	jirl	$r0,$r1,0

1c0043d4 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c0043d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043e4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043e8:	029510c6 	addi.w	$r6,$r6,1348(0x544)
1c0043ec:	02809005 	addi.w	$r5,$r0,36(0x24)
1c0043f0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0043f4:	028df084 	addi.w	$r4,$r4,892(0x37c)
1c0043f8:	57d8b7ff 	bl	-10060(0xfffd8b4) # 1c001cac <myprintf>
1c0043fc:	02802005 	addi.w	$r5,$r0,8(0x8)
1c004400:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004404:	03808184 	ori	$r4,$r12,0x20
1c004408:	57f523ff 	bl	-2784(0xffff520) # 1c003928 <EXTI_ClearITPendingBit>
1c00440c:	03400000 	andi	$r0,$r0,0x0
1c004410:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004414:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004418:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00441c:	4c000020 	jirl	$r0,$r1,0

1c004420 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c004420:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004424:	29803061 	st.w	$r1,$r3,12(0xc)
1c004428:	29802076 	st.w	$r22,$r3,8(0x8)
1c00442c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004430:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004434:	029440c6 	addi.w	$r6,$r6,1296(0x510)
1c004438:	0280a405 	addi.w	$r5,$r0,41(0x29)
1c00443c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004440:	028cc084 	addi.w	$r4,$r4,816(0x330)
1c004444:	57d86bff 	bl	-10136(0xfffd868) # 1c001cac <myprintf>
1c004448:	02804005 	addi.w	$r5,$r0,16(0x10)
1c00444c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004450:	03808184 	ori	$r4,$r12,0x20
1c004454:	57f4d7ff 	bl	-2860(0xffff4d4) # 1c003928 <EXTI_ClearITPendingBit>
1c004458:	03400000 	andi	$r0,$r0,0x0
1c00445c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004460:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004464:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004468:	4c000020 	jirl	$r0,$r1,0

1c00446c <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c00446c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004470:	29803061 	st.w	$r1,$r3,12(0xc)
1c004474:	29802076 	st.w	$r22,$r3,8(0x8)
1c004478:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00447c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004480:	029370c6 	addi.w	$r6,$r6,1244(0x4dc)
1c004484:	0280b805 	addi.w	$r5,$r0,46(0x2e)
1c004488:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00448c:	028b9084 	addi.w	$r4,$r4,740(0x2e4)
1c004490:	57d81fff 	bl	-10212(0xfffd81c) # 1c001cac <myprintf>
1c004494:	02808005 	addi.w	$r5,$r0,32(0x20)
1c004498:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00449c:	03808184 	ori	$r4,$r12,0x20
1c0044a0:	57f48bff 	bl	-2936(0xffff488) # 1c003928 <EXTI_ClearITPendingBit>
1c0044a4:	03400000 	andi	$r0,$r0,0x0
1c0044a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044b4:	4c000020 	jirl	$r0,$r1,0

1c0044b8 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c0044b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044c8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0044cc:	0292a0c6 	addi.w	$r6,$r6,1192(0x4a8)
1c0044d0:	0280cc05 	addi.w	$r5,$r0,51(0x33)
1c0044d4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0044d8:	028a6084 	addi.w	$r4,$r4,664(0x298)
1c0044dc:	57d7d3ff 	bl	-10288(0xfffd7d0) # 1c001cac <myprintf>
1c0044e0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0044e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044e8:	03808184 	ori	$r4,$r12,0x20
1c0044ec:	57f43fff 	bl	-3012(0xffff43c) # 1c003928 <EXTI_ClearITPendingBit>
1c0044f0:	03400000 	andi	$r0,$r0,0x0
1c0044f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004500:	4c000020 	jirl	$r0,$r1,0

1c004504 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c004504:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004508:	29803061 	st.w	$r1,$r3,12(0xc)
1c00450c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004510:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004514:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004518:	0291d0c6 	addi.w	$r6,$r6,1140(0x474)
1c00451c:	0280e005 	addi.w	$r5,$r0,56(0x38)
1c004520:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004524:	02893084 	addi.w	$r4,$r4,588(0x24c)
1c004528:	57d787ff 	bl	-10364(0xfffd784) # 1c001cac <myprintf>
1c00452c:	02820005 	addi.w	$r5,$r0,128(0x80)
1c004530:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004534:	03808184 	ori	$r4,$r12,0x20
1c004538:	57f3f3ff 	bl	-3088(0xffff3f0) # 1c003928 <EXTI_ClearITPendingBit>
1c00453c:	03400000 	andi	$r0,$r0,0x0
1c004540:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004544:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004548:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00454c:	4c000020 	jirl	$r0,$r1,0

1c004550 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c004550:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004554:	29803061 	st.w	$r1,$r3,12(0xc)
1c004558:	29802076 	st.w	$r22,$r3,8(0x8)
1c00455c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004560:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004564:	029100c6 	addi.w	$r6,$r6,1088(0x440)
1c004568:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c00456c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004570:	02880084 	addi.w	$r4,$r4,512(0x200)
1c004574:	57d73bff 	bl	-10440(0xfffd738) # 1c001cac <myprintf>
1c004578:	02840005 	addi.w	$r5,$r0,256(0x100)
1c00457c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004580:	03808184 	ori	$r4,$r12,0x20
1c004584:	57f3a7ff 	bl	-3164(0xffff3a4) # 1c003928 <EXTI_ClearITPendingBit>
1c004588:	03400000 	andi	$r0,$r0,0x0
1c00458c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004590:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004594:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004598:	4c000020 	jirl	$r0,$r1,0

1c00459c <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c00459c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045ac:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045b0:	029030c6 	addi.w	$r6,$r6,1036(0x40c)
1c0045b4:	02810805 	addi.w	$r5,$r0,66(0x42)
1c0045b8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0045bc:	0286d084 	addi.w	$r4,$r4,436(0x1b4)
1c0045c0:	57d6efff 	bl	-10516(0xfffd6ec) # 1c001cac <myprintf>
1c0045c4:	02880005 	addi.w	$r5,$r0,512(0x200)
1c0045c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045cc:	03808184 	ori	$r4,$r12,0x20
1c0045d0:	57f35bff 	bl	-3240(0xffff358) # 1c003928 <EXTI_ClearITPendingBit>
1c0045d4:	03400000 	andi	$r0,$r0,0x0
1c0045d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045e4:	4c000020 	jirl	$r0,$r1,0

1c0045e8 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c0045e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045f8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0045fc:	028f60c6 	addi.w	$r6,$r6,984(0x3d8)
1c004600:	02811c05 	addi.w	$r5,$r0,71(0x47)
1c004604:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004608:	0285a084 	addi.w	$r4,$r4,360(0x168)
1c00460c:	57d6a3ff 	bl	-10592(0xfffd6a0) # 1c001cac <myprintf>
1c004610:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c004614:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004618:	03808184 	ori	$r4,$r12,0x20
1c00461c:	57f30fff 	bl	-3316(0xffff30c) # 1c003928 <EXTI_ClearITPendingBit>
1c004620:	03400000 	andi	$r0,$r0,0x0
1c004624:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004628:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00462c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004630:	4c000020 	jirl	$r0,$r1,0

1c004634 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c004634:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004638:	29803061 	st.w	$r1,$r3,12(0xc)
1c00463c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004640:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004644:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004648:	028e90c6 	addi.w	$r6,$r6,932(0x3a4)
1c00464c:	02813005 	addi.w	$r5,$r0,76(0x4c)
1c004650:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004654:	02847084 	addi.w	$r4,$r4,284(0x11c)
1c004658:	57d657ff 	bl	-10668(0xfffd654) # 1c001cac <myprintf>
1c00465c:	03a00005 	ori	$r5,$r0,0x800
1c004660:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004664:	03808184 	ori	$r4,$r12,0x20
1c004668:	57f2c3ff 	bl	-3392(0xffff2c0) # 1c003928 <EXTI_ClearITPendingBit>
1c00466c:	03400000 	andi	$r0,$r0,0x0
1c004670:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004674:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004678:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00467c:	4c000020 	jirl	$r0,$r1,0

1c004680 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c004680:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004684:	29803061 	st.w	$r1,$r3,12(0xc)
1c004688:	29802076 	st.w	$r22,$r3,8(0x8)
1c00468c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004690:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004694:	028dc0c6 	addi.w	$r6,$r6,880(0x370)
1c004698:	02814405 	addi.w	$r5,$r0,81(0x51)
1c00469c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046a0:	02834084 	addi.w	$r4,$r4,208(0xd0)
1c0046a4:	57d60bff 	bl	-10744(0xfffd608) # 1c001cac <myprintf>
1c0046a8:	14000025 	lu12i.w	$r5,1(0x1)
1c0046ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046b0:	03808184 	ori	$r4,$r12,0x20
1c0046b4:	57f277ff 	bl	-3468(0xffff274) # 1c003928 <EXTI_ClearITPendingBit>
1c0046b8:	03400000 	andi	$r0,$r0,0x0
1c0046bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046c8:	4c000020 	jirl	$r0,$r1,0

1c0046cc <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c0046cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046dc:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0046e0:	028cf0c6 	addi.w	$r6,$r6,828(0x33c)
1c0046e4:	02815805 	addi.w	$r5,$r0,86(0x56)
1c0046e8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0046ec:	02821084 	addi.w	$r4,$r4,132(0x84)
1c0046f0:	57d5bfff 	bl	-10820(0xfffd5bc) # 1c001cac <myprintf>
1c0046f4:	14000045 	lu12i.w	$r5,2(0x2)
1c0046f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046fc:	03808184 	ori	$r4,$r12,0x20
1c004700:	57f22bff 	bl	-3544(0xffff228) # 1c003928 <EXTI_ClearITPendingBit>
1c004704:	03400000 	andi	$r0,$r0,0x0
1c004708:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00470c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004710:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004714:	4c000020 	jirl	$r0,$r1,0

1c004718 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c004718:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00471c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004720:	29802076 	st.w	$r22,$r3,8(0x8)
1c004724:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004728:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00472c:	028c20c6 	addi.w	$r6,$r6,776(0x308)
1c004730:	02816c05 	addi.w	$r5,$r0,91(0x5b)
1c004734:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004738:	0280e084 	addi.w	$r4,$r4,56(0x38)
1c00473c:	57d573ff 	bl	-10896(0xfffd570) # 1c001cac <myprintf>
1c004740:	14000085 	lu12i.w	$r5,4(0x4)
1c004744:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004748:	03808184 	ori	$r4,$r12,0x20
1c00474c:	57f1dfff 	bl	-3620(0xffff1dc) # 1c003928 <EXTI_ClearITPendingBit>
1c004750:	03400000 	andi	$r0,$r0,0x0
1c004754:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004758:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00475c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004760:	4c000020 	jirl	$r0,$r1,0

1c004764 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c004764:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004768:	29803061 	st.w	$r1,$r3,12(0xc)
1c00476c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004770:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004774:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004778:	028b50c6 	addi.w	$r6,$r6,724(0x2d4)
1c00477c:	02818005 	addi.w	$r5,$r0,96(0x60)
1c004780:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004784:	02bfb084 	addi.w	$r4,$r4,-20(0xfec)
1c004788:	57d527ff 	bl	-10972(0xfffd524) # 1c001cac <myprintf>
1c00478c:	14000105 	lu12i.w	$r5,8(0x8)
1c004790:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004794:	03808184 	ori	$r4,$r12,0x20
1c004798:	57f193ff 	bl	-3696(0xffff190) # 1c003928 <EXTI_ClearITPendingBit>
1c00479c:	03400000 	andi	$r0,$r0,0x0
1c0047a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047ac:	4c000020 	jirl	$r0,$r1,0

1c0047b0 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c0047b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047c0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0047c4:	028a80c6 	addi.w	$r6,$r6,672(0x2a0)
1c0047c8:	02819805 	addi.w	$r5,$r0,102(0x66)
1c0047cc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0047d0:	02be8084 	addi.w	$r4,$r4,-96(0xfa0)
1c0047d4:	57d4dbff 	bl	-11048(0xfffd4d8) # 1c001cac <myprintf>
1c0047d8:	14000205 	lu12i.w	$r5,16(0x10)
1c0047dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047e0:	03808184 	ori	$r4,$r12,0x20
1c0047e4:	57f147ff 	bl	-3772(0xffff144) # 1c003928 <EXTI_ClearITPendingBit>
1c0047e8:	03400000 	andi	$r0,$r0,0x0
1c0047ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047f8:	4c000020 	jirl	$r0,$r1,0

1c0047fc <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c0047fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004800:	29803061 	st.w	$r1,$r3,12(0xc)
1c004804:	29802076 	st.w	$r22,$r3,8(0x8)
1c004808:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00480c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004810:	0289b0c6 	addi.w	$r6,$r6,620(0x26c)
1c004814:	0281ac05 	addi.w	$r5,$r0,107(0x6b)
1c004818:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00481c:	02bd5084 	addi.w	$r4,$r4,-172(0xf54)
1c004820:	57d48fff 	bl	-11124(0xfffd48c) # 1c001cac <myprintf>
1c004824:	14000405 	lu12i.w	$r5,32(0x20)
1c004828:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00482c:	03808184 	ori	$r4,$r12,0x20
1c004830:	57f0fbff 	bl	-3848(0xffff0f8) # 1c003928 <EXTI_ClearITPendingBit>
1c004834:	03400000 	andi	$r0,$r0,0x0
1c004838:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00483c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004840:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004844:	4c000020 	jirl	$r0,$r1,0

1c004848 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c004848:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00484c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004850:	29802076 	st.w	$r22,$r3,8(0x8)
1c004854:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004858:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00485c:	0288e0c6 	addi.w	$r6,$r6,568(0x238)
1c004860:	0281c005 	addi.w	$r5,$r0,112(0x70)
1c004864:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004868:	02bc2084 	addi.w	$r4,$r4,-248(0xf08)
1c00486c:	57d443ff 	bl	-11200(0xfffd440) # 1c001cac <myprintf>
1c004870:	14000805 	lu12i.w	$r5,64(0x40)
1c004874:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004878:	03808184 	ori	$r4,$r12,0x20
1c00487c:	57f0afff 	bl	-3924(0xffff0ac) # 1c003928 <EXTI_ClearITPendingBit>
1c004880:	03400000 	andi	$r0,$r0,0x0
1c004884:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004888:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00488c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004890:	4c000020 	jirl	$r0,$r1,0

1c004894 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c004894:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004898:	29803061 	st.w	$r1,$r3,12(0xc)
1c00489c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048a4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0048a8:	028810c6 	addi.w	$r6,$r6,516(0x204)
1c0048ac:	0281d405 	addi.w	$r5,$r0,117(0x75)
1c0048b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0048b4:	02baf084 	addi.w	$r4,$r4,-324(0xebc)
1c0048b8:	57d3f7ff 	bl	-11276(0xfffd3f4) # 1c001cac <myprintf>
1c0048bc:	14001005 	lu12i.w	$r5,128(0x80)
1c0048c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048c4:	03808184 	ori	$r4,$r12,0x20
1c0048c8:	57f063ff 	bl	-4000(0xffff060) # 1c003928 <EXTI_ClearITPendingBit>
1c0048cc:	03400000 	andi	$r0,$r0,0x0
1c0048d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048dc:	4c000020 	jirl	$r0,$r1,0

1c0048e0 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c0048e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048f0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0048f4:	028740c6 	addi.w	$r6,$r6,464(0x1d0)
1c0048f8:	0281e805 	addi.w	$r5,$r0,122(0x7a)
1c0048fc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004900:	02b9c084 	addi.w	$r4,$r4,-400(0xe70)
1c004904:	57d3abff 	bl	-11352(0xfffd3a8) # 1c001cac <myprintf>
1c004908:	14002005 	lu12i.w	$r5,256(0x100)
1c00490c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004910:	03808184 	ori	$r4,$r12,0x20
1c004914:	57f017ff 	bl	-4076(0xffff014) # 1c003928 <EXTI_ClearITPendingBit>
1c004918:	03400000 	andi	$r0,$r0,0x0
1c00491c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004920:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004924:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004928:	4c000020 	jirl	$r0,$r1,0

1c00492c <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c00492c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004930:	29803061 	st.w	$r1,$r3,12(0xc)
1c004934:	29802076 	st.w	$r22,$r3,8(0x8)
1c004938:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00493c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004940:	028670c6 	addi.w	$r6,$r6,412(0x19c)
1c004944:	0281fc05 	addi.w	$r5,$r0,127(0x7f)
1c004948:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00494c:	02b89084 	addi.w	$r4,$r4,-476(0xe24)
1c004950:	57d35fff 	bl	-11428(0xfffd35c) # 1c001cac <myprintf>
1c004954:	14004005 	lu12i.w	$r5,512(0x200)
1c004958:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00495c:	03808184 	ori	$r4,$r12,0x20
1c004960:	57efcbff 	bl	-4152(0xfffefc8) # 1c003928 <EXTI_ClearITPendingBit>
1c004964:	03400000 	andi	$r0,$r0,0x0
1c004968:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00496c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004970:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004974:	4c000020 	jirl	$r0,$r1,0

1c004978 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c004978:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00497c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004980:	29802076 	st.w	$r22,$r3,8(0x8)
1c004984:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004988:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00498c:	0285a0c6 	addi.w	$r6,$r6,360(0x168)
1c004990:	02821005 	addi.w	$r5,$r0,132(0x84)
1c004994:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004998:	02b76084 	addi.w	$r4,$r4,-552(0xdd8)
1c00499c:	57d313ff 	bl	-11504(0xfffd310) # 1c001cac <myprintf>
1c0049a0:	14008005 	lu12i.w	$r5,1024(0x400)
1c0049a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049a8:	03808184 	ori	$r4,$r12,0x20
1c0049ac:	57ef7fff 	bl	-4228(0xfffef7c) # 1c003928 <EXTI_ClearITPendingBit>
1c0049b0:	03400000 	andi	$r0,$r0,0x0
1c0049b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049c0:	4c000020 	jirl	$r0,$r1,0

1c0049c4 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c0049c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049d4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0049d8:	0284d0c6 	addi.w	$r6,$r6,308(0x134)
1c0049dc:	02822405 	addi.w	$r5,$r0,137(0x89)
1c0049e0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0049e4:	02b63084 	addi.w	$r4,$r4,-628(0xd8c)
1c0049e8:	57d2c7ff 	bl	-11580(0xfffd2c4) # 1c001cac <myprintf>
1c0049ec:	14010005 	lu12i.w	$r5,2048(0x800)
1c0049f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049f4:	03808184 	ori	$r4,$r12,0x20
1c0049f8:	57ef33ff 	bl	-4304(0xfffef30) # 1c003928 <EXTI_ClearITPendingBit>
1c0049fc:	03400000 	andi	$r0,$r0,0x0
1c004a00:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a04:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a08:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a0c:	4c000020 	jirl	$r0,$r1,0

1c004a10 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c004a10:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a14:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a18:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a1c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a20:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004a24:	028400c6 	addi.w	$r6,$r6,256(0x100)
1c004a28:	02823805 	addi.w	$r5,$r0,142(0x8e)
1c004a2c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004a30:	02b50084 	addi.w	$r4,$r4,-704(0xd40)
1c004a34:	57d27bff 	bl	-11656(0xfffd278) # 1c001cac <myprintf>
1c004a38:	14020005 	lu12i.w	$r5,4096(0x1000)
1c004a3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a40:	03808184 	ori	$r4,$r12,0x20
1c004a44:	57eee7ff 	bl	-4380(0xfffeee4) # 1c003928 <EXTI_ClearITPendingBit>
1c004a48:	03400000 	andi	$r0,$r0,0x0
1c004a4c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a50:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a54:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a58:	4c000020 	jirl	$r0,$r1,0

1c004a5c <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c004a5c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a60:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a64:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a68:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a6c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004a70:	028330c6 	addi.w	$r6,$r6,204(0xcc)
1c004a74:	02824c05 	addi.w	$r5,$r0,147(0x93)
1c004a78:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004a7c:	02b3d084 	addi.w	$r4,$r4,-780(0xcf4)
1c004a80:	57d22fff 	bl	-11732(0xfffd22c) # 1c001cac <myprintf>
1c004a84:	14040005 	lu12i.w	$r5,8192(0x2000)
1c004a88:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a8c:	03808184 	ori	$r4,$r12,0x20
1c004a90:	57ee9bff 	bl	-4456(0xfffee98) # 1c003928 <EXTI_ClearITPendingBit>
1c004a94:	03400000 	andi	$r0,$r0,0x0
1c004a98:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a9c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004aa0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004aa4:	4c000020 	jirl	$r0,$r1,0

1c004aa8 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004aa8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004aac:	29803061 	st.w	$r1,$r3,12(0xc)
1c004ab0:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ab4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ab8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004abc:	028260c6 	addi.w	$r6,$r6,152(0x98)
1c004ac0:	02826005 	addi.w	$r5,$r0,152(0x98)
1c004ac4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004ac8:	02b2a084 	addi.w	$r4,$r4,-856(0xca8)
1c004acc:	57d1e3ff 	bl	-11808(0xfffd1e0) # 1c001cac <myprintf>
1c004ad0:	14080005 	lu12i.w	$r5,16384(0x4000)
1c004ad4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ad8:	03808184 	ori	$r4,$r12,0x20
1c004adc:	57ee4fff 	bl	-4532(0xfffee4c) # 1c003928 <EXTI_ClearITPendingBit>
1c004ae0:	03400000 	andi	$r0,$r0,0x0
1c004ae4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004ae8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004aec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004af0:	4c000020 	jirl	$r0,$r1,0

1c004af4 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004af4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004af8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004afc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b00:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b04:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004b08:	028190c6 	addi.w	$r6,$r6,100(0x64)
1c004b0c:	02827405 	addi.w	$r5,$r0,157(0x9d)
1c004b10:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004b14:	02b17084 	addi.w	$r4,$r4,-932(0xc5c)
1c004b18:	57d197ff 	bl	-11884(0xfffd194) # 1c001cac <myprintf>
1c004b1c:	14100005 	lu12i.w	$r5,32768(0x8000)
1c004b20:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b24:	03808184 	ori	$r4,$r12,0x20
1c004b28:	57ee03ff 	bl	-4608(0xfffee00) # 1c003928 <EXTI_ClearITPendingBit>
1c004b2c:	03400000 	andi	$r0,$r0,0x0
1c004b30:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b34:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b38:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b3c:	4c000020 	jirl	$r0,$r1,0

1c004b40 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c004b40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b44:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b48:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b4c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b50:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004b54:	0280c0c6 	addi.w	$r6,$r6,48(0x30)
1c004b58:	02828805 	addi.w	$r5,$r0,162(0xa2)
1c004b5c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004b60:	02b04084 	addi.w	$r4,$r4,-1008(0xc10)
1c004b64:	57d14bff 	bl	-11960(0xfffd148) # 1c001cac <myprintf>
1c004b68:	14200005 	lu12i.w	$r5,65536(0x10000)
1c004b6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b70:	03808184 	ori	$r4,$r12,0x20
1c004b74:	57edb7ff 	bl	-4684(0xfffedb4) # 1c003928 <EXTI_ClearITPendingBit>
1c004b78:	03400000 	andi	$r0,$r0,0x0
1c004b7c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004b80:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004b84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004b88:	4c000020 	jirl	$r0,$r1,0

1c004b8c <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004b8c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004b90:	29803061 	st.w	$r1,$r3,12(0xc)
1c004b94:	29802076 	st.w	$r22,$r3,8(0x8)
1c004b98:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004b9c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004ba0:	02bff0c6 	addi.w	$r6,$r6,-4(0xffc)
1c004ba4:	0282a005 	addi.w	$r5,$r0,168(0xa8)
1c004ba8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004bac:	02af1084 	addi.w	$r4,$r4,-1084(0xbc4)
1c004bb0:	57d0ffff 	bl	-12036(0xfffd0fc) # 1c001cac <myprintf>
1c004bb4:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004bb8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bbc:	03808184 	ori	$r4,$r12,0x20
1c004bc0:	57ed6bff 	bl	-4760(0xfffed68) # 1c003928 <EXTI_ClearITPendingBit>
1c004bc4:	03400000 	andi	$r0,$r0,0x0
1c004bc8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004bcc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004bd0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004bd4:	4c000020 	jirl	$r0,$r1,0

1c004bd8 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004bd8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004bdc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004be0:	29802076 	st.w	$r22,$r3,8(0x8)
1c004be4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004be8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004bec:	02bf20c6 	addi.w	$r6,$r6,-56(0xfc8)
1c004bf0:	0282b405 	addi.w	$r5,$r0,173(0xad)
1c004bf4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004bf8:	02ade084 	addi.w	$r4,$r4,-1160(0xb78)
1c004bfc:	57d0b3ff 	bl	-12112(0xfffd0b0) # 1c001cac <myprintf>
1c004c00:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004c04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c08:	03808184 	ori	$r4,$r12,0x20
1c004c0c:	57ed1fff 	bl	-4836(0xfffed1c) # 1c003928 <EXTI_ClearITPendingBit>
1c004c10:	03400000 	andi	$r0,$r0,0x0
1c004c14:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c18:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c1c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c20:	4c000020 	jirl	$r0,$r1,0

1c004c24 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c004c24:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004c28:	29803061 	st.w	$r1,$r3,12(0xc)
1c004c2c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004c30:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004c34:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004c38:	02be50c6 	addi.w	$r6,$r6,-108(0xf94)
1c004c3c:	0282c805 	addi.w	$r5,$r0,178(0xb2)
1c004c40:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004c44:	02acb084 	addi.w	$r4,$r4,-1236(0xb2c)
1c004c48:	57d067ff 	bl	-12188(0xfffd064) # 1c001cac <myprintf>
1c004c4c:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c004c50:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c54:	03808184 	ori	$r4,$r12,0x20
1c004c58:	57ecd3ff 	bl	-4912(0xfffecd0) # 1c003928 <EXTI_ClearITPendingBit>
1c004c5c:	03400000 	andi	$r0,$r0,0x0
1c004c60:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c64:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c68:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c6c:	4c000020 	jirl	$r0,$r1,0

1c004c70 <ext_handler>:
ext_handler():
1c004c70:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004c74:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004c78:	29806076 	st.w	$r22,$r3,24(0x18)
1c004c7c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004c80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c84:	0380f18c 	ori	$r12,$r12,0x3c
1c004c88:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004c8c:	2980018d 	st.w	$r13,$r12,0
1c004c90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c94:	0380818c 	ori	$r12,$r12,0x20
1c004c98:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004c9c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004ca0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ca4:	0380818c 	ori	$r12,$r12,0x20
1c004ca8:	2880018c 	ld.w	$r12,$r12,0
1c004cac:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004cb0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004cb4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004cb8:	0014b1ac 	and	$r12,$r13,$r12
1c004cbc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004cc0:	03400000 	andi	$r0,$r0,0x0
1c004cc4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004cc8:	50004000 	b	64(0x40) # 1c004d08 <ext_handler+0x98>
1c004ccc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004cd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004cd4:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004cd8:	0340058c 	andi	$r12,$r12,0x1
1c004cdc:	40002180 	beqz	$r12,32(0x20) # 1c004cfc <ext_handler+0x8c>
1c004ce0:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c004ce4:	02acf1ad 	addi.w	$r13,$r13,-1220(0xb3c)
1c004ce8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004cec:	0040898c 	slli.w	$r12,$r12,0x2
1c004cf0:	001031ac 	add.w	$r12,$r13,$r12
1c004cf4:	2880018c 	ld.w	$r12,$r12,0
1c004cf8:	4c000181 	jirl	$r1,$r12,0
1c004cfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004d00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004d04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004d08:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004d0c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c004d10:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c004ccc <ext_handler+0x5c>
1c004d14:	03400000 	andi	$r0,$r0,0x0
1c004d18:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004d1c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004d20:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004d24:	4c000020 	jirl	$r0,$r1,0

1c004d28 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004d28:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004d2c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004d30:	29806076 	st.w	$r22,$r3,24(0x18)
1c004d34:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004d38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d3c:	0380f18c 	ori	$r12,$r12,0x3c
1c004d40:	1400020d 	lu12i.w	$r13,16(0x10)
1c004d44:	2980018d 	st.w	$r13,$r12,0
1c004d48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d4c:	0380118c 	ori	$r12,$r12,0x4
1c004d50:	2880018c 	ld.w	$r12,$r12,0
1c004d54:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004d58:	57ed23ff 	bl	-4832(0xfffed20) # 1c003a78 <WDG_DogFeed>
1c004d5c:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004d60:	57e477ff 	bl	-7052(0xfffe474) # 1c0031d4 <Wake_Set>
1c004d64:	03400000 	andi	$r0,$r0,0x0
1c004d68:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004d6c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004d70:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004d74:	4c000020 	jirl	$r0,$r1,0

1c004d78 <TOUCH>:
TOUCH():
1c004d78:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004d7c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004d80:	29806076 	st.w	$r22,$r3,24(0x18)
1c004d84:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004d88:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004d8c:	0380118c 	ori	$r12,$r12,0x4
1c004d90:	2880018c 	ld.w	$r12,$r12,0
1c004d94:	0044c18c 	srli.w	$r12,$r12,0x10
1c004d98:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004d9c:	037ffd8c 	andi	$r12,$r12,0xfff
1c004da0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004da4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004da8:	0380118c 	ori	$r12,$r12,0x4
1c004dac:	2880018c 	ld.w	$r12,$r12,0
1c004db0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004db4:	03403d8c 	andi	$r12,$r12,0xf
1c004db8:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004dbc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004dc0:	0380f18c 	ori	$r12,$r12,0x3c
1c004dc4:	1400040d 	lu12i.w	$r13,32(0x20)
1c004dc8:	2980018d 	st.w	$r13,$r12,0
1c004dcc:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004dd0:	0380118c 	ori	$r12,$r12,0x4
1c004dd4:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004dd8:	2980018d 	st.w	$r13,$r12,0
1c004ddc:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004de0:	00150184 	move	$r4,$r12
1c004de4:	57efe7ff 	bl	-4124(0xfffefe4) # 1c003dc8 <Printf_KeyType>
1c004de8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004dec:	00150184 	move	$r4,$r12
1c004df0:	57ef5fff 	bl	-4260(0xfffef5c) # 1c003d4c <Printf_KeyChannel>
1c004df4:	57f063ff 	bl	-4000(0xffff060) # 1c003e54 <Printf_KeyVal>
1c004df8:	03400000 	andi	$r0,$r0,0x0
1c004dfc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004e00:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004e04:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004e08:	4c000020 	jirl	$r0,$r1,0

1c004e0c <UART2_INT>:
UART2_INT():
1c004e0c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004e10:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004e14:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004e18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e1c:	0380f18c 	ori	$r12,$r12,0x3c
1c004e20:	1400080d 	lu12i.w	$r13,64(0x40)
1c004e24:	2980018d 	st.w	$r13,$r12,0
1c004e28:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004e2c:	0380098c 	ori	$r12,$r12,0x2
1c004e30:	2a00018c 	ld.bu	$r12,$r12,0
1c004e34:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004e38:	03400000 	andi	$r0,$r0,0x0
1c004e3c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004e40:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004e44:	4c000020 	jirl	$r0,$r1,0

1c004e48 <BAT_FAIL>:
BAT_FAIL():
1c004e48:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004e4c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004e50:	29806076 	st.w	$r22,$r3,24(0x18)
1c004e54:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004e58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e5c:	0380118c 	ori	$r12,$r12,0x4
1c004e60:	2880018c 	ld.w	$r12,$r12,0
1c004e64:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004e68:	03407d8c 	andi	$r12,$r12,0x1f
1c004e6c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004e70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e74:	0380118c 	ori	$r12,$r12,0x4
1c004e78:	2880018e 	ld.w	$r14,$r12,0
1c004e7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004e80:	0380f18c 	ori	$r12,$r12,0x3c
1c004e84:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004e88:	0014b5cd 	and	$r13,$r14,$r13
1c004e8c:	2980018d 	st.w	$r13,$r12,0
1c004e90:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004e94:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004e98:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004f08 <BAT_FAIL+0xc0>
1c004e9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004ea0:	0040898d 	slli.w	$r13,$r12,0x2
1c004ea4:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c004ea8:	02a7e18c 	addi.w	$r12,$r12,-1544(0x9f8)
1c004eac:	001031ac 	add.w	$r12,$r13,$r12
1c004eb0:	2880018c 	ld.w	$r12,$r12,0
1c004eb4:	4c000180 	jirl	$r0,$r12,0
1c004eb8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004ebc:	02a3e084 	addi.w	$r4,$r4,-1800(0x8f8)
1c004ec0:	57cdefff 	bl	-12820(0xfffcdec) # 1c001cac <myprintf>
1c004ec4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ec8:	0380118c 	ori	$r12,$r12,0x4
1c004ecc:	29800180 	st.w	$r0,$r12,0
1c004ed0:	50003c00 	b	60(0x3c) # 1c004f0c <BAT_FAIL+0xc4>
1c004ed4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004ed8:	02a41084 	addi.w	$r4,$r4,-1788(0x904)
1c004edc:	57cdd3ff 	bl	-12848(0xfffcdd0) # 1c001cac <myprintf>
1c004ee0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ee4:	0380118c 	ori	$r12,$r12,0x4
1c004ee8:	2880018e 	ld.w	$r14,$r12,0
1c004eec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ef0:	0380118c 	ori	$r12,$r12,0x4
1c004ef4:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004ef8:	03bffdad 	ori	$r13,$r13,0xfff
1c004efc:	0014b5cd 	and	$r13,$r14,$r13
1c004f00:	2980018d 	st.w	$r13,$r12,0
1c004f04:	50000800 	b	8(0x8) # 1c004f0c <BAT_FAIL+0xc4>
1c004f08:	03400000 	andi	$r0,$r0,0x0
1c004f0c:	03400000 	andi	$r0,$r0,0x0
1c004f10:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004f14:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004f18:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004f1c:	4c000020 	jirl	$r0,$r1,0

1c004f20 <intc_handler>:
intc_handler():
1c004f20:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004f24:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004f28:	29806076 	st.w	$r22,$r3,24(0x18)
1c004f2c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004f30:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004f34:	0380158c 	ori	$r12,$r12,0x5
1c004f38:	2a00018c 	ld.bu	$r12,$r12,0
1c004f3c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004f40:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004f44:	0340058c 	andi	$r12,$r12,0x1
1c004f48:	4001fd80 	beqz	$r12,508(0x1fc) # 1c005144 <intc_handler+0x224>
1c004f4c:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004f50:	57f2fbff 	bl	-3336(0xffff2f8) # 1c004248 <TIM_GetITStatus>
1c004f54:	0015008c 	move	$r12,$r4
1c004f58:	4001ed80 	beqz	$r12,492(0x1ec) # 1c005144 <intc_handler+0x224>
1c004f5c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f60:	0282918c 	addi.w	$r12,$r12,164(0xa4)
1c004f64:	2a00018c 	ld.bu	$r12,$r12,0
1c004f68:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f6c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004f70:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f74:	0282418c 	addi.w	$r12,$r12,144(0x90)
1c004f78:	2900018d 	st.b	$r13,$r12,0
1c004f7c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f80:	0282318c 	addi.w	$r12,$r12,140(0x8c)
1c004f84:	2a00018c 	ld.bu	$r12,$r12,0
1c004f88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f8c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004f90:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f94:	0281e18c 	addi.w	$r12,$r12,120(0x78)
1c004f98:	2900018d 	st.b	$r13,$r12,0
1c004f9c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fa0:	0281d18c 	addi.w	$r12,$r12,116(0x74)
1c004fa4:	2a00018c 	ld.bu	$r12,$r12,0
1c004fa8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004fac:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004fb0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fb4:	0281818c 	addi.w	$r12,$r12,96(0x60)
1c004fb8:	2900018d 	st.b	$r13,$r12,0
1c004fbc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fc0:	0281718c 	addi.w	$r12,$r12,92(0x5c)
1c004fc4:	2a00018c 	ld.bu	$r12,$r12,0
1c004fc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004fcc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004fd0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fd4:	0281218c 	addi.w	$r12,$r12,72(0x48)
1c004fd8:	2900018d 	st.b	$r13,$r12,0
1c004fdc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fe0:	0281118c 	addi.w	$r12,$r12,68(0x44)
1c004fe4:	2a00018c 	ld.bu	$r12,$r12,0
1c004fe8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004fec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004ff0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ff4:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c004ff8:	2900018d 	st.b	$r13,$r12,0
1c004ffc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005000:	0280b18c 	addi.w	$r12,$r12,44(0x2c)
1c005004:	2a00018c 	ld.bu	$r12,$r12,0
1c005008:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00500c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005010:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005014:	0280618c 	addi.w	$r12,$r12,24(0x18)
1c005018:	2900018d 	st.b	$r13,$r12,0
1c00501c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005020:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c005024:	2a00018d 	ld.bu	$r13,$r12,0
1c005028:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00502c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00504c <intc_handler+0x12c>
1c005030:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005034:	02bf518c 	addi.w	$r12,$r12,-44(0xfd4)
1c005038:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00503c:	2980018d 	st.w	$r13,$r12,0
1c005040:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005044:	02bf018c 	addi.w	$r12,$r12,-64(0xfc0)
1c005048:	29000180 	st.b	$r0,$r12,0
1c00504c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005050:	02bef18c 	addi.w	$r12,$r12,-68(0xfbc)
1c005054:	2a00018d 	ld.bu	$r13,$r12,0
1c005058:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00505c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00507c <intc_handler+0x15c>
1c005060:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005064:	02beb18c 	addi.w	$r12,$r12,-84(0xfac)
1c005068:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00506c:	2980018d 	st.w	$r13,$r12,0
1c005070:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005074:	02be618c 	addi.w	$r12,$r12,-104(0xf98)
1c005078:	29000180 	st.b	$r0,$r12,0
1c00507c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005080:	02be518c 	addi.w	$r12,$r12,-108(0xf94)
1c005084:	2a00018d 	ld.bu	$r13,$r12,0
1c005088:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c00508c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c0050ac <intc_handler+0x18c>
1c005090:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005094:	02be118c 	addi.w	$r12,$r12,-124(0xf84)
1c005098:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00509c:	2980018d 	st.w	$r13,$r12,0
1c0050a0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050a4:	02bdc18c 	addi.w	$r12,$r12,-144(0xf70)
1c0050a8:	29000180 	st.b	$r0,$r12,0
1c0050ac:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050b0:	02bdb18c 	addi.w	$r12,$r12,-148(0xf6c)
1c0050b4:	2a00018d 	ld.bu	$r13,$r12,0
1c0050b8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0050bc:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c0050dc <intc_handler+0x1bc>
1c0050c0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050c4:	02bd718c 	addi.w	$r12,$r12,-164(0xf5c)
1c0050c8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0050cc:	2980018d 	st.w	$r13,$r12,0
1c0050d0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050d4:	02bd218c 	addi.w	$r12,$r12,-184(0xf48)
1c0050d8:	29000180 	st.b	$r0,$r12,0
1c0050dc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050e0:	02bd118c 	addi.w	$r12,$r12,-188(0xf44)
1c0050e4:	2a00018d 	ld.bu	$r13,$r12,0
1c0050e8:	0280c80c 	addi.w	$r12,$r0,50(0x32)
1c0050ec:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00510c <intc_handler+0x1ec>
1c0050f0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0050f4:	02bcd18c 	addi.w	$r12,$r12,-204(0xf34)
1c0050f8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0050fc:	2980018d 	st.w	$r13,$r12,0
1c005100:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005104:	02bc818c 	addi.w	$r12,$r12,-224(0xf20)
1c005108:	29000180 	st.b	$r0,$r12,0
1c00510c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005110:	02bc718c 	addi.w	$r12,$r12,-228(0xf1c)
1c005114:	2a00018d 	ld.bu	$r13,$r12,0
1c005118:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c00511c:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c00513c <intc_handler+0x21c>
1c005120:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005124:	02bc318c 	addi.w	$r12,$r12,-244(0xf0c)
1c005128:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00512c:	2980018d 	st.w	$r13,$r12,0
1c005130:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005134:	02bbe18c 	addi.w	$r12,$r12,-264(0xef8)
1c005138:	29000180 	st.b	$r0,$r12,0
1c00513c:	02840004 	addi.w	$r4,$r0,256(0x100)
1c005140:	57f157ff 	bl	-3756(0xffff154) # 1c004294 <TIM_ClearIT>
1c005144:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005148:	0340118c 	andi	$r12,$r12,0x4
1c00514c:	40001980 	beqz	$r12,24(0x18) # 1c005164 <intc_handler+0x244>
1c005150:	54170800 	bl	5896(0x1708) # 1c006858 <RS485_Recieve_Callback>
1c005154:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005158:	03800d8c 	ori	$r12,$r12,0x3
1c00515c:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005160:	2900018d 	st.b	$r13,$r12,0
1c005164:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005168:	0340218c 	andi	$r12,$r12,0x8
1c00516c:	40007d80 	beqz	$r12,124(0x7c) # 1c0051e8 <intc_handler+0x2c8>
1c005170:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c005174:	0380098c 	ori	$r12,$r12,0x2
1c005178:	2a00018c 	ld.bu	$r12,$r12,0
1c00517c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005180:	0340118c 	andi	$r12,$r12,0x4
1c005184:	40005580 	beqz	$r12,84(0x54) # 1c0051d8 <intc_handler+0x2b8>
1c005188:	50003800 	b	56(0x38) # 1c0051c0 <intc_handler+0x2a0>
1c00518c:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c005190:	57d723ff 	bl	-10464(0xfffd720) # 1c0028b0 <UART_ReceiveData>
1c005194:	0015008c 	move	$r12,$r4
1c005198:	0015018d 	move	$r13,$r12
1c00519c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0051a0:	02ba518c 	addi.w	$r12,$r12,-364(0xe94)
1c0051a4:	2900018d 	st.b	$r13,$r12,0
1c0051a8:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0051ac:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0051b0:	02ba10a5 	addi.w	$r5,$r5,-380(0xe84)
1c0051b4:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0051b8:	28bac084 	ld.w	$r4,$r4,-336(0xeb0)
1c0051bc:	54116000 	bl	4448(0x1160) # 1c00631c <Queue_Wirte>
1c0051c0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0051c4:	0380158c 	ori	$r12,$r12,0x5
1c0051c8:	2a00018c 	ld.bu	$r12,$r12,0
1c0051cc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0051d0:	0340058c 	andi	$r12,$r12,0x1
1c0051d4:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c00518c <intc_handler+0x26c>
1c0051d8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0051dc:	03800d8c 	ori	$r12,$r12,0x3
1c0051e0:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c0051e4:	2900018d 	st.b	$r13,$r12,0
1c0051e8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0051ec:	03800d8c 	ori	$r12,$r12,0x3
1c0051f0:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0051f4:	2900018d 	st.b	$r13,$r12,0
1c0051f8:	03400000 	andi	$r0,$r0,0x0
1c0051fc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005200:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005204:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005208:	4c000020 	jirl	$r0,$r1,0

1c00520c <TIMER_HANDLER>:
TIMER_HANDLER():
1c00520c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005210:	29803061 	st.w	$r1,$r3,12(0xc)
1c005214:	29802076 	st.w	$r22,$r3,8(0x8)
1c005218:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00521c:	57df97ff 	bl	-8300(0xfffdf94) # 1c0031b0 <Set_Timer_clear>
1c005220:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005224:	02977084 	addi.w	$r4,$r4,1500(0x5dc)
1c005228:	57ca87ff 	bl	-13692(0xfffca84) # 1c001cac <myprintf>
1c00522c:	57df67ff 	bl	-8348(0xfffdf64) # 1c003190 <Set_Timer_stop>
1c005230:	03400000 	andi	$r0,$r0,0x0
1c005234:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005238:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00523c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005240:	4c000020 	jirl	$r0,$r1,0

1c005244 <executer_init>:
executer_init():
1c005244:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005248:	29803061 	st.w	$r1,$r3,12(0xc)
1c00524c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005250:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005254:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c005258:	57e303ff 	bl	-7424(0xfffe300) # 1c003558 <delay_ms>
1c00525c:	54039c00 	bl	924(0x39c) # 1c0055f8 <led_init>
1c005260:	541c2c00 	bl	7212(0x1c2c) # 1c006e8c <mqtt_process_init>
1c005264:	54020400 	bl	516(0x204) # 1c005468 <tempareture_process_init>
1c005268:	54126c00 	bl	4716(0x126c) # 1c0064d4 <Humidity_process_init>
1c00526c:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c005270:	57e2ebff 	bl	-7448(0xfffe2e8) # 1c003558 <delay_ms>
1c005274:	02802804 	addi.w	$r4,$r0,10(0xa)
1c005278:	57ef7fff 	bl	-4228(0xfffef7c) # 1c0041f4 <timer_init>
1c00527c:	03400000 	andi	$r0,$r0,0x0
1c005280:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005284:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005288:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00528c:	4c000020 	jirl	$r0,$r1,0

1c005290 <executer_choose_run>:
executer_choose_run():
1c005290:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005294:	29803061 	st.w	$r1,$r3,12(0xc)
1c005298:	29802076 	st.w	$r22,$r3,8(0x8)
1c00529c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0052a0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052a4:	28b6f18c 	ld.w	$r12,$r12,-580(0xdbc)
1c0052a8:	2880018d 	ld.w	$r13,$r12,0
1c0052ac:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0052b0:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0052c4 <executer_choose_run+0x34>
1c0052b4:	54013c00 	bl	316(0x13c) # 1c0053f0 <run_function_10ms>
1c0052b8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052bc:	28b6918c 	ld.w	$r12,$r12,-604(0xda4)
1c0052c0:	29800180 	st.w	$r0,$r12,0
1c0052c4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052c8:	28b5b18c 	ld.w	$r12,$r12,-660(0xd6c)
1c0052cc:	2880018d 	ld.w	$r13,$r12,0
1c0052d0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0052d4:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0052e8 <executer_choose_run+0x58>
1c0052d8:	54013400 	bl	308(0x134) # 1c00540c <run_function_20ms>
1c0052dc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052e0:	28b5518c 	ld.w	$r12,$r12,-684(0xd54)
1c0052e4:	29800180 	st.w	$r0,$r12,0
1c0052e8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0052ec:	28b4a18c 	ld.w	$r12,$r12,-728(0xd28)
1c0052f0:	2880018d 	ld.w	$r13,$r12,0
1c0052f4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0052f8:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c00530c <executer_choose_run+0x7c>
1c0052fc:	54009000 	bl	144(0x90) # 1c00538c <run_function_50ms>
1c005300:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005304:	28b4418c 	ld.w	$r12,$r12,-752(0xd10)
1c005308:	29800180 	st.w	$r0,$r12,0
1c00530c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005310:	28b4d18c 	ld.w	$r12,$r12,-716(0xd34)
1c005314:	2880018d 	ld.w	$r13,$r12,0
1c005318:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00531c:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c005330 <executer_choose_run+0xa0>
1c005320:	54008800 	bl	136(0x88) # 1c0053a8 <run_function_100ms>
1c005324:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005328:	28b4718c 	ld.w	$r12,$r12,-740(0xd1c)
1c00532c:	29800180 	st.w	$r0,$r12,0
1c005330:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005334:	28b3b18c 	ld.w	$r12,$r12,-788(0xcec)
1c005338:	2880018d 	ld.w	$r13,$r12,0
1c00533c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005340:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c005354 <executer_choose_run+0xc4>
1c005344:	54009000 	bl	144(0x90) # 1c0053d4 <run_function_500ms>
1c005348:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00534c:	28b3518c 	ld.w	$r12,$r12,-812(0xcd4)
1c005350:	29800180 	st.w	$r0,$r12,0
1c005354:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005358:	28b4318c 	ld.w	$r12,$r12,-756(0xd0c)
1c00535c:	2880018d 	ld.w	$r13,$r12,0
1c005360:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005364:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c005378 <executer_choose_run+0xe8>
1c005368:	5400c000 	bl	192(0xc0) # 1c005428 <run_function_1000ms>
1c00536c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005370:	28b3d18c 	ld.w	$r12,$r12,-780(0xcf4)
1c005374:	29800180 	st.w	$r0,$r12,0
1c005378:	03400000 	andi	$r0,$r0,0x0
1c00537c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005380:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005384:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005388:	4c000020 	jirl	$r0,$r1,0

1c00538c <run_function_50ms>:
run_function_50ms():
1c00538c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005390:	29803076 	st.w	$r22,$r3,12(0xc)
1c005394:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005398:	03400000 	andi	$r0,$r0,0x0
1c00539c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0053a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0053a4:	4c000020 	jirl	$r0,$r1,0

1c0053a8 <run_function_100ms>:
run_function_100ms():
1c0053a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0053ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0053b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0053b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0053b8:	541b0400 	bl	6916(0x1b04) # 1c006ebc <mqtt_process>
1c0053bc:	54026c00 	bl	620(0x26c) # 1c005628 <led_show>
1c0053c0:	03400000 	andi	$r0,$r0,0x0
1c0053c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0053c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0053cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0053d0:	4c000020 	jirl	$r0,$r1,0

1c0053d4 <run_function_500ms>:
run_function_500ms():
1c0053d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0053d8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0053dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0053e0:	03400000 	andi	$r0,$r0,0x0
1c0053e4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0053e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0053ec:	4c000020 	jirl	$r0,$r1,0

1c0053f0 <run_function_10ms>:
run_function_10ms():
1c0053f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0053f4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0053f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0053fc:	03400000 	andi	$r0,$r0,0x0
1c005400:	28803076 	ld.w	$r22,$r3,12(0xc)
1c005404:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005408:	4c000020 	jirl	$r0,$r1,0

1c00540c <run_function_20ms>:
run_function_20ms():
1c00540c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005410:	29803076 	st.w	$r22,$r3,12(0xc)
1c005414:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005418:	03400000 	andi	$r0,$r0,0x0
1c00541c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c005420:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005424:	4c000020 	jirl	$r0,$r1,0

1c005428 <run_function_1000ms>:
run_function_1000ms():
1c005428:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00542c:	29803076 	st.w	$r22,$r3,12(0xc)
1c005430:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005434:	03400000 	andi	$r0,$r0,0x0
1c005438:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00543c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005440:	4c000020 	jirl	$r0,$r1,0

1c005444 <main>:
main():
1c005444:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005448:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00544c:	29806076 	st.w	$r22,$r3,24(0x18)
1c005450:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005454:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005458:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c00545c:	57fdebff 	bl	-536(0xffffde8) # 1c005244 <executer_init>
1c005460:	57fe33ff 	bl	-464(0xffffe30) # 1c005290 <executer_choose_run>
1c005464:	53ffffff 	b	-4(0xffffffc) # 1c005460 <main+0x1c>

1c005468 <tempareture_process_init>:
tempareture_process_init():
1c005468:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00546c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005470:	29802076 	st.w	$r22,$r3,8(0x8)
1c005474:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005478:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c00547c:	28ae5084 	ld.w	$r4,$r4,-1132(0xb94)
1c005480:	54005400 	bl	84(0x54) # 1c0054d4 <Tempareture_System_Init>
1c005484:	03400000 	andi	$r0,$r0,0x0
1c005488:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00548c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005490:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005494:	4c000020 	jirl	$r0,$r1,0

1c005498 <tempareture_process>:
tempareture_process():
1c005498:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00549c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0054a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0054a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0054a8:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0054ac:	28ad9084 	ld.w	$r4,$r4,-1180(0xb64)
1c0054b0:	54006c00 	bl	108(0x6c) # 1c00551c <Tempareture_SHT10_Get>
1c0054b4:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0054b8:	28ad6084 	ld.w	$r4,$r4,-1192(0xb58)
1c0054bc:	5400d000 	bl	208(0xd0) # 1c00558c <Tempareture_value_feedback>
1c0054c0:	03400000 	andi	$r0,$r0,0x0
1c0054c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0054c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0054cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0054d0:	4c000020 	jirl	$r0,$r1,0

1c0054d4 <Tempareture_System_Init>:
Tempareture_System_Init():
1c0054d4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0054d8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0054dc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0054e0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0054e4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0054e8:	54195c00 	bl	6492(0x195c) # 1c006e44 <Temp_Hum_Data_Piont>
1c0054ec:	0015008d 	move	$r13,$r4
1c0054f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0054f4:	2980018d 	st.w	$r13,$r12,0
1c0054f8:	54197000 	bl	6512(0x1970) # 1c006e68 <PWM_485_Data_Piont>
1c0054fc:	0015008d 	move	$r13,$r4
1c005500:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005504:	2980118d 	st.w	$r13,$r12,4(0x4)
1c005508:	03400000 	andi	$r0,$r0,0x0
1c00550c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005510:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005514:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005518:	4c000020 	jirl	$r0,$r1,0

1c00551c <Tempareture_SHT10_Get>:
Tempareture_SHT10_Get():
1c00551c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005520:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005524:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005528:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00552c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005530:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005534:	50003000 	b	48(0x30) # 1c005564 <Tempareture_SHT10_Get+0x48>
1c005538:	1cc7ff8d 	pcaddu12i	$r13,409596(0x63ffc)
1c00553c:	02ace1ad 	addi.w	$r13,$r13,-1224(0xb38)
1c005540:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005544:	001031ac 	add.w	$r12,$r13,$r12
1c005548:	2a00018c 	ld.bu	$r12,$r12,0
1c00554c:	00150185 	move	$r5,$r12
1c005550:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c005554:	57d313ff 	bl	-11504(0xfffd310) # 1c002864 <UART_SendData>
1c005558:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00555c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005560:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005564:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005568:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c00556c:	67ffcd8d 	bge	$r12,$r13,-52(0x3ffcc) # 1c005538 <Tempareture_SHT10_Get+0x1c>
1c005570:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005574:	57dfe7ff 	bl	-8220(0xfffdfe4) # 1c003558 <delay_ms>
1c005578:	03400000 	andi	$r0,$r0,0x0
1c00557c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005580:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005584:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005588:	4c000020 	jirl	$r0,$r1,0

1c00558c <Tempareture_value_feedback>:
Tempareture_value_feedback():
1c00558c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005590:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005594:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005598:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00559c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0055a0:	2880018c 	ld.w	$r12,$r12,0
1c0055a4:	2a40298d 	ld.hu	$r13,$r12,10(0xa)
1c0055a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0055ac:	2940e18d 	st.h	$r13,$r12,56(0x38)
1c0055b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0055b4:	2880018c 	ld.w	$r12,$r12,0
1c0055b8:	2a40318d 	ld.hu	$r13,$r12,12(0xc)
1c0055bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0055c0:	2940e98d 	st.h	$r13,$r12,58(0x3a)
1c0055c4:	03400000 	andi	$r0,$r0,0x0
1c0055c8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0055cc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0055d0:	4c000020 	jirl	$r0,$r1,0

1c0055d4 <tempareture_type_Piont>:
tempareture_type_Piont():
1c0055d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0055d8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0055dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0055e0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0055e4:	28a8b18c 	ld.w	$r12,$r12,-1492(0xa2c)
1c0055e8:	00150184 	move	$r4,$r12
1c0055ec:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0055f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0055f4:	4c000020 	jirl	$r0,$r1,0

1c0055f8 <led_init>:
led_init():
1c0055f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0055fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c005600:	29802076 	st.w	$r22,$r3,8(0x8)
1c005604:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005608:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00560c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005610:	57bf8bff 	bl	-16504(0xfffbf88) # 1c001598 <gpio_write_pin>
1c005614:	03400000 	andi	$r0,$r0,0x0
1c005618:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00561c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005620:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005624:	4c000020 	jirl	$r0,$r1,0

1c005628 <led_show>:
led_show():
1c005628:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00562c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005630:	29802076 	st.w	$r22,$r3,8(0x8)
1c005634:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005638:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00563c:	02a7e58c 	addi.w	$r12,$r12,-1543(0x9f9)
1c005640:	2a00018c 	ld.bu	$r12,$r12,0
1c005644:	0240058c 	sltui	$r12,$r12,1(0x1)
1c005648:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00564c:	0015018d 	move	$r13,$r12
1c005650:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005654:	02a7858c 	addi.w	$r12,$r12,-1567(0x9e1)
1c005658:	2900018d 	st.b	$r13,$r12,0
1c00565c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005660:	02a7558c 	addi.w	$r12,$r12,-1579(0x9d5)
1c005664:	2a00018c 	ld.bu	$r12,$r12,0
1c005668:	00150185 	move	$r5,$r12
1c00566c:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005670:	57bf2bff 	bl	-16600(0xfffbf28) # 1c001598 <gpio_write_pin>
1c005674:	03400000 	andi	$r0,$r0,0x0
1c005678:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00567c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005680:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005684:	4c000020 	jirl	$r0,$r1,0

1c005688 <json_to_send>:
json_to_send():
1c005688:	02af0063 	addi.w	$r3,$r3,-1088(0xbc0)
1c00568c:	2990f061 	st.w	$r1,$r3,1084(0x43c)
1c005690:	2990e076 	st.w	$r22,$r3,1080(0x438)
1c005694:	2990d077 	st.w	$r23,$r3,1076(0x434)
1c005698:	02910076 	addi.w	$r22,$r3,1088(0x440)
1c00569c:	29af32c4 	st.w	$r4,$r22,-1076(0xbcc)
1c0056a0:	29af22c5 	st.w	$r5,$r22,-1080(0xbc8)
1c0056a4:	293f9ec0 	st.b	$r0,$r22,-25(0xfe7)
1c0056a8:	293f9ac0 	st.b	$r0,$r22,-26(0xfe6)
1c0056ac:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0056b0:	50021000 	b	528(0x210) # 1c0058c0 <json_to_send+0x238>
1c0056b4:	28af32cd 	ld.w	$r13,$r22,-1076(0xbcc)
1c0056b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056bc:	0040898c 	slli.w	$r12,$r12,0x2
1c0056c0:	001031ac 	add.w	$r12,$r13,$r12
1c0056c4:	2880018c 	ld.w	$r12,$r12,0
1c0056c8:	00150184 	move	$r4,$r12
1c0056cc:	57e213ff 	bl	-7664(0xfffe210) # 1c0038dc <strlen>
1c0056d0:	0015008c 	move	$r12,$r4
1c0056d4:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c0056d8:	28af32cd 	ld.w	$r13,$r22,-1076(0xbcc)
1c0056dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0056e0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0056e4:	0040858c 	slli.w	$r12,$r12,0x1
1c0056e8:	001031ac 	add.w	$r12,$r13,$r12
1c0056ec:	2a40018c 	ld.hu	$r12,$r12,0
1c0056f0:	02bf82cd 	addi.w	$r13,$r22,-32(0xfe0)
1c0056f4:	00150185 	move	$r5,$r12
1c0056f8:	001501a4 	move	$r4,$r13
1c0056fc:	57dfc7ff 	bl	-8252(0xfffdfc4) # 1c0036c0 <itoa>
1c005700:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c005704:	00150184 	move	$r4,$r12
1c005708:	57e1d7ff 	bl	-7724(0xfffe1d4) # 1c0038dc <strlen>
1c00570c:	0015008c 	move	$r12,$r4
1c005710:	293f9acc 	st.b	$r12,$r22,-26(0xfe6)
1c005714:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005718:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00571c:	580045ac 	beq	$r13,$r12,68(0x44) # 1c005760 <json_to_send+0xd8>
1c005720:	2a3f9acc 	ld.bu	$r12,$r22,-26(0xfe6)
1c005724:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005728:	001031ad 	add.w	$r13,$r13,$r12
1c00572c:	0281700c 	addi.w	$r12,$r0,92(0x5c)
1c005730:	293fc1ac 	st.b	$r12,$r13,-16(0xff0)
1c005734:	2a3f9acc 	ld.bu	$r12,$r22,-26(0xfe6)
1c005738:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00573c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005740:	001031ad 	add.w	$r13,$r13,$r12
1c005744:	0280b00c 	addi.w	$r12,$r0,44(0x2c)
1c005748:	293fc1ac 	st.b	$r12,$r13,-16(0xff0)
1c00574c:	2a3f9acc 	ld.bu	$r12,$r22,-26(0xfe6)
1c005750:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c005754:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005758:	001031ac 	add.w	$r12,$r13,$r12
1c00575c:	293fc180 	st.b	$r0,$r12,-16(0xff0)
1c005760:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005764:	0040a18c 	slli.w	$r12,$r12,0x8
1c005768:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00576c:	001031ac 	add.w	$r12,$r13,$r12
1c005770:	0281700d 	addi.w	$r13,$r0,92(0x5c)
1c005774:	292fc18d 	st.b	$r13,$r12,-1040(0xbf0)
1c005778:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00577c:	0040a18c 	slli.w	$r12,$r12,0x8
1c005780:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005784:	001031ac 	add.w	$r12,$r13,$r12
1c005788:	0280880d 	addi.w	$r13,$r0,34(0x22)
1c00578c:	292fc58d 	st.b	$r13,$r12,-1039(0xbf1)
1c005790:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005794:	50005000 	b	80(0x50) # 1c0057e4 <json_to_send+0x15c>
1c005798:	28af32cd 	ld.w	$r13,$r22,-1076(0xbcc)
1c00579c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0057a0:	0040898c 	slli.w	$r12,$r12,0x2
1c0057a4:	001031ac 	add.w	$r12,$r13,$r12
1c0057a8:	2880018d 	ld.w	$r13,$r12,0
1c0057ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0057b0:	001031ac 	add.w	$r12,$r13,$r12
1c0057b4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0057b8:	028009ae 	addi.w	$r14,$r13,2(0x2)
1c0057bc:	2a00018d 	ld.bu	$r13,$r12,0
1c0057c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0057c4:	0040a18c 	slli.w	$r12,$r12,0x8
1c0057c8:	02bfc2cf 	addi.w	$r15,$r22,-16(0xff0)
1c0057cc:	001031ec 	add.w	$r12,$r15,$r12
1c0057d0:	0010398c 	add.w	$r12,$r12,$r14
1c0057d4:	292fc18d 	st.b	$r13,$r12,-1040(0xbf0)
1c0057d8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0057dc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0057e0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0057e4:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c0057e8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0057ec:	63ffadac 	blt	$r13,$r12,-84(0x3ffac) # 1c005798 <json_to_send+0x110>
1c0057f0:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c0057f4:	0280098d 	addi.w	$r13,$r12,2(0x2)
1c0057f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0057fc:	0040a18c 	slli.w	$r12,$r12,0x8
1c005800:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c005804:	001031cc 	add.w	$r12,$r14,$r12
1c005808:	0010358c 	add.w	$r12,$r12,$r13
1c00580c:	0281700d 	addi.w	$r13,$r0,92(0x5c)
1c005810:	292fc18d 	st.b	$r13,$r12,-1040(0xbf0)
1c005814:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c005818:	02800d8d 	addi.w	$r13,$r12,3(0x3)
1c00581c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005820:	0040a18c 	slli.w	$r12,$r12,0x8
1c005824:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c005828:	001031cc 	add.w	$r12,$r14,$r12
1c00582c:	0010358c 	add.w	$r12,$r12,$r13
1c005830:	0280880d 	addi.w	$r13,$r0,34(0x22)
1c005834:	292fc18d 	st.b	$r13,$r12,-1040(0xbf0)
1c005838:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c00583c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c005840:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005844:	0040a18c 	slli.w	$r12,$r12,0x8
1c005848:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c00584c:	001031cc 	add.w	$r12,$r14,$r12
1c005850:	0010358c 	add.w	$r12,$r12,$r13
1c005854:	0280e80d 	addi.w	$r13,$r0,58(0x3a)
1c005858:	292fc18d 	st.b	$r13,$r12,-1040(0xbf0)
1c00585c:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c005860:	0280158d 	addi.w	$r13,$r12,5(0x5)
1c005864:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005868:	0040a18c 	slli.w	$r12,$r12,0x8
1c00586c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c005870:	001031cc 	add.w	$r12,$r14,$r12
1c005874:	0010358c 	add.w	$r12,$r12,$r13
1c005878:	292fc180 	st.b	$r0,$r12,-1040(0xbf0)
1c00587c:	02af82cd 	addi.w	$r13,$r22,-1056(0xbe0)
1c005880:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005884:	0040a18c 	slli.w	$r12,$r12,0x8
1c005888:	001031ac 	add.w	$r12,$r13,$r12
1c00588c:	02bf82cd 	addi.w	$r13,$r22,-32(0xfe0)
1c005890:	001501a5 	move	$r5,$r13
1c005894:	00150184 	move	$r4,$r12
1c005898:	57dfa7ff 	bl	-8284(0xfffdfa4) # 1c00383c <strcat>
1c00589c:	0015008d 	move	$r13,$r4
1c0058a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0058a4:	0040898c 	slli.w	$r12,$r12,0x2
1c0058a8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0058ac:	001031cc 	add.w	$r12,$r14,$r12
1c0058b0:	29af818d 	st.w	$r13,$r12,-1056(0xbe0)
1c0058b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0058b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0058bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0058c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0058c4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0058c8:	67fded8d 	bge	$r12,$r13,-532(0x3fdec) # 1c0056b4 <json_to_send+0x2c>
1c0058cc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0058d0:	289e018c 	ld.w	$r12,$r12,1920(0x780)
1c0058d4:	2880018c 	ld.w	$r12,$r12,0
1c0058d8:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0058dc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0058e0:	289dc18c 	ld.w	$r12,$r12,1904(0x770)
1c0058e4:	2980018d 	st.w	$r13,$r12,0
1c0058e8:	28af42cc 	ld.w	$r12,$r22,-1072(0xbd0)
1c0058ec:	28af52cd 	ld.w	$r13,$r22,-1068(0xbd4)
1c0058f0:	001501a5 	move	$r5,$r13
1c0058f4:	00150184 	move	$r4,$r12
1c0058f8:	57df47ff 	bl	-8380(0xfffdf44) # 1c00383c <strcat>
1c0058fc:	00150097 	move	$r23,$r4
1c005900:	28af62cc 	ld.w	$r12,$r22,-1064(0xbd8)
1c005904:	28af72cd 	ld.w	$r13,$r22,-1060(0xbdc)
1c005908:	001501a5 	move	$r5,$r13
1c00590c:	00150184 	move	$r4,$r12
1c005910:	57df2fff 	bl	-8404(0xfffdf2c) # 1c00383c <strcat>
1c005914:	0015008c 	move	$r12,$r4
1c005918:	00150185 	move	$r5,$r12
1c00591c:	001502e4 	move	$r4,$r23
1c005920:	57df1fff 	bl	-8420(0xfffdf1c) # 1c00383c <strcat>
1c005924:	0015008d 	move	$r13,$r4
1c005928:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00592c:	289c918c 	ld.w	$r12,$r12,1828(0x724)
1c005930:	2980018d 	st.w	$r13,$r12,0
1c005934:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005938:	289c618c 	ld.w	$r12,$r12,1816(0x718)
1c00593c:	2880018c 	ld.w	$r12,$r12,0
1c005940:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005944:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005948:	289c218c 	ld.w	$r12,$r12,1800(0x708)
1c00594c:	2980018d 	st.w	$r13,$r12,0
1c005950:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005954:	289bf18c 	ld.w	$r12,$r12,1788(0x6fc)
1c005958:	2880018c 	ld.w	$r12,$r12,0
1c00595c:	0281ec0d 	addi.w	$r13,$r0,123(0x7b)
1c005960:	2900018d 	st.b	$r13,$r12,0
1c005964:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005968:	289ba18c 	ld.w	$r12,$r12,1768(0x6e8)
1c00596c:	2880018c 	ld.w	$r12,$r12,0
1c005970:	00150184 	move	$r4,$r12
1c005974:	57df6bff 	bl	-8344(0xfffdf68) # 1c0038dc <strlen>
1c005978:	0015008c 	move	$r12,$r4
1c00597c:	293f96cc 	st.b	$r12,$r22,-27(0xfe5)
1c005980:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005984:	289b318c 	ld.w	$r12,$r12,1740(0x6cc)
1c005988:	2880018d 	ld.w	$r13,$r12,0
1c00598c:	2a3f96cc 	ld.bu	$r12,$r22,-27(0xfe5)
1c005990:	001031ac 	add.w	$r12,$r13,$r12
1c005994:	0281f40d 	addi.w	$r13,$r0,125(0x7d)
1c005998:	2900018d 	st.b	$r13,$r12,0
1c00599c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0059a0:	289ac18c 	ld.w	$r12,$r12,1712(0x6b0)
1c0059a4:	2880018d 	ld.w	$r13,$r12,0
1c0059a8:	2a3f96cc 	ld.bu	$r12,$r22,-27(0xfe5)
1c0059ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059b0:	001031ac 	add.w	$r12,$r13,$r12
1c0059b4:	29000180 	st.b	$r0,$r12,0
1c0059b8:	2a3f96cc 	ld.bu	$r12,$r22,-27(0xfe5)
1c0059bc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059c0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0059c4:	28af22cc 	ld.w	$r12,$r22,-1080(0xbc8)
1c0059c8:	2900018d 	st.b	$r13,$r12,0
1c0059cc:	03400000 	andi	$r0,$r0,0x0
1c0059d0:	2890f061 	ld.w	$r1,$r3,1084(0x43c)
1c0059d4:	2890e076 	ld.w	$r22,$r3,1080(0x438)
1c0059d8:	2890d077 	ld.w	$r23,$r3,1076(0x434)
1c0059dc:	02910063 	addi.w	$r3,$r3,1088(0x440)
1c0059e0:	4c000020 	jirl	$r0,$r1,0

1c0059e4 <esp8266_send_json>:
esp8266_send_json():
1c0059e4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0059e8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0059ec:	29806076 	st.w	$r22,$r3,24(0x18)
1c0059f0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0059f4:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0059f8:	0280500c 	addi.w	$r12,$r0,20(0x14)
1c0059fc:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c005a00:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005a04:	2899318c 	ld.w	$r12,$r12,1612(0x64c)
1c005a08:	2880018c 	ld.w	$r12,$r12,0
1c005a0c:	00150186 	move	$r6,$r12
1c005a10:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005a14:	028740a5 	addi.w	$r5,$r5,464(0x1d0)
1c005a18:	00150004 	move	$r4,$r0
1c005a1c:	57c637ff 	bl	-14796(0xfffc634) # 1c002050 <myprintf2>
1c005a20:	50003400 	b	52(0x34) # 1c005a54 <esp8266_send_json+0x70>
1c005a24:	0280c804 	addi.w	$r4,$r0,50(0x32)
1c005a28:	57db33ff 	bl	-9424(0xfffdb30) # 1c003558 <delay_ms>
1c005a2c:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005a30:	0287c0a5 	addi.w	$r5,$r5,496(0x1f0)
1c005a34:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005a38:	2898c084 	ld.w	$r4,$r4,1584(0x630)
1c005a3c:	54034400 	bl	836(0x344) # 1c005d80 <esp8266_check_cmd>
1c005a40:	0015008c 	move	$r12,$r4
1c005a44:	40001180 	beqz	$r12,16(0x10) # 1c005a54 <esp8266_send_json+0x70>
1c005a48:	54072800 	bl	1832(0x728) # 1c006170 <esp8266_send_isno_2>
1c005a4c:	54003000 	bl	48(0x30) # 1c005a7c <json_to_callback>
1c005a50:	50001800 	b	24(0x18) # 1c005a68 <esp8266_send_json+0x84>
1c005a54:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c005a58:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005a5c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c005a60:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c005a64:	47ffc19f 	bnez	$r12,-64(0x7fffc0) # 1c005a24 <esp8266_send_json+0x40>
1c005a68:	03400000 	andi	$r0,$r0,0x0
1c005a6c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005a70:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005a74:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005a78:	4c000020 	jirl	$r0,$r1,0

1c005a7c <json_to_callback>:
json_to_callback():
1c005a7c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005a80:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005a84:	29806076 	st.w	$r22,$r3,24(0x18)
1c005a88:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005a8c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005a90:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c005a94:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005a98:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005a9c:	2895c18c 	ld.w	$r12,$r12,1392(0x570)
1c005aa0:	29100180 	st.b	$r0,$r12,1024(0x400)
1c005aa4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005aa8:	2895918c 	ld.w	$r12,$r12,1380(0x564)
1c005aac:	29100580 	st.b	$r0,$r12,1025(0x401)
1c005ab0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ab4:	2895618c 	ld.w	$r12,$r12,1368(0x558)
1c005ab8:	29100980 	st.b	$r0,$r12,1026(0x402)
1c005abc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ac0:	2895318c 	ld.w	$r12,$r12,1356(0x54c)
1c005ac4:	29100d80 	st.b	$r0,$r12,1027(0x403)
1c005ac8:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005acc:	28956084 	ld.w	$r4,$r4,1368(0x558)
1c005ad0:	54072c00 	bl	1836(0x72c) # 1c0061fc <Queue_isEmpty>
1c005ad4:	0015008c 	move	$r12,$r4
1c005ad8:	44029580 	bnez	$r12,660(0x294) # 1c005d6c <json_to_callback+0x2f0>
1c005adc:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005ae0:	28951084 	ld.w	$r4,$r4,1348(0x544)
1c005ae4:	54076800 	bl	1896(0x768) # 1c00624c <Queue_HadUse>
1c005ae8:	0015008c 	move	$r12,$r4
1c005aec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005af0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005af4:	2894e18c 	ld.w	$r12,$r12,1336(0x538)
1c005af8:	2900018d 	st.b	$r13,$r12,0
1c005afc:	02900006 	addi.w	$r6,$r0,1024(0x400)
1c005b00:	00150005 	move	$r5,$r0
1c005b04:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005b08:	2894d084 	ld.w	$r4,$r4,1332(0x534)
1c005b0c:	57da8fff 	bl	-9588(0xfffda8c) # 1c003598 <memset>
1c005b10:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005b14:	2894618c 	ld.w	$r12,$r12,1304(0x518)
1c005b18:	2a00018c 	ld.bu	$r12,$r12,0
1c005b1c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005b20:	00150186 	move	$r6,$r12
1c005b24:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c005b28:	289450a5 	ld.w	$r5,$r5,1300(0x514)
1c005b2c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005b30:	2893d084 	ld.w	$r4,$r4,1268(0x4f4)
1c005b34:	5408c400 	bl	2244(0x8c4) # 1c0063f8 <Queue_Read>
1c005b38:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005b3c:	2893c18c 	ld.w	$r12,$r12,1264(0x4f0)
1c005b40:	2a00018c 	ld.bu	$r12,$r12,0
1c005b44:	0015018d 	move	$r13,$r12
1c005b48:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005b4c:	2893c18c 	ld.w	$r12,$r12,1264(0x4f0)
1c005b50:	0010358c 	add.w	$r12,$r12,$r13
1c005b54:	29000180 	st.b	$r0,$r12,0
1c005b58:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005b5c:	50005400 	b	84(0x54) # 1c005bb0 <json_to_callback+0x134>
1c005b60:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c005b64:	289361ad 	ld.w	$r13,$r13,1240(0x4d8)
1c005b68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b6c:	001031ac 	add.w	$r12,$r13,$r12
1c005b70:	2a00018d 	ld.bu	$r13,$r12,0
1c005b74:	0280b00c 	addi.w	$r12,$r0,44(0x2c)
1c005b78:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c005ba4 <json_to_callback+0x128>
1c005b7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b80:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005b84:	1cc7ff6e 	pcaddu12i	$r14,409595(0x63ffb)
1c005b88:	2892e1ce 	ld.w	$r14,$r14,1208(0x4b8)
1c005b8c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005b90:	001031cc 	add.w	$r12,$r14,$r12
1c005b94:	2900018d 	st.b	$r13,$r12,0
1c005b98:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005b9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ba0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005ba4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ba8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005bac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005bb0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005bb4:	2891e18c 	ld.w	$r12,$r12,1144(0x478)
1c005bb8:	2a00018c 	ld.bu	$r12,$r12,0
1c005bbc:	0015018d 	move	$r13,$r12
1c005bc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005bc4:	63ff9d8d 	blt	$r12,$r13,-100(0x3ff9c) # 1c005b60 <json_to_callback+0xe4>
1c005bc8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005bcc:	2891d18c 	ld.w	$r12,$r12,1140(0x474)
1c005bd0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005bd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005bd8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005bdc:	50005400 	b	84(0x54) # 1c005c30 <json_to_callback+0x1b4>
1c005be0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005be4:	2891c18c 	ld.w	$r12,$r12,1136(0x470)
1c005be8:	2880018d 	ld.w	$r13,$r12,0
1c005bec:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005bf0:	2891418c 	ld.w	$r12,$r12,1104(0x450)
1c005bf4:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005bf8:	0015018e 	move	$r14,$r12
1c005bfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c00:	0011398c 	sub.w	$r12,$r12,$r14
1c005c04:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005c08:	001031ac 	add.w	$r12,$r13,$r12
1c005c0c:	1cc7ff6e 	pcaddu12i	$r14,409595(0x63ffb)
1c005c10:	2890b1ce 	ld.w	$r14,$r14,1068(0x42c)
1c005c14:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005c18:	001035cd 	add.w	$r13,$r14,$r13
1c005c1c:	2a0001ad 	ld.bu	$r13,$r13,0
1c005c20:	2900018d 	st.b	$r13,$r12,0
1c005c24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c2c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005c30:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c34:	2890318c 	ld.w	$r12,$r12,1036(0x40c)
1c005c38:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005c3c:	0015018d 	move	$r13,$r12
1c005c40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c44:	63ff9d8d 	blt	$r12,$r13,-100(0x3ff9c) # 1c005be0 <json_to_callback+0x164>
1c005c48:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c4c:	2890218c 	ld.w	$r12,$r12,1032(0x408)
1c005c50:	2880018c 	ld.w	$r12,$r12,0
1c005c54:	00150185 	move	$r5,$r12
1c005c58:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005c5c:	02bf2084 	addi.w	$r4,$r4,-56(0xfc8)
1c005c60:	57c04fff 	bl	-16308(0xfffc04c) # 1c001cac <myprintf>
1c005c64:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c68:	288f618c 	ld.w	$r12,$r12,984(0x3d8)
1c005c6c:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005c70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005c78:	50005400 	b	84(0x54) # 1c005ccc <json_to_callback+0x250>
1c005c7c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c80:	288ec18c 	ld.w	$r12,$r12,944(0x3b0)
1c005c84:	2880018d 	ld.w	$r13,$r12,0
1c005c88:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005c8c:	288ed18c 	ld.w	$r12,$r12,948(0x3b4)
1c005c90:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005c94:	0015018e 	move	$r14,$r12
1c005c98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c9c:	0011398c 	sub.w	$r12,$r12,$r14
1c005ca0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005ca4:	001031ac 	add.w	$r12,$r13,$r12
1c005ca8:	1cc7ff6e 	pcaddu12i	$r14,409595(0x63ffb)
1c005cac:	288e41ce 	ld.w	$r14,$r14,912(0x390)
1c005cb0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005cb4:	001035cd 	add.w	$r13,$r14,$r13
1c005cb8:	2a0001ad 	ld.bu	$r13,$r13,0
1c005cbc:	2900018d 	st.b	$r13,$r12,0
1c005cc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005cc4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005cc8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005ccc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005cd0:	288d718c 	ld.w	$r12,$r12,860(0x35c)
1c005cd4:	2a00018c 	ld.bu	$r12,$r12,0
1c005cd8:	0015018d 	move	$r13,$r12
1c005cdc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ce0:	63ff9d8d 	blt	$r12,$r13,-100(0x3ff9c) # 1c005c7c <json_to_callback+0x200>
1c005ce4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ce8:	288d218c 	ld.w	$r12,$r12,840(0x348)
1c005cec:	2880018c 	ld.w	$r12,$r12,0
1c005cf0:	00150185 	move	$r5,$r12
1c005cf4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005cf8:	02bcb084 	addi.w	$r4,$r4,-212(0xf2c)
1c005cfc:	57bfb3ff 	bl	-16464(0xfffbfb0) # 1c001cac <myprintf>
1c005d00:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005d04:	288cb18c 	ld.w	$r12,$r12,812(0x32c)
1c005d08:	2880018c 	ld.w	$r12,$r12,0
1c005d0c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005d10:	2a00018d 	ld.bu	$r13,$r12,0
1c005d14:	0280c40c 	addi.w	$r12,$r0,49(0x31)
1c005d18:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c005d38 <json_to_callback+0x2bc>
1c005d1c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005d20:	02805c04 	addi.w	$r4,$r0,23(0x17)
1c005d24:	57b877ff 	bl	-18316(0xfffb874) # 1c001598 <gpio_write_pin>
1c005d28:	00150005 	move	$r5,$r0
1c005d2c:	02805804 	addi.w	$r4,$r0,22(0x16)
1c005d30:	57b86bff 	bl	-18328(0xfffb868) # 1c001598 <gpio_write_pin>
1c005d34:	50003800 	b	56(0x38) # 1c005d6c <json_to_callback+0x2f0>
1c005d38:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005d3c:	288bd18c 	ld.w	$r12,$r12,756(0x2f4)
1c005d40:	2880018c 	ld.w	$r12,$r12,0
1c005d44:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c005d48:	2a00018d 	ld.bu	$r13,$r12,0
1c005d4c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c005d50:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c005d6c <json_to_callback+0x2f0>
1c005d54:	00150005 	move	$r5,$r0
1c005d58:	02805c04 	addi.w	$r4,$r0,23(0x17)
1c005d5c:	57b83fff 	bl	-18372(0xfffb83c) # 1c001598 <gpio_write_pin>
1c005d60:	00150005 	move	$r5,$r0
1c005d64:	02805804 	addi.w	$r4,$r0,22(0x16)
1c005d68:	57b833ff 	bl	-18384(0xfffb830) # 1c001598 <gpio_write_pin>
1c005d6c:	03400000 	andi	$r0,$r0,0x0
1c005d70:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005d74:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005d78:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005d7c:	4c000020 	jirl	$r0,$r1,0

1c005d80 <esp8266_check_cmd>:
esp8266_check_cmd():
1c005d80:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005d84:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005d88:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005d8c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005d90:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005d94:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005d98:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005d9c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005da0:	54045c00 	bl	1116(0x45c) # 1c0061fc <Queue_isEmpty>
1c005da4:	0015008c 	move	$r12,$r4
1c005da8:	44007980 	bnez	$r12,120(0x78) # 1c005e20 <esp8266_check_cmd+0xa0>
1c005dac:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005db0:	54049c00 	bl	1180(0x49c) # 1c00624c <Queue_HadUse>
1c005db4:	0015008c 	move	$r12,$r4
1c005db8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005dbc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005dc0:	2889718c 	ld.w	$r12,$r12,604(0x25c)
1c005dc4:	2900018d 	st.b	$r13,$r12,0
1c005dc8:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c005dcc:	00150005 	move	$r5,$r0
1c005dd0:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005dd4:	288a6084 	ld.w	$r4,$r4,664(0x298)
1c005dd8:	57d7c3ff 	bl	-10304(0xfffd7c0) # 1c003598 <memset>
1c005ddc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005de0:	2888f18c 	ld.w	$r12,$r12,572(0x23c)
1c005de4:	2a00018c 	ld.bu	$r12,$r12,0
1c005de8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005dec:	00150186 	move	$r6,$r12
1c005df0:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c005df4:	2889e0a5 	ld.w	$r5,$r5,632(0x278)
1c005df8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005dfc:	5405fc00 	bl	1532(0x5fc) # 1c0063f8 <Queue_Read>
1c005e00:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005e04:	2888618c 	ld.w	$r12,$r12,536(0x218)
1c005e08:	2a00018c 	ld.bu	$r12,$r12,0
1c005e0c:	0015018d 	move	$r13,$r12
1c005e10:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005e14:	2889618c 	ld.w	$r12,$r12,600(0x258)
1c005e18:	0010358c 	add.w	$r12,$r12,$r13
1c005e1c:	29000180 	st.b	$r0,$r12,0
1c005e20:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005e24:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005e28:	28891084 	ld.w	$r4,$r4,580(0x244)
1c005e2c:	57d7cfff 	bl	-10292(0xfffd7cc) # 1c0035f8 <pstrstr>
1c005e30:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005e34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e38:	00150184 	move	$r4,$r12
1c005e3c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005e40:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005e44:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005e48:	4c000020 	jirl	$r0,$r1,0

1c005e4c <esp8266_send_cmd>:
esp8266_send_cmd():
1c005e4c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005e50:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005e54:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005e58:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005e5c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005e60:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005e64:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c005e68:	001500ec 	move	$r12,$r7
1c005e6c:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c005e70:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005e74:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005e78:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005e7c:	02b6b084 	addi.w	$r4,$r4,-596(0xdac)
1c005e80:	57be2fff 	bl	-16852(0xfffbe2c) # 1c001cac <myprintf>
1c005e84:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c005e88:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005e8c:	02b6a0a5 	addi.w	$r5,$r5,-600(0xda8)
1c005e90:	00150004 	move	$r4,$r0
1c005e94:	57c1bfff 	bl	-15940(0xfffc1bc) # 1c002050 <myprintf2>
1c005e98:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c005e9c:	40007d80 	beqz	$r12,124(0x7c) # 1c005f18 <esp8266_send_cmd+0xcc>
1c005ea0:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c005ea4:	40007580 	beqz	$r12,116(0x74) # 1c005f18 <esp8266_send_cmd+0xcc>
1c005ea8:	50003400 	b	52(0x34) # 1c005edc <esp8266_send_cmd+0x90>
1c005eac:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c005eb0:	57d6abff 	bl	-10584(0xfffd6a8) # 1c003558 <delay_ms>
1c005eb4:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c005eb8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005ebc:	57fec7ff 	bl	-316(0xffffec4) # 1c005d80 <esp8266_check_cmd>
1c005ec0:	0015008c 	move	$r12,$r4
1c005ec4:	40001980 	beqz	$r12,24(0x18) # 1c005edc <esp8266_send_cmd+0x90>
1c005ec8:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c005ecc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005ed0:	02b5a084 	addi.w	$r4,$r4,-664(0xd68)
1c005ed4:	57bddbff 	bl	-16936(0xfffbdd8) # 1c001cac <myprintf>
1c005ed8:	50001800 	b	24(0x18) # 1c005ef0 <esp8266_send_cmd+0xa4>
1c005edc:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c005ee0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005ee4:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c005ee8:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c005eec:	47ffc19f 	bnez	$r12,-64(0x7fffc0) # 1c005eac <esp8266_send_cmd+0x60>
1c005ef0:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c005ef4:	44001180 	bnez	$r12,16(0x10) # 1c005f04 <esp8266_send_cmd+0xb8>
1c005ef8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005efc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005f00:	50001800 	b	24(0x18) # 1c005f18 <esp8266_send_cmd+0xcc>
1c005f04:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c005f08:	00150185 	move	$r5,$r12
1c005f0c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005f10:	02b4d084 	addi.w	$r4,$r4,-716(0xd34)
1c005f14:	57bd9bff 	bl	-17000(0xfffbd98) # 1c001cac <myprintf>
1c005f18:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c005f1c:	00150184 	move	$r4,$r12
1c005f20:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005f24:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005f28:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005f2c:	4c000020 	jirl	$r0,$r1,0

1c005f30 <esp8266_init>:
esp8266_init():
1c005f30:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005f34:	29803061 	st.w	$r1,$r3,12(0xc)
1c005f38:	29802076 	st.w	$r22,$r3,8(0x8)
1c005f3c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005f40:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005f44:	02b43084 	addi.w	$r4,$r4,-756(0xd0c)
1c005f48:	57bd67ff 	bl	-17052(0xfffbd64) # 1c001cac <myprintf>
1c005f4c:	02825807 	addi.w	$r7,$r0,150(0x96)
1c005f50:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005f54:	02b410c6 	addi.w	$r6,$r6,-764(0xd04)
1c005f58:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005f5c:	02b400a5 	addi.w	$r5,$r5,-768(0xd00)
1c005f60:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005f64:	28841084 	ld.w	$r4,$r4,260(0x104)
1c005f68:	57fee7ff 	bl	-284(0xffffee4) # 1c005e4c <esp8266_send_cmd>
1c005f6c:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005f70:	57d5ebff 	bl	-10776(0xfffd5e8) # 1c003558 <delay_ms>
1c005f74:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005f78:	02b3a084 	addi.w	$r4,$r4,-792(0xce8)
1c005f7c:	57bd33ff 	bl	-17104(0xfffbd30) # 1c001cac <myprintf>
1c005f80:	03400000 	andi	$r0,$r0,0x0
1c005f84:	02825807 	addi.w	$r7,$r0,150(0x96)
1c005f88:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005f8c:	02b330c6 	addi.w	$r6,$r6,-820(0xccc)
1c005f90:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005f94:	02b370a5 	addi.w	$r5,$r5,-804(0xcdc)
1c005f98:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005f9c:	28833084 	ld.w	$r4,$r4,204(0xcc)
1c005fa0:	57feafff 	bl	-340(0xffffeac) # 1c005e4c <esp8266_send_cmd>
1c005fa4:	0015008c 	move	$r12,$r4
1c005fa8:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c005f84 <esp8266_init+0x54>
1c005fac:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005fb0:	57d5abff 	bl	-10840(0xfffd5a8) # 1c003558 <delay_ms>
1c005fb4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005fb8:	02b31084 	addi.w	$r4,$r4,-828(0xcc4)
1c005fbc:	57bcf3ff 	bl	-17168(0xfffbcf0) # 1c001cac <myprintf>
1c005fc0:	03400000 	andi	$r0,$r0,0x0
1c005fc4:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c005fc8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c005fcc:	02b230c6 	addi.w	$r6,$r6,-884(0xc8c)
1c005fd0:	1c000045 	pcaddu12i	$r5,2(0x2)
1c005fd4:	02b320a5 	addi.w	$r5,$r5,-824(0xcc8)
1c005fd8:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005fdc:	28823084 	ld.w	$r4,$r4,140(0x8c)
1c005fe0:	57fe6fff 	bl	-404(0xffffe6c) # 1c005e4c <esp8266_send_cmd>
1c005fe4:	0015008c 	move	$r12,$r4
1c005fe8:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c005fc4 <esp8266_init+0x94>
1c005fec:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005ff0:	57d56bff 	bl	-10904(0xfffd568) # 1c003558 <delay_ms>
1c005ff4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005ff8:	02b33084 	addi.w	$r4,$r4,-820(0xccc)
1c005ffc:	57bcb3ff 	bl	-17232(0xfffbcb0) # 1c001cac <myprintf>
1c006000:	03400000 	andi	$r0,$r0,0x0
1c006004:	02825807 	addi.w	$r7,$r0,150(0x96)
1c006008:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00600c:	02b130c6 	addi.w	$r6,$r6,-948(0xc4c)
1c006010:	1c000045 	pcaddu12i	$r5,2(0x2)
1c006014:	02b490a5 	addi.w	$r5,$r5,-732(0xd24)
1c006018:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00601c:	28813084 	ld.w	$r4,$r4,76(0x4c)
1c006020:	57fe2fff 	bl	-468(0xffffe2c) # 1c005e4c <esp8266_send_cmd>
1c006024:	0015008c 	move	$r12,$r4
1c006028:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c006004 <esp8266_init+0xd4>
1c00602c:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006030:	57d52bff 	bl	-10968(0xfffd528) # 1c003558 <delay_ms>
1c006034:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006038:	02b5f084 	addi.w	$r4,$r4,-644(0xd7c)
1c00603c:	57bc73ff 	bl	-17296(0xfffbc70) # 1c001cac <myprintf>
1c006040:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c006044:	1c000046 	pcaddu12i	$r6,2(0x2)
1c006048:	02b040c6 	addi.w	$r6,$r6,-1008(0xc10)
1c00604c:	1c000045 	pcaddu12i	$r5,2(0x2)
1c006050:	02b720a5 	addi.w	$r5,$r5,-568(0xdc8)
1c006054:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006058:	28804084 	ld.w	$r4,$r4,16(0x10)
1c00605c:	57fdf3ff 	bl	-528(0xffffdf0) # 1c005e4c <esp8266_send_cmd>
1c006060:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006064:	57d4f7ff 	bl	-11020(0xfffd4f4) # 1c003558 <delay_ms>
1c006068:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00606c:	02b85084 	addi.w	$r4,$r4,-492(0xe14)
1c006070:	57bc3fff 	bl	-17348(0xfffbc3c) # 1c001cac <myprintf>
1c006074:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c006078:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00607c:	02af70c6 	addi.w	$r6,$r6,-1060(0xbdc)
1c006080:	1c000045 	pcaddu12i	$r5,2(0x2)
1c006084:	02b910a5 	addi.w	$r5,$r5,-444(0xe44)
1c006088:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00608c:	28bf7084 	ld.w	$r4,$r4,-36(0xfdc)
1c006090:	57fdbfff 	bl	-580(0xffffdbc) # 1c005e4c <esp8266_send_cmd>
1c006094:	02819004 	addi.w	$r4,$r0,100(0x64)
1c006098:	57d4c3ff 	bl	-11072(0xfffd4c0) # 1c003558 <delay_ms>
1c00609c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0060a0:	02b9b084 	addi.w	$r4,$r4,-404(0xe6c)
1c0060a4:	57bc0bff 	bl	-17400(0xfffbc08) # 1c001cac <myprintf>
1c0060a8:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c0060ac:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0060b0:	02aea0c6 	addi.w	$r6,$r6,-1112(0xba8)
1c0060b4:	1c000045 	pcaddu12i	$r5,2(0x2)
1c0060b8:	02b9a0a5 	addi.w	$r5,$r5,-408(0xe68)
1c0060bc:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0060c0:	28bea084 	ld.w	$r4,$r4,-88(0xfa8)
1c0060c4:	57fd8bff 	bl	-632(0xffffd88) # 1c005e4c <esp8266_send_cmd>
1c0060c8:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0060cc:	57d48fff 	bl	-11124(0xfffd48c) # 1c003558 <delay_ms>
1c0060d0:	03400000 	andi	$r0,$r0,0x0
1c0060d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0060d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0060dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0060e0:	4c000020 	jirl	$r0,$r1,0

1c0060e4 <esp8266_send_isno>:
esp8266_send_isno():
1c0060e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0060e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0060ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0060f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0060f4:	1c000045 	pcaddu12i	$r5,2(0x2)
1c0060f8:	02b970a5 	addi.w	$r5,$r5,-420(0xe5c)
1c0060fc:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006100:	28bda084 	ld.w	$r4,$r4,-152(0xf68)
1c006104:	57fc7fff 	bl	-900(0xffffc7c) # 1c005d80 <esp8266_check_cmd>
1c006108:	0015008c 	move	$r12,$r4
1c00610c:	40003d80 	beqz	$r12,60(0x3c) # 1c006148 <esp8266_send_isno+0x64>
1c006110:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006114:	28bd6084 	ld.w	$r4,$r4,-168(0xf58)
1c006118:	57d7c7ff 	bl	-10300(0xfffd7c4) # 1c0038dc <strlen>
1c00611c:	0015008c 	move	$r12,$r4
1c006120:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006124:	00150186 	move	$r6,$r12
1c006128:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c00612c:	28bd00a5 	ld.w	$r5,$r5,-192(0xf40)
1c006130:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006134:	28bbc084 	ld.w	$r4,$r4,-272(0xef0)
1c006138:	5401e400 	bl	484(0x1e4) # 1c00631c <Queue_Wirte>
1c00613c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c006140:	02b89084 	addi.w	$r4,$r4,-476(0xe24)
1c006144:	57bb6bff 	bl	-17560(0xfffbb68) # 1c001cac <myprintf>
1c006148:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c00614c:	00150005 	move	$r5,$r0
1c006150:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006154:	28bc6084 	ld.w	$r4,$r4,-232(0xf18)
1c006158:	57d443ff 	bl	-11200(0xfffd440) # 1c003598 <memset>
1c00615c:	03400000 	andi	$r0,$r0,0x0
1c006160:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006164:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006168:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00616c:	4c000020 	jirl	$r0,$r1,0

1c006170 <esp8266_send_isno_2>:
esp8266_send_isno_2():
1c006170:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006174:	29803061 	st.w	$r1,$r3,12(0xc)
1c006178:	29802076 	st.w	$r22,$r3,8(0x8)
1c00617c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006180:	1c000045 	pcaddu12i	$r5,2(0x2)
1c006184:	02b740a5 	addi.w	$r5,$r5,-560(0xdd0)
1c006188:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00618c:	28bb8084 	ld.w	$r4,$r4,-288(0xee0)
1c006190:	57d46bff 	bl	-11160(0xfffd468) # 1c0035f8 <pstrstr>
1c006194:	0015008c 	move	$r12,$r4
1c006198:	40003d80 	beqz	$r12,60(0x3c) # 1c0061d4 <esp8266_send_isno_2+0x64>
1c00619c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0061a0:	28bb3084 	ld.w	$r4,$r4,-308(0xecc)
1c0061a4:	57d73bff 	bl	-10440(0xfffd738) # 1c0038dc <strlen>
1c0061a8:	0015008c 	move	$r12,$r4
1c0061ac:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0061b0:	00150186 	move	$r6,$r12
1c0061b4:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0061b8:	28bad0a5 	ld.w	$r5,$r5,-332(0xeb4)
1c0061bc:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0061c0:	28b99084 	ld.w	$r4,$r4,-412(0xe64)
1c0061c4:	54015800 	bl	344(0x158) # 1c00631c <Queue_Wirte>
1c0061c8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0061cc:	02b66084 	addi.w	$r4,$r4,-616(0xd98)
1c0061d0:	57badfff 	bl	-17700(0xfffbadc) # 1c001cac <myprintf>
1c0061d4:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c0061d8:	00150005 	move	$r5,$r0
1c0061dc:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0061e0:	28ba3084 	ld.w	$r4,$r4,-372(0xe8c)
1c0061e4:	57d3b7ff 	bl	-11340(0xfffd3b4) # 1c003598 <memset>
1c0061e8:	03400000 	andi	$r0,$r0,0x0
1c0061ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0061f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0061f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0061f8:	4c000020 	jirl	$r0,$r1,0

1c0061fc <Queue_isEmpty>:
Queue_isEmpty():
1c0061fc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006200:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006204:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006208:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00620c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006210:	44000d80 	bnez	$r12,12(0xc) # 1c00621c <Queue_isEmpty+0x20>
1c006214:	0015000c 	move	$r12,$r0
1c006218:	50002400 	b	36(0x24) # 1c00623c <Queue_isEmpty+0x40>
1c00621c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006220:	2a40018d 	ld.hu	$r13,$r12,0
1c006224:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006228:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c00622c:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c006238 <Queue_isEmpty+0x3c>
1c006230:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006234:	50000800 	b	8(0x8) # 1c00623c <Queue_isEmpty+0x40>
1c006238:	0015000c 	move	$r12,$r0
1c00623c:	00150184 	move	$r4,$r12
1c006240:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006244:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006248:	4c000020 	jirl	$r0,$r1,0

1c00624c <Queue_HadUse>:
Queue_HadUse():
1c00624c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006250:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006254:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006258:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00625c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006260:	44000d80 	bnez	$r12,12(0xc) # 1c00626c <Queue_HadUse+0x20>
1c006264:	0015000c 	move	$r12,$r0
1c006268:	50003800 	b	56(0x38) # 1c0062a0 <Queue_HadUse+0x54>
1c00626c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006270:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c006274:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006278:	2a40018c 	ld.hu	$r12,$r12,0
1c00627c:	001131ac 	sub.w	$r12,$r13,$r12
1c006280:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006284:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c006288:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00628c:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c006290:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c006294:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00629c <Queue_HadUse+0x50>
1c006298:	002a0007 	break	0x7
1c00629c:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0062a0:	00150184 	move	$r4,$r12
1c0062a4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0062a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0062ac:	4c000020 	jirl	$r0,$r1,0

1c0062b0 <Queue_NoUse>:
Queue_NoUse():
1c0062b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0062b4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0062b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0062bc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0062c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0062c4:	44000d80 	bnez	$r12,12(0xc) # 1c0062d0 <Queue_NoUse+0x20>
1c0062c8:	0015000c 	move	$r12,$r0
1c0062cc:	50004000 	b	64(0x40) # 1c00630c <Queue_NoUse+0x5c>
1c0062d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0062d4:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c0062d8:	0015018d 	move	$r13,$r12
1c0062dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0062e0:	2a40018c 	ld.hu	$r12,$r12,0
1c0062e4:	001131ac 	sub.w	$r12,$r13,$r12
1c0062e8:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c0062ec:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0062f0:	0020b1ae 	mod.w	$r14,$r13,$r12
1c0062f4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0062fc <Queue_NoUse+0x4c>
1c0062f8:	002a0007 	break	0x7
1c0062fc:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c006300:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c006304:	001131ac 	sub.w	$r12,$r13,$r12
1c006308:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00630c:	00150184 	move	$r4,$r12
1c006310:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006314:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006318:	4c000020 	jirl	$r0,$r1,0

1c00631c <Queue_Wirte>:
Queue_Wirte():
1c00631c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006320:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006324:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006328:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00632c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006330:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006334:	001500cc 	move	$r12,$r6
1c006338:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c00633c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006340:	44000d80 	bnez	$r12,12(0xc) # 1c00634c <Queue_Wirte+0x30>
1c006344:	0015000c 	move	$r12,$r0
1c006348:	50009c00 	b	156(0x9c) # 1c0063e4 <Queue_Wirte+0xc8>
1c00634c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c006350:	57ff63ff 	bl	-160(0xfffff60) # 1c0062b0 <Queue_NoUse>
1c006354:	0015008c 	move	$r12,$r4
1c006358:	0015018d 	move	$r13,$r12
1c00635c:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006360:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c00636c <Queue_Wirte+0x50>
1c006364:	0015000c 	move	$r12,$r0
1c006368:	50007c00 	b	124(0x7c) # 1c0063e4 <Queue_Wirte+0xc8>
1c00636c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006370:	50006400 	b	100(0x64) # 1c0063d4 <Queue_Wirte+0xb8>
1c006374:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006378:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00637c:	001031ac 	add.w	$r12,$r13,$r12
1c006380:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006384:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c006388:	001501ae 	move	$r14,$r13
1c00638c:	2a00018d 	ld.bu	$r13,$r12,0
1c006390:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006394:	0010398c 	add.w	$r12,$r12,$r14
1c006398:	2900118d 	st.b	$r13,$r12,4(0x4)
1c00639c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0063a0:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c0063a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0063a8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0063ac:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0063b0:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0063b4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0063bc <Queue_Wirte+0xa0>
1c0063b8:	002a0007 	break	0x7
1c0063bc:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c0063c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0063c4:	2940098d 	st.h	$r13,$r12,2(0x2)
1c0063c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0063cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0063d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0063d4:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c0063d8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0063dc:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c006374 <Queue_Wirte+0x58>
1c0063e0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0063e4:	00150184 	move	$r4,$r12
1c0063e8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0063ec:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0063f0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0063f4:	4c000020 	jirl	$r0,$r1,0

1c0063f8 <Queue_Read>:
Queue_Read():
1c0063f8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0063fc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006400:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006404:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006408:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00640c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006410:	001500cc 	move	$r12,$r6
1c006414:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c006418:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00641c:	44000d80 	bnez	$r12,12(0xc) # 1c006428 <Queue_Read+0x30>
1c006420:	0015000c 	move	$r12,$r0
1c006424:	50009c00 	b	156(0x9c) # 1c0064c0 <Queue_Read+0xc8>
1c006428:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00642c:	57fe23ff 	bl	-480(0xffffe20) # 1c00624c <Queue_HadUse>
1c006430:	0015008c 	move	$r12,$r4
1c006434:	0015018d 	move	$r13,$r12
1c006438:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c00643c:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c006448 <Queue_Read+0x50>
1c006440:	0015000c 	move	$r12,$r0
1c006444:	50007c00 	b	124(0x7c) # 1c0064c0 <Queue_Read+0xc8>
1c006448:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00644c:	50006400 	b	100(0x64) # 1c0064b0 <Queue_Read+0xb8>
1c006450:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006454:	2a40018c 	ld.hu	$r12,$r12,0
1c006458:	0015018e 	move	$r14,$r12
1c00645c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006460:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006464:	001031ac 	add.w	$r12,$r13,$r12
1c006468:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00646c:	001039ad 	add.w	$r13,$r13,$r14
1c006470:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c006474:	2900018d 	st.b	$r13,$r12,0
1c006478:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00647c:	2a40018c 	ld.hu	$r12,$r12,0
1c006480:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006484:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006488:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c00648c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c006490:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006498 <Queue_Read+0xa0>
1c006494:	002a0007 	break	0x7
1c006498:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c00649c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0064a0:	2940018d 	st.h	$r13,$r12,0
1c0064a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0064a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0064ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0064b0:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c0064b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0064b8:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c006450 <Queue_Read+0x58>
1c0064bc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0064c0:	00150184 	move	$r4,$r12
1c0064c4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0064c8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0064cc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0064d0:	4c000020 	jirl	$r0,$r1,0

1c0064d4 <Humidity_process_init>:
Humidity_process_init():
1c0064d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0064d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0064dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0064e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0064e4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0064e8:	28ad8084 	ld.w	$r4,$r4,-1184(0xb60)
1c0064ec:	54006000 	bl	96(0x60) # 1c00654c <Humidity_System_Init>
1c0064f0:	03400000 	andi	$r0,$r0,0x0
1c0064f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0064f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0064fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006500:	4c000020 	jirl	$r0,$r1,0

1c006504 <Humidity_process>:
Humidity_process():
1c006504:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006508:	29803061 	st.w	$r1,$r3,12(0xc)
1c00650c:	29802076 	st.w	$r22,$r3,8(0x8)
1c006510:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006514:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006518:	28acc084 	ld.w	$r4,$r4,-1232(0xb30)
1c00651c:	5400a800 	bl	168(0xa8) # 1c0065c4 <Humidity_SHT10_Get>
1c006520:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006524:	28ac9084 	ld.w	$r4,$r4,-1244(0xb24)
1c006528:	54009c00 	bl	156(0x9c) # 1c0065c4 <Humidity_SHT10_Get>
1c00652c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006530:	28ac6084 	ld.w	$r4,$r4,-1256(0xb18)
1c006534:	54029400 	bl	660(0x294) # 1c0067c8 <Humidity_value_feedback>
1c006538:	03400000 	andi	$r0,$r0,0x0
1c00653c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006540:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006544:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006548:	4c000020 	jirl	$r0,$r1,0

1c00654c <Humidity_System_Init>:
Humidity_System_Init():
1c00654c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006550:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006554:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006558:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00655c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006560:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006564:	29402980 	st.h	$r0,$r12,10(0xa)
1c006568:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00656c:	29803180 	st.w	$r0,$r12,12(0xc)
1c006570:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006574:	50002400 	b	36(0x24) # 1c006598 <Humidity_System_Init+0x4c>
1c006578:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00657c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006580:	0040858c 	slli.w	$r12,$r12,0x1
1c006584:	001031ac 	add.w	$r12,$r13,$r12
1c006588:	29400180 	st.h	$r0,$r12,0
1c00658c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006590:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006594:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006598:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00659c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0065a0:	67ffd98d 	bge	$r12,$r13,-40(0x3ffd8) # 1c006578 <Humidity_System_Init+0x2c>
1c0065a4:	57d533ff 	bl	-10960(0xfffd530) # 1c003ad4 <Adc_powerOn>
1c0065a8:	00150004 	move	$r4,$r0
1c0065ac:	57d57fff 	bl	-10884(0xfffd57c) # 1c003b28 <Adc_open>
1c0065b0:	03400000 	andi	$r0,$r0,0x0
1c0065b4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0065b8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0065bc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0065c0:	4c000020 	jirl	$r0,$r1,0

1c0065c4 <Humidity_SHT10_Get>:
Humidity_SHT10_Get():
1c0065c4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0065c8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0065cc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0065d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0065d4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0065d8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0065dc:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0065e0:	297f8ac0 	st.h	$r0,$r22,-30(0xfe2)
1c0065e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0065e8:	29402980 	st.h	$r0,$r12,10(0xa)
1c0065ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0065f0:	29803180 	st.w	$r0,$r12,12(0xc)
1c0065f4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0065f8:	50002400 	b	36(0x24) # 1c00661c <Humidity_SHT10_Get+0x58>
1c0065fc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006600:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006604:	0040858c 	slli.w	$r12,$r12,0x1
1c006608:	001031ac 	add.w	$r12,$r13,$r12
1c00660c:	29400180 	st.h	$r0,$r12,0
1c006610:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c006614:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006618:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00661c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c006620:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006624:	67ffd98d 	bge	$r12,$r13,-40(0x3ffd8) # 1c0065fc <Humidity_SHT10_Get+0x38>
1c006628:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00662c:	50003400 	b	52(0x34) # 1c006660 <Humidity_SHT10_Get+0x9c>
1c006630:	00150004 	move	$r4,$r0
1c006634:	57d5a7ff 	bl	-10844(0xfffd5a4) # 1c003bd8 <Adc_Measure>
1c006638:	0015008c 	move	$r12,$r4
1c00663c:	0015018e 	move	$r14,$r12
1c006640:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006644:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006648:	0040858c 	slli.w	$r12,$r12,0x1
1c00664c:	001031ac 	add.w	$r12,$r13,$r12
1c006650:	2940018e 	st.h	$r14,$r12,0
1c006654:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006658:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00665c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006660:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006664:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006668:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c006630 <Humidity_SHT10_Get+0x6c>
1c00666c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006670:	5000c800 	b	200(0xc8) # 1c006738 <Humidity_SHT10_Get+0x174>
1c006674:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c006678:	5000a000 	b	160(0xa0) # 1c006718 <Humidity_SHT10_Get+0x154>
1c00667c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006680:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006684:	0040858c 	slli.w	$r12,$r12,0x1
1c006688:	001031ac 	add.w	$r12,$r13,$r12
1c00668c:	2a40018d 	ld.hu	$r13,$r12,0
1c006690:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006694:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006698:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c00669c:	0040858c 	slli.w	$r12,$r12,0x1
1c0066a0:	001031cc 	add.w	$r12,$r14,$r12
1c0066a4:	2a40018c 	ld.hu	$r12,$r12,0
1c0066a8:	6c00658d 	bgeu	$r12,$r13,100(0x64) # 1c00670c <Humidity_SHT10_Get+0x148>
1c0066ac:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0066b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0066b4:	0040858c 	slli.w	$r12,$r12,0x1
1c0066b8:	001031ac 	add.w	$r12,$r13,$r12
1c0066bc:	2a40018c 	ld.hu	$r12,$r12,0
1c0066c0:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c0066c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0066c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0066cc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0066d0:	0040858c 	slli.w	$r12,$r12,0x1
1c0066d4:	001031ac 	add.w	$r12,$r13,$r12
1c0066d8:	2a40018d 	ld.hu	$r13,$r12,0
1c0066dc:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c0066e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0066e4:	0040858c 	slli.w	$r12,$r12,0x1
1c0066e8:	001031cc 	add.w	$r12,$r14,$r12
1c0066ec:	2940018d 	st.h	$r13,$r12,0
1c0066f0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0066f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0066f8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0066fc:	0040858c 	slli.w	$r12,$r12,0x1
1c006700:	001031ac 	add.w	$r12,$r13,$r12
1c006704:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c006708:	2940018d 	st.h	$r13,$r12,0
1c00670c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c006710:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006714:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c006718:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c00671c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006720:	001131ac 	sub.w	$r12,$r13,$r12
1c006724:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c006728:	63ff55ac 	blt	$r13,$r12,-172(0x3ff54) # 1c00667c <Humidity_SHT10_Get+0xb8>
1c00672c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006730:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006734:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006738:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00673c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006740:	67ff358d 	bge	$r12,$r13,-204(0x3ff34) # 1c006674 <Humidity_SHT10_Get+0xb0>
1c006744:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006748:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00674c:	50003800 	b	56(0x38) # 1c006784 <Humidity_SHT10_Get+0x1c0>
1c006750:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006754:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c006758:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c00675c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006760:	004085ad 	slli.w	$r13,$r13,0x1
1c006764:	001035cd 	add.w	$r13,$r14,$r13
1c006768:	2a4001ad 	ld.hu	$r13,$r13,0
1c00676c:	0010358d 	add.w	$r13,$r12,$r13
1c006770:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006774:	2980318d 	st.w	$r13,$r12,12(0xc)
1c006778:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00677c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006780:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006784:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006788:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00678c:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c006750 <Humidity_SHT10_Get+0x18c>
1c006790:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006794:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c006798:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c00679c:	002131ae 	div.wu	$r14,$r13,$r12
1c0067a0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0067a8 <Humidity_SHT10_Get+0x1e4>
1c0067a4:	002a0007 	break	0x7
1c0067a8:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c0067ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0067b0:	2940298d 	st.h	$r13,$r12,10(0xa)
1c0067b4:	03400000 	andi	$r0,$r0,0x0
1c0067b8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0067bc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0067c0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0067c4:	4c000020 	jirl	$r0,$r1,0

1c0067c8 <Humidity_value_feedback>:
Humidity_value_feedback():
1c0067c8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0067cc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0067d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0067d4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0067d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067dc:	2a40298c 	ld.hu	$r12,$r12,10(0xa)
1c0067e0:	03bffc0d 	ori	$r13,$r0,0xfff
1c0067e4:	001131ac 	sub.w	$r12,$r13,$r12
1c0067e8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0067ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067f0:	2940418d 	st.h	$r13,$r12,16(0x10)
1c0067f4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0067f8:	2a40418c 	ld.hu	$r12,$r12,16(0x10)
1c0067fc:	0015018d 	move	$r13,$r12
1c006800:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c006804:	001c31ad 	mul.w	$r13,$r13,$r12
1c006808:	03bffc0c 	ori	$r12,$r0,0xfff
1c00680c:	002031ae 	div.w	$r14,$r13,$r12
1c006810:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006818 <Humidity_value_feedback+0x50>
1c006814:	002a0007 	break	0x7
1c006818:	001501cd 	move	$r13,$r14
1c00681c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006820:	2980518d 	st.w	$r13,$r12,20(0x14)
1c006824:	03400000 	andi	$r0,$r0,0x0
1c006828:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00682c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006830:	4c000020 	jirl	$r0,$r1,0

1c006834 <humidity_type_Piont>:
humidity_type_Piont():
1c006834:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006838:	29803076 	st.w	$r22,$r3,12(0xc)
1c00683c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006840:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006844:	28a0118c 	ld.w	$r12,$r12,-2044(0x804)
1c006848:	00150184 	move	$r4,$r12
1c00684c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c006850:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006854:	4c000020 	jirl	$r0,$r1,0

1c006858 <RS485_Recieve_Callback>:
RS485_Recieve_Callback():
1c006858:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00685c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006860:	29806076 	st.w	$r22,$r3,24(0x18)
1c006864:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006868:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c00686c:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c006870:	57c043ff 	bl	-16320(0xfffc040) # 1c0028b0 <UART_ReceiveData>
1c006874:	0015008c 	move	$r12,$r4
1c006878:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c00687c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006880:	029ed98c 	addi.w	$r12,$r12,1974(0x7b6)
1c006884:	2a00018c 	ld.bu	$r12,$r12,0
1c006888:	44008580 	bnez	$r12,132(0x84) # 1c00690c <RS485_Recieve_Callback+0xb4>
1c00688c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c006890:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006894:	5c0039ac 	bne	$r13,$r12,56(0x38) # 1c0068cc <RS485_Recieve_Callback+0x74>
1c006898:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00689c:	289ec18c 	ld.w	$r12,$r12,1968(0x7b0)
1c0068a0:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0068a4:	2900018d 	st.b	$r13,$r12,0
1c0068a8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0068ac:	029e2d8c 	addi.w	$r12,$r12,1931(0x78b)
1c0068b0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0068b4:	2900018d 	st.b	$r13,$r12,0
1c0068b8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0068bc:	029de98c 	addi.w	$r12,$r12,1914(0x77a)
1c0068c0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0068c4:	2900018d 	st.b	$r13,$r12,0
1c0068c8:	50014000 	b	320(0x140) # 1c006a08 <RS485_Recieve_Callback+0x1b0>
1c0068cc:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0068d0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0068d4:	5c0135ac 	bne	$r13,$r12,308(0x134) # 1c006a08 <RS485_Recieve_Callback+0x1b0>
1c0068d8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0068dc:	289dc18c 	ld.w	$r12,$r12,1904(0x770)
1c0068e0:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0068e4:	2900018d 	st.b	$r13,$r12,0
1c0068e8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0068ec:	029d2d8c 	addi.w	$r12,$r12,1867(0x74b)
1c0068f0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0068f4:	2900018d 	st.b	$r13,$r12,0
1c0068f8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0068fc:	029ce98c 	addi.w	$r12,$r12,1850(0x73a)
1c006900:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c006904:	2900018d 	st.b	$r13,$r12,0
1c006908:	50010000 	b	256(0x100) # 1c006a08 <RS485_Recieve_Callback+0x1b0>
1c00690c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006910:	029c998c 	addi.w	$r12,$r12,1830(0x726)
1c006914:	2a00018d 	ld.bu	$r13,$r12,0
1c006918:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00691c:	5c0071ac 	bne	$r13,$r12,112(0x70) # 1c00698c <RS485_Recieve_Callback+0x134>
1c006920:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006924:	029c4d8c 	addi.w	$r12,$r12,1811(0x713)
1c006928:	2a00018c 	ld.bu	$r12,$r12,0
1c00692c:	0015018d 	move	$r13,$r12
1c006930:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006934:	289c618c 	ld.w	$r12,$r12,1816(0x718)
1c006938:	0010358c 	add.w	$r12,$r12,$r13
1c00693c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c006940:	2900018d 	st.b	$r13,$r12,0
1c006944:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006948:	029bbd8c 	addi.w	$r12,$r12,1775(0x6ef)
1c00694c:	2a00018c 	ld.bu	$r12,$r12,0
1c006950:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006954:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006958:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00695c:	029b6d8c 	addi.w	$r12,$r12,1755(0x6db)
1c006960:	2900018d 	st.b	$r13,$r12,0
1c006964:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006968:	029b3d8c 	addi.w	$r12,$r12,1743(0x6cf)
1c00696c:	2a00018d 	ld.bu	$r13,$r12,0
1c006970:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c006974:	6c00958d 	bgeu	$r12,$r13,148(0x94) # 1c006a08 <RS485_Recieve_Callback+0x1b0>
1c006978:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00697c:	029ae98c 	addi.w	$r12,$r12,1722(0x6ba)
1c006980:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c006984:	2900018d 	st.b	$r13,$r12,0
1c006988:	50008000 	b	128(0x80) # 1c006a08 <RS485_Recieve_Callback+0x1b0>
1c00698c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006990:	029a998c 	addi.w	$r12,$r12,1702(0x6a6)
1c006994:	2a00018d 	ld.bu	$r13,$r12,0
1c006998:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00699c:	5c006dac 	bne	$r13,$r12,108(0x6c) # 1c006a08 <RS485_Recieve_Callback+0x1b0>
1c0069a0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0069a4:	029a4d8c 	addi.w	$r12,$r12,1683(0x693)
1c0069a8:	2a00018c 	ld.bu	$r12,$r12,0
1c0069ac:	0015018d 	move	$r13,$r12
1c0069b0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0069b4:	289a618c 	ld.w	$r12,$r12,1688(0x698)
1c0069b8:	0010358c 	add.w	$r12,$r12,$r13
1c0069bc:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0069c0:	2900018d 	st.b	$r13,$r12,0
1c0069c4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0069c8:	0299bd8c 	addi.w	$r12,$r12,1647(0x66f)
1c0069cc:	2a00018c 	ld.bu	$r12,$r12,0
1c0069d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0069d4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0069d8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0069dc:	02996d8c 	addi.w	$r12,$r12,1627(0x65b)
1c0069e0:	2900018d 	st.b	$r13,$r12,0
1c0069e4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0069e8:	02993d8c 	addi.w	$r12,$r12,1615(0x64f)
1c0069ec:	2a00018d 	ld.bu	$r13,$r12,0
1c0069f0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0069f4:	6c00158d 	bgeu	$r12,$r13,20(0x14) # 1c006a08 <RS485_Recieve_Callback+0x1b0>
1c0069f8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0069fc:	0298e98c 	addi.w	$r12,$r12,1594(0x63a)
1c006a00:	0280500d 	addi.w	$r13,$r0,20(0x14)
1c006a04:	2900018d 	st.b	$r13,$r12,0
1c006a08:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006a0c:	0298a98c 	addi.w	$r12,$r12,1578(0x62a)
1c006a10:	2a00018d 	ld.bu	$r13,$r12,0
1c006a14:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c006a18:	5c0101ac 	bne	$r13,$r12,256(0x100) # 1c006b18 <RS485_Recieve_Callback+0x2c0>
1c006a1c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006a20:	50002c00 	b	44(0x2c) # 1c006a4c <RS485_Recieve_Callback+0x1f4>
1c006a24:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c006a28:	289891ad 	ld.w	$r13,$r13,1572(0x624)
1c006a2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a30:	001031ac 	add.w	$r12,$r13,$r12
1c006a34:	2a00018c 	ld.bu	$r12,$r12,0
1c006a38:	00150184 	move	$r4,$r12
1c006a3c:	57c087ff 	bl	-16252(0xfffc084) # 1c002ac0 <Uart1_send>
1c006a40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006a44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006a48:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006a4c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006a50:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c006a54:	67ffd18d 	bge	$r12,$r13,-48(0x3ffd0) # 1c006a24 <RS485_Recieve_Callback+0x1cc>
1c006a58:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006a5c:	2897c18c 	ld.w	$r12,$r12,1520(0x5f0)
1c006a60:	2a001d8c 	ld.bu	$r12,$r12,7(0x7)
1c006a64:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c006a68:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006a6c:	2897818c 	ld.w	$r12,$r12,1504(0x5e0)
1c006a70:	2a00218c 	ld.bu	$r12,$r12,8(0x8)
1c006a74:	293fa6cc 	st.b	$r12,$r22,-23(0xfe9)
1c006a78:	02801c05 	addi.w	$r5,$r0,7(0x7)
1c006a7c:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006a80:	28973084 	ld.w	$r4,$r4,1484(0x5cc)
1c006a84:	5402b800 	bl	696(0x2b8) # 1c006d3c <getModbusCRC16>
1c006a88:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006a8c:	2897018c 	ld.w	$r12,$r12,1472(0x5c0)
1c006a90:	2a001d8c 	ld.bu	$r12,$r12,7(0x7)
1c006a94:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c006a98:	5c003dac 	bne	$r13,$r12,60(0x3c) # 1c006ad4 <RS485_Recieve_Callback+0x27c>
1c006a9c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006aa0:	2896b18c 	ld.w	$r12,$r12,1452(0x5ac)
1c006aa4:	2a00218c 	ld.bu	$r12,$r12,8(0x8)
1c006aa8:	2a3fa6cd 	ld.bu	$r13,$r22,-23(0xfe9)
1c006aac:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006ad4 <RS485_Recieve_Callback+0x27c>
1c006ab0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006ab4:	02960d8c 	addi.w	$r12,$r12,1411(0x583)
1c006ab8:	2a00018c 	ld.bu	$r12,$r12,0
1c006abc:	1cc7ff46 	pcaddu12i	$r6,409594(0x63ffa)
1c006ac0:	2895e0c6 	ld.w	$r6,$r6,1400(0x578)
1c006ac4:	00150185 	move	$r5,$r12
1c006ac8:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006acc:	28960084 	ld.w	$r4,$r4,1408(0x580)
1c006ad0:	54010400 	bl	260(0x104) # 1c006bd4 <Determine_Temp_Hum_Data>
1c006ad4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006ad8:	2895d18c 	ld.w	$r12,$r12,1396(0x574)
1c006adc:	2a001d8c 	ld.bu	$r12,$r12,7(0x7)
1c006ae0:	00150184 	move	$r4,$r12
1c006ae4:	57bfdfff 	bl	-16420(0xfffbfdc) # 1c002ac0 <Uart1_send>
1c006ae8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006aec:	2895818c 	ld.w	$r12,$r12,1376(0x560)
1c006af0:	2a00218c 	ld.bu	$r12,$r12,8(0x8)
1c006af4:	00150184 	move	$r4,$r12
1c006af8:	57bfcbff 	bl	-16440(0xfffbfc8) # 1c002ac0 <Uart1_send>
1c006afc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006b00:	0294dd8c 	addi.w	$r12,$r12,1335(0x537)
1c006b04:	29000180 	st.b	$r0,$r12,0
1c006b08:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006b0c:	0294a98c 	addi.w	$r12,$r12,1322(0x52a)
1c006b10:	29000180 	st.b	$r0,$r12,0
1c006b14:	5000ac00 	b	172(0xac) # 1c006bc0 <RS485_Recieve_Callback+0x368>
1c006b18:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006b1c:	0294698c 	addi.w	$r12,$r12,1306(0x51a)
1c006b20:	2a00018d 	ld.bu	$r13,$r12,0
1c006b24:	0280500c 	addi.w	$r12,$r0,20(0x14)
1c006b28:	5c0099ac 	bne	$r13,$r12,152(0x98) # 1c006bc0 <RS485_Recieve_Callback+0x368>
1c006b2c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006b30:	2894718c 	ld.w	$r12,$r12,1308(0x51c)
1c006b34:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c006b38:	293fa2cc 	st.b	$r12,$r22,-24(0xfe8)
1c006b3c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006b40:	2894318c 	ld.w	$r12,$r12,1292(0x50c)
1c006b44:	2a001d8c 	ld.bu	$r12,$r12,7(0x7)
1c006b48:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c006b4c:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006b50:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006b54:	2893e084 	ld.w	$r4,$r4,1272(0x4f8)
1c006b58:	5401e400 	bl	484(0x1e4) # 1c006d3c <getModbusCRC16>
1c006b5c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006b60:	2893b18c 	ld.w	$r12,$r12,1260(0x4ec)
1c006b64:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c006b68:	2a3fa2cd 	ld.bu	$r13,$r22,-24(0xfe8)
1c006b6c:	5c003dac 	bne	$r13,$r12,60(0x3c) # 1c006ba8 <RS485_Recieve_Callback+0x350>
1c006b70:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006b74:	2893618c 	ld.w	$r12,$r12,1240(0x4d8)
1c006b78:	2a001d8c 	ld.bu	$r12,$r12,7(0x7)
1c006b7c:	2a3f9ecd 	ld.bu	$r13,$r22,-25(0xfe7)
1c006b80:	5c0029ac 	bne	$r13,$r12,40(0x28) # 1c006ba8 <RS485_Recieve_Callback+0x350>
1c006b84:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006b88:	0292bd8c 	addi.w	$r12,$r12,1199(0x4af)
1c006b8c:	2a00018c 	ld.bu	$r12,$r12,0
1c006b90:	1cc7ff46 	pcaddu12i	$r6,409594(0x63ffa)
1c006b94:	289310c6 	ld.w	$r6,$r6,1220(0x4c4)
1c006b98:	00150185 	move	$r5,$r12
1c006b9c:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006ba0:	2892b084 	ld.w	$r4,$r4,1196(0x4ac)
1c006ba4:	5400fc00 	bl	252(0xfc) # 1c006ca0 <Determine_PWM_485_Data>
1c006ba8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006bac:	02922d8c 	addi.w	$r12,$r12,1163(0x48b)
1c006bb0:	29000180 	st.b	$r0,$r12,0
1c006bb4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006bb8:	0291f98c 	addi.w	$r12,$r12,1150(0x47e)
1c006bbc:	29000180 	st.b	$r0,$r12,0
1c006bc0:	03400000 	andi	$r0,$r0,0x0
1c006bc4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006bc8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006bcc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006bd0:	4c000020 	jirl	$r0,$r1,0

1c006bd4 <Determine_Temp_Hum_Data>:
Determine_Temp_Hum_Data():
1c006bd4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006bd8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c006bdc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006be0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006be4:	001500ac 	move	$r12,$r5
1c006be8:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c006bec:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c006bf0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006bf4:	50003000 	b	48(0x30) # 1c006c24 <Determine_Temp_Hum_Data+0x50>
1c006bf8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006bfc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006c00:	001031ac 	add.w	$r12,$r13,$r12
1c006c04:	2a00018d 	ld.bu	$r13,$r12,0
1c006c08:	28bf52ce 	ld.w	$r14,$r22,-44(0xfd4)
1c006c0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006c10:	001031cc 	add.w	$r12,$r14,$r12
1c006c14:	2900018d 	st.b	$r13,$r12,0
1c006c18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006c1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006c20:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006c24:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006c28:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c006c2c:	67ffcd8d 	bge	$r12,$r13,-52(0x3ffcc) # 1c006bf8 <Determine_Temp_Hum_Data+0x24>
1c006c30:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c006c34:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c006c38:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006c3c:	0040a18c 	slli.w	$r12,$r12,0x8
1c006c40:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006c44:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c006c48:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c006c4c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006c50:	001031ac 	add.w	$r12,$r13,$r12
1c006c54:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006c58:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c006c5c:	2940298d 	st.h	$r13,$r12,10(0xa)
1c006c60:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c006c64:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c006c68:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006c6c:	0040a18c 	slli.w	$r12,$r12,0x8
1c006c70:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006c74:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c006c78:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c006c7c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006c80:	001031ac 	add.w	$r12,$r13,$r12
1c006c84:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006c88:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c006c8c:	2940318d 	st.h	$r13,$r12,12(0xc)
1c006c90:	03400000 	andi	$r0,$r0,0x0
1c006c94:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c006c98:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006c9c:	4c000020 	jirl	$r0,$r1,0

1c006ca0 <Determine_PWM_485_Data>:
Determine_PWM_485_Data():
1c006ca0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006ca4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c006ca8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006cac:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006cb0:	001500ac 	move	$r12,$r5
1c006cb4:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c006cb8:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c006cbc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006cc0:	50003000 	b	48(0x30) # 1c006cf0 <Determine_PWM_485_Data+0x50>
1c006cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006cc8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006ccc:	001031ac 	add.w	$r12,$r13,$r12
1c006cd0:	2a00018d 	ld.bu	$r13,$r12,0
1c006cd4:	28bf52ce 	ld.w	$r14,$r22,-44(0xfd4)
1c006cd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006cdc:	001031cc 	add.w	$r12,$r14,$r12
1c006ce0:	2900018d 	st.b	$r13,$r12,0
1c006ce4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006ce8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006cec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c006cf0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c006cf4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c006cf8:	67ffcd8d 	bge	$r12,$r13,-52(0x3ffcc) # 1c006cc4 <Determine_PWM_485_Data+0x24>
1c006cfc:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c006d00:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c006d04:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006d08:	0040a18c 	slli.w	$r12,$r12,0x8
1c006d0c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006d10:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c006d14:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c006d18:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006d1c:	001031ac 	add.w	$r12,$r13,$r12
1c006d20:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006d24:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c006d28:	2940218d 	st.h	$r13,$r12,8(0x8)
1c006d2c:	03400000 	andi	$r0,$r0,0x0
1c006d30:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c006d34:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006d38:	4c000020 	jirl	$r0,$r1,0

1c006d3c <getModbusCRC16>:
getModbusCRC16():
1c006d3c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006d40:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c006d44:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006d48:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006d4c:	001500ac 	move	$r12,$r5
1c006d50:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c006d54:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c006d58:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c006d5c:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c006d60:	50008800 	b	136(0x88) # 1c006de8 <getModbusCRC16+0xac>
1c006d64:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c006d68:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006d6c:	001031ac 	add.w	$r12,$r13,$r12
1c006d70:	2a00018c 	ld.bu	$r12,$r12,0
1c006d74:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006d78:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c006d7c:	0015b1ac 	xor	$r12,$r13,$r12
1c006d80:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c006d84:	293fb2c0 	st.b	$r0,$r22,-20(0xfec)
1c006d88:	50004800 	b	72(0x48) # 1c006dd0 <getModbusCRC16+0x94>
1c006d8c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c006d90:	0340058c 	andi	$r12,$r12,0x1
1c006d94:	40002580 	beqz	$r12,36(0x24) # 1c006db8 <getModbusCRC16+0x7c>
1c006d98:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c006d9c:	0044858c 	srli.w	$r12,$r12,0x1
1c006da0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006da4:	15ffff4c 	lu12i.w	$r12,-6(0xffffa)
1c006da8:	0380058c 	ori	$r12,$r12,0x1
1c006dac:	0015b1ac 	xor	$r12,$r13,$r12
1c006db0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c006db4:	50001000 	b	16(0x10) # 1c006dc4 <getModbusCRC16+0x88>
1c006db8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c006dbc:	0044858c 	srli.w	$r12,$r12,0x1
1c006dc0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c006dc4:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c006dc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006dcc:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c006dd0:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c006dd4:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c006dd8:	6fffb58d 	bgeu	$r12,$r13,-76(0x3ffb4) # 1c006d8c <getModbusCRC16+0x50>
1c006ddc:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c006de0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006de4:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c006de8:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c006dec:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006df0:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c006df4:	6bff718d 	bltu	$r12,$r13,-144(0x3ff70) # 1c006d64 <getModbusCRC16+0x28>
1c006df8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c006dfc:	0044a18c 	srli.w	$r12,$r12,0x8
1c006e00:	006f818e 	bstrpick.w	$r14,$r12,0xf,0x0
1c006e04:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c006e08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006e0c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006e10:	001031ac 	add.w	$r12,$r13,$r12
1c006e14:	006781cd 	bstrpick.w	$r13,$r14,0x7,0x0
1c006e18:	2900018d 	st.b	$r13,$r12,0
1c006e1c:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c006e20:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006e24:	001031ac 	add.w	$r12,$r13,$r12
1c006e28:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c006e2c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c006e30:	2900018d 	st.b	$r13,$r12,0
1c006e34:	03400000 	andi	$r0,$r0,0x0
1c006e38:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c006e3c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006e40:	4c000020 	jirl	$r0,$r1,0

1c006e44 <Temp_Hum_Data_Piont>:
Temp_Hum_Data_Piont():
1c006e44:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006e48:	29803076 	st.w	$r22,$r3,12(0xc)
1c006e4c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006e50:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006e54:	2887918c 	ld.w	$r12,$r12,484(0x1e4)
1c006e58:	00150184 	move	$r4,$r12
1c006e5c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c006e60:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006e64:	4c000020 	jirl	$r0,$r1,0

1c006e68 <PWM_485_Data_Piont>:
PWM_485_Data_Piont():
1c006e68:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006e6c:	29803076 	st.w	$r22,$r3,12(0xc)
1c006e70:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006e74:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006e78:	2887818c 	ld.w	$r12,$r12,480(0x1e0)
1c006e7c:	00150184 	move	$r4,$r12
1c006e80:	28803076 	ld.w	$r22,$r3,12(0xc)
1c006e84:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006e88:	4c000020 	jirl	$r0,$r1,0

1c006e8c <mqtt_process_init>:
mqtt_process_init():
1c006e8c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006e90:	29803061 	st.w	$r1,$r3,12(0xc)
1c006e94:	29802076 	st.w	$r22,$r3,8(0x8)
1c006e98:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006e9c:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006ea0:	2885e084 	ld.w	$r4,$r4,376(0x178)
1c006ea4:	54004800 	bl	72(0x48) # 1c006eec <Mqtt_System_Init>
1c006ea8:	03400000 	andi	$r0,$r0,0x0
1c006eac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006eb0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006eb4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006eb8:	4c000020 	jirl	$r0,$r1,0

1c006ebc <mqtt_process>:
mqtt_process():
1c006ebc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006ec0:	29803061 	st.w	$r1,$r3,12(0xc)
1c006ec4:	29802076 	st.w	$r22,$r3,8(0x8)
1c006ec8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006ecc:	1cc7ff44 	pcaddu12i	$r4,409594(0x63ffa)
1c006ed0:	28852084 	ld.w	$r4,$r4,328(0x148)
1c006ed4:	54006400 	bl	100(0x64) # 1c006f38 <Mqtt_Data_Feedback>
1c006ed8:	03400000 	andi	$r0,$r0,0x0
1c006edc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006ee0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006ee4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006ee8:	4c000020 	jirl	$r0,$r1,0

1c006eec <Mqtt_System_Init>:
Mqtt_System_Init():
1c006eec:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006ef0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006ef4:	29806076 	st.w	$r22,$r3,24(0x18)
1c006ef8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006efc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006f00:	57f033ff 	bl	-4048(0xffff030) # 1c005f30 <esp8266_init>
1c006f04:	57e6d3ff 	bl	-6448(0xfffe6d0) # 1c0055d4 <tempareture_type_Piont>
1c006f08:	0015008d 	move	$r13,$r4
1c006f0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006f10:	2980118d 	st.w	$r13,$r12,4(0x4)
1c006f14:	57f923ff 	bl	-1760(0xffff920) # 1c006834 <humidity_type_Piont>
1c006f18:	0015008d 	move	$r13,$r4
1c006f1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006f20:	2980018d 	st.w	$r13,$r12,0
1c006f24:	03400000 	andi	$r0,$r0,0x0
1c006f28:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006f2c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006f30:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006f34:	4c000020 	jirl	$r0,$r1,0

1c006f38 <Mqtt_Data_Feedback>:
Mqtt_Data_Feedback():
1c006f38:	02bb4063 	addi.w	$r3,$r3,-304(0xed0)
1c006f3c:	2984b061 	st.w	$r1,$r3,300(0x12c)
1c006f40:	2984a076 	st.w	$r22,$r3,296(0x128)
1c006f44:	0284c076 	addi.w	$r22,$r3,304(0x130)
1c006f48:	29bb72c4 	st.w	$r4,$r22,-292(0xedc)
1c006f4c:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006f50:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c006f54:	028091ad 	addi.w	$r13,$r13,36(0x24)
1c006f58:	2980218d 	st.w	$r13,$r12,8(0x8)
1c006f5c:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006f60:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c006f64:	0280a1ad 	addi.w	$r13,$r13,40(0x28)
1c006f68:	2980318d 	st.w	$r13,$r12,12(0xc)
1c006f6c:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006f70:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c006f74:	0280a1ad 	addi.w	$r13,$r13,40(0x28)
1c006f78:	2980418d 	st.w	$r13,$r12,16(0x10)
1c006f7c:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006f80:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c006f84:	028061ad 	addi.w	$r13,$r13,24(0x18)
1c006f88:	2980518d 	st.w	$r13,$r12,20(0x14)
1c006f8c:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006f90:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c006f94:	2a40e18d 	ld.hu	$r13,$r12,56(0x38)
1c006f98:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006f9c:	2940618d 	st.h	$r13,$r12,24(0x18)
1c006fa0:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006fa4:	2880018c 	ld.w	$r12,$r12,0
1c006fa8:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c006fac:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006fb0:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006fb4:	2940698d 	st.h	$r13,$r12,26(0x1a)
1c006fb8:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006fbc:	29407180 	st.h	$r0,$r12,28(0x1c)
1c006fc0:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006fc4:	29407980 	st.h	$r0,$r12,30(0x1e)
1c006fc8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006fcc:	0281b18c 	addi.w	$r12,$r12,108(0x6c)
1c006fd0:	2a00018d 	ld.bu	$r13,$r12,0
1c006fd4:	0280c80c 	addi.w	$r12,$r0,50(0x32)
1c006fd8:	5c0039ac 	bne	$r13,$r12,56(0x38) # 1c007010 <Mqtt_Data_Feedback+0xd8>
1c006fdc:	57e4bfff 	bl	-6980(0xfffe4bc) # 1c005498 <tempareture_process>
1c006fe0:	57f527ff 	bl	-2780(0xffff524) # 1c006504 <Humidity_process>
1c006fe4:	28bb72cc 	ld.w	$r12,$r22,-292(0xedc)
1c006fe8:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c006fec:	02bbbecd 	addi.w	$r13,$r22,-273(0xeef)
1c006ff0:	001501a5 	move	$r5,$r13
1c006ff4:	00150184 	move	$r4,$r12
1c006ff8:	57e693ff 	bl	-6512(0xfffe690) # 1c005688 <json_to_send>
1c006ffc:	57e9ebff 	bl	-5656(0xfffe9e8) # 1c0059e4 <esp8266_send_json>
1c007000:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007004:	0280d18c 	addi.w	$r12,$r12,52(0x34)
1c007008:	29000180 	st.b	$r0,$r12,0
1c00700c:	50002c00 	b	44(0x2c) # 1c007038 <Mqtt_Data_Feedback+0x100>
1c007010:	57f0d7ff 	bl	-3884(0xffff0d4) # 1c0060e4 <esp8266_send_isno>
1c007014:	57ea6bff 	bl	-5528(0xfffea68) # 1c005a7c <json_to_callback>
1c007018:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00701c:	0280718c 	addi.w	$r12,$r12,28(0x1c)
1c007020:	2a00018c 	ld.bu	$r12,$r12,0
1c007024:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007028:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00702c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007030:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c007034:	2900018d 	st.b	$r13,$r12,0
1c007038:	03400000 	andi	$r0,$r0,0x0
1c00703c:	2884b061 	ld.w	$r1,$r3,300(0x12c)
1c007040:	2884a076 	ld.w	$r22,$r3,296(0x128)
1c007044:	0284c063 	addi.w	$r3,$r3,304(0x130)
1c007048:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c007060 <msg_wakeup>:
msg_wakeup():
1c007060:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01dbc0 <_sidata+0x15c24>
1c007064:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c007069 <hexdecarr>:
hexdecarr():
1c007069:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c00706d:	37363534 	0x37363534
1c007071:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfed1a9 <_start-0x12e57>
1c007075:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfed5d9 <_start-0x12a27>
1c007079:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00707d:	79654b0a 	0x79654b0a
1c007081:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c007085:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c007089:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c00708d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01e0fd <_sidata+0x16161>
1c007091:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffdff1 <_start-0x200f>
1c007095:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c007099:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffdffd <_start-0x2003>
1c00709d:	72616220 	0x72616220
1c0070a1:	0a0d216b 	0x0a0d216b
1c0070a5:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0070a9:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffd21d <_start-0x2de3>
1c0070ad:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c0070b1:	cc000a0d 	0xcc000a0d
1c0070b5:	e81c001e 	0xe81c001e
1c0070b9:	e81c001f 	0xe81c001f
1c0070bd:	e81c001f 	0xe81c001f
1c0070c1:	e81c001f 	0xe81c001f
1c0070c5:	e81c001f 	0xe81c001f
1c0070c9:	e81c001f 	0xe81c001f
1c0070cd:	e81c001f 	0xe81c001f
1c0070d1:	e81c001f 	0xe81c001f
1c0070d5:	e81c001f 	0xe81c001f
1c0070d9:	e81c001f 	0xe81c001f
1c0070dd:	e41c001f 	0xe41c001f
1c0070e1:	6c1c001e 	bgeu	$r0,$r30,7168(0x1c00) # 1c008ce1 <_sidata+0xd45>
1c0070e5:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c008ce5 <_sidata+0xd49>
1c0070e9:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c008ce9 <_sidata+0xd4d>
1c0070ed:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c008ced <_sidata+0xd51>
1c0070f1:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c008cf1 <_sidata+0xd55>
1c0070f5:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c008cf5 <_sidata+0xd59>
1c0070f9:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c008cf9 <_sidata+0xd5d>
1c0070fd:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c008cfd <_sidata+0xd61>
1c007101:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c008d01 <_sidata+0xd65>
1c007105:	e81c001f 	0xe81c001f
1c007109:	e81c001f 	0xe81c001f
1c00710d:	e81c001f 	0xe81c001f
1c007111:	e81c001f 	0xe81c001f
1c007115:	e81c001f 	0xe81c001f
1c007119:	e81c001f 	0xe81c001f
1c00711d:	e81c001f 	0xe81c001f
1c007121:	e81c001f 	0xe81c001f
1c007125:	e81c001f 	0xe81c001f
1c007129:	e81c001f 	0xe81c001f
1c00712d:	e81c001f 	0xe81c001f
1c007131:	e81c001f 	0xe81c001f
1c007135:	e81c001f 	0xe81c001f
1c007139:	e81c001f 	0xe81c001f
1c00713d:	e81c001f 	0xe81c001f
1c007141:	e81c001f 	0xe81c001f
1c007145:	e81c001f 	0xe81c001f
1c007149:	e81c001f 	0xe81c001f
1c00714d:	e81c001f 	0xe81c001f
1c007151:	e81c001f 	0xe81c001f
1c007155:	e81c001f 	0xe81c001f
1c007159:	e81c001f 	0xe81c001f
1c00715d:	e81c001f 	0xe81c001f
1c007161:	e81c001f 	0xe81c001f
1c007165:	e81c001f 	0xe81c001f
1c007169:	e81c001f 	0xe81c001f
1c00716d:	e81c001f 	0xe81c001f
1c007171:	e81c001f 	0xe81c001f
1c007175:	e81c001f 	0xe81c001f
1c007179:	e81c001f 	0xe81c001f
1c00717d:	e81c001f 	0xe81c001f
1c007181:	e81c001f 	0xe81c001f
1c007185:	e81c001f 	0xe81c001f
1c007189:	e81c001f 	0xe81c001f
1c00718d:	e81c001f 	0xe81c001f
1c007191:	e81c001f 	0xe81c001f
1c007195:	e81c001f 	0xe81c001f
1c007199:	e81c001f 	0xe81c001f
1c00719d:	e81c001f 	0xe81c001f
1c0071a1:	e81c001f 	0xe81c001f
1c0071a5:	5c1c001f 	bne	$r0,$r31,7168(0x1c00) # 1c008da5 <_sidata+0xe09>
1c0071a9:	841c001e 	0x841c001e
1c0071ad:	ec1c001d 	0xec1c001d
1c0071b1:	e81c001d 	0xe81c001d
1c0071b5:	e81c001f 	0xe81c001f
1c0071b9:	e81c001f 	0xe81c001f
1c0071bd:	e81c001f 	0xe81c001f
1c0071c1:	e81c001f 	0xe81c001f
1c0071c5:	e81c001f 	0xe81c001f
1c0071c9:	e81c001f 	0xe81c001f
1c0071cd:	e81c001f 	0xe81c001f
1c0071d1:	e81c001f 	0xe81c001f
1c0071d5:	e81c001f 	0xe81c001f
1c0071d9:	241c001f 	ldptr.w	$r31,$r0,7168(0x1c00)
1c0071dd:	941c001e 	0x941c001e
1c0071e1:	e81c001e 	0xe81c001e
1c0071e5:	e81c001f 	0xe81c001f
1c0071e9:	581c001f 	beq	$r0,$r31,7168(0x1c00) # 1c008de9 <_sidata+0xe4d>
1c0071ed:	e81c001d 	0xe81c001d
1c0071f1:	b41c001f 	0xb41c001f
1c0071f5:	e81c001d 	0xe81c001d
1c0071f9:	e81c001f 	0xe81c001f
1c0071fd:	941c001f 	0x941c001f
1c007201:	c01c001e 	0xc01c001e
1c007205:	e41c0022 	0xe41c0022
1c007209:	e41c0023 	0xe41c0023
1c00720d:	e41c0023 	0xe41c0023
1c007211:	e41c0023 	0xe41c0023
1c007215:	e41c0023 	0xe41c0023
1c007219:	e41c0023 	0xe41c0023
1c00721d:	e41c0023 	0xe41c0023
1c007221:	e41c0023 	0xe41c0023
1c007225:	e41c0023 	0xe41c0023
1c007229:	e41c0023 	0xe41c0023
1c00722d:	e01c0023 	0xe01c0023
1c007231:	681c0022 	bltu	$r1,$r2,7168(0x1c00) # 1c008e31 <_sidata+0xe95>
1c007235:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c008e35 <_sidata+0xe99>
1c007239:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c008e39 <_sidata+0xe9d>
1c00723d:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c008e3d <_sidata+0xea1>
1c007241:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c008e41 <_sidata+0xea5>
1c007245:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c008e45 <_sidata+0xea9>
1c007249:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c008e49 <_sidata+0xead>
1c00724d:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c008e4d <_sidata+0xeb1>
1c007251:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c008e51 <_sidata+0xeb5>
1c007255:	e41c0023 	0xe41c0023
1c007259:	e41c0023 	0xe41c0023
1c00725d:	e41c0023 	0xe41c0023
1c007261:	e41c0023 	0xe41c0023
1c007265:	e41c0023 	0xe41c0023
1c007269:	e41c0023 	0xe41c0023
1c00726d:	e41c0023 	0xe41c0023
1c007271:	e41c0023 	0xe41c0023
1c007275:	e41c0023 	0xe41c0023
1c007279:	e41c0023 	0xe41c0023
1c00727d:	e41c0023 	0xe41c0023
1c007281:	e41c0023 	0xe41c0023
1c007285:	e41c0023 	0xe41c0023
1c007289:	e41c0023 	0xe41c0023
1c00728d:	e41c0023 	0xe41c0023
1c007291:	e41c0023 	0xe41c0023
1c007295:	e41c0023 	0xe41c0023
1c007299:	e41c0023 	0xe41c0023
1c00729d:	e41c0023 	0xe41c0023
1c0072a1:	e41c0023 	0xe41c0023
1c0072a5:	e41c0023 	0xe41c0023
1c0072a9:	e41c0023 	0xe41c0023
1c0072ad:	e41c0023 	0xe41c0023
1c0072b1:	e41c0023 	0xe41c0023
1c0072b5:	e41c0023 	0xe41c0023
1c0072b9:	e41c0023 	0xe41c0023
1c0072bd:	e41c0023 	0xe41c0023
1c0072c1:	e41c0023 	0xe41c0023
1c0072c5:	e41c0023 	0xe41c0023
1c0072c9:	e41c0023 	0xe41c0023
1c0072cd:	7c1c0023 	0x7c1c0023
1c0072d1:	e41c0022 	0xe41c0022
1c0072d5:	e41c0023 	0xe41c0023
1c0072d9:	e41c0023 	0xe41c0023
1c0072dd:	e41c0023 	0xe41c0023
1c0072e1:	e41c0023 	0xe41c0023
1c0072e5:	e41c0023 	0xe41c0023
1c0072e9:	e41c0023 	0xe41c0023
1c0072ed:	e41c0023 	0xe41c0023
1c0072f1:	e41c0023 	0xe41c0023
1c0072f5:	381c0023 	stx.d	$r3,$r1,$r0
1c0072f9:	341c0022 	0x341c0022
1c0072fd:	b01c0021 	0xb01c0021
1c007301:	e41c0021 	0xe41c0021
1c007305:	e41c0023 	0xe41c0023
1c007309:	e41c0023 	0xe41c0023
1c00730d:	e41c0023 	0xe41c0023
1c007311:	e41c0023 	0xe41c0023
1c007315:	e41c0023 	0xe41c0023
1c007319:	e41c0023 	0xe41c0023
1c00731d:	e41c0023 	0xe41c0023
1c007321:	e41c0023 	0xe41c0023
1c007325:	e41c0023 	0xe41c0023
1c007329:	f41c0023 	0xf41c0023
1c00732d:	7c1c0021 	0x7c1c0021
1c007331:	e41c0022 	0xe41c0022
1c007335:	e41c0023 	0xe41c0023
1c007339:	001c0023 	mul.w	$r3,$r1,$r0
1c00733d:	e41c0021 	0xe41c0021
1c007341:	6c1c0023 	bgeu	$r1,$r3,7168(0x1c00) # 1c008f41 <_sidata+0xfa5>
1c007345:	e41c0021 	0xe41c0021
1c007349:	e41c0023 	0xe41c0023
1c00734d:	7c1c0023 	0x7c1c0023
1c007351:	0a1c0022 	xvfmadd.s	$xr2,$xr1,$xr0,$xr24
1c007355:	7c000000 	0x7c000000
1c007359:	7c7c7c7c 	0x7c7c7c7c
1c00735d:	7c7c7c7c 	0x7c7c7c7c
1c007361:	7c7c7c7c 	0x7c7c7c7c
1c007365:	7c7c7c7c 	0x7c7c7c7c
1c007369:	7c7c7c7c 	0x7c7c7c7c
1c00736d:	7c7c7c7c 	0x7c7c7c7c
1c007371:	7c7c7c7c 	0x7c7c7c7c
1c007375:	7c7c7c7c 	0x7c7c7c7c
1c007379:	7c7c7c7c 	0x7c7c7c7c
1c00737d:	7c7c7c7c 	0x7c7c7c7c
1c007381:	7c7c7c7c 	0x7c7c7c7c
1c007385:	7c7c7c7c 	0x7c7c7c7c
1c007389:	7c7c7c7c 	0x7c7c7c7c
1c00738d:	7c7c7c7c 	0x7c7c7c7c
1c007391:	7c7c7c7c 	0x7c7c7c7c
1c007395:	7c7c7c7c 	0x7c7c7c7c
1c007399:	7c7c7c7c 	0x7c7c7c7c
1c00739d:	7c7c7c7c 	0x7c7c7c7c
1c0073a1:	7c7c7c7c 	0x7c7c7c7c
1c0073a5:	7c7c7c7c 	0x7c7c7c7c
1c0073a9:	7c7c7c7c 	0x7c7c7c7c
1c0073ad:	7c7c7c7c 	0x7c7c7c7c
1c0073b1:	7c7c7c7c 	0x7c7c7c7c
1c0073b5:	7c7c7c7c 	0x7c7c7c7c
1c0073b9:	7c00000a 	0x7c00000a
1c0073bd:	7c20207c 	0x7c20207c
1c0073c1:	7c7c7c7c 	0x7c7c7c7c
1c0073c5:	7c7c7c7c 	0x7c7c7c7c
1c0073c9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0073cd:	7c202020 	0x7c202020
1c0073d1:	7c7c7c7c 	0x7c7c7c7c
1c0073d5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0073d9:	7c202020 	0x7c202020
1c0073dd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0073e1:	7c7c2020 	0x7c7c2020
1c0073e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0073e9:	7c7c7c20 	0x7c7c7c20
1c0073ed:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0073f1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0073f5:	7c7c7c7c 	0x7c7c7c7c
1c0073f9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0073fd:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007401:	7c7c7c7c 	0x7c7c7c7c
1c007405:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007409:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00740d:	7c7c7c7c 	0x7c7c7c7c
1c007411:	7c202020 	0x7c202020
1c007415:	7c7c7c7c 	0x7c7c7c7c
1c007419:	7c7c2020 	0x7c7c2020
1c00741d:	7c00000a 	0x7c00000a
1c007421:	7c20207c 	0x7c20207c
1c007425:	7c7c7c7c 	0x7c7c7c7c
1c007429:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00742d:	7c7c2020 	0x7c7c2020
1c007431:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007435:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007439:	7c7c2020 	0x7c7c2020
1c00743d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007441:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007445:	7c202020 	0x7c202020
1c007449:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00744d:	7c7c7c20 	0x7c7c7c20
1c007451:	7c20207c 	0x7c20207c
1c007455:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007459:	7c7c7c20 	0x7c7c7c20
1c00745d:	7c202020 	0x7c202020
1c007461:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007465:	7c7c7c20 	0x7c7c7c20
1c007469:	7c202020 	0x7c202020
1c00746d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007471:	7c7c7c20 	0x7c7c7c20
1c007475:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007479:	7c7c7c7c 	0x7c7c7c7c
1c00747d:	7c7c2020 	0x7c7c2020
1c007481:	7c00000a 	0x7c00000a
1c007485:	7c20207c 	0x7c20207c
1c007489:	7c7c7c7c 	0x7c7c7c7c
1c00748d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007491:	7c7c7c20 	0x7c7c7c20
1c007495:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007499:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00749d:	7c7c7c20 	0x7c7c7c20
1c0074a1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074a5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074a9:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c0074ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074b1:	7c7c7c20 	0x7c7c7c20
1c0074b5:	7c7c2020 	0x7c7c2020
1c0074b9:	7c7c7c7c 	0x7c7c7c7c
1c0074bd:	7c7c7c7c 	0x7c7c7c7c
1c0074c1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0074c5:	7c7c7c20 	0x7c7c7c20
1c0074c9:	7c7c7c7c 	0x7c7c7c7c
1c0074cd:	7c7c2020 	0x7c7c2020
1c0074d1:	7c7c7c7c 	0x7c7c7c7c
1c0074d5:	7c7c7c20 	0x7c7c7c20
1c0074d9:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0074dd:	7c7c7c20 	0x7c7c7c20
1c0074e1:	7c7c2020 	0x7c7c2020
1c0074e5:	7c00000a 	0x7c00000a
1c0074e9:	7c20207c 	0x7c20207c
1c0074ed:	7c7c7c7c 	0x7c7c7c7c
1c0074f1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074f5:	7c7c7c20 	0x7c7c7c20
1c0074f9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0074fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007501:	7c7c7c20 	0x7c7c7c20
1c007505:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007509:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00750d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c007511:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c007515:	7c7c7c20 	0x7c7c7c20
1c007519:	7c7c2020 	0x7c7c2020
1c00751d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007521:	7c7c7c20 	0x7c7c7c20
1c007525:	7c7c7c7c 	0x7c7c7c7c
1c007529:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00752d:	7c7c7c7c 	0x7c7c7c7c
1c007531:	7c7c2020 	0x7c7c2020
1c007535:	7c7c7c7c 	0x7c7c7c7c
1c007539:	7c7c7c20 	0x7c7c7c20
1c00753d:	7c7c2020 	0x7c7c2020
1c007541:	7c7c2020 	0x7c7c2020
1c007545:	7c7c2020 	0x7c7c2020
1c007549:	7c00000a 	0x7c00000a
1c00754d:	7c20207c 	0x7c20207c
1c007551:	7c7c7c7c 	0x7c7c7c7c
1c007555:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007559:	7c7c7c20 	0x7c7c7c20
1c00755d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007561:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007565:	7c7c7c20 	0x7c7c7c20
1c007569:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00756d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007571:	7c7c7c20 	0x7c7c7c20
1c007575:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c007579:	7c7c7c20 	0x7c7c7c20
1c00757d:	7c7c2020 	0x7c7c2020
1c007581:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007585:	7c7c7c20 	0x7c7c7c20
1c007589:	7c7c7c7c 	0x7c7c7c7c
1c00758d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007591:	7c7c7c20 	0x7c7c7c20
1c007595:	7c7c2020 	0x7c7c2020
1c007599:	7c7c7c7c 	0x7c7c7c7c
1c00759d:	7c7c7c20 	0x7c7c7c20
1c0075a1:	7c7c2020 	0x7c7c2020
1c0075a5:	7c20207c 	0x7c20207c
1c0075a9:	7c7c2020 	0x7c7c2020
1c0075ad:	7c00000a 	0x7c00000a
1c0075b1:	7c20207c 	0x7c20207c
1c0075b5:	7c7c7c7c 	0x7c7c7c7c
1c0075b9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075bd:	7c7c2020 	0x7c7c2020
1c0075c1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0075c5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075c9:	7c7c2020 	0x7c7c2020
1c0075cd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0075d1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075d5:	7c7c7c20 	0x7c7c7c20
1c0075d9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0075dd:	7c7c7c20 	0x7c7c7c20
1c0075e1:	7c202020 	0x7c202020
1c0075e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0075e9:	7c7c7c20 	0x7c7c7c20
1c0075ed:	7c202020 	0x7c202020
1c0075f1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0075f5:	7c7c7c7c 	0x7c7c7c7c
1c0075f9:	7c202020 	0x7c202020
1c0075fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007601:	7c7c7c20 	0x7c7c7c20
1c007605:	7c7c2020 	0x7c7c2020
1c007609:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00760d:	7c7c2020 	0x7c7c2020
1c007611:	7c00000a 	0x7c00000a
1c007615:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007619:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00761d:	7c7c7c7c 	0x7c7c7c7c
1c007621:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007625:	7c202020 	0x7c202020
1c007629:	7c7c7c7c 	0x7c7c7c7c
1c00762d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007631:	7c202020 	0x7c202020
1c007635:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007639:	7c7c7c20 	0x7c7c7c20
1c00763d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c007641:	7c7c7c20 	0x7c7c7c20
1c007645:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007649:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00764d:	7c7c7c7c 	0x7c7c7c7c
1c007651:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007655:	7c202020 	0x7c202020
1c007659:	7c7c7c7c 	0x7c7c7c7c
1c00765d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c007661:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c007665:	7c7c7c7c 	0x7c7c7c7c
1c007669:	7c7c2020 	0x7c7c2020
1c00766d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c007671:	7c7c2020 	0x7c7c2020
1c007675:	7c00000a 	0x7c00000a
1c007679:	7c7c7c7c 	0x7c7c7c7c
1c00767d:	7c7c7c7c 	0x7c7c7c7c
1c007681:	7c7c7c7c 	0x7c7c7c7c
1c007685:	7c7c7c7c 	0x7c7c7c7c
1c007689:	7c7c7c7c 	0x7c7c7c7c
1c00768d:	7c7c7c7c 	0x7c7c7c7c
1c007691:	7c7c7c7c 	0x7c7c7c7c
1c007695:	7c7c7c7c 	0x7c7c7c7c
1c007699:	7c7c7c7c 	0x7c7c7c7c
1c00769d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c0076a1:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c0076a5:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c0076a9:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c0076ad:	7c7c7c5d 	0x7c7c7c5d
1c0076b1:	7c7c7c7c 	0x7c7c7c7c
1c0076b5:	7c7c7c7c 	0x7c7c7c7c
1c0076b9:	7c7c7c7c 	0x7c7c7c7c
1c0076bd:	7c7c7c7c 	0x7c7c7c7c
1c0076c1:	7c7c7c7c 	0x7c7c7c7c
1c0076c5:	7c7c7c7c 	0x7c7c7c7c
1c0076c9:	7c7c7c7c 	0x7c7c7c7c
1c0076cd:	7c7c7c7c 	0x7c7c7c7c
1c0076d1:	7c7c7c7c 	0x7c7c7c7c
1c0076d5:	7c7c7c7c 	0x7c7c7c7c
1c0076d9:	0900000a 	0x0900000a
1c0076dd:	0a006425 	0x0a006425
1c0076e1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0076e5:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c0076e9:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c0076ed:	0050550a 	0x0050550a
1c0076f1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0076f5:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00ec41 <_sidata+0x6ca5>
1c0076f9:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c0076fd:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c007701:	756f430a 	0x756f430a
1c007705:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c007709:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00770d:	3030090a 	0x3030090a
1c007711:	09313009 	0x09313009
1c007715:	30093230 	0x30093230
1c007719:	34300933 	0x34300933
1c00771d:	09353009 	0x09353009
1c007721:	30093630 	0x30093630
1c007725:	38300937 	fldx.s	$f23,$r9,$r2
1c007729:	09393009 	0x09393009
1c00772d:	31093031 	0x31093031
1c007731:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c007735:	746e630a 	0x746e630a
1c007739:	09000000 	0x09000000
1c00773d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c007741:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007745:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c007749:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00d89d <_sidata+0x5901>
1c00774d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007751:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfeeca1 <_start-0x1135f>
1c007755:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c007759:	09000000 	0x09000000
1c00775d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c007761:	09000000 	0x09000000
1c007765:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c007769:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00776d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c007771:	3a515249 	0x3a515249
1c007775:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c007779:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffe5ed <_start-0x1a13>
1c00777d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c007781:	0d3e2020 	0x0d3e2020
1c007785:	0a00000a 	0x0a00000a
1c007789:	2e2e2e2e 	0x2e2e2e2e
1c00778d:	2e2e2e2e 	0x2e2e2e2e
1c007791:	2e2e2e2e 	0x2e2e2e2e
1c007795:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ac6e5 <_sidata+0x3a4749>
1c007799:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c00779d:	2e2e2e54 	0x2e2e2e54
1c0077a1:	2e2e2e2e 	0x2e2e2e2e
1c0077a5:	2e2e2e2e 	0x2e2e2e2e
1c0077a9:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c0077ad:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c0077b1:	2e2e2e0a 	0x2e2e2e0a
1c0077b5:	2e2e2e2e 	0x2e2e2e2e
1c0077b9:	2e2e2e2e 	0x2e2e2e2e
1c0077bd:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39b9e9 <_sidata+0x393a4d>
1c0077c1:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1be1d <_start-0x2e41e3>
1c0077c5:	2e2e4c49 	0x2e2e4c49
1c0077c9:	2e2e2e2e 	0x2e2e2e2e
1c0077cd:	2e2e2e2e 	0x2e2e2e2e
1c0077d1:	2e2e2e2e 	0x2e2e2e2e
1c0077d5:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c0077d9:	2e2e2e0a 	0x2e2e2e0a
1c0077dd:	2e2e2e2e 	0x2e2e2e2e
1c0077e1:	2e2e2e2e 	0x2e2e2e2e
1c0077e5:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38b911 <_sidata+0x383975>
1c0077e9:	2e2e2e43 	0x2e2e2e43
1c0077ed:	2e2e2e2e 	0x2e2e2e2e
1c0077f1:	2e2e2e2e 	0x2e2e2e2e
1c0077f5:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c0077f9:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b77f9 <_sidata+0x2af85d>
1c0077fd:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c007801:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01e569 <_sidata+0x165cd>
1c007805:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00db25 <_sidata+0x5b89>
1c007809:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c00780d:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01ec79 <_sidata+0x16cdd>
1c007811:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c007815:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c007819:	 	0xf000000a

1c00781c <Ext_IrqHandle>:
1c00781c:	1c0042f0 	pcaddu12i	$r16,535(0x217)
1c007820:	1c00433c 	pcaddu12i	$r28,537(0x219)
1c007824:	1c004388 	pcaddu12i	$r8,540(0x21c)
1c007828:	1c0043d4 	pcaddu12i	$r20,542(0x21e)
1c00782c:	1c004420 	pcaddu12i	$r0,545(0x221)
1c007830:	1c00446c 	pcaddu12i	$r12,547(0x223)
1c007834:	1c0044b8 	pcaddu12i	$r24,549(0x225)
1c007838:	1c004504 	pcaddu12i	$r4,552(0x228)
1c00783c:	1c004550 	pcaddu12i	$r16,554(0x22a)
1c007840:	1c00459c 	pcaddu12i	$r28,556(0x22c)
1c007844:	1c0045e8 	pcaddu12i	$r8,559(0x22f)
1c007848:	1c004634 	pcaddu12i	$r20,561(0x231)
1c00784c:	1c004680 	pcaddu12i	$r0,564(0x234)
1c007850:	1c0046cc 	pcaddu12i	$r12,566(0x236)
1c007854:	1c004718 	pcaddu12i	$r24,568(0x238)
1c007858:	1c004764 	pcaddu12i	$r4,571(0x23b)
1c00785c:	1c0047b0 	pcaddu12i	$r16,573(0x23d)
1c007860:	1c0047fc 	pcaddu12i	$r28,575(0x23f)
1c007864:	1c004848 	pcaddu12i	$r8,578(0x242)
1c007868:	1c004894 	pcaddu12i	$r20,580(0x244)
1c00786c:	1c0048e0 	pcaddu12i	$r0,583(0x247)
1c007870:	1c00492c 	pcaddu12i	$r12,585(0x249)
1c007874:	1c004978 	pcaddu12i	$r24,587(0x24b)
1c007878:	1c0049c4 	pcaddu12i	$r4,590(0x24e)
1c00787c:	1c004a10 	pcaddu12i	$r16,592(0x250)
1c007880:	1c004a5c 	pcaddu12i	$r28,594(0x252)
1c007884:	1c004aa8 	pcaddu12i	$r8,597(0x255)
1c007888:	1c004af4 	pcaddu12i	$r20,599(0x257)
1c00788c:	1c004b40 	pcaddu12i	$r0,602(0x25a)
1c007890:	1c004b8c 	pcaddu12i	$r12,604(0x25c)
1c007894:	1c004bd8 	pcaddu12i	$r24,606(0x25e)
1c007898:	1c004c24 	pcaddu12i	$r4,609(0x261)
1c00789c:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c0078a0:	1c004eb8 	pcaddu12i	$r24,629(0x275)
1c0078a4:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c0078a8:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c0078ac:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c0078b0:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c0078b4:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c0078b8:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c0078bc:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c0078c0:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c0078c4:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c0078c8:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c0078cc:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c0078d0:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c0078d4:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c0078d8:	1c004f08 	pcaddu12i	$r8,632(0x278)
1c0078dc:	1c004ed4 	pcaddu12i	$r20,630(0x276)

1c0078e0 <__FUNCTION__.1673>:
1c0078e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed58 <_sidata+0x16dbc>
1c0078e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e948 <_sidata+0x169ac>
1c0078e8:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffa948 <_start-0x56b8>
1c0078ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea5c <_start-0x15a4>
1c0078f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e750 <_sidata+0x67b4>
1c0078f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0078f8 <__FUNCTION__.1677>:
1c0078f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed70 <_sidata+0x16dd4>
1c0078fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e960 <_sidata+0x169c4>
1c007900:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffaa60 <_start-0x55a0>
1c007904:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea74 <_start-0x158c>
1c007908:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e768 <_sidata+0x67cc>
1c00790c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007910 <__FUNCTION__.1681>:
1c007910:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ed88 <_sidata+0x16dec>
1c007914:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e978 <_sidata+0x169dc>
1c007918:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffab78 <_start-0x5488>
1c00791c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffea8c <_start-0x1574>
1c007920:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e780 <_sidata+0x67e4>
1c007924:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007928 <__FUNCTION__.1685>:
1c007928:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eda0 <_sidata+0x16e04>
1c00792c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e990 <_sidata+0x169f4>
1c007930:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffac90 <_start-0x5370>
1c007934:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeaa4 <_start-0x155c>
1c007938:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e798 <_sidata+0x67fc>
1c00793c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007940 <__FUNCTION__.1689>:
1c007940:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01edb8 <_sidata+0x16e1c>
1c007944:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9a8 <_sidata+0x16a0c>
1c007948:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffada8 <_start-0x5258>
1c00794c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeabc <_start-0x1544>
1c007950:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7b0 <_sidata+0x6814>
1c007954:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007958 <__FUNCTION__.1693>:
1c007958:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01edd0 <_sidata+0x16e34>
1c00795c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9c0 <_sidata+0x16a24>
1c007960:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffaec0 <_start-0x5140>
1c007964:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffead4 <_start-0x152c>
1c007968:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7c8 <_sidata+0x682c>
1c00796c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007970 <__FUNCTION__.1697>:
1c007970:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ede8 <_sidata+0x16e4c>
1c007974:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9d8 <_sidata+0x16a3c>
1c007978:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffafd8 <_start-0x5028>
1c00797c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeaec <_start-0x1514>
1c007980:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7e0 <_sidata+0x6844>
1c007984:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007988 <__FUNCTION__.1701>:
1c007988:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee00 <_sidata+0x16e64>
1c00798c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01e9f0 <_sidata+0x16a54>
1c007990:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffb0f0 <_start-0x4f10>
1c007994:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb04 <_start-0x14fc>
1c007998:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e7f8 <_sidata+0x685c>
1c00799c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079a0 <__FUNCTION__.1705>:
1c0079a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee18 <_sidata+0x16e7c>
1c0079a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea08 <_sidata+0x16a6c>
1c0079a8:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffaa08 <_start-0x55f8>
1c0079ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb1c <_start-0x14e4>
1c0079b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e810 <_sidata+0x6874>
1c0079b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079b8 <__FUNCTION__.1709>:
1c0079b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee30 <_sidata+0x16e94>
1c0079bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea20 <_sidata+0x16a84>
1c0079c0:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffab20 <_start-0x54e0>
1c0079c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb34 <_start-0x14cc>
1c0079c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e828 <_sidata+0x688c>
1c0079cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079d0 <__FUNCTION__.1713>:
1c0079d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee48 <_sidata+0x16eac>
1c0079d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea38 <_sidata+0x16a9c>
1c0079d8:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffac38 <_start-0x53c8>
1c0079dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb4c <_start-0x14b4>
1c0079e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e840 <_sidata+0x68a4>
1c0079e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0079e8 <__FUNCTION__.1717>:
1c0079e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee60 <_sidata+0x16ec4>
1c0079ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea50 <_sidata+0x16ab4>
1c0079f0:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffad50 <_start-0x52b0>
1c0079f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb64 <_start-0x149c>
1c0079f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e858 <_sidata+0x68bc>
1c0079fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a00 <__FUNCTION__.1721>:
1c007a00:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee78 <_sidata+0x16edc>
1c007a04:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea68 <_sidata+0x16acc>
1c007a08:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffae68 <_start-0x5198>
1c007a0c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb7c <_start-0x1484>
1c007a10:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e870 <_sidata+0x68d4>
1c007a14:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a18 <__FUNCTION__.1725>:
1c007a18:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ee90 <_sidata+0x16ef4>
1c007a1c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea80 <_sidata+0x16ae4>
1c007a20:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffaf80 <_start-0x5080>
1c007a24:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeb94 <_start-0x146c>
1c007a28:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e888 <_sidata+0x68ec>
1c007a2c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a30 <__FUNCTION__.1729>:
1c007a30:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eea8 <_sidata+0x16f0c>
1c007a34:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ea98 <_sidata+0x16afc>
1c007a38:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffb098 <_start-0x4f68>
1c007a3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebac <_start-0x1454>
1c007a40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8a0 <_sidata+0x6904>
1c007a44:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a48 <__FUNCTION__.1733>:
1c007a48:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eec0 <_sidata+0x16f24>
1c007a4c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eab0 <_sidata+0x16b14>
1c007a50:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffb1b0 <_start-0x4e50>
1c007a54:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebc4 <_start-0x143c>
1c007a58:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8b8 <_sidata+0x691c>
1c007a5c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a60 <__FUNCTION__.1737>:
1c007a60:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eed8 <_sidata+0x16f3c>
1c007a64:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eac8 <_sidata+0x16b2c>
1c007a68:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffaac8 <_start-0x5538>
1c007a6c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebdc <_start-0x1424>
1c007a70:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8d0 <_sidata+0x6934>
1c007a74:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a78 <__FUNCTION__.1741>:
1c007a78:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eef0 <_sidata+0x16f54>
1c007a7c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eae0 <_sidata+0x16b44>
1c007a80:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffabe0 <_start-0x5420>
1c007a84:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffebf4 <_start-0x140c>
1c007a88:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e8e8 <_sidata+0x694c>
1c007a8c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007a90 <__FUNCTION__.1745>:
1c007a90:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef08 <_sidata+0x16f6c>
1c007a94:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eaf8 <_sidata+0x16b5c>
1c007a98:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffacf8 <_start-0x5308>
1c007a9c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec0c <_start-0x13f4>
1c007aa0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e900 <_sidata+0x6964>
1c007aa4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007aa8 <__FUNCTION__.1749>:
1c007aa8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef20 <_sidata+0x16f84>
1c007aac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb10 <_sidata+0x16b74>
1c007ab0:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffae10 <_start-0x51f0>
1c007ab4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec24 <_start-0x13dc>
1c007ab8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e918 <_sidata+0x697c>
1c007abc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ac0 <__FUNCTION__.1753>:
1c007ac0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef38 <_sidata+0x16f9c>
1c007ac4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb28 <_sidata+0x16b8c>
1c007ac8:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffaf28 <_start-0x50d8>
1c007acc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec3c <_start-0x13c4>
1c007ad0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e930 <_sidata+0x6994>
1c007ad4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007ad8 <__FUNCTION__.1757>:
1c007ad8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef50 <_sidata+0x16fb4>
1c007adc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb40 <_sidata+0x16ba4>
1c007ae0:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffb040 <_start-0x4fc0>
1c007ae4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec54 <_start-0x13ac>
1c007ae8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e948 <_sidata+0x69ac>
1c007aec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007af0 <__FUNCTION__.1761>:
1c007af0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef68 <_sidata+0x16fcc>
1c007af4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb58 <_sidata+0x16bbc>
1c007af8:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffb158 <_start-0x4ea8>
1c007afc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec6c <_start-0x1394>
1c007b00:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e960 <_sidata+0x69c4>
1c007b04:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b08 <__FUNCTION__.1765>:
1c007b08:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef80 <_sidata+0x16fe4>
1c007b0c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb70 <_sidata+0x16bd4>
1c007b10:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffb270 <_start-0x4d90>
1c007b14:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec84 <_start-0x137c>
1c007b18:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e978 <_sidata+0x69dc>
1c007b1c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b20 <__FUNCTION__.1769>:
1c007b20:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ef98 <_sidata+0x16ffc>
1c007b24:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eb88 <_sidata+0x16bec>
1c007b28:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffab8c <_start-0x5474>
1c007b2c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffec9c <_start-0x1364>
1c007b30:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e990 <_sidata+0x69f4>
1c007b34:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b38 <__FUNCTION__.1773>:
1c007b38:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efb0 <_sidata+0x17014>
1c007b3c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01eba0 <_sidata+0x16c04>
1c007b40:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffaca4 <_start-0x535c>
1c007b44:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecb4 <_start-0x134c>
1c007b48:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9a8 <_sidata+0x6a0c>
1c007b4c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b50 <__FUNCTION__.1777>:
1c007b50:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efc8 <_sidata+0x1702c>
1c007b54:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebb8 <_sidata+0x16c1c>
1c007b58:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffadbc <_start-0x5244>
1c007b5c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffeccc <_start-0x1334>
1c007b60:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9c0 <_sidata+0x6a24>
1c007b64:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b68 <__FUNCTION__.1781>:
1c007b68:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01efe0 <_sidata+0x17044>
1c007b6c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebd0 <_sidata+0x16c34>
1c007b70:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffaed4 <_start-0x512c>
1c007b74:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffece4 <_start-0x131c>
1c007b78:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9d8 <_sidata+0x6a3c>
1c007b7c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b80 <__FUNCTION__.1785>:
1c007b80:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01eff8 <_sidata+0x1705c>
1c007b84:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ebe8 <_sidata+0x16c4c>
1c007b88:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffafec <_start-0x5014>
1c007b8c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffecfc <_start-0x1304>
1c007b90:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00e9f0 <_sidata+0x6a54>
1c007b94:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007b98 <__FUNCTION__.1789>:
1c007b98:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f010 <_sidata+0x17074>
1c007b9c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec00 <_sidata+0x16c64>
1c007ba0:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffb104 <_start-0x4efc>
1c007ba4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed14 <_start-0x12ec>
1c007ba8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea08 <_sidata+0x6a6c>
1c007bac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007bb0 <__FUNCTION__.1793>:
1c007bb0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f028 <_sidata+0x1708c>
1c007bb4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec18 <_sidata+0x16c7c>
1c007bb8:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffb21c <_start-0x4de4>
1c007bbc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed2c <_start-0x12d4>
1c007bc0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea20 <_sidata+0x6a84>
1c007bc4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c007bc8 <__FUNCTION__.1797>:
1c007bc8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01f040 <_sidata+0x170a4>
1c007bcc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ec30 <_sidata+0x16c94>
1c007bd0:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffb334 <_start-0x4ccc>
1c007bd4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffed44 <_start-0x12bc>
1c007bd8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00ea38 <_sidata+0x6a9c>
1c007bdc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c007be0:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007be4:	50545451 	b	21255252(0x1445454) # 1d44d038 <_sidata+0x144509c>
1c007be8:	303d4255 	0x303d4255
1c007bec:	6b2f222c 	bltu	$r17,$r12,-53472(0x32f20) # 1bffab0c <_start-0x54f4>
1c007bf0:	336c6431 	xvstelm.h	$xr17,$r1,50(0x32),0xb
1c007bf4:	52324a65 	b	-107597240(0x9963248) # 1596ae3c <_start-0x66951c4>
1c007bf8:	312f4242 	vstelm.w	$vr2,$r18,-192(0x340),0x3
1c007bfc:	32303163 	0x32303163
1c007c00:	73752f73 	0x73752f73
1c007c04:	752f7265 	xvsigncov.w	$xr5,$xr19,$xr28
1c007c08:	74616470 	xvabsd.w	$xr16,$xr3,$xr25
1c007c0c:	222c2265 	ll.d	$r5,$r19,11296(0x2c20)
1c007c10:	2c227325 	vld	$vr5,$r25,-1892(0x89c)
1c007c14:	0a302c30 	0x0a302c30
1c007c18:	00000000 	0x00000000
1c007c1c:	00004b4f 	bitrev.4b	$r15,$r26
1c007c20:	000a7325 	0x000a7325
1c007c24:	3a646d63 	0x3a646d63
1c007c28:	0a0d7325 	0x0a0d7325
1c007c2c:	00000000 	0x00000000
1c007c30:	000a7325 	0x000a7325
1c007c34:	3a6b6361 	0x3a6b6361
1c007c38:	0a0d7325 	0x0a0d7325
1c007c3c:	00000000 	0x00000000
1c007c40:	3a736572 	0x3a736572
1c007c44:	0a0d6425 	0x0a0d6425
1c007c48:	00000000 	0x00000000
1c007c4c:	0a0d5441 	0x0a0d5441
1c007c50:	00000000 	0x00000000
1c007c54:	00004b4f 	bitrev.4b	$r15,$r26
1c007c58:	00005441 	bitrev.d	$r1,$r2
1c007c5c:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07a7b0 <_sidata+0x72814>
1c007c60:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdccbac <_start-0x233454>
1c007c64:	0d313d45 	0x0d313d45
1c007c68:	0000000a 	0x0000000a
1c007c6c:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07a7c0 <_sidata+0x72824>
1c007c70:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdccbbc <_start-0x233444>
1c007c74:	00313d45 	0x00313d45
1c007c78:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07a7cc <_sidata+0x72830>
1c007c7c:	50414a57 	b	-111394488(0x95c4148) # 155cbdc4 <_start-0x6a3423c>
1c007c80:	2d78793d 	0x2d78793d
1c007c84:	6f687069 	bgeu	$r3,$r9,-38800(0x36870) # 1bffe4f4 <_start-0x1b0c>
1c007c88:	312c656e 	vstelm.w	$vr14,$r11,100(0x64),0x3
1c007c8c:	35343332 	0x35343332
1c007c90:	0d383736 	0x0d383736
1c007c94:	0000000a 	0x0000000a
1c007c98:	432b5441 	beqz	$r2,469844(0x72b54) # 1c07a7ec <_sidata+0x72850>
1c007c9c:	50414a57 	b	-111394488(0x95c4148) # 155cbde4 <_start-0x6a3421c>
1c007ca0:	6554223d 	bge	$r17,$r29,87072(0x15420) # 1c01d0c0 <_sidata+0x15124>
1c007ca4:	5f61646e 	bne	$r3,$r14,-40604(0x36164) # 1bffde08 <_start-0x21f8>
1c007ca8:	39374342 	0x39374342
1c007cac:	2c223045 	vld	$vr5,$r2,-1908(0x88c)
1c007cb0:	6d747322 	bgeu	$r25,$r2,95344(0x17470) # 1c01f120 <_sidata+0x17184>
1c007cb4:	31663233 	0x31663233
1c007cb8:	38633330 	amor.w	$r16,$r12,$r25
1c007cbc:	00223674 	div.d	$r20,$r19,$r13
1c007cc0:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007cc4:	55545451 	bl	21320788(0x1455454) # 1d45d118 <_sidata+0x145517c>
1c007cc8:	43524553 	beqz	$r10,-3190204(0x4f5244) # 1bcfcf0c <_start-0x3030f4>
1c007ccc:	313d4746 	0x313d4746
1c007cd0:	4c554e2c 	jirl	$r12,$r17,21836(0x554c)
1c007cd4:	63312c4c 	blt	$r2,$r12,-52948(0x3312c) # 1bffae00 <_start-0x5200>
1c007cd8:	73323031 	0x73323031
1c007cdc:	64316b26 	bge	$r25,$r6,12648(0x3168) # 1c00ae44 <_sidata+0x2ea8>
1c007ce0:	4a65336c 	0x4a65336c
1c007ce4:	42425232 	beqz	$r17,-3521968(0x4a4250) # 1bcabf34 <_start-0x3540cc>
1c007ce8:	3430642c 	0x3430642c
1c007cec:	66653932 	bge	$r9,$r18,-105160(0x26538) # 1bfee224 <_start-0x11ddc>
1c007cf0:	34383438 	0x34383438
1c007cf4:	65613131 	bge	$r9,$r17,90416(0x16130) # 1c01de24 <_sidata+0x15e88>
1c007cf8:	37646339 	0x37646339
1c007cfc:	35616232 	0x35616232
1c007d00:	65373565 	bge	$r11,$r5,79668(0x13734) # 1c01b434 <_sidata+0x13498>
1c007d04:	33303730 	xvstelm.w	$xr16,$r25,52(0x34),0x4
1c007d08:	36353533 	0x36353533
1c007d0c:	31303962 	0x31303962
1c007d10:	63313736 	blt	$r25,$r22,-52940(0x33134) # 1bffae44 <_start-0x51bc>
1c007d14:	35323836 	0x35323836
1c007d18:	37663262 	0x37663262
1c007d1c:	61356135 	blt	$r9,$r21,79200(0x13560) # 1c01b27c <_sidata+0x132e0>
1c007d20:	63366265 	blt	$r19,$r5,-51616(0x33660) # 1bffb380 <_start-0x4c80>
1c007d24:	36633735 	0x36633735
1c007d28:	2c302c64 	vld	$vr4,$r3,-1013(0xc0b)
1c007d2c:	22222c30 	ll.d	$r16,$r1,8748(0x222c)
1c007d30:	00000a0d 	0x00000a0d
1c007d34:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007d38:	55545451 	bl	21320788(0x1455454) # 1d45d18c <_sidata+0x14551f0>
1c007d3c:	43524553 	beqz	$r10,-3190204(0x4f5244) # 1bcfcf80 <_start-0x303080>
1c007d40:	303d4746 	0x303d4746
1c007d44:	222c312c 	ll.d	$r12,$r9,11312(0x2c30)
1c007d48:	4c4c554e 	jirl	$r14,$r10,19540(0x4c54)
1c007d4c:	31222c22 	vstelm.w	$vr2,$r1,-468(0x22c),0x0
1c007d50:	32303163 	0x32303163
1c007d54:	316b2673 	0x316b2673
1c007d58:	65336c64 	bge	$r3,$r4,78700(0x1336c) # 1c01b0c4 <_sidata+0x13128>
1c007d5c:	4252324a 	beqz	$r18,2773552(0x2a5230) # 1c2acf8c <_sidata+0x2a4ff0>
1c007d60:	222c2242 	ll.d	$r2,$r18,11296(0x2c20)
1c007d64:	35366337 	0x35366337
1c007d68:	64353435 	bge	$r1,$r21,13620(0x3534) # 1c00b29c <_sidata+0x3300>
1c007d6c:	31383962 	0x31383962
1c007d70:	62353266 	blt	$r19,$r6,-117456(0x23530) # 1bfeb2a0 <_start-0x14d60>
1c007d74:	35373733 	0x35373733
1c007d78:	36663330 	0x36663330
1c007d7c:	32646633 	0x32646633
1c007d80:	30373962 	0x30373962
1c007d84:	34336530 	0x34336530
1c007d88:	32366135 	0x32366135
1c007d8c:	66373731 	bge	$r25,$r17,-116940(0x23734) # 1bfeb4c0 <_start-0x14b40>
1c007d90:	61646632 	blt	$r17,$r18,91236(0x16464) # 1c01e1f4 <_sidata+0x16258>
1c007d94:	62336336 	blt	$r25,$r22,-117920(0x23360) # 1bfeb0f4 <_start-0x14f0c>
1c007d98:	65386435 	bge	$r1,$r21,79972(0x13864) # 1c01b5fc <_sidata+0x13660>
1c007d9c:	63323534 	blt	$r9,$r20,-52684(0x33234) # 1bffafd0 <_start-0x5030>
1c007da0:	32316466 	0x32316466
1c007da4:	2c302c22 	vld	$vr2,$r1,-1013(0xc0b)
1c007da8:	22222c30 	ll.d	$r16,$r1,8748(0x222c)
1c007dac:	00000000 	0x00000000
1c007db0:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007db4:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7d208 <_start-0x382df8>
1c007db8:	4e45494c 	jirl	$r12,$r10,-113336(0x24548)
1c007dbc:	3d444954 	0x3d444954
1c007dc0:	316b2c30 	0x316b2c30
1c007dc4:	65336c64 	bge	$r3,$r4,78700(0x1336c) # 1c01b130 <_sidata+0x13194>
1c007dc8:	4252324a 	beqz	$r18,2773552(0x2a5230) # 1c2acff8 <_sidata+0x2a505c>
1c007dcc:	63312e42 	blt	$r18,$r2,-52948(0x3312c) # 1bffaef8 <_start-0x5108>
1c007dd0:	73323031 	0x73323031
1c007dd4:	6365737c 	blt	$r27,$r28,-39568(0x36570) # 1bffe344 <_start-0x1cbc>
1c007dd8:	6d657275 	bgeu	$r19,$r21,91504(0x16570) # 1c01e348 <_sidata+0x163ac>
1c007ddc:	3d65646f 	0x3d65646f
1c007de0:	69732c32 	bltu	$r1,$r18,95020(0x1732c) # 1c01f10c <_sidata+0x17170>
1c007de4:	656d6e67 	bge	$r19,$r7,93548(0x16d6c) # 1c01eb50 <_sidata+0x16bb4>
1c007de8:	646f6874 	bge	$r3,$r20,28520(0x6f68) # 1c00ed50 <_sidata+0x6db4>
1c007dec:	616d683d 	blt	$r1,$r29,93544(0x16d68) # 1c01eb54 <_sidata+0x16bb8>
1c007df0:	61687363 	blt	$r27,$r3,92272(0x16870) # 1c01e660 <_sidata+0x166c4>
1c007df4:	2c363532 	vld	$vr18,$r9,-627(0xd8d)
1c007df8:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01eb60 <_sidata+0x16bc4>
1c007dfc:	6d617473 	bgeu	$r3,$r19,90484(0x16174) # 1c01df70 <_sidata+0x15fd4>
1c007e00:	37313d70 	0x37313d70
1c007e04:	33363931 	xvstelm.w	$xr17,$r9,-456(0x238),0x5
1c007e08:	30343736 	0x30343736
1c007e0c:	7c393931 	0x7c393931
1c007e10:	00000a0d 	0x00000a0d
1c007e14:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007e18:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7d26c <_start-0x382d94>
1c007e1c:	4e45494c 	jirl	$r12,$r10,-113336(0x24548)
1c007e20:	3d444954 	0x3d444954
1c007e24:	6b222c30 	bltu	$r1,$r16,-56788(0x3222c) # 1bffa050 <_start-0x5fb0>
1c007e28:	336c6431 	xvstelm.h	$xr17,$r1,50(0x32),0xb
1c007e2c:	52324a65 	b	-107597240(0x9963248) # 1596b074 <_start-0x6694f8c>
1c007e30:	312e4242 	vstelm.w	$vr2,$r18,-448(0x240),0x3
1c007e34:	32303163 	0x32303163
1c007e38:	65737c73 	bge	$r3,$r19,95100(0x1737c) # 1c01f1b4 <_sidata+0x17218>
1c007e3c:	65727563 	bge	$r11,$r3,94836(0x17274) # 1c01f0b0 <_sidata+0x17114>
1c007e40:	65646f6d 	bge	$r27,$r13,91244(0x1646c) # 1c01e2ac <_sidata+0x16310>
1c007e44:	2c5c323d 	vst	$vr29,$r17,1804(0x70c)
1c007e48:	6e676973 	bgeu	$r11,$r19,-104600(0x26768) # 1bfee5b0 <_start-0x11a50>
1c007e4c:	6874656d 	bltu	$r11,$r13,29796(0x7464) # 1c00f2b0 <_sidata+0x7314>
1c007e50:	683d646f 	bltu	$r3,$r15,15716(0x3d64) # 1c00bbb4 <_sidata+0x3c18>
1c007e54:	7363616d 	vssrani.d.q	$vr13,$vr11,0x58
1c007e58:	35326168 	0x35326168
1c007e5c:	742c5c36 	0x742c5c36
1c007e60:	73656d69 	vssrani.wu.d	$vr9,$vr11,0x1b
1c007e64:	706d6174 	0x706d6174
1c007e68:	3137313d 	0x3137313d
1c007e6c:	39383939 	0x39383939
1c007e70:	39373037 	0x39373037
1c007e74:	227c3132 	ll.d	$r18,$r9,31792(0x7c30)
1c007e78:	00000000 	0x00000000
1c007e7c:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007e80:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7d2d4 <_start-0x382d2c>
1c007e84:	3d4e4e4f 	0x3d4e4e4f
1c007e88:	69222c30 	bltu	$r1,$r16,74284(0x1222c) # 1c01a0b4 <_sidata+0x12118>
1c007e8c:	302d746f 	vldrepl.w	$vr15,$r3,-652(0xd74)
1c007e90:	30307a36 	0x30307a36
1c007e94:	36397a62 	0x36397a62
1c007e98:	62783437 	blt	$r1,$r23,-100300(0x27834) # 1bfef6cc <_start-0x10934>
1c007e9c:	6d2e7665 	bgeu	$r19,$r5,77428(0x12e74) # 1c01ad10 <_sidata+0x12d74>
1c007ea0:	2e747471 	0x2e747471
1c007ea4:	68746f69 	bltu	$r27,$r9,29804(0x746c) # 1c00f310 <_sidata+0x7374>
1c007ea8:	612e6275 	blt	$r19,$r21,77408(0x12e60) # 1c01ad08 <_sidata+0x12d6c>
1c007eac:	7579696c 	0x7579696c
1c007eb0:	2e73636e 	0x2e73636e
1c007eb4:	226d6f63 	ll.d	$r3,$r27,28012(0x6d6c)
1c007eb8:	3838312c 	fstx.s	$f12,$r9,$r12
1c007ebc:	0d312c33 	0x0d312c33
1c007ec0:	0000000a 	0x0000000a
1c007ec4:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007ec8:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7d31c <_start-0x382ce4>
1c007ecc:	3d4e4e4f 	0x3d4e4e4f
1c007ed0:	69222c30 	bltu	$r1,$r16,74284(0x1222c) # 1c01a0fc <_sidata+0x12160>
1c007ed4:	302d746f 	vldrepl.w	$vr15,$r3,-652(0xd74)
1c007ed8:	30307a36 	0x30307a36
1c007edc:	36397a62 	0x36397a62
1c007ee0:	62783437 	blt	$r1,$r23,-100300(0x27834) # 1bfef714 <_start-0x108ec>
1c007ee4:	6d2e7665 	bgeu	$r19,$r5,77428(0x12e74) # 1c01ad58 <_sidata+0x12dbc>
1c007ee8:	2e747471 	0x2e747471
1c007eec:	68746f69 	bltu	$r27,$r9,29804(0x746c) # 1c00f358 <_sidata+0x73bc>
1c007ef0:	612e6275 	blt	$r19,$r21,77408(0x12e60) # 1c01ad50 <_sidata+0x12db4>
1c007ef4:	7579696c 	0x7579696c
1c007ef8:	2e73636e 	0x2e73636e
1c007efc:	226d6f63 	ll.d	$r3,$r27,28012(0x6d6c)
1c007f00:	3838312c 	fstx.s	$f12,$r9,$r12
1c007f04:	00312c33 	0x00312c33
1c007f08:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007f0c:	53545451 	b	21451860(0x1475454) # 1d47d360 <_sidata+0x14753c4>
1c007f10:	303d4255 	0x303d4255
1c007f14:	0d312c2c 	0x0d312c2c
1c007f18:	0000000a 	0x0000000a
1c007f1c:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007f20:	53545451 	b	21451860(0x1475454) # 1d47d374 <_sidata+0x14753d8>
1c007f24:	303d4255 	0x303d4255
1c007f28:	6b2f222c 	bltu	$r17,$r12,-53472(0x32f20) # 1bffae48 <_start-0x51b8>
1c007f2c:	336c6431 	xvstelm.h	$xr17,$r1,50(0x32),0xb
1c007f30:	52324a65 	b	-107597240(0x9963248) # 1596b178 <_start-0x6694e88>
1c007f34:	312f4242 	vstelm.w	$vr2,$r18,-192(0x340),0x3
1c007f38:	32303163 	0x32303163
1c007f3c:	73752f73 	0x73752f73
1c007f40:	672f7265 	bge	$r19,$r5,-53392(0x32f70) # 1bffaeb0 <_start-0x5150>
1c007f44:	2c227465 	vld	$vr5,$r3,-1891(0x89d)
1c007f48:	00000031 	0x00000031
1c007f4c:	00007325 	0x00007325
1c007f50:	54514d2b 	bl	78401868(0x4ac514c) # 20acd09c <_sidata+0x4ac5100>
1c007f54:	42555354 	beqz	$r26,-2992816(0x525550) # 1bd2d4a4 <_start-0x2d2b5c>
1c007f58:	56434552 	bl	88752964(0x54a4344) # 214ac29c <_sidata+0x54a4300>
1c007f5c:	00000000 	0x00000000
1c007f60:	20656874 	ll.w	$r20,$r3,25960(0x6568)
1c007f64:	61746164 	blt	$r11,$r4,95328(0x17460) # 1c01f3c4 <_sidata+0x17428>
1c007f68:	6f726620 	bgeu	$r17,$r0,-36252(0x37264) # 1bfff1cc <_start-0xe34>
1c007f6c:	6572206d 	bge	$r3,$r13,94752(0x17220) # 1c01f18c <_sidata+0x171f0>
1c007f70:	00007663 	0x00007663
1c007f74:	6c696f73 	bgeu	$r27,$r19,26988(0x696c) # 1c00e8e0 <_sidata+0x6944>
1c007f78:	6d65745f 	bgeu	$r2,$r31,91508(0x16574) # 1c01e4ec <_sidata+0x16550>
1c007f7c:	61726570 	blt	$r11,$r16,94820(0x17264) # 1c01f1e0 <_sidata+0x17244>
1c007f80:	65727574 	bge	$r11,$r20,94836(0x17274) # 1c01f1f4 <_sidata+0x17258>
1c007f84:	00000000 	0x00000000
1c007f88:	6c696f73 	bgeu	$r27,$r19,26988(0x696c) # 1c00e8f4 <_sidata+0x6958>
1c007f8c:	696f6d5f 	bltu	$r10,$r31,94060(0x16f6c) # 1c01eef8 <_sidata+0x16f5c>
1c007f90:	72757473 	0x72757473
1c007f94:	00000065 	0x00000065
1c007f98:	00000000 	0x00000000

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c007069 	pcaddu12i	$r9,899(0x383)
80001008:	80000074 	0x80000074
8000100c:	80000038 	0x80000038
80001010:	80000014 	0x80000014
80001014:	80000c7c 	0x80000c7c
80001018:	800008a0 	0x800008a0
8000101c:	80000024 	0x80000024
80001020:	800009d0 	0x800009d0
80001024:	8000106c 	0x8000106c
80001028:	80000478 	0x80000478
8000102c:	8000047c 	0x8000047c
80001030:	8000000c 	0x8000000c
80001034:	80000c54 	0x80000c54
80001038:	80000488 	0x80000488
8000103c:	80000888 	0x80000888
80001040:	8000001c 	0x8000001c
80001044:	80000c30 	0x80000c30
80001048:	80000c64 	0x80000c64
8000104c:	80000898 	0x80000898
80001050:	8000089c 	0x8000089c
80001054:	80000c70 	0x80000c70
80001058:	1c007060 	pcaddu12i	$r0,899(0x383)
8000105c:	80000004 	0x80000004
80001060:	8000002c 	0x8000002c
80001064:	80000b00 	0x80000b00
80001068:	800008a4 	0x800008a4

8000106c <g_SystemFreq>:
8000106c:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

80001070 <tx_data>:
80001070:	00000401 	0x00000401
80001074:	cb710200 	0xcb710200

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

80000030 <receive_data_uart0.1861>:
	...

80000031 <temp>:
	...

80000032 <RxState>:
	...

80000033 <pRxPacket>:
	...

80000034 <esp_count>:
80000034:	00000000 	0x00000000

80000038 <tempareture_type>:
	...

80000074 <json_backage>:
	...

80000478 <Json_Read_length>:
80000478:	00000000 	0x00000000

8000047c <Json_recive_data>:
8000047c:	00000000 	0x00000000

80000480 <contrl_package>:
	...

80000488 <Json_Read_Buffer>:
	...

80000888 <Json_Comma_Flag>:
	...

80000898 <mqtt_data>:
80000898:	00000000 	0x00000000

8000089c <Json_recive_data_lenth>:
8000089c:	00000000 	0x00000000

800008a0 <Read_length>:
800008a0:	00000000 	0x00000000

800008a4 <Read_Buffer>:
	...

800009d0 <Circular_queue_recv>:
	...

80000b00 <Circular_queue_send>:
	...

80000c30 <humidity_type>:
	...

80000c48 <Serial_TxPacket>:
	...

80000c50 <Serial_RxFlag>:
	...

80000c51 <Serial_TxFlag>:
80000c51:	 	0x00000000

80000c54 <Temp_Hum>:
	...

80000c64 <Serial_RxPacket>:
	...

80000c70 <PWM_485_Data>:
	...

80000c7c <mqtt_esp_type>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
