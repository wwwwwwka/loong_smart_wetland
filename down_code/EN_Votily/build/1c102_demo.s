
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
1c00000c:	038b81ef 	ori	$r15,$r15,0x2e0
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
1c000030:	038141ef 	ori	$r15,$r15,0x50
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	0394a1ad 	ori	$r13,$r13,0x528
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
1c001090:	543b1000 	bl	15120(0x3b10) # 1c004ba0 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	543b5800 	bl	15192(0x3b58) # 1c004bf0 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	543be400 	bl	15332(0x3be4) # 1c004c84 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	543c1800 	bl	15384(0x3c18) # 1c004cc0 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	543a3800 	bl	14904(0x3a38) # 1c004ae8 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	543fc800 	bl	16328(0x3fc8) # 1c005080 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543cd000 	bl	15568(0x3cd0) # 1c004d98 <intc_handler>
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
1c001290:	28b6a084 	ld.w	$r4,$r4,-600(0xda8)
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
1c0013d4:	541dcc00 	bl	7628(0x1dcc) # 1c0031a0 <DisableInt>
1c0013d8:	541d2c00 	bl	7468(0x1d2c) # 1c003104 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	54271c00 	bl	10012(0x271c) # 1c003afc <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54265c00 	bl	9820(0x265c) # 1c003a44 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	54151400 	bl	5396(0x1514) # 1c002908 <Uart0_init>
1c0013f8:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013fc:	03880184 	ori	$r4,$r12,0x200
1c001400:	5415cc00 	bl	5580(0x15cc) # 1c0029cc <Uart1_init>
1c001404:	1400004c 	lu12i.w	$r12,2(0x2)
1c001408:	03960184 	ori	$r4,$r12,0x580
1c00140c:	54168400 	bl	5764(0x1684) # 1c002a90 <Uart2_init>
1c001410:	541f8400 	bl	8068(0x1f84) # 1c003394 <ls1x_logo>
1c001414:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001418:	0380118c 	ori	$r12,$r12,0x4
1c00141c:	2880018e 	ld.w	$r14,$r12,0
1c001420:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001424:	0380118c 	ori	$r12,$r12,0x4
1c001428:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c00142c:	001535cd 	or	$r13,$r14,$r13
1c001430:	2980018d 	st.w	$r13,$r12,0
1c001434:	541d9000 	bl	7568(0x1d90) # 1c0031c4 <EnableInt>
1c001438:	54202400 	bl	8228(0x2024) # 1c00345c <open_count>
1c00143c:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001440:	541dec00 	bl	7660(0x1dec) # 1c00322c <Wake_Set>
1c001444:	54268c00 	bl	9868(0x268c) # 1c003ad0 <WDG_DogFeed>
1c001448:	541e9000 	bl	7824(0x1e90) # 1c0032d8 <PMU_GetRstRrc>
1c00144c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001454:	44003180 	bnez	$r12,48(0x30) # 1c001484 <bsp_init+0xc0>
1c001458:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c00145c:	02bb1084 	addi.w	$r4,$r4,-316(0xec4)
1c001460:	54085800 	bl	2136(0x858) # 1c001cb8 <myprintf>
1c001464:	541ee000 	bl	7904(0x1ee0) # 1c003344 <PMU_GetBootSpiStatus>
1c001468:	0015008c 	move	$r12,$r4
1c00146c:	40001180 	beqz	$r12,16(0x10) # 1c00147c <bsp_init+0xb8>
1c001470:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001474:	02baf084 	addi.w	$r4,$r4,-324(0xebc)
1c001478:	54084000 	bl	2112(0x840) # 1c001cb8 <myprintf>
1c00147c:	543e2c00 	bl	15916(0x3e2c) # 1c0052a8 <main>
1c001480:	50004000 	b	64(0x40) # 1c0014c0 <bsp_init+0xfc>
1c001484:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001488:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00148c:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c0014a4 <bsp_init+0xe0>
1c001490:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001494:	02baa084 	addi.w	$r4,$r4,-344(0xea8)
1c001498:	54082000 	bl	2080(0x820) # 1c001cb8 <myprintf>
1c00149c:	543e0c00 	bl	15884(0x3e0c) # 1c0052a8 <main>
1c0014a0:	50002000 	b	32(0x20) # 1c0014c0 <bsp_init+0xfc>
1c0014a4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0014a8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0014ac:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014c0 <bsp_init+0xfc>
1c0014b0:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0014b4:	02ba6084 	addi.w	$r4,$r4,-360(0xe98)
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
1c001898:	54127c00 	bl	4732(0x127c) # 1c002b14 <Uart0_send>
1c00189c:	50003800 	b	56(0x38) # 1c0018d4 <myputchar2+0x70>
1c0018a0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0018a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0018a8:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0018bc <myputchar2+0x58>
1c0018ac:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0018b0:	00150184 	move	$r4,$r12
1c0018b4:	54129c00 	bl	4764(0x129c) # 1c002b50 <Uart1_send>
1c0018b8:	50001c00 	b	28(0x1c) # 1c0018d4 <myputchar2+0x70>
1c0018bc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0018c0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0018c4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0018d4 <myputchar2+0x70>
1c0018c8:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0018cc:	00150184 	move	$r4,$r12
1c0018d0:	5412bc00 	bl	4796(0x12bc) # 1c002b8c <Uart2_send>
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
1c001d50:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c001d54:	0298118c 	addi.w	$r12,$r12,1540(0x604)
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
1c0020f8:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c0020fc:	028eb18c 	addi.w	$r12,$r12,940(0x3ac)
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
1c002944:	289b818c 	ld.w	$r12,$r12,1760(0x6e0)
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
1c002a08:	2898718c 	ld.w	$r12,$r12,1564(0x61c)
1c002a0c:	2880018c 	ld.w	$r12,$r12,0
1c002a10:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002a14:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a18:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002a1c:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002a20:	00150185 	move	$r5,$r12
1c002a24:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a28:	57fa4bff 	bl	-1464(0xffffa48) # 1c002470 <UART_Init>
1c002a2c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002a30:	0380098c 	ori	$r12,$r12,0x2
1c002a34:	2a00018c 	ld.bu	$r12,$r12,0
1c002a38:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002a3c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002a40:	0380098c 	ori	$r12,$r12,0x2
1c002a44:	038011ad 	ori	$r13,$r13,0x4
1c002a48:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002a4c:	2900018d 	st.b	$r13,$r12,0
1c002a50:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002a54:	2a00018c 	ld.bu	$r12,$r12,0
1c002a58:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002a5c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002a60:	038011ad 	ori	$r13,$r13,0x4
1c002a64:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002a68:	2900018d 	st.b	$r13,$r12,0
1c002a6c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002a70:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002a74:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002a78:	57fd73ff 	bl	-656(0xffffd70) # 1c0027e8 <UART_ITConfig>
1c002a7c:	03400000 	andi	$r0,$r0,0x0
1c002a80:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002a84:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002a88:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a8c:	4c000020 	jirl	$r0,$r1,0

1c002a90 <Uart2_init>:
Uart2_init():
1c002a90:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a94:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002a98:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002a9c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002aa0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002aa4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002aa8:	02809804 	addi.w	$r4,$r0,38(0x26)
1c002aac:	57eb73ff 	bl	-5264(0xfffeb70) # 1c00161c <gpio_pin_remap>
1c002ab0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c002ab4:	02809c04 	addi.w	$r4,$r0,39(0x27)
1c002ab8:	57eb67ff 	bl	-5276(0xfffeb64) # 1c00161c <gpio_pin_remap>
1c002abc:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002ac0:	00150184 	move	$r4,$r12
1c002ac4:	57fcabff 	bl	-856(0xffffca8) # 1c00276c <UART_StructInit>
1c002ac8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002acc:	2895618c 	ld.w	$r12,$r12,1368(0x558)
1c002ad0:	2880018c 	ld.w	$r12,$r12,0
1c002ad4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002ad8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002adc:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002ae0:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002ae4:	00150185 	move	$r5,$r12
1c002ae8:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c002aec:	57f987ff 	bl	-1660(0xffff984) # 1c002470 <UART_Init>
1c002af0:	00150006 	move	$r6,$r0
1c002af4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002af8:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c002afc:	57fcefff 	bl	-788(0xffffcec) # 1c0027e8 <UART_ITConfig>
1c002b00:	03400000 	andi	$r0,$r0,0x0
1c002b04:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002b08:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002b0c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b10:	4c000020 	jirl	$r0,$r1,0

1c002b14 <Uart0_send>:
Uart0_send():
1c002b14:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b18:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002b1c:	29806076 	st.w	$r22,$r3,24(0x18)
1c002b20:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b24:	0015008c 	move	$r12,$r4
1c002b28:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002b2c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002b30:	00150185 	move	$r5,$r12
1c002b34:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002b38:	57fd3bff 	bl	-712(0xffffd38) # 1c002870 <UART_SendData>
1c002b3c:	03400000 	andi	$r0,$r0,0x0
1c002b40:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002b44:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002b48:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002b4c:	4c000020 	jirl	$r0,$r1,0

1c002b50 <Uart1_send>:
Uart1_send():
1c002b50:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b54:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002b58:	29806076 	st.w	$r22,$r3,24(0x18)
1c002b5c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b60:	0015008c 	move	$r12,$r4
1c002b64:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002b68:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002b6c:	00150185 	move	$r5,$r12
1c002b70:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002b74:	57fcffff 	bl	-772(0xffffcfc) # 1c002870 <UART_SendData>
1c002b78:	03400000 	andi	$r0,$r0,0x0
1c002b7c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002b80:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002b84:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002b88:	4c000020 	jirl	$r0,$r1,0

1c002b8c <Uart2_send>:
Uart2_send():
1c002b8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002b90:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002b94:	29806076 	st.w	$r22,$r3,24(0x18)
1c002b98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002b9c:	0015008c 	move	$r12,$r4
1c002ba0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002ba4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002ba8:	00150185 	move	$r5,$r12
1c002bac:	157fd184 	lu12i.w	$r4,-262516(0xbfe8c)
1c002bb0:	57fcc3ff 	bl	-832(0xffffcc0) # 1c002870 <UART_SendData>
1c002bb4:	03400000 	andi	$r0,$r0,0x0
1c002bb8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002bbc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002bc0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002bc4:	4c000020 	jirl	$r0,$r1,0

1c002bc8 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002bc8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002bcc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002bd0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002bd4:	1400006c 	lu12i.w	$r12,3(0x3)
1c002bd8:	03ba018c 	ori	$r12,$r12,0xe80
1c002bdc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002be0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002be4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002be8:	2880018d 	ld.w	$r13,$r12,0
1c002bec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bf0:	038101ad 	ori	$r13,$r13,0x40
1c002bf4:	2980018d 	st.w	$r13,$r12,0
1c002bf8:	03400000 	andi	$r0,$r0,0x0
1c002bfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c00:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c04:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002c08:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002bfc <CLOCK_WaitForHSEStartUp+0x34>
1c002c0c:	50001c00 	b	28(0x1c) # 1c002c28 <CLOCK_WaitForHSEStartUp+0x60>
1c002c10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c14:	2880018e 	ld.w	$r14,$r12,0
1c002c18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c1c:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002c20:	0014b5cd 	and	$r13,$r14,$r13
1c002c24:	2980018d 	st.w	$r13,$r12,0
1c002c28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c2c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002c30:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002c10 <CLOCK_WaitForHSEStartUp+0x48>
1c002c34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c38:	2880018d 	ld.w	$r13,$r12,0
1c002c3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c40:	038201ad 	ori	$r13,$r13,0x80
1c002c44:	2980018d 	st.w	$r13,$r12,0
1c002c48:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c4c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c50:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c54:	00150184 	move	$r4,$r12
1c002c58:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c5c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c60:	4c000020 	jirl	$r0,$r1,0

1c002c64 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002c64:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002c68:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002c6c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c70:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002c74:	50008800 	b	136(0x88) # 1c002cfc <CLOCK_WaitForLSEStartUp+0x98>
1c002c78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c7c:	2880018e 	ld.w	$r14,$r12,0
1c002c80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c84:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002c88:	0014b5cd 	and	$r13,$r14,$r13
1c002c8c:	2980018d 	st.w	$r13,$r12,0
1c002c90:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002c94:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c98:	50001400 	b	20(0x14) # 1c002cac <CLOCK_WaitForLSEStartUp+0x48>
1c002c9c:	03400000 	andi	$r0,$r0,0x0
1c002ca0:	03400000 	andi	$r0,$r0,0x0
1c002ca4:	03400000 	andi	$r0,$r0,0x0
1c002ca8:	03400000 	andi	$r0,$r0,0x0
1c002cac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cb0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002cb4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002cb8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002c9c <CLOCK_WaitForLSEStartUp+0x38>
1c002cbc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cc0:	2880018d 	ld.w	$r13,$r12,0
1c002cc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002cc8:	038081ad 	ori	$r13,$r13,0x20
1c002ccc:	2980018d 	st.w	$r13,$r12,0
1c002cd0:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002cd4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002cd8:	50001400 	b	20(0x14) # 1c002cec <CLOCK_WaitForLSEStartUp+0x88>
1c002cdc:	03400000 	andi	$r0,$r0,0x0
1c002ce0:	03400000 	andi	$r0,$r0,0x0
1c002ce4:	03400000 	andi	$r0,$r0,0x0
1c002ce8:	03400000 	andi	$r0,$r0,0x0
1c002cec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002cf0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002cf4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002cf8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002cdc <CLOCK_WaitForLSEStartUp+0x78>
1c002cfc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d00:	0380118c 	ori	$r12,$r12,0x4
1c002d04:	2880018d 	ld.w	$r13,$r12,0
1c002d08:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002d0c:	0014b1ac 	and	$r12,$r13,$r12
1c002d10:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002c78 <CLOCK_WaitForLSEStartUp+0x14>
1c002d14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d18:	0380118c 	ori	$r12,$r12,0x4
1c002d1c:	2880018d 	ld.w	$r13,$r12,0
1c002d20:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002d24:	0014b1ac 	and	$r12,$r13,$r12
1c002d28:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002c78 <CLOCK_WaitForLSEStartUp+0x14>
1c002d2c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d30:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002d34:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002d38:	00150184 	move	$r4,$r12
1c002d3c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d40:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d44:	4c000020 	jirl	$r0,$r1,0

1c002d48 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002d48:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d4c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d50:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d54:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d58:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d5c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d60:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d64:	2880018e 	ld.w	$r14,$r12,0
1c002d68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d6c:	0014300d 	nor	$r13,$r0,$r12
1c002d70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d74:	0014b5cd 	and	$r13,$r14,$r13
1c002d78:	2980018d 	st.w	$r13,$r12,0
1c002d7c:	1400002c 	lu12i.w	$r12,1(0x1)
1c002d80:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002d84:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002d88:	50001400 	b	20(0x14) # 1c002d9c <CLOCK_HSEConfig+0x54>
1c002d8c:	03400000 	andi	$r0,$r0,0x0
1c002d90:	03400000 	andi	$r0,$r0,0x0
1c002d94:	03400000 	andi	$r0,$r0,0x0
1c002d98:	03400000 	andi	$r0,$r0,0x0
1c002d9c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002da0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002da4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002da8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002d8c <CLOCK_HSEConfig+0x44>
1c002dac:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002db0:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002db4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002dc4 <CLOCK_HSEConfig+0x7c>
1c002db8:	57fe13ff 	bl	-496(0xffffe10) # 1c002bc8 <CLOCK_WaitForHSEStartUp>
1c002dbc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002dc0:	50002400 	b	36(0x24) # 1c002de4 <CLOCK_HSEConfig+0x9c>
1c002dc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dc8:	2880018e 	ld.w	$r14,$r12,0
1c002dcc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002dd0:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002dd4:	0014b5cd 	and	$r13,$r14,$r13
1c002dd8:	2980018d 	st.w	$r13,$r12,0
1c002ddc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002de0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002de4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002de8:	00150184 	move	$r4,$r12
1c002dec:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002df0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002df4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002df8:	4c000020 	jirl	$r0,$r1,0

1c002dfc <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002dfc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e00:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e04:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e08:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e0c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e10:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e14:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002e18:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002e1c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002e2c <CLOCK_LSEConfig+0x30>
1c002e20:	57fe47ff 	bl	-444(0xffffe44) # 1c002c64 <CLOCK_WaitForLSEStartUp>
1c002e24:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e28:	50002400 	b	36(0x24) # 1c002e4c <CLOCK_LSEConfig+0x50>
1c002e2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e30:	2880018e 	ld.w	$r14,$r12,0
1c002e34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e38:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002e3c:	0014b5cd 	and	$r13,$r14,$r13
1c002e40:	2980018d 	st.w	$r13,$r12,0
1c002e44:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e48:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e50:	00150184 	move	$r4,$r12
1c002e54:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e58:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e5c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e60:	4c000020 	jirl	$r0,$r1,0

1c002e64 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002e64:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002e68:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002e6c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002e70:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e78:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002e7c:	2980018d 	st.w	$r13,$r12,0
1c002e80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e84:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002e88:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002e8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e90:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002e94:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002e98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e9c:	29803180 	st.w	$r0,$r12,12(0xc)
1c002ea0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ea4:	29804180 	st.w	$r0,$r12,16(0x10)
1c002ea8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002eac:	29805180 	st.w	$r0,$r12,20(0x14)
1c002eb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002eb4:	29806180 	st.w	$r0,$r12,24(0x18)
1c002eb8:	03400000 	andi	$r0,$r0,0x0
1c002ebc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002ec0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ec4:	4c000020 	jirl	$r0,$r1,0

1c002ec8 <CLOCK_Init>:
CLOCK_Init():
1c002ec8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ecc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002ed0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ed4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ed8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002edc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002ee0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ee4:	2880018e 	ld.w	$r14,$r12,0
1c002ee8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002eec:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002ef0:	0014b5cd 	and	$r13,$r14,$r13
1c002ef4:	2980018d 	st.w	$r13,$r12,0
1c002ef8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002efc:	2880018e 	ld.w	$r14,$r12,0
1c002f00:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f04:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002f08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f0c:	001535cd 	or	$r13,$r14,$r13
1c002f10:	2980018d 	st.w	$r13,$r12,0
1c002f14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f18:	2880018e 	ld.w	$r14,$r12,0
1c002f1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f20:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002f24:	0014b5cd 	and	$r13,$r14,$r13
1c002f28:	2980018d 	st.w	$r13,$r12,0
1c002f2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f30:	2880018e 	ld.w	$r14,$r12,0
1c002f34:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f38:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002f3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f40:	001535cd 	or	$r13,$r14,$r13
1c002f44:	2980018d 	st.w	$r13,$r12,0
1c002f48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f4c:	2880018e 	ld.w	$r14,$r12,0
1c002f50:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f54:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002f58:	039ffdad 	ori	$r13,$r13,0x7ff
1c002f5c:	0014b5cd 	and	$r13,$r14,$r13
1c002f60:	2980018d 	st.w	$r13,$r12,0
1c002f64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f68:	2880018e 	ld.w	$r14,$r12,0
1c002f6c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f70:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002f74:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f78:	001535cd 	or	$r13,$r14,$r13
1c002f7c:	2980018d 	st.w	$r13,$r12,0
1c002f80:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f84:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002f88:	00150184 	move	$r4,$r12
1c002f8c:	57fdbfff 	bl	-580(0xffffdbc) # 1c002d48 <CLOCK_HSEConfig>
1c002f90:	0015008d 	move	$r13,$r4
1c002f94:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002f98:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002fa4 <CLOCK_Init+0xdc>
1c002f9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fa0:	50015000 	b	336(0x150) # 1c0030f0 <CLOCK_Init+0x228>
1c002fa4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fa8:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002fac:	00150184 	move	$r4,$r12
1c002fb0:	57fe4fff 	bl	-436(0xffffe4c) # 1c002dfc <CLOCK_LSEConfig>
1c002fb4:	0015008d 	move	$r13,$r4
1c002fb8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002fbc:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002fc8 <CLOCK_Init+0x100>
1c002fc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fc4:	50012c00 	b	300(0x12c) # 1c0030f0 <CLOCK_Init+0x228>
1c002fc8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fcc:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002fd0:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002fd4:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c0030d0 <CLOCK_Init+0x208>
1c002fd8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fdc:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002fe0:	4000a180 	beqz	$r12,160(0xa0) # 1c003080 <CLOCK_Init+0x1b8>
1c002fe4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002fe8:	2880018e 	ld.w	$r14,$r12,0
1c002fec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ff0:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002ff4:	03bffdad 	ori	$r13,$r13,0xfff
1c002ff8:	0014b5cd 	and	$r13,$r14,$r13
1c002ffc:	2980018d 	st.w	$r13,$r12,0
1c003000:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003004:	2880018e 	ld.w	$r14,$r12,0
1c003008:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00300c:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c003010:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003014:	001535cd 	or	$r13,$r14,$r13
1c003018:	2980018d 	st.w	$r13,$r12,0
1c00301c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003020:	0386c18c 	ori	$r12,$r12,0x1b0
1c003024:	2880018c 	ld.w	$r12,$r12,0
1c003028:	40004180 	beqz	$r12,64(0x40) # 1c003068 <CLOCK_Init+0x1a0>
1c00302c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003030:	0386c18c 	ori	$r12,$r12,0x1b0
1c003034:	2880018c 	ld.w	$r12,$r12,0
1c003038:	0040898e 	slli.w	$r14,$r12,0x2
1c00303c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003040:	002031cd 	div.w	$r13,$r14,$r12
1c003044:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00304c <CLOCK_Init+0x184>
1c003048:	002a0007 	break	0x7
1c00304c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c003050:	001c31ac 	mul.w	$r12,$r13,$r12
1c003054:	0015018d 	move	$r13,$r12
1c003058:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00305c:	02bfd18c 	addi.w	$r12,$r12,-12(0xff4)
1c003060:	2980018d 	st.w	$r13,$r12,0
1c003064:	50008000 	b	128(0x80) # 1c0030e4 <CLOCK_Init+0x21c>
1c003068:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00306c:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c003070:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c003074:	038fe1ad 	ori	$r13,$r13,0x3f8
1c003078:	2980018d 	st.w	$r13,$r12,0
1c00307c:	50006800 	b	104(0x68) # 1c0030e4 <CLOCK_Init+0x21c>
1c003080:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003084:	0386c18c 	ori	$r12,$r12,0x1b0
1c003088:	2880018c 	ld.w	$r12,$r12,0
1c00308c:	40002d80 	beqz	$r12,44(0x2c) # 1c0030b8 <CLOCK_Init+0x1f0>
1c003090:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003094:	0386c18c 	ori	$r12,$r12,0x1b0
1c003098:	2880018d 	ld.w	$r13,$r12,0
1c00309c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c0030a0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0030a4:	0015018d 	move	$r13,$r12
1c0030a8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030ac:	02be918c 	addi.w	$r12,$r12,-92(0xfa4)
1c0030b0:	2980018d 	st.w	$r13,$r12,0
1c0030b4:	50003000 	b	48(0x30) # 1c0030e4 <CLOCK_Init+0x21c>
1c0030b8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030bc:	02be518c 	addi.w	$r12,$r12,-108(0xf94)
1c0030c0:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0030c4:	038801ad 	ori	$r13,$r13,0x200
1c0030c8:	2980018d 	st.w	$r13,$r12,0
1c0030cc:	50001800 	b	24(0x18) # 1c0030e4 <CLOCK_Init+0x21c>
1c0030d0:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030d4:	02bdf18c 	addi.w	$r12,$r12,-132(0xf7c)
1c0030d8:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0030dc:	038801ad 	ori	$r13,$r13,0x200
1c0030e0:	2980018d 	st.w	$r13,$r12,0
1c0030e4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0030e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0030ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030f0:	00150184 	move	$r4,$r12
1c0030f4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0030f8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0030fc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003100:	4c000020 	jirl	$r0,$r1,0

1c003104 <SystemClockInit>:
SystemClockInit():
1c003104:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003108:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00310c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003110:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003114:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c003118:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c00311c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c003120:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003124:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003128:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00312c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003130:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003134:	00150184 	move	$r4,$r12
1c003138:	57fd2fff 	bl	-724(0xffffd2c) # 1c002e64 <CLOCK_StructInit>
1c00313c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c003140:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003144:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c003148:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00314c:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c003150:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003154:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003158:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c00315c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003160:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003164:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003168:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c00316c:	00150184 	move	$r4,$r12
1c003170:	57fd5bff 	bl	-680(0xffffd58) # 1c002ec8 <CLOCK_Init>
1c003174:	0015008d 	move	$r13,$r4
1c003178:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00317c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c003188 <SystemClockInit+0x84>
1c003180:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003184:	50000800 	b	8(0x8) # 1c00318c <SystemClockInit+0x88>
1c003188:	0015000c 	move	$r12,$r0
1c00318c:	00150184 	move	$r4,$r12
1c003190:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003194:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003198:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00319c:	4c000020 	jirl	$r0,$r1,0

1c0031a0 <DisableInt>:
DisableInt():
1c0031a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031a4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031ac:	0380100c 	ori	$r12,$r0,0x4
1c0031b0:	04000180 	csrxchg	$r0,$r12,0x0
1c0031b4:	03400000 	andi	$r0,$r0,0x0
1c0031b8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031c0:	4c000020 	jirl	$r0,$r1,0

1c0031c4 <EnableInt>:
EnableInt():
1c0031c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031c8:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031d0:	0380100c 	ori	$r12,$r0,0x4
1c0031d4:	0400018c 	csrxchg	$r12,$r12,0x0
1c0031d8:	03400000 	andi	$r0,$r0,0x0
1c0031dc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031e4:	4c000020 	jirl	$r0,$r1,0

1c0031e8 <Set_Timer_stop>:
Set_Timer_stop():
1c0031e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031ec:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031f4:	04010420 	csrwr	$r0,0x41
1c0031f8:	03400000 	andi	$r0,$r0,0x0
1c0031fc:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003200:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003204:	4c000020 	jirl	$r0,$r1,0

1c003208 <Set_Timer_clear>:
Set_Timer_clear():
1c003208:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00320c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003210:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003214:	0380040c 	ori	$r12,$r0,0x1
1c003218:	0401102c 	csrwr	$r12,0x44
1c00321c:	03400000 	andi	$r0,$r0,0x0
1c003220:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003224:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003228:	4c000020 	jirl	$r0,$r1,0

1c00322c <Wake_Set>:
Wake_Set():
1c00322c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003230:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003234:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003238:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00323c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003240:	40006980 	beqz	$r12,104(0x68) # 1c0032a8 <Wake_Set+0x7c>
1c003244:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003248:	0040a18c 	slli.w	$r12,$r12,0x8
1c00324c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003250:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003254:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003258:	0380218c 	ori	$r12,$r12,0x8
1c00325c:	2880018d 	ld.w	$r13,$r12,0
1c003260:	14001fec 	lu12i.w	$r12,255(0xff)
1c003264:	03bffd8c 	ori	$r12,$r12,0xfff
1c003268:	0014b1ac 	and	$r12,$r13,$r12
1c00326c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003270:	001031ac 	add.w	$r12,$r13,$r12
1c003274:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003278:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00327c:	0380318c 	ori	$r12,$r12,0xc
1c003280:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c003284:	2980018d 	st.w	$r13,$r12,0
1c003288:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00328c:	0380118c 	ori	$r12,$r12,0x4
1c003290:	2880018d 	ld.w	$r13,$r12,0
1c003294:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003298:	0380118c 	ori	$r12,$r12,0x4
1c00329c:	038601ad 	ori	$r13,$r13,0x180
1c0032a0:	2980018d 	st.w	$r13,$r12,0
1c0032a4:	50002400 	b	36(0x24) # 1c0032c8 <Wake_Set+0x9c>
1c0032a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032ac:	0380118c 	ori	$r12,$r12,0x4
1c0032b0:	2880018e 	ld.w	$r14,$r12,0
1c0032b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032b8:	0380118c 	ori	$r12,$r12,0x4
1c0032bc:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c0032c0:	0014b5cd 	and	$r13,$r14,$r13
1c0032c4:	2980018d 	st.w	$r13,$r12,0
1c0032c8:	03400000 	andi	$r0,$r0,0x0
1c0032cc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0032d0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0032d4:	4c000020 	jirl	$r0,$r1,0

1c0032d8 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c0032d8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0032dc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0032e0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0032e4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0032e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032ec:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0032f0:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c0032f4:	0014b1ac 	and	$r12,$r13,$r12
1c0032f8:	44000d80 	bnez	$r12,12(0xc) # 1c003304 <PMU_GetRstRrc+0x2c>
1c0032fc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003300:	50003000 	b	48(0x30) # 1c003330 <PMU_GetRstRrc+0x58>
1c003304:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003308:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00330c:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003310:	0014b1ad 	and	$r13,$r13,$r12
1c003314:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003318:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c003328 <PMU_GetRstRrc+0x50>
1c00331c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c003320:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003324:	50000c00 	b	12(0xc) # 1c003330 <PMU_GetRstRrc+0x58>
1c003328:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00332c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003330:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003334:	00150184 	move	$r4,$r12
1c003338:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00333c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003340:	4c000020 	jirl	$r0,$r1,0

1c003344 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c003344:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003348:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00334c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003350:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003354:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003358:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00335c:	0380198c 	ori	$r12,$r12,0x6
1c003360:	2a00018c 	ld.bu	$r12,$r12,0
1c003364:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003368:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00336c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003370:	0340058c 	andi	$r12,$r12,0x1
1c003374:	40000d80 	beqz	$r12,12(0xc) # 1c003380 <PMU_GetBootSpiStatus+0x3c>
1c003378:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00337c:	50000800 	b	8(0x8) # 1c003384 <PMU_GetBootSpiStatus+0x40>
1c003380:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003384:	00150184 	move	$r4,$r12
1c003388:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00338c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003390:	4c000020 	jirl	$r0,$r1,0

1c003394 <ls1x_logo>:
ls1x_logo():
1c003394:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003398:	29803061 	st.w	$r1,$r3,12(0xc)
1c00339c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0033a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0033a4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033a8:	02894084 	addi.w	$r4,$r4,592(0x250)
1c0033ac:	57e90fff 	bl	-5876(0xfffe90c) # 1c001cb8 <myprintf>
1c0033b0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033b4:	02892084 	addi.w	$r4,$r4,584(0x248)
1c0033b8:	57e903ff 	bl	-5888(0xfffe900) # 1c001cb8 <myprintf>
1c0033bc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033c0:	028a8084 	addi.w	$r4,$r4,672(0x2a0)
1c0033c4:	57e8f7ff 	bl	-5900(0xfffe8f4) # 1c001cb8 <myprintf>
1c0033c8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033cc:	028be084 	addi.w	$r4,$r4,760(0x2f8)
1c0033d0:	57e8ebff 	bl	-5912(0xfffe8e8) # 1c001cb8 <myprintf>
1c0033d4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033d8:	028d4084 	addi.w	$r4,$r4,848(0x350)
1c0033dc:	57e8dfff 	bl	-5924(0xfffe8dc) # 1c001cb8 <myprintf>
1c0033e0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033e4:	028ea084 	addi.w	$r4,$r4,936(0x3a8)
1c0033e8:	57e8d3ff 	bl	-5936(0xfffe8d0) # 1c001cb8 <myprintf>
1c0033ec:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033f0:	02900084 	addi.w	$r4,$r4,1024(0x400)
1c0033f4:	57e8c7ff 	bl	-5948(0xfffe8c4) # 1c001cb8 <myprintf>
1c0033f8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033fc:	02916084 	addi.w	$r4,$r4,1112(0x458)
1c003400:	57e8bbff 	bl	-5960(0xfffe8b8) # 1c001cb8 <myprintf>
1c003404:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003408:	0292c084 	addi.w	$r4,$r4,1200(0x4b0)
1c00340c:	57e8afff 	bl	-5972(0xfffe8ac) # 1c001cb8 <myprintf>
1c003410:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003414:	02942084 	addi.w	$r4,$r4,1288(0x508)
1c003418:	57e8a3ff 	bl	-5984(0xfffe8a0) # 1c001cb8 <myprintf>
1c00341c:	03400000 	andi	$r0,$r0,0x0
1c003420:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003424:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003428:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00342c:	4c000020 	jirl	$r0,$r1,0

1c003430 <get_count>:
get_count():
1c003430:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003434:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003438:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00343c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003440:	0000600c 	rdtimel.w	$r12,$r0
1c003444:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003448:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00344c:	00150184 	move	$r4,$r12
1c003450:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003454:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003458:	4c000020 	jirl	$r0,$r1,0

1c00345c <open_count>:
open_count():
1c00345c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003460:	29803076 	st.w	$r22,$r3,12(0xc)
1c003464:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003468:	0380400c 	ori	$r12,$r0,0x10
1c00346c:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c003470:	03400000 	andi	$r0,$r0,0x0
1c003474:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003478:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00347c:	4c000020 	jirl	$r0,$r1,0

1c003480 <start_count>:
start_count():
1c003480:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003484:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003488:	29806076 	st.w	$r22,$r3,24(0x18)
1c00348c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003490:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003494:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003498:	29800180 	st.w	$r0,$r12,0
1c00349c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034a0:	29801180 	st.w	$r0,$r12,4(0x4)
1c0034a4:	57ff8fff 	bl	-116(0xfffff8c) # 1c003430 <get_count>
1c0034a8:	0015008d 	move	$r13,$r4
1c0034ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034b0:	2980018d 	st.w	$r13,$r12,0
1c0034b4:	03400000 	andi	$r0,$r0,0x0
1c0034b8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0034bc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0034c0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0034c4:	4c000020 	jirl	$r0,$r1,0

1c0034c8 <stop_count>:
stop_count():
1c0034c8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0034cc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0034d0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0034d4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0034d8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0034dc:	57ff57ff 	bl	-172(0xfffff54) # 1c003430 <get_count>
1c0034e0:	0015008d 	move	$r13,$r4
1c0034e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034e8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0034ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034f0:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0034f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0034f8:	2880018c 	ld.w	$r12,$r12,0
1c0034fc:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c003518 <stop_count+0x50>
1c003500:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003504:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003508:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00350c:	2880018c 	ld.w	$r12,$r12,0
1c003510:	001131ac 	sub.w	$r12,$r13,$r12
1c003514:	50002800 	b	40(0x28) # 1c00353c <stop_count+0x74>
1c003518:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c00351c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003520:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003524:	2880018c 	ld.w	$r12,$r12,0
1c003528:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00352c:	001131ad 	sub.w	$r13,$r13,$r12
1c003530:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003534:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c003538:	001031ac 	add.w	$r12,$r13,$r12
1c00353c:	00150184 	move	$r4,$r12
1c003540:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003544:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003548:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00354c:	4c000020 	jirl	$r0,$r1,0

1c003550 <delay_cycle>:
delay_cycle():
1c003550:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003554:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003558:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00355c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003560:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003564:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003568:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c00356c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003570:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003574:	00150184 	move	$r4,$r12
1c003578:	57ff0bff 	bl	-248(0xfffff08) # 1c003480 <start_count>
1c00357c:	50001400 	b	20(0x14) # 1c003590 <delay_cycle+0x40>
1c003580:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003584:	00150184 	move	$r4,$r12
1c003588:	57ff43ff 	bl	-192(0xfffff40) # 1c0034c8 <stop_count>
1c00358c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003590:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003594:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003598:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c003580 <delay_cycle+0x30>
1c00359c:	03400000 	andi	$r0,$r0,0x0
1c0035a0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0035a4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0035a8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0035ac:	4c000020 	jirl	$r0,$r1,0

1c0035b0 <delay_ms>:
delay_ms():
1c0035b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0035b4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0035b8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0035bc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0035c0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0035c4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0035c8:	1400002c 	lu12i.w	$r12,1(0x1)
1c0035cc:	03bd018c 	ori	$r12,$r12,0xf40
1c0035d0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0035d4:	00150184 	move	$r4,$r12
1c0035d8:	57ff7bff 	bl	-136(0xfffff78) # 1c003550 <delay_cycle>
1c0035dc:	03400000 	andi	$r0,$r0,0x0
1c0035e0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0035e4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0035e8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0035ec:	4c000020 	jirl	$r0,$r1,0

1c0035f0 <memset>:
memset():
1c0035f0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0035f4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0035f8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0035fc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003600:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003604:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c003608:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00360c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003610:	50001c00 	b	28(0x1c) # 1c00362c <memset+0x3c>
1c003614:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003618:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c00361c:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003620:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003624:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003628:	2900018d 	st.b	$r13,$r12,0
1c00362c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003630:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003634:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c003638:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003614 <memset+0x24>
1c00363c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003640:	00150184 	move	$r4,$r12
1c003644:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003648:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00364c:	4c000020 	jirl	$r0,$r1,0

1c003650 <pstrstr>:
pstrstr():
1c003650:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003654:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003658:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00365c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003660:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003664:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003668:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00366c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003670:	2800018c 	ld.b	$r12,$r12,0
1c003674:	44008580 	bnez	$r12,132(0x84) # 1c0036f8 <pstrstr+0xa8>
1c003678:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00367c:	50008c00 	b	140(0x8c) # 1c003708 <pstrstr+0xb8>
1c003680:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003684:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003688:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00368c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003690:	50001c00 	b	28(0x1c) # 1c0036ac <pstrstr+0x5c>
1c003694:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003698:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00369c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0036a0:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0036a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0036a8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0036ac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036b0:	2800018c 	ld.b	$r12,$r12,0
1c0036b4:	40002580 	beqz	$r12,36(0x24) # 1c0036d8 <pstrstr+0x88>
1c0036b8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0036bc:	2800018c 	ld.b	$r12,$r12,0
1c0036c0:	40001980 	beqz	$r12,24(0x18) # 1c0036d8 <pstrstr+0x88>
1c0036c4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036c8:	2800018d 	ld.b	$r13,$r12,0
1c0036cc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0036d0:	2800018c 	ld.b	$r12,$r12,0
1c0036d4:	5bffc1ac 	beq	$r13,$r12,-64(0x3ffc0) # 1c003694 <pstrstr+0x44>
1c0036d8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0036dc:	2800018c 	ld.b	$r12,$r12,0
1c0036e0:	44000d80 	bnez	$r12,12(0xc) # 1c0036ec <pstrstr+0x9c>
1c0036e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036e8:	50002000 	b	32(0x20) # 1c003708 <pstrstr+0xb8>
1c0036ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0036f4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036fc:	2800018c 	ld.b	$r12,$r12,0
1c003700:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c003680 <pstrstr+0x30>
1c003704:	0015000c 	move	$r12,$r0
1c003708:	00150184 	move	$r4,$r12
1c00370c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003710:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003714:	4c000020 	jirl	$r0,$r1,0

1c003718 <itoa>:
itoa():
1c003718:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00371c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003720:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003724:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003728:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00372c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003730:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003734:	4400a180 	bnez	$r12,160(0xa0) # 1c0037d4 <itoa+0xbc>
1c003738:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00373c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c003740:	0020b1ae 	mod.w	$r14,$r13,$r12
1c003744:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00374c <itoa+0x34>
1c003748:	002a0007 	break	0x7
1c00374c:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c003750:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c003754:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003758:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00375c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c003760:	001031ac 	add.w	$r12,$r13,$r12
1c003764:	00005dcd 	ext.w.b	$r13,$r14
1c003768:	2900018d 	st.b	$r13,$r12,0
1c00376c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003770:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003774:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003778:	50005c00 	b	92(0x5c) # 1c0037d4 <itoa+0xbc>
1c00377c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003780:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c003784:	0020b1ae 	mod.w	$r14,$r13,$r12
1c003788:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003790 <itoa+0x78>
1c00378c:	002a0007 	break	0x7
1c003790:	006781cc 	bstrpick.w	$r12,$r14,0x7,0x0
1c003794:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c003798:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c00379c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037a0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0037a4:	001031ac 	add.w	$r12,$r13,$r12
1c0037a8:	00005dcd 	ext.w.b	$r13,$r14
1c0037ac:	2900018d 	st.b	$r13,$r12,0
1c0037b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037b4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0037b8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037bc:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c0037c0:	0280280d 	addi.w	$r13,$r0,10(0xa)
1c0037c4:	002035cc 	div.w	$r12,$r14,$r13
1c0037c8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0037d0 <itoa+0xb8>
1c0037cc:	002a0007 	break	0x7
1c0037d0:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0037d4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0037d8:	47ffa59f 	bnez	$r12,-92(0x7fffa4) # 1c00377c <itoa+0x64>
1c0037dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037e0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0037e4:	001031ac 	add.w	$r12,$r13,$r12
1c0037e8:	29000180 	st.b	$r0,$r12,0
1c0037ec:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0037f0:	50007800 	b	120(0x78) # 1c003868 <itoa+0x150>
1c0037f4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0037f8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0037fc:	001031ac 	add.w	$r12,$r13,$r12
1c003800:	2a00018c 	ld.bu	$r12,$r12,0
1c003804:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c003808:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00380c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003810:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003814:	001131ac 	sub.w	$r12,$r13,$r12
1c003818:	0015018d 	move	$r13,$r12
1c00381c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003820:	0010358d 	add.w	$r13,$r12,$r13
1c003824:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003828:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c00382c:	001031cc 	add.w	$r12,$r14,$r12
1c003830:	280001ad 	ld.b	$r13,$r13,0
1c003834:	2900018d 	st.b	$r13,$r12,0
1c003838:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00383c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003840:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003844:	001131ac 	sub.w	$r12,$r13,$r12
1c003848:	0015018d 	move	$r13,$r12
1c00384c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003850:	0010358c 	add.w	$r12,$r12,$r13
1c003854:	2a3f9ecd 	ld.bu	$r13,$r22,-25(0xfe7)
1c003858:	2900018d 	st.b	$r13,$r12,0
1c00385c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003860:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003864:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003868:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00386c:	0044fd8d 	srli.w	$r13,$r12,0x1f
1c003870:	001031ac 	add.w	$r12,$r13,$r12
1c003874:	0048858c 	srai.w	$r12,$r12,0x1
1c003878:	0015018d 	move	$r13,$r12
1c00387c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003880:	63ff758d 	blt	$r12,$r13,-140(0x3ff74) # 1c0037f4 <itoa+0xdc>
1c003884:	03400000 	andi	$r0,$r0,0x0
1c003888:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00388c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003890:	4c000020 	jirl	$r0,$r1,0

1c003894 <strcat>:
strcat():
1c003894:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003898:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00389c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0038a0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0038a4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0038a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038ac:	40000d80 	beqz	$r12,12(0xc) # 1c0038b8 <strcat+0x24>
1c0038b0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0038b4:	44000d80 	bnez	$r12,12(0xc) # 1c0038c0 <strcat+0x2c>
1c0038b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038bc:	50006800 	b	104(0x68) # 1c003924 <strcat+0x90>
1c0038c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038c8:	50001000 	b	16(0x10) # 1c0038d8 <strcat+0x44>
1c0038cc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038d0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0038d4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038dc:	2800018c 	ld.b	$r12,$r12,0
1c0038e0:	47ffed9f 	bnez	$r12,-20(0x7fffec) # 1c0038cc <strcat+0x38>
1c0038e4:	50002800 	b	40(0x28) # 1c00390c <strcat+0x78>
1c0038e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038ec:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0038f0:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c0038f4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0038f8:	280001ad 	ld.b	$r13,$r13,0
1c0038fc:	2900018d 	st.b	$r13,$r12,0
1c003900:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003904:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003908:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c00390c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c003910:	2800018c 	ld.b	$r12,$r12,0
1c003914:	47ffd59f 	bnez	$r12,-44(0x7fffd4) # 1c0038e8 <strcat+0x54>
1c003918:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00391c:	29000180 	st.b	$r0,$r12,0
1c003920:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003924:	00150184 	move	$r4,$r12
1c003928:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00392c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003930:	4c000020 	jirl	$r0,$r1,0

1c003934 <strlen>:
strlen():
1c003934:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003938:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00393c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003940:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003944:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003948:	50001000 	b	16(0x10) # 1c003958 <strlen+0x24>
1c00394c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003950:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003954:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003958:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00395c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003960:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c003964:	2800018c 	ld.b	$r12,$r12,0
1c003968:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00394c <strlen+0x18>
1c00396c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003970:	00150184 	move	$r4,$r12
1c003974:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003978:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00397c:	4c000020 	jirl	$r0,$r1,0

1c003980 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c003980:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003984:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003988:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00398c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003990:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003994:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003998:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c00399c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0039a0:	001531ad 	or	$r13,$r13,$r12
1c0039a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039a8:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0039ac:	03400000 	andi	$r0,$r0,0x0
1c0039b0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0039b4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0039b8:	4c000020 	jirl	$r0,$r1,0

1c0039bc <WDG_getOddValue>:
WDG_getOddValue():
1c0039bc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0039c0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0039c4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0039c8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0039cc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0039d0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0039d4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0039d8:	50003800 	b	56(0x38) # 1c003a10 <WDG_getOddValue+0x54>
1c0039dc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0039e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0039e4:	001731ac 	sll.w	$r12,$r13,$r12
1c0039e8:	0015018d 	move	$r13,$r12
1c0039ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0039f0:	0014b1ac 	and	$r12,$r13,$r12
1c0039f4:	40001180 	beqz	$r12,16(0x10) # 1c003a04 <WDG_getOddValue+0x48>
1c0039f8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0039fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003a00:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003a04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003a0c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a10:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a14:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003a18:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c0039dc <WDG_getOddValue+0x20>
1c003a1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003a20:	0340058c 	andi	$r12,$r12,0x1
1c003a24:	44000d80 	bnez	$r12,12(0xc) # 1c003a30 <WDG_getOddValue+0x74>
1c003a28:	1400010c 	lu12i.w	$r12,8(0x8)
1c003a2c:	50000800 	b	8(0x8) # 1c003a34 <WDG_getOddValue+0x78>
1c003a30:	0015000c 	move	$r12,$r0
1c003a34:	00150184 	move	$r4,$r12
1c003a38:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003a3c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003a40:	4c000020 	jirl	$r0,$r1,0

1c003a44 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c003a44:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a48:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003a4c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003a50:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a54:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003a58:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003a5c:	140000ec 	lu12i.w	$r12,7(0x7)
1c003a60:	03bffd8c 	ori	$r12,$r12,0xfff
1c003a64:	0014b1ac 	and	$r12,$r13,$r12
1c003a68:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a6c:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003a70:	57ff4fff 	bl	-180(0xfffff4c) # 1c0039bc <WDG_getOddValue>
1c003a74:	0015008c 	move	$r12,$r4
1c003a78:	0015018d 	move	$r13,$r12
1c003a7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a80:	0015358c 	or	$r12,$r12,$r13
1c003a84:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003a88:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a8c:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003a90:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003a94:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003a98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a9c:	0014300c 	nor	$r12,$r0,$r12
1c003aa0:	0040c18c 	slli.w	$r12,$r12,0x10
1c003aa4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003aa8:	001531ac 	or	$r12,$r13,$r12
1c003aac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ab0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003ab4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ab8:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c003abc:	03400000 	andi	$r0,$r0,0x0
1c003ac0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003ac4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003ac8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003acc:	4c000020 	jirl	$r0,$r1,0

1c003ad0 <WDG_DogFeed>:
WDG_DogFeed():
1c003ad0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ad4:	29803076 	st.w	$r22,$r3,12(0xc)
1c003ad8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003adc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003ae0:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003ae4:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003ae8:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003aec:	03400000 	andi	$r0,$r0,0x0
1c003af0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003af4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003af8:	4c000020 	jirl	$r0,$r1,0

1c003afc <WdgInit>:
WdgInit():
1c003afc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003b00:	29803061 	st.w	$r1,$r3,12(0xc)
1c003b04:	29802076 	st.w	$r22,$r3,8(0x8)
1c003b08:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003b0c:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003b10:	03bffd84 	ori	$r4,$r12,0xfff
1c003b14:	57ff33ff 	bl	-208(0xfffff30) # 1c003a44 <WDG_SetWatchDog>
1c003b18:	03400000 	andi	$r0,$r0,0x0
1c003b1c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003b20:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003b24:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003b28:	4c000020 	jirl	$r0,$r1,0

1c003b2c <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003b2c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b30:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003b34:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b38:	0015008c 	move	$r12,$r4
1c003b3c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003b40:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003b44:	0040898c 	slli.w	$r12,$r12,0x2
1c003b48:	0015018d 	move	$r13,$r12
1c003b4c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003b50:	0381018c 	ori	$r12,$r12,0x40
1c003b54:	001031ac 	add.w	$r12,$r13,$r12
1c003b58:	2880018c 	ld.w	$r12,$r12,0
1c003b5c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b60:	037ffd8c 	andi	$r12,$r12,0xfff
1c003b64:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b68:	00150184 	move	$r4,$r12
1c003b6c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003b70:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b74:	4c000020 	jirl	$r0,$r1,0

1c003b78 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003b78:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b7c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003b80:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b84:	0015008c 	move	$r12,$r4
1c003b88:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003b8c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003b90:	0040898c 	slli.w	$r12,$r12,0x2
1c003b94:	0015018d 	move	$r13,$r12
1c003b98:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003b9c:	0382018c 	ori	$r12,$r12,0x80
1c003ba0:	001031ac 	add.w	$r12,$r13,$r12
1c003ba4:	2880018c 	ld.w	$r12,$r12,0
1c003ba8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003bac:	037ffd8c 	andi	$r12,$r12,0xfff
1c003bb0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003bb4:	00150184 	move	$r4,$r12
1c003bb8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003bbc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003bc0:	4c000020 	jirl	$r0,$r1,0

1c003bc4 <Printf_KeyChannel>:
Printf_KeyChannel():
1c003bc4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003bc8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003bcc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003bd0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003bd4:	0015008c 	move	$r12,$r4
1c003bd8:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003bdc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003be0:	50003400 	b	52(0x34) # 1c003c14 <Printf_KeyChannel+0x50>
1c003be4:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003be8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bec:	001831ac 	sra.w	$r12,$r13,$r12
1c003bf0:	0340058c 	andi	$r12,$r12,0x1
1c003bf4:	40001580 	beqz	$r12,20(0x14) # 1c003c08 <Printf_KeyChannel+0x44>
1c003bf8:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003bfc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003c00:	02b60084 	addi.w	$r4,$r4,-640(0xd80)
1c003c04:	57e0b7ff 	bl	-8012(0xfffe0b4) # 1c001cb8 <myprintf>
1c003c08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003c10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003c14:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003c18:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003c1c:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003be4 <Printf_KeyChannel+0x20>
1c003c20:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003c24:	02b58084 	addi.w	$r4,$r4,-672(0xd60)
1c003c28:	57e093ff 	bl	-8048(0xfffe090) # 1c001cb8 <myprintf>
1c003c2c:	03400000 	andi	$r0,$r0,0x0
1c003c30:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003c34:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003c38:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003c3c:	4c000020 	jirl	$r0,$r1,0

1c003c40 <Printf_KeyType>:
Printf_KeyType():
1c003c40:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003c44:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003c48:	29806076 	st.w	$r22,$r3,24(0x18)
1c003c4c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003c50:	0015008c 	move	$r12,$r4
1c003c54:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003c58:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003c5c:	0340058c 	andi	$r12,$r12,0x1
1c003c60:	40001180 	beqz	$r12,16(0x10) # 1c003c70 <Printf_KeyType+0x30>
1c003c64:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003c68:	02b48084 	addi.w	$r4,$r4,-736(0xd20)
1c003c6c:	57e04fff 	bl	-8116(0xfffe04c) # 1c001cb8 <myprintf>
1c003c70:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003c74:	0340098c 	andi	$r12,$r12,0x2
1c003c78:	40001180 	beqz	$r12,16(0x10) # 1c003c88 <Printf_KeyType+0x48>
1c003c7c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003c80:	02b44084 	addi.w	$r4,$r4,-752(0xd10)
1c003c84:	57e037ff 	bl	-8140(0xfffe034) # 1c001cb8 <myprintf>
1c003c88:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003c8c:	0340118c 	andi	$r12,$r12,0x4
1c003c90:	40001180 	beqz	$r12,16(0x10) # 1c003ca0 <Printf_KeyType+0x60>
1c003c94:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003c98:	02b40084 	addi.w	$r4,$r4,-768(0xd00)
1c003c9c:	57e01fff 	bl	-8164(0xfffe01c) # 1c001cb8 <myprintf>
1c003ca0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003ca4:	0340218c 	andi	$r12,$r12,0x8
1c003ca8:	40001180 	beqz	$r12,16(0x10) # 1c003cb8 <Printf_KeyType+0x78>
1c003cac:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003cb0:	02b3d084 	addi.w	$r4,$r4,-780(0xcf4)
1c003cb4:	57e007ff 	bl	-8188(0xfffe004) # 1c001cb8 <myprintf>
1c003cb8:	03400000 	andi	$r0,$r0,0x0
1c003cbc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003cc0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003cc4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003cc8:	4c000020 	jirl	$r0,$r1,0

1c003ccc <Printf_KeyVal>:
Printf_KeyVal():
1c003ccc:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003cd0:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003cd4:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003cd8:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003cdc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003ce0:	5000d800 	b	216(0xd8) # 1c003db8 <Printf_KeyVal+0xec>
1c003ce4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ce8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003cec:	00150184 	move	$r4,$r12
1c003cf0:	57fe8bff 	bl	-376(0xffffe88) # 1c003b78 <TOUCH_GetCountValue>
1c003cf4:	0015008c 	move	$r12,$r4
1c003cf8:	0015018d 	move	$r13,$r12
1c003cfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d00:	0040898c 	slli.w	$r12,$r12,0x2
1c003d04:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003d08:	001031cc 	add.w	$r12,$r14,$r12
1c003d0c:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003d10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d14:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003d18:	00150184 	move	$r4,$r12
1c003d1c:	57fe13ff 	bl	-496(0xffffe10) # 1c003b2c <TOUCH_GetBaseVal>
1c003d20:	0015008c 	move	$r12,$r4
1c003d24:	0015018d 	move	$r13,$r12
1c003d28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d2c:	0040898c 	slli.w	$r12,$r12,0x2
1c003d30:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003d34:	001031cc 	add.w	$r12,$r14,$r12
1c003d38:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003d3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d40:	0040898c 	slli.w	$r12,$r12,0x2
1c003d44:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d48:	001031ac 	add.w	$r12,$r13,$r12
1c003d4c:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003d50:	40004980 	beqz	$r12,72(0x48) # 1c003d98 <Printf_KeyVal+0xcc>
1c003d54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d58:	0040898c 	slli.w	$r12,$r12,0x2
1c003d5c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d60:	001031ac 	add.w	$r12,$r13,$r12
1c003d64:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003d68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d6c:	0040898c 	slli.w	$r12,$r12,0x2
1c003d70:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003d74:	001031cc 	add.w	$r12,$r14,$r12
1c003d78:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003d7c:	001131ad 	sub.w	$r13,$r13,$r12
1c003d80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d84:	0040898c 	slli.w	$r12,$r12,0x2
1c003d88:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003d8c:	001031cc 	add.w	$r12,$r14,$r12
1c003d90:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003d94:	50001800 	b	24(0x18) # 1c003dac <Printf_KeyVal+0xe0>
1c003d98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d9c:	0040898c 	slli.w	$r12,$r12,0x2
1c003da0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003da4:	001031ac 	add.w	$r12,$r13,$r12
1c003da8:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003dac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003db0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003db4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003db8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003dbc:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003dc0:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003ce4 <Printf_KeyVal+0x18>
1c003dc4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003dc8:	02afa084 	addi.w	$r4,$r4,-1048(0xbe8)
1c003dcc:	57deefff 	bl	-8468(0xfffdeec) # 1c001cb8 <myprintf>
1c003dd0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003dd4:	02b01084 	addi.w	$r4,$r4,-1020(0xc04)
1c003dd8:	57dee3ff 	bl	-8480(0xfffdee0) # 1c001cb8 <myprintf>
1c003ddc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003de0:	50003400 	b	52(0x34) # 1c003e14 <Printf_KeyVal+0x148>
1c003de4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003de8:	0040898c 	slli.w	$r12,$r12,0x2
1c003dec:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003df0:	001031ac 	add.w	$r12,$r13,$r12
1c003df4:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003df8:	00150185 	move	$r5,$r12
1c003dfc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e00:	02af8084 	addi.w	$r4,$r4,-1056(0xbe0)
1c003e04:	57deb7ff 	bl	-8524(0xfffdeb4) # 1c001cb8 <myprintf>
1c003e08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003e14:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003e18:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003e1c:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003de4 <Printf_KeyVal+0x118>
1c003e20:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e24:	02af1084 	addi.w	$r4,$r4,-1084(0xbc4)
1c003e28:	57de93ff 	bl	-8560(0xfffde90) # 1c001cb8 <myprintf>
1c003e2c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003e30:	50003400 	b	52(0x34) # 1c003e64 <Printf_KeyVal+0x198>
1c003e34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e38:	0040898c 	slli.w	$r12,$r12,0x2
1c003e3c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e40:	001031ac 	add.w	$r12,$r13,$r12
1c003e44:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003e48:	00150185 	move	$r5,$r12
1c003e4c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e50:	02ae4084 	addi.w	$r4,$r4,-1136(0xb90)
1c003e54:	57de67ff 	bl	-8604(0xfffde64) # 1c001cb8 <myprintf>
1c003e58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e5c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003e64:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003e68:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003e6c:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003e34 <Printf_KeyVal+0x168>
1c003e70:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e74:	02ae0084 	addi.w	$r4,$r4,-1152(0xb80)
1c003e78:	57de43ff 	bl	-8640(0xfffde40) # 1c001cb8 <myprintf>
1c003e7c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003e80:	50007400 	b	116(0x74) # 1c003ef4 <Printf_KeyVal+0x228>
1c003e84:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e88:	0040898c 	slli.w	$r12,$r12,0x2
1c003e8c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003e90:	001031ac 	add.w	$r12,$r13,$r12
1c003e94:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003e98:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003ec4 <Printf_KeyVal+0x1f8>
1c003e9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ea0:	0040898c 	slli.w	$r12,$r12,0x2
1c003ea4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ea8:	001031ac 	add.w	$r12,$r13,$r12
1c003eac:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003eb0:	00150185 	move	$r5,$r12
1c003eb4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003eb8:	02ad2084 	addi.w	$r4,$r4,-1208(0xb48)
1c003ebc:	57ddffff 	bl	-8708(0xfffddfc) # 1c001cb8 <myprintf>
1c003ec0:	50002800 	b	40(0x28) # 1c003ee8 <Printf_KeyVal+0x21c>
1c003ec4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ec8:	0040898c 	slli.w	$r12,$r12,0x2
1c003ecc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003ed0:	001031ac 	add.w	$r12,$r13,$r12
1c003ed4:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003ed8:	00150185 	move	$r5,$r12
1c003edc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ee0:	02aca084 	addi.w	$r4,$r4,-1240(0xb28)
1c003ee4:	57ddd7ff 	bl	-8748(0xfffddd4) # 1c001cb8 <myprintf>
1c003ee8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003eec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ef0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ef4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003ef8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003efc:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003e84 <Printf_KeyVal+0x1b8>
1c003f00:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003f04:	02aa0084 	addi.w	$r4,$r4,-1408(0xa80)
1c003f08:	57ddb3ff 	bl	-8784(0xfffddb0) # 1c001cb8 <myprintf>
1c003f0c:	03400000 	andi	$r0,$r0,0x0
1c003f10:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003f14:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003f18:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003f1c:	4c000020 	jirl	$r0,$r1,0

1c003f20 <TIM_Init>:
TIM_Init():
1c003f20:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003f24:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003f28:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003f2c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003f30:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f34:	29800180 	st.w	$r0,$r12,0
1c003f38:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f3c:	0380118c 	ori	$r12,$r12,0x4
1c003f40:	29800180 	st.w	$r0,$r12,0
1c003f44:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f48:	0380218c 	ori	$r12,$r12,0x8
1c003f4c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003f50:	288011ad 	ld.w	$r13,$r13,4(0x4)
1c003f54:	2980018d 	st.w	$r13,$r12,0
1c003f58:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f5c:	0380318c 	ori	$r12,$r12,0xc
1c003f60:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003f64:	288021ad 	ld.w	$r13,$r13,8(0x8)
1c003f68:	2980018d 	st.w	$r13,$r12,0
1c003f6c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f70:	2880018e 	ld.w	$r14,$r12,0
1c003f74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f78:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c003f7c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f80:	001535cd 	or	$r13,$r14,$r13
1c003f84:	2980018d 	st.w	$r13,$r12,0
1c003f88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f8c:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c003f90:	40002180 	beqz	$r12,32(0x20) # 1c003fb0 <TIM_Init+0x90>
1c003f94:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003f98:	2a00018c 	ld.bu	$r12,$r12,0
1c003f9c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003fa0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003fa4:	038005ad 	ori	$r13,$r13,0x1
1c003fa8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003fac:	2900018d 	st.b	$r13,$r12,0
1c003fb0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003fb4:	2880018e 	ld.w	$r14,$r12,0
1c003fb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fbc:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c003fc0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003fc4:	001535cd 	or	$r13,$r14,$r13
1c003fc8:	2980018d 	st.w	$r13,$r12,0
1c003fcc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003fd0:	2880018e 	ld.w	$r14,$r12,0
1c003fd4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003fd8:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c003fdc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003fe0:	001535cd 	or	$r13,$r14,$r13
1c003fe4:	2980018d 	st.w	$r13,$r12,0
1c003fe8:	03400000 	andi	$r0,$r0,0x0
1c003fec:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003ff0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ff4:	4c000020 	jirl	$r0,$r1,0

1c003ff8 <TIM_StructInit>:
TIM_StructInit():
1c003ff8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003ffc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004000:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004004:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004008:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00400c:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c004010:	038801ad 	ori	$r13,$r13,0x200
1c004014:	2980018d 	st.w	$r13,$r12,0
1c004018:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00401c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004020:	2980618d 	st.w	$r13,$r12,24(0x18)
1c004024:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004028:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c00402c:	2980518d 	st.w	$r13,$r12,20(0x14)
1c004030:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004034:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004038:	2980418d 	st.w	$r13,$r12,16(0x10)
1c00403c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004040:	1400002d 	lu12i.w	$r13,1(0x1)
1c004044:	03bcfdad 	ori	$r13,$r13,0xf3f
1c004048:	2980118d 	st.w	$r13,$r12,4(0x4)
1c00404c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004050:	29802180 	st.w	$r0,$r12,8(0x8)
1c004054:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004058:	29803180 	st.w	$r0,$r12,12(0xc)
1c00405c:	03400000 	andi	$r0,$r0,0x0
1c004060:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004064:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004068:	4c000020 	jirl	$r0,$r1,0

1c00406c <timer_init>:
timer_init():
1c00406c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c004070:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c004074:	2980e076 	st.w	$r22,$r3,56(0x38)
1c004078:	02810076 	addi.w	$r22,$r3,64(0x40)
1c00407c:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c004080:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c004084:	00150184 	move	$r4,$r12
1c004088:	57ff73ff 	bl	-144(0xfffff70) # 1c003ff8 <TIM_StructInit>
1c00408c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c004090:	1400002c 	lu12i.w	$r12,1(0x1)
1c004094:	03bd018c 	ori	$r12,$r12,0xf40
1c004098:	001c31ac 	mul.w	$r12,$r13,$r12
1c00409c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0040a0:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0040a4:	00150184 	move	$r4,$r12
1c0040a8:	57fe7bff 	bl	-392(0xffffe78) # 1c003f20 <TIM_Init>
1c0040ac:	03400000 	andi	$r0,$r0,0x0
1c0040b0:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0040b4:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0040b8:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0040bc:	4c000020 	jirl	$r0,$r1,0

1c0040c0 <TIM_GetITStatus>:
TIM_GetITStatus():
1c0040c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0040c4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0040c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0040cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0040d0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0040d4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0040d8:	2880018d 	ld.w	$r13,$r12,0
1c0040dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0040e0:	0014b1ac 	and	$r12,$r13,$r12
1c0040e4:	40001180 	beqz	$r12,16(0x10) # 1c0040f4 <TIM_GetITStatus+0x34>
1c0040e8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0040ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0040f0:	50000800 	b	8(0x8) # 1c0040f8 <TIM_GetITStatus+0x38>
1c0040f4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0040f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0040fc:	00150184 	move	$r4,$r12
1c004100:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c004104:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004108:	4c000020 	jirl	$r0,$r1,0

1c00410c <TIM_ClearIT>:
TIM_ClearIT():
1c00410c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004110:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004114:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004118:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00411c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004120:	2880018e 	ld.w	$r14,$r12,0
1c004124:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004128:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00412c:	001535cd 	or	$r13,$r14,$r13
1c004130:	2980018d 	st.w	$r13,$r12,0
1c004134:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004138:	03800d8c 	ori	$r12,$r12,0x3
1c00413c:	2a00018c 	ld.bu	$r12,$r12,0
1c004140:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004144:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004148:	03800d8c 	ori	$r12,$r12,0x3
1c00414c:	038005ad 	ori	$r13,$r13,0x1
1c004150:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c004154:	2900018d 	st.b	$r13,$r12,0
1c004158:	03400000 	andi	$r0,$r0,0x0
1c00415c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004160:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004164:	4c000020 	jirl	$r0,$r1,0

1c004168 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c004168:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00416c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004170:	29802076 	st.w	$r22,$r3,8(0x8)
1c004174:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004178:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00417c:	02a820c6 	addi.w	$r6,$r6,-1528(0xa08)
1c004180:	02805005 	addi.w	$r5,$r0,20(0x14)
1c004184:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004188:	02a22084 	addi.w	$r4,$r4,-1912(0x888)
1c00418c:	57db2fff 	bl	-9428(0xfffdb2c) # 1c001cb8 <myprintf>
1c004190:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004194:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004198:	03808184 	ori	$r4,$r12,0x20
1c00419c:	57f7e7ff 	bl	-2076(0xffff7e4) # 1c003980 <EXTI_ClearITPendingBit>
1c0041a0:	03400000 	andi	$r0,$r0,0x0
1c0041a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041b0:	4c000020 	jirl	$r0,$r1,0

1c0041b4 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c0041b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041b8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041bc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041c4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0041c8:	02a750c6 	addi.w	$r6,$r6,-1580(0x9d4)
1c0041cc:	02806405 	addi.w	$r5,$r0,25(0x19)
1c0041d0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0041d4:	02a0f084 	addi.w	$r4,$r4,-1988(0x83c)
1c0041d8:	57dae3ff 	bl	-9504(0xfffdae0) # 1c001cb8 <myprintf>
1c0041dc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0041e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041e4:	03808184 	ori	$r4,$r12,0x20
1c0041e8:	57f79bff 	bl	-2152(0xffff798) # 1c003980 <EXTI_ClearITPendingBit>
1c0041ec:	03400000 	andi	$r0,$r0,0x0
1c0041f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041fc:	4c000020 	jirl	$r0,$r1,0

1c004200 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c004200:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004204:	29803061 	st.w	$r1,$r3,12(0xc)
1c004208:	29802076 	st.w	$r22,$r3,8(0x8)
1c00420c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004210:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004214:	02a680c6 	addi.w	$r6,$r6,-1632(0x9a0)
1c004218:	02807805 	addi.w	$r5,$r0,30(0x1e)
1c00421c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004220:	029fc084 	addi.w	$r4,$r4,2032(0x7f0)
1c004224:	57da97ff 	bl	-9580(0xfffda94) # 1c001cb8 <myprintf>
1c004228:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00422c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004230:	03808184 	ori	$r4,$r12,0x20
1c004234:	57f74fff 	bl	-2228(0xffff74c) # 1c003980 <EXTI_ClearITPendingBit>
1c004238:	03400000 	andi	$r0,$r0,0x0
1c00423c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004240:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004244:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004248:	4c000020 	jirl	$r0,$r1,0

1c00424c <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c00424c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004250:	29803061 	st.w	$r1,$r3,12(0xc)
1c004254:	29802076 	st.w	$r22,$r3,8(0x8)
1c004258:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00425c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004260:	02a5b0c6 	addi.w	$r6,$r6,-1684(0x96c)
1c004264:	02808c05 	addi.w	$r5,$r0,35(0x23)
1c004268:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00426c:	029e9084 	addi.w	$r4,$r4,1956(0x7a4)
1c004270:	57da4bff 	bl	-9656(0xfffda48) # 1c001cb8 <myprintf>
1c004274:	02802005 	addi.w	$r5,$r0,8(0x8)
1c004278:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00427c:	03808184 	ori	$r4,$r12,0x20
1c004280:	57f703ff 	bl	-2304(0xffff700) # 1c003980 <EXTI_ClearITPendingBit>
1c004284:	03400000 	andi	$r0,$r0,0x0
1c004288:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00428c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004290:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004294:	4c000020 	jirl	$r0,$r1,0

1c004298 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c004298:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00429c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042a8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0042ac:	02a4e0c6 	addi.w	$r6,$r6,-1736(0x938)
1c0042b0:	0280a005 	addi.w	$r5,$r0,40(0x28)
1c0042b4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0042b8:	029d6084 	addi.w	$r4,$r4,1880(0x758)
1c0042bc:	57d9ffff 	bl	-9732(0xfffd9fc) # 1c001cb8 <myprintf>
1c0042c0:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0042c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042c8:	03808184 	ori	$r4,$r12,0x20
1c0042cc:	57f6b7ff 	bl	-2380(0xffff6b4) # 1c003980 <EXTI_ClearITPendingBit>
1c0042d0:	03400000 	andi	$r0,$r0,0x0
1c0042d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042e0:	4c000020 	jirl	$r0,$r1,0

1c0042e4 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c0042e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042f4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0042f8:	02a410c6 	addi.w	$r6,$r6,-1788(0x904)
1c0042fc:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c004300:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004304:	029c3084 	addi.w	$r4,$r4,1804(0x70c)
1c004308:	57d9b3ff 	bl	-9808(0xfffd9b0) # 1c001cb8 <myprintf>
1c00430c:	02808005 	addi.w	$r5,$r0,32(0x20)
1c004310:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004314:	03808184 	ori	$r4,$r12,0x20
1c004318:	57f66bff 	bl	-2456(0xffff668) # 1c003980 <EXTI_ClearITPendingBit>
1c00431c:	03400000 	andi	$r0,$r0,0x0
1c004320:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004324:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004328:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00432c:	4c000020 	jirl	$r0,$r1,0

1c004330 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c004330:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004334:	29803061 	st.w	$r1,$r3,12(0xc)
1c004338:	29802076 	st.w	$r22,$r3,8(0x8)
1c00433c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004340:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004344:	02a340c6 	addi.w	$r6,$r6,-1840(0x8d0)
1c004348:	0280c805 	addi.w	$r5,$r0,50(0x32)
1c00434c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004350:	029b0084 	addi.w	$r4,$r4,1728(0x6c0)
1c004354:	57d967ff 	bl	-9884(0xfffd964) # 1c001cb8 <myprintf>
1c004358:	02810005 	addi.w	$r5,$r0,64(0x40)
1c00435c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004360:	03808184 	ori	$r4,$r12,0x20
1c004364:	57f61fff 	bl	-2532(0xffff61c) # 1c003980 <EXTI_ClearITPendingBit>
1c004368:	03400000 	andi	$r0,$r0,0x0
1c00436c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004370:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004374:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004378:	4c000020 	jirl	$r0,$r1,0

1c00437c <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c00437c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004380:	29803061 	st.w	$r1,$r3,12(0xc)
1c004384:	29802076 	st.w	$r22,$r3,8(0x8)
1c004388:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00438c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004390:	02a270c6 	addi.w	$r6,$r6,-1892(0x89c)
1c004394:	0280dc05 	addi.w	$r5,$r0,55(0x37)
1c004398:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00439c:	0299d084 	addi.w	$r4,$r4,1652(0x674)
1c0043a0:	57d91bff 	bl	-9960(0xfffd918) # 1c001cb8 <myprintf>
1c0043a4:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0043a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043ac:	03808184 	ori	$r4,$r12,0x20
1c0043b0:	57f5d3ff 	bl	-2608(0xffff5d0) # 1c003980 <EXTI_ClearITPendingBit>
1c0043b4:	03400000 	andi	$r0,$r0,0x0
1c0043b8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043bc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043c0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043c4:	4c000020 	jirl	$r0,$r1,0

1c0043c8 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0043c8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043cc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043d0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043d4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043d8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0043dc:	02a1a0c6 	addi.w	$r6,$r6,-1944(0x868)
1c0043e0:	0280f005 	addi.w	$r5,$r0,60(0x3c)
1c0043e4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0043e8:	0298a084 	addi.w	$r4,$r4,1576(0x628)
1c0043ec:	57d8cfff 	bl	-10036(0xfffd8cc) # 1c001cb8 <myprintf>
1c0043f0:	02840005 	addi.w	$r5,$r0,256(0x100)
1c0043f4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043f8:	03808184 	ori	$r4,$r12,0x20
1c0043fc:	57f587ff 	bl	-2684(0xffff584) # 1c003980 <EXTI_ClearITPendingBit>
1c004400:	03400000 	andi	$r0,$r0,0x0
1c004404:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004408:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00440c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004410:	4c000020 	jirl	$r0,$r1,0

1c004414 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c004414:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004418:	29803061 	st.w	$r1,$r3,12(0xc)
1c00441c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004420:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004424:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004428:	02a0d0c6 	addi.w	$r6,$r6,-1996(0x834)
1c00442c:	02810405 	addi.w	$r5,$r0,65(0x41)
1c004430:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004434:	02977084 	addi.w	$r4,$r4,1500(0x5dc)
1c004438:	57d883ff 	bl	-10112(0xfffd880) # 1c001cb8 <myprintf>
1c00443c:	02880005 	addi.w	$r5,$r0,512(0x200)
1c004440:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004444:	03808184 	ori	$r4,$r12,0x20
1c004448:	57f53bff 	bl	-2760(0xffff538) # 1c003980 <EXTI_ClearITPendingBit>
1c00444c:	03400000 	andi	$r0,$r0,0x0
1c004450:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004454:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004458:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00445c:	4c000020 	jirl	$r0,$r1,0

1c004460 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c004460:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004464:	29803061 	st.w	$r1,$r3,12(0xc)
1c004468:	29802076 	st.w	$r22,$r3,8(0x8)
1c00446c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004470:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004474:	02a000c6 	addi.w	$r6,$r6,-2048(0x800)
1c004478:	02811805 	addi.w	$r5,$r0,70(0x46)
1c00447c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004480:	02964084 	addi.w	$r4,$r4,1424(0x590)
1c004484:	57d837ff 	bl	-10188(0xfffd834) # 1c001cb8 <myprintf>
1c004488:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c00448c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004490:	03808184 	ori	$r4,$r12,0x20
1c004494:	57f4efff 	bl	-2836(0xffff4ec) # 1c003980 <EXTI_ClearITPendingBit>
1c004498:	03400000 	andi	$r0,$r0,0x0
1c00449c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044a8:	4c000020 	jirl	$r0,$r1,0

1c0044ac <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c0044ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044bc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0044c0:	029f30c6 	addi.w	$r6,$r6,1996(0x7cc)
1c0044c4:	02812c05 	addi.w	$r5,$r0,75(0x4b)
1c0044c8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0044cc:	02951084 	addi.w	$r4,$r4,1348(0x544)
1c0044d0:	57d7ebff 	bl	-10264(0xfffd7e8) # 1c001cb8 <myprintf>
1c0044d4:	03a00005 	ori	$r5,$r0,0x800
1c0044d8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044dc:	03808184 	ori	$r4,$r12,0x20
1c0044e0:	57f4a3ff 	bl	-2912(0xffff4a0) # 1c003980 <EXTI_ClearITPendingBit>
1c0044e4:	03400000 	andi	$r0,$r0,0x0
1c0044e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044f4:	4c000020 	jirl	$r0,$r1,0

1c0044f8 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c0044f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004500:	29802076 	st.w	$r22,$r3,8(0x8)
1c004504:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004508:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00450c:	029e60c6 	addi.w	$r6,$r6,1944(0x798)
1c004510:	02814005 	addi.w	$r5,$r0,80(0x50)
1c004514:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004518:	0293e084 	addi.w	$r4,$r4,1272(0x4f8)
1c00451c:	57d79fff 	bl	-10340(0xfffd79c) # 1c001cb8 <myprintf>
1c004520:	14000025 	lu12i.w	$r5,1(0x1)
1c004524:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004528:	03808184 	ori	$r4,$r12,0x20
1c00452c:	57f457ff 	bl	-2988(0xffff454) # 1c003980 <EXTI_ClearITPendingBit>
1c004530:	03400000 	andi	$r0,$r0,0x0
1c004534:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004538:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00453c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004540:	4c000020 	jirl	$r0,$r1,0

1c004544 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c004544:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004548:	29803061 	st.w	$r1,$r3,12(0xc)
1c00454c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004550:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004554:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004558:	029d90c6 	addi.w	$r6,$r6,1892(0x764)
1c00455c:	02815405 	addi.w	$r5,$r0,85(0x55)
1c004560:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004564:	0292b084 	addi.w	$r4,$r4,1196(0x4ac)
1c004568:	57d753ff 	bl	-10416(0xfffd750) # 1c001cb8 <myprintf>
1c00456c:	14000045 	lu12i.w	$r5,2(0x2)
1c004570:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004574:	03808184 	ori	$r4,$r12,0x20
1c004578:	57f40bff 	bl	-3064(0xffff408) # 1c003980 <EXTI_ClearITPendingBit>
1c00457c:	03400000 	andi	$r0,$r0,0x0
1c004580:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004584:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004588:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00458c:	4c000020 	jirl	$r0,$r1,0

1c004590 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c004590:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004594:	29803061 	st.w	$r1,$r3,12(0xc)
1c004598:	29802076 	st.w	$r22,$r3,8(0x8)
1c00459c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045a0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0045a4:	029cc0c6 	addi.w	$r6,$r6,1840(0x730)
1c0045a8:	02816805 	addi.w	$r5,$r0,90(0x5a)
1c0045ac:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0045b0:	02918084 	addi.w	$r4,$r4,1120(0x460)
1c0045b4:	57d707ff 	bl	-10492(0xfffd704) # 1c001cb8 <myprintf>
1c0045b8:	14000085 	lu12i.w	$r5,4(0x4)
1c0045bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045c0:	03808184 	ori	$r4,$r12,0x20
1c0045c4:	57f3bfff 	bl	-3140(0xffff3bc) # 1c003980 <EXTI_ClearITPendingBit>
1c0045c8:	03400000 	andi	$r0,$r0,0x0
1c0045cc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045d0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045d4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045d8:	4c000020 	jirl	$r0,$r1,0

1c0045dc <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c0045dc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045e0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045e4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045ec:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0045f0:	029bf0c6 	addi.w	$r6,$r6,1788(0x6fc)
1c0045f4:	02817c05 	addi.w	$r5,$r0,95(0x5f)
1c0045f8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0045fc:	02905084 	addi.w	$r4,$r4,1044(0x414)
1c004600:	57d6bbff 	bl	-10568(0xfffd6b8) # 1c001cb8 <myprintf>
1c004604:	14000105 	lu12i.w	$r5,8(0x8)
1c004608:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00460c:	03808184 	ori	$r4,$r12,0x20
1c004610:	57f373ff 	bl	-3216(0xffff370) # 1c003980 <EXTI_ClearITPendingBit>
1c004614:	03400000 	andi	$r0,$r0,0x0
1c004618:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00461c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004620:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004624:	4c000020 	jirl	$r0,$r1,0

1c004628 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c004628:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00462c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004630:	29802076 	st.w	$r22,$r3,8(0x8)
1c004634:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004638:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00463c:	029b20c6 	addi.w	$r6,$r6,1736(0x6c8)
1c004640:	02819405 	addi.w	$r5,$r0,101(0x65)
1c004644:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004648:	028f2084 	addi.w	$r4,$r4,968(0x3c8)
1c00464c:	57d66fff 	bl	-10644(0xfffd66c) # 1c001cb8 <myprintf>
1c004650:	14000205 	lu12i.w	$r5,16(0x10)
1c004654:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004658:	03808184 	ori	$r4,$r12,0x20
1c00465c:	57f327ff 	bl	-3292(0xffff324) # 1c003980 <EXTI_ClearITPendingBit>
1c004660:	03400000 	andi	$r0,$r0,0x0
1c004664:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004668:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00466c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004670:	4c000020 	jirl	$r0,$r1,0

1c004674 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c004674:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004678:	29803061 	st.w	$r1,$r3,12(0xc)
1c00467c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004680:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004684:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004688:	029a50c6 	addi.w	$r6,$r6,1684(0x694)
1c00468c:	0281a805 	addi.w	$r5,$r0,106(0x6a)
1c004690:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004694:	028df084 	addi.w	$r4,$r4,892(0x37c)
1c004698:	57d623ff 	bl	-10720(0xfffd620) # 1c001cb8 <myprintf>
1c00469c:	14000405 	lu12i.w	$r5,32(0x20)
1c0046a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046a4:	03808184 	ori	$r4,$r12,0x20
1c0046a8:	57f2dbff 	bl	-3368(0xffff2d8) # 1c003980 <EXTI_ClearITPendingBit>
1c0046ac:	03400000 	andi	$r0,$r0,0x0
1c0046b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046bc:	4c000020 	jirl	$r0,$r1,0

1c0046c0 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c0046c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046d0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0046d4:	029980c6 	addi.w	$r6,$r6,1632(0x660)
1c0046d8:	0281bc05 	addi.w	$r5,$r0,111(0x6f)
1c0046dc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0046e0:	028cc084 	addi.w	$r4,$r4,816(0x330)
1c0046e4:	57d5d7ff 	bl	-10796(0xfffd5d4) # 1c001cb8 <myprintf>
1c0046e8:	14000805 	lu12i.w	$r5,64(0x40)
1c0046ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046f0:	03808184 	ori	$r4,$r12,0x20
1c0046f4:	57f28fff 	bl	-3444(0xffff28c) # 1c003980 <EXTI_ClearITPendingBit>
1c0046f8:	03400000 	andi	$r0,$r0,0x0
1c0046fc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004700:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004704:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004708:	4c000020 	jirl	$r0,$r1,0

1c00470c <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c00470c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004710:	29803061 	st.w	$r1,$r3,12(0xc)
1c004714:	29802076 	st.w	$r22,$r3,8(0x8)
1c004718:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00471c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004720:	0298b0c6 	addi.w	$r6,$r6,1580(0x62c)
1c004724:	0281d005 	addi.w	$r5,$r0,116(0x74)
1c004728:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00472c:	028b9084 	addi.w	$r4,$r4,740(0x2e4)
1c004730:	57d58bff 	bl	-10872(0xfffd588) # 1c001cb8 <myprintf>
1c004734:	14001005 	lu12i.w	$r5,128(0x80)
1c004738:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00473c:	03808184 	ori	$r4,$r12,0x20
1c004740:	57f243ff 	bl	-3520(0xffff240) # 1c003980 <EXTI_ClearITPendingBit>
1c004744:	03400000 	andi	$r0,$r0,0x0
1c004748:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00474c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004750:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004754:	4c000020 	jirl	$r0,$r1,0

1c004758 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c004758:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00475c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004760:	29802076 	st.w	$r22,$r3,8(0x8)
1c004764:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004768:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00476c:	0297e0c6 	addi.w	$r6,$r6,1528(0x5f8)
1c004770:	0281e405 	addi.w	$r5,$r0,121(0x79)
1c004774:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004778:	028a6084 	addi.w	$r4,$r4,664(0x298)
1c00477c:	57d53fff 	bl	-10948(0xfffd53c) # 1c001cb8 <myprintf>
1c004780:	14002005 	lu12i.w	$r5,256(0x100)
1c004784:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004788:	03808184 	ori	$r4,$r12,0x20
1c00478c:	57f1f7ff 	bl	-3596(0xffff1f4) # 1c003980 <EXTI_ClearITPendingBit>
1c004790:	03400000 	andi	$r0,$r0,0x0
1c004794:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004798:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00479c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047a0:	4c000020 	jirl	$r0,$r1,0

1c0047a4 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c0047a4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047a8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047ac:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047b0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047b4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0047b8:	029710c6 	addi.w	$r6,$r6,1476(0x5c4)
1c0047bc:	0281f805 	addi.w	$r5,$r0,126(0x7e)
1c0047c0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0047c4:	02893084 	addi.w	$r4,$r4,588(0x24c)
1c0047c8:	57d4f3ff 	bl	-11024(0xfffd4f0) # 1c001cb8 <myprintf>
1c0047cc:	14004005 	lu12i.w	$r5,512(0x200)
1c0047d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047d4:	03808184 	ori	$r4,$r12,0x20
1c0047d8:	57f1abff 	bl	-3672(0xffff1a8) # 1c003980 <EXTI_ClearITPendingBit>
1c0047dc:	03400000 	andi	$r0,$r0,0x0
1c0047e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047ec:	4c000020 	jirl	$r0,$r1,0

1c0047f0 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c0047f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004800:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004804:	029640c6 	addi.w	$r6,$r6,1424(0x590)
1c004808:	02820c05 	addi.w	$r5,$r0,131(0x83)
1c00480c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004810:	02880084 	addi.w	$r4,$r4,512(0x200)
1c004814:	57d4a7ff 	bl	-11100(0xfffd4a4) # 1c001cb8 <myprintf>
1c004818:	14008005 	lu12i.w	$r5,1024(0x400)
1c00481c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004820:	03808184 	ori	$r4,$r12,0x20
1c004824:	57f15fff 	bl	-3748(0xffff15c) # 1c003980 <EXTI_ClearITPendingBit>
1c004828:	03400000 	andi	$r0,$r0,0x0
1c00482c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004830:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004834:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004838:	4c000020 	jirl	$r0,$r1,0

1c00483c <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c00483c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004840:	29803061 	st.w	$r1,$r3,12(0xc)
1c004844:	29802076 	st.w	$r22,$r3,8(0x8)
1c004848:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00484c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004850:	029570c6 	addi.w	$r6,$r6,1372(0x55c)
1c004854:	02822005 	addi.w	$r5,$r0,136(0x88)
1c004858:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00485c:	0286d084 	addi.w	$r4,$r4,436(0x1b4)
1c004860:	57d45bff 	bl	-11176(0xfffd458) # 1c001cb8 <myprintf>
1c004864:	14010005 	lu12i.w	$r5,2048(0x800)
1c004868:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00486c:	03808184 	ori	$r4,$r12,0x20
1c004870:	57f113ff 	bl	-3824(0xffff110) # 1c003980 <EXTI_ClearITPendingBit>
1c004874:	03400000 	andi	$r0,$r0,0x0
1c004878:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00487c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004880:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004884:	4c000020 	jirl	$r0,$r1,0

1c004888 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c004888:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00488c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004890:	29802076 	st.w	$r22,$r3,8(0x8)
1c004894:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004898:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00489c:	0294a0c6 	addi.w	$r6,$r6,1320(0x528)
1c0048a0:	02823405 	addi.w	$r5,$r0,141(0x8d)
1c0048a4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0048a8:	0285a084 	addi.w	$r4,$r4,360(0x168)
1c0048ac:	57d40fff 	bl	-11252(0xfffd40c) # 1c001cb8 <myprintf>
1c0048b0:	14020005 	lu12i.w	$r5,4096(0x1000)
1c0048b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048b8:	03808184 	ori	$r4,$r12,0x20
1c0048bc:	57f0c7ff 	bl	-3900(0xffff0c4) # 1c003980 <EXTI_ClearITPendingBit>
1c0048c0:	03400000 	andi	$r0,$r0,0x0
1c0048c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048d0:	4c000020 	jirl	$r0,$r1,0

1c0048d4 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c0048d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048e4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0048e8:	0293d0c6 	addi.w	$r6,$r6,1268(0x4f4)
1c0048ec:	02824805 	addi.w	$r5,$r0,146(0x92)
1c0048f0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0048f4:	02847084 	addi.w	$r4,$r4,284(0x11c)
1c0048f8:	57d3c3ff 	bl	-11328(0xfffd3c0) # 1c001cb8 <myprintf>
1c0048fc:	14040005 	lu12i.w	$r5,8192(0x2000)
1c004900:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004904:	03808184 	ori	$r4,$r12,0x20
1c004908:	57f07bff 	bl	-3976(0xffff078) # 1c003980 <EXTI_ClearITPendingBit>
1c00490c:	03400000 	andi	$r0,$r0,0x0
1c004910:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004914:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004918:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00491c:	4c000020 	jirl	$r0,$r1,0

1c004920 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004920:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004924:	29803061 	st.w	$r1,$r3,12(0xc)
1c004928:	29802076 	st.w	$r22,$r3,8(0x8)
1c00492c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004930:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004934:	029300c6 	addi.w	$r6,$r6,1216(0x4c0)
1c004938:	02825c05 	addi.w	$r5,$r0,151(0x97)
1c00493c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004940:	02834084 	addi.w	$r4,$r4,208(0xd0)
1c004944:	57d377ff 	bl	-11404(0xfffd374) # 1c001cb8 <myprintf>
1c004948:	14080005 	lu12i.w	$r5,16384(0x4000)
1c00494c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004950:	03808184 	ori	$r4,$r12,0x20
1c004954:	57f02fff 	bl	-4052(0xffff02c) # 1c003980 <EXTI_ClearITPendingBit>
1c004958:	03400000 	andi	$r0,$r0,0x0
1c00495c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004960:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004964:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004968:	4c000020 	jirl	$r0,$r1,0

1c00496c <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c00496c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004970:	29803061 	st.w	$r1,$r3,12(0xc)
1c004974:	29802076 	st.w	$r22,$r3,8(0x8)
1c004978:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00497c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004980:	029230c6 	addi.w	$r6,$r6,1164(0x48c)
1c004984:	02827005 	addi.w	$r5,$r0,156(0x9c)
1c004988:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00498c:	02821084 	addi.w	$r4,$r4,132(0x84)
1c004990:	57d32bff 	bl	-11480(0xfffd328) # 1c001cb8 <myprintf>
1c004994:	14100005 	lu12i.w	$r5,32768(0x8000)
1c004998:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00499c:	03808184 	ori	$r4,$r12,0x20
1c0049a0:	57efe3ff 	bl	-4128(0xfffefe0) # 1c003980 <EXTI_ClearITPendingBit>
1c0049a4:	03400000 	andi	$r0,$r0,0x0
1c0049a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049b4:	4c000020 	jirl	$r0,$r1,0

1c0049b8 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c0049b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049c8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0049cc:	029160c6 	addi.w	$r6,$r6,1112(0x458)
1c0049d0:	02828405 	addi.w	$r5,$r0,161(0xa1)
1c0049d4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0049d8:	0280e084 	addi.w	$r4,$r4,56(0x38)
1c0049dc:	57d2dfff 	bl	-11556(0xfffd2dc) # 1c001cb8 <myprintf>
1c0049e0:	14200005 	lu12i.w	$r5,65536(0x10000)
1c0049e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049e8:	03808184 	ori	$r4,$r12,0x20
1c0049ec:	57ef97ff 	bl	-4204(0xfffef94) # 1c003980 <EXTI_ClearITPendingBit>
1c0049f0:	03400000 	andi	$r0,$r0,0x0
1c0049f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a00:	4c000020 	jirl	$r0,$r1,0

1c004a04 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004a04:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a08:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a0c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a10:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a14:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004a18:	029090c6 	addi.w	$r6,$r6,1060(0x424)
1c004a1c:	02829c05 	addi.w	$r5,$r0,167(0xa7)
1c004a20:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004a24:	02bfb084 	addi.w	$r4,$r4,-20(0xfec)
1c004a28:	57d293ff 	bl	-11632(0xfffd290) # 1c001cb8 <myprintf>
1c004a2c:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004a30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a34:	03808184 	ori	$r4,$r12,0x20
1c004a38:	57ef4bff 	bl	-4280(0xfffef48) # 1c003980 <EXTI_ClearITPendingBit>
1c004a3c:	03400000 	andi	$r0,$r0,0x0
1c004a40:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a44:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a48:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a4c:	4c000020 	jirl	$r0,$r1,0

1c004a50 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004a50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a54:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a58:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a5c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a60:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004a64:	028fc0c6 	addi.w	$r6,$r6,1008(0x3f0)
1c004a68:	0282b005 	addi.w	$r5,$r0,172(0xac)
1c004a6c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004a70:	02be8084 	addi.w	$r4,$r4,-96(0xfa0)
1c004a74:	57d247ff 	bl	-11708(0xfffd244) # 1c001cb8 <myprintf>
1c004a78:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004a7c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a80:	03808184 	ori	$r4,$r12,0x20
1c004a84:	57eeffff 	bl	-4356(0xfffeefc) # 1c003980 <EXTI_ClearITPendingBit>
1c004a88:	03400000 	andi	$r0,$r0,0x0
1c004a8c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004a90:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a94:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a98:	4c000020 	jirl	$r0,$r1,0

1c004a9c <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c004a9c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004aa0:	29803061 	st.w	$r1,$r3,12(0xc)
1c004aa4:	29802076 	st.w	$r22,$r3,8(0x8)
1c004aa8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004aac:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004ab0:	028ef0c6 	addi.w	$r6,$r6,956(0x3bc)
1c004ab4:	0282c405 	addi.w	$r5,$r0,177(0xb1)
1c004ab8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004abc:	02bd5084 	addi.w	$r4,$r4,-172(0xf54)
1c004ac0:	57d1fbff 	bl	-11784(0xfffd1f8) # 1c001cb8 <myprintf>
1c004ac4:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c004ac8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004acc:	03808184 	ori	$r4,$r12,0x20
1c004ad0:	57eeb3ff 	bl	-4432(0xfffeeb0) # 1c003980 <EXTI_ClearITPendingBit>
1c004ad4:	03400000 	andi	$r0,$r0,0x0
1c004ad8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004adc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004ae0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004ae4:	4c000020 	jirl	$r0,$r1,0

1c004ae8 <ext_handler>:
ext_handler():
1c004ae8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004aec:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004af0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004af4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004af8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004afc:	0380f18c 	ori	$r12,$r12,0x3c
1c004b00:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004b04:	2980018d 	st.w	$r13,$r12,0
1c004b08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b0c:	0380818c 	ori	$r12,$r12,0x20
1c004b10:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004b14:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004b18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b1c:	0380818c 	ori	$r12,$r12,0x20
1c004b20:	2880018c 	ld.w	$r12,$r12,0
1c004b24:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004b28:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004b2c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004b30:	0014b1ac 	and	$r12,$r13,$r12
1c004b34:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004b38:	03400000 	andi	$r0,$r0,0x0
1c004b3c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004b40:	50004000 	b	64(0x40) # 1c004b80 <ext_handler+0x98>
1c004b44:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004b48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b4c:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004b50:	0340058c 	andi	$r12,$r12,0x1
1c004b54:	40002180 	beqz	$r12,32(0x20) # 1c004b74 <ext_handler+0x8c>
1c004b58:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004b5c:	02bd91ad 	addi.w	$r13,$r13,-156(0xf64)
1c004b60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b64:	0040898c 	slli.w	$r12,$r12,0x2
1c004b68:	001031ac 	add.w	$r12,$r13,$r12
1c004b6c:	2880018c 	ld.w	$r12,$r12,0
1c004b70:	4c000181 	jirl	$r1,$r12,0
1c004b74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004b78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004b7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004b80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004b84:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c004b88:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c004b44 <ext_handler+0x5c>
1c004b8c:	03400000 	andi	$r0,$r0,0x0
1c004b90:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004b94:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004b98:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b9c:	4c000020 	jirl	$r0,$r1,0

1c004ba0 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004ba0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004ba4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004ba8:	29806076 	st.w	$r22,$r3,24(0x18)
1c004bac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004bb0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bb4:	0380f18c 	ori	$r12,$r12,0x3c
1c004bb8:	1400020d 	lu12i.w	$r13,16(0x10)
1c004bbc:	2980018d 	st.w	$r13,$r12,0
1c004bc0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bc4:	0380118c 	ori	$r12,$r12,0x4
1c004bc8:	2880018c 	ld.w	$r12,$r12,0
1c004bcc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004bd0:	57ef03ff 	bl	-4352(0xfffef00) # 1c003ad0 <WDG_DogFeed>
1c004bd4:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004bd8:	57e657ff 	bl	-6572(0xfffe654) # 1c00322c <Wake_Set>
1c004bdc:	03400000 	andi	$r0,$r0,0x0
1c004be0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004be4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004be8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004bec:	4c000020 	jirl	$r0,$r1,0

1c004bf0 <TOUCH>:
TOUCH():
1c004bf0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004bf4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004bf8:	29806076 	st.w	$r22,$r3,24(0x18)
1c004bfc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004c00:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004c04:	0380118c 	ori	$r12,$r12,0x4
1c004c08:	2880018c 	ld.w	$r12,$r12,0
1c004c0c:	0044c18c 	srli.w	$r12,$r12,0x10
1c004c10:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004c14:	037ffd8c 	andi	$r12,$r12,0xfff
1c004c18:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004c1c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004c20:	0380118c 	ori	$r12,$r12,0x4
1c004c24:	2880018c 	ld.w	$r12,$r12,0
1c004c28:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004c2c:	03403d8c 	andi	$r12,$r12,0xf
1c004c30:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004c34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c38:	0380f18c 	ori	$r12,$r12,0x3c
1c004c3c:	1400040d 	lu12i.w	$r13,32(0x20)
1c004c40:	2980018d 	st.w	$r13,$r12,0
1c004c44:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004c48:	0380118c 	ori	$r12,$r12,0x4
1c004c4c:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004c50:	2980018d 	st.w	$r13,$r12,0
1c004c54:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004c58:	00150184 	move	$r4,$r12
1c004c5c:	57efe7ff 	bl	-4124(0xfffefe4) # 1c003c40 <Printf_KeyType>
1c004c60:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004c64:	00150184 	move	$r4,$r12
1c004c68:	57ef5fff 	bl	-4260(0xfffef5c) # 1c003bc4 <Printf_KeyChannel>
1c004c6c:	57f063ff 	bl	-4000(0xffff060) # 1c003ccc <Printf_KeyVal>
1c004c70:	03400000 	andi	$r0,$r0,0x0
1c004c74:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004c78:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004c7c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004c80:	4c000020 	jirl	$r0,$r1,0

1c004c84 <UART2_INT>:
UART2_INT():
1c004c84:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004c88:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004c8c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004c90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c94:	0380f18c 	ori	$r12,$r12,0x3c
1c004c98:	1400080d 	lu12i.w	$r13,64(0x40)
1c004c9c:	2980018d 	st.w	$r13,$r12,0
1c004ca0:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004ca4:	0380098c 	ori	$r12,$r12,0x2
1c004ca8:	2a00018c 	ld.bu	$r12,$r12,0
1c004cac:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004cb0:	03400000 	andi	$r0,$r0,0x0
1c004cb4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004cb8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004cbc:	4c000020 	jirl	$r0,$r1,0

1c004cc0 <BAT_FAIL>:
BAT_FAIL():
1c004cc0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004cc4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004cc8:	29806076 	st.w	$r22,$r3,24(0x18)
1c004ccc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004cd0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004cd4:	0380118c 	ori	$r12,$r12,0x4
1c004cd8:	2880018c 	ld.w	$r12,$r12,0
1c004cdc:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004ce0:	03407d8c 	andi	$r12,$r12,0x1f
1c004ce4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004ce8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004cec:	0380118c 	ori	$r12,$r12,0x4
1c004cf0:	2880018e 	ld.w	$r14,$r12,0
1c004cf4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004cf8:	0380f18c 	ori	$r12,$r12,0x3c
1c004cfc:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004d00:	0014b5cd 	and	$r13,$r14,$r13
1c004d04:	2980018d 	st.w	$r13,$r12,0
1c004d08:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004d0c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004d10:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004d80 <BAT_FAIL+0xc0>
1c004d14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004d18:	0040898d 	slli.w	$r13,$r12,0x2
1c004d1c:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c004d20:	02b8818c 	addi.w	$r12,$r12,-480(0xe20)
1c004d24:	001031ac 	add.w	$r12,$r13,$r12
1c004d28:	2880018c 	ld.w	$r12,$r12,0
1c004d2c:	4c000180 	jirl	$r0,$r12,0
1c004d30:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004d34:	02b48084 	addi.w	$r4,$r4,-736(0xd20)
1c004d38:	57cf83ff 	bl	-12416(0xfffcf80) # 1c001cb8 <myprintf>
1c004d3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d40:	0380118c 	ori	$r12,$r12,0x4
1c004d44:	29800180 	st.w	$r0,$r12,0
1c004d48:	50003c00 	b	60(0x3c) # 1c004d84 <BAT_FAIL+0xc4>
1c004d4c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004d50:	02b4b084 	addi.w	$r4,$r4,-724(0xd2c)
1c004d54:	57cf67ff 	bl	-12444(0xfffcf64) # 1c001cb8 <myprintf>
1c004d58:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d5c:	0380118c 	ori	$r12,$r12,0x4
1c004d60:	2880018e 	ld.w	$r14,$r12,0
1c004d64:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004d68:	0380118c 	ori	$r12,$r12,0x4
1c004d6c:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004d70:	03bffdad 	ori	$r13,$r13,0xfff
1c004d74:	0014b5cd 	and	$r13,$r14,$r13
1c004d78:	2980018d 	st.w	$r13,$r12,0
1c004d7c:	50000800 	b	8(0x8) # 1c004d84 <BAT_FAIL+0xc4>
1c004d80:	03400000 	andi	$r0,$r0,0x0
1c004d84:	03400000 	andi	$r0,$r0,0x0
1c004d88:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004d8c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004d90:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004d94:	4c000020 	jirl	$r0,$r1,0

1c004d98 <intc_handler>:
intc_handler():
1c004d98:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004d9c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004da0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004da4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004da8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004dac:	0380158c 	ori	$r12,$r12,0x5
1c004db0:	2a00018c 	ld.bu	$r12,$r12,0
1c004db4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004db8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004dbc:	0340058c 	andi	$r12,$r12,0x1
1c004dc0:	4001fd80 	beqz	$r12,508(0x1fc) # 1c004fbc <intc_handler+0x224>
1c004dc4:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004dc8:	57f2fbff 	bl	-3336(0xffff2f8) # 1c0040c0 <TIM_GetITStatus>
1c004dcc:	0015008c 	move	$r12,$r4
1c004dd0:	4001ed80 	beqz	$r12,492(0x1ec) # 1c004fbc <intc_handler+0x224>
1c004dd4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004dd8:	0288b18c 	addi.w	$r12,$r12,556(0x22c)
1c004ddc:	2a00018c 	ld.bu	$r12,$r12,0
1c004de0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004de4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004de8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004dec:	0288618c 	addi.w	$r12,$r12,536(0x218)
1c004df0:	2900018d 	st.b	$r13,$r12,0
1c004df4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004df8:	0288518c 	addi.w	$r12,$r12,532(0x214)
1c004dfc:	2a00018c 	ld.bu	$r12,$r12,0
1c004e00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004e04:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004e08:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e0c:	0288018c 	addi.w	$r12,$r12,512(0x200)
1c004e10:	2900018d 	st.b	$r13,$r12,0
1c004e14:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e18:	0287f18c 	addi.w	$r12,$r12,508(0x1fc)
1c004e1c:	2a00018c 	ld.bu	$r12,$r12,0
1c004e20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004e24:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004e28:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e2c:	0287a18c 	addi.w	$r12,$r12,488(0x1e8)
1c004e30:	2900018d 	st.b	$r13,$r12,0
1c004e34:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e38:	0287918c 	addi.w	$r12,$r12,484(0x1e4)
1c004e3c:	2a00018c 	ld.bu	$r12,$r12,0
1c004e40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004e44:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004e48:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e4c:	0287418c 	addi.w	$r12,$r12,464(0x1d0)
1c004e50:	2900018d 	st.b	$r13,$r12,0
1c004e54:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e58:	0287318c 	addi.w	$r12,$r12,460(0x1cc)
1c004e5c:	2a00018c 	ld.bu	$r12,$r12,0
1c004e60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004e64:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004e68:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e6c:	0286e18c 	addi.w	$r12,$r12,440(0x1b8)
1c004e70:	2900018d 	st.b	$r13,$r12,0
1c004e74:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e78:	0286d18c 	addi.w	$r12,$r12,436(0x1b4)
1c004e7c:	2a00018c 	ld.bu	$r12,$r12,0
1c004e80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004e84:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004e88:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e8c:	0286818c 	addi.w	$r12,$r12,416(0x1a0)
1c004e90:	2900018d 	st.b	$r13,$r12,0
1c004e94:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e98:	0285b18c 	addi.w	$r12,$r12,364(0x16c)
1c004e9c:	2a00018d 	ld.bu	$r13,$r12,0
1c004ea0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004ea4:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c004ec4 <intc_handler+0x12c>
1c004ea8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004eac:	0285718c 	addi.w	$r12,$r12,348(0x15c)
1c004eb0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004eb4:	2980018d 	st.w	$r13,$r12,0
1c004eb8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ebc:	0285218c 	addi.w	$r12,$r12,328(0x148)
1c004ec0:	29000180 	st.b	$r0,$r12,0
1c004ec4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ec8:	0285118c 	addi.w	$r12,$r12,324(0x144)
1c004ecc:	2a00018d 	ld.bu	$r13,$r12,0
1c004ed0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c004ed4:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c004ef4 <intc_handler+0x15c>
1c004ed8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004edc:	0284d18c 	addi.w	$r12,$r12,308(0x134)
1c004ee0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004ee4:	2980018d 	st.w	$r13,$r12,0
1c004ee8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004eec:	0284818c 	addi.w	$r12,$r12,288(0x120)
1c004ef0:	29000180 	st.b	$r0,$r12,0
1c004ef4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ef8:	0284718c 	addi.w	$r12,$r12,284(0x11c)
1c004efc:	2a00018d 	ld.bu	$r13,$r12,0
1c004f00:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c004f04:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c004f24 <intc_handler+0x18c>
1c004f08:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f0c:	0284318c 	addi.w	$r12,$r12,268(0x10c)
1c004f10:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004f14:	2980018d 	st.w	$r13,$r12,0
1c004f18:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f1c:	0283e18c 	addi.w	$r12,$r12,248(0xf8)
1c004f20:	29000180 	st.b	$r0,$r12,0
1c004f24:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f28:	0283d18c 	addi.w	$r12,$r12,244(0xf4)
1c004f2c:	2a00018d 	ld.bu	$r13,$r12,0
1c004f30:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004f34:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c004f54 <intc_handler+0x1bc>
1c004f38:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f3c:	0283918c 	addi.w	$r12,$r12,228(0xe4)
1c004f40:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004f44:	2980018d 	st.w	$r13,$r12,0
1c004f48:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f4c:	0283418c 	addi.w	$r12,$r12,208(0xd0)
1c004f50:	29000180 	st.b	$r0,$r12,0
1c004f54:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f58:	0283318c 	addi.w	$r12,$r12,204(0xcc)
1c004f5c:	2a00018d 	ld.bu	$r13,$r12,0
1c004f60:	0280c80c 	addi.w	$r12,$r0,50(0x32)
1c004f64:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c004f84 <intc_handler+0x1ec>
1c004f68:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f6c:	0282f18c 	addi.w	$r12,$r12,188(0xbc)
1c004f70:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004f74:	2980018d 	st.w	$r13,$r12,0
1c004f78:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f7c:	0282a18c 	addi.w	$r12,$r12,168(0xa8)
1c004f80:	29000180 	st.b	$r0,$r12,0
1c004f84:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f88:	0282918c 	addi.w	$r12,$r12,164(0xa4)
1c004f8c:	2a00018d 	ld.bu	$r13,$r12,0
1c004f90:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c004f94:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c004fb4 <intc_handler+0x21c>
1c004f98:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f9c:	0282518c 	addi.w	$r12,$r12,148(0x94)
1c004fa0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004fa4:	2980018d 	st.w	$r13,$r12,0
1c004fa8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fac:	0282018c 	addi.w	$r12,$r12,128(0x80)
1c004fb0:	29000180 	st.b	$r0,$r12,0
1c004fb4:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004fb8:	57f157ff 	bl	-3756(0xffff154) # 1c00410c <TIM_ClearIT>
1c004fbc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004fc0:	0340118c 	andi	$r12,$r12,0x4
1c004fc4:	40004980 	beqz	$r12,72(0x48) # 1c00500c <intc_handler+0x274>
1c004fc8:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c004fcc:	57d8f3ff 	bl	-10000(0xfffd8f0) # 1c0028bc <UART_ReceiveData>
1c004fd0:	0015008c 	move	$r12,$r4
1c004fd4:	0015018d 	move	$r13,$r12
1c004fd8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004fdc:	0281618c 	addi.w	$r12,$r12,88(0x58)
1c004fe0:	2900018d 	st.b	$r13,$r12,0
1c004fe4:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004fe8:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c004fec:	028120a5 	addi.w	$r5,$r5,72(0x48)
1c004ff0:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004ff4:	28810084 	ld.w	$r4,$r4,64(0x40)
1c004ff8:	540bf400 	bl	3060(0xbf4) # 1c005bec <Queue_Wirte>
1c004ffc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005000:	03800d8c 	ori	$r12,$r12,0x3
1c005004:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c005008:	2900018d 	st.b	$r13,$r12,0
1c00500c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005010:	0340218c 	andi	$r12,$r12,0x8
1c005014:	40004980 	beqz	$r12,72(0x48) # 1c00505c <intc_handler+0x2c4>
1c005018:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c00501c:	57d8a3ff 	bl	-10080(0xfffd8a0) # 1c0028bc <UART_ReceiveData>
1c005020:	0015008c 	move	$r12,$r4
1c005024:	0015018d 	move	$r13,$r12
1c005028:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00502c:	0280258c 	addi.w	$r12,$r12,9(0x9)
1c005030:	2900018d 	st.b	$r13,$r12,0
1c005034:	02800406 	addi.w	$r6,$r0,1(0x1)
1c005038:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c00503c:	02bfe4a5 	addi.w	$r5,$r5,-7(0xff9)
1c005040:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005044:	28800084 	ld.w	$r4,$r4,0
1c005048:	540ba400 	bl	2980(0xba4) # 1c005bec <Queue_Wirte>
1c00504c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005050:	03800d8c 	ori	$r12,$r12,0x3
1c005054:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c005058:	2900018d 	st.b	$r13,$r12,0
1c00505c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c005060:	03800d8c 	ori	$r12,$r12,0x3
1c005064:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c005068:	2900018d 	st.b	$r13,$r12,0
1c00506c:	03400000 	andi	$r0,$r0,0x0
1c005070:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005074:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005078:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00507c:	4c000020 	jirl	$r0,$r1,0

1c005080 <TIMER_HANDLER>:
TIMER_HANDLER():
1c005080:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005084:	29803061 	st.w	$r1,$r3,12(0xc)
1c005088:	29802076 	st.w	$r22,$r3,8(0x8)
1c00508c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005090:	57e17bff 	bl	-7816(0xfffe178) # 1c003208 <Set_Timer_clear>
1c005094:	1c000044 	pcaddu12i	$r4,2(0x2)
1c005098:	02a82084 	addi.w	$r4,$r4,-1528(0xa08)
1c00509c:	57cc1fff 	bl	-13284(0xfffcc1c) # 1c001cb8 <myprintf>
1c0050a0:	57e14bff 	bl	-7864(0xfffe148) # 1c0031e8 <Set_Timer_stop>
1c0050a4:	03400000 	andi	$r0,$r0,0x0
1c0050a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0050ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0050b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0050b4:	4c000020 	jirl	$r0,$r1,0

1c0050b8 <executer_init>:
executer_init():
1c0050b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0050bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0050c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0050c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0050c8:	54020400 	bl	516(0x204) # 1c0052cc <led_init>
1c0050cc:	540cd800 	bl	3288(0xcd8) # 1c005da4 <mqtt_process_init>
1c0050d0:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c0050d4:	57e4dfff 	bl	-6948(0xfffe4dc) # 1c0035b0 <delay_ms>
1c0050d8:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0050dc:	57ef93ff 	bl	-4208(0xfffef90) # 1c00406c <timer_init>
1c0050e0:	03400000 	andi	$r0,$r0,0x0
1c0050e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0050e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0050ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0050f0:	4c000020 	jirl	$r0,$r1,0

1c0050f4 <executer_choose_run>:
executer_choose_run():
1c0050f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0050f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0050fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c005100:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005104:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005108:	28bcd18c 	ld.w	$r12,$r12,-204(0xf34)
1c00510c:	2880018d 	ld.w	$r13,$r12,0
1c005110:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005114:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c005128 <executer_choose_run+0x34>
1c005118:	54013c00 	bl	316(0x13c) # 1c005254 <run_function_10ms>
1c00511c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005120:	28bc718c 	ld.w	$r12,$r12,-228(0xf1c)
1c005124:	29800180 	st.w	$r0,$r12,0
1c005128:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00512c:	28bbf18c 	ld.w	$r12,$r12,-260(0xefc)
1c005130:	2880018d 	ld.w	$r13,$r12,0
1c005134:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005138:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c00514c <executer_choose_run+0x58>
1c00513c:	54013400 	bl	308(0x134) # 1c005270 <run_function_20ms>
1c005140:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005144:	28bb918c 	ld.w	$r12,$r12,-284(0xee4)
1c005148:	29800180 	st.w	$r0,$r12,0
1c00514c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005150:	28baf18c 	ld.w	$r12,$r12,-324(0xebc)
1c005154:	2880018d 	ld.w	$r13,$r12,0
1c005158:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00515c:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c005170 <executer_choose_run+0x7c>
1c005160:	54009000 	bl	144(0x90) # 1c0051f0 <run_function_50ms>
1c005164:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005168:	28ba918c 	ld.w	$r12,$r12,-348(0xea4)
1c00516c:	29800180 	st.w	$r0,$r12,0
1c005170:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005174:	28bae18c 	ld.w	$r12,$r12,-328(0xeb8)
1c005178:	2880018d 	ld.w	$r13,$r12,0
1c00517c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005180:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c005194 <executer_choose_run+0xa0>
1c005184:	54008800 	bl	136(0x88) # 1c00520c <run_function_100ms>
1c005188:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00518c:	28ba818c 	ld.w	$r12,$r12,-352(0xea0)
1c005190:	29800180 	st.w	$r0,$r12,0
1c005194:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005198:	28ba118c 	ld.w	$r12,$r12,-380(0xe84)
1c00519c:	2880018d 	ld.w	$r13,$r12,0
1c0051a0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0051a4:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0051b8 <executer_choose_run+0xc4>
1c0051a8:	54008000 	bl	128(0x80) # 1c005228 <run_function_500ms>
1c0051ac:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0051b0:	28b9b18c 	ld.w	$r12,$r12,-404(0xe6c)
1c0051b4:	29800180 	st.w	$r0,$r12,0
1c0051b8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0051bc:	28ba118c 	ld.w	$r12,$r12,-380(0xe84)
1c0051c0:	2880018d 	ld.w	$r13,$r12,0
1c0051c4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0051c8:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0051dc <executer_choose_run+0xe8>
1c0051cc:	5400c000 	bl	192(0xc0) # 1c00528c <run_function_1000ms>
1c0051d0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0051d4:	28b9b18c 	ld.w	$r12,$r12,-404(0xe6c)
1c0051d8:	29800180 	st.w	$r0,$r12,0
1c0051dc:	03400000 	andi	$r0,$r0,0x0
1c0051e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0051e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0051e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0051ec:	4c000020 	jirl	$r0,$r1,0

1c0051f0 <run_function_50ms>:
run_function_50ms():
1c0051f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0051f4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0051f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0051fc:	03400000 	andi	$r0,$r0,0x0
1c005200:	28803076 	ld.w	$r22,$r3,12(0xc)
1c005204:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005208:	4c000020 	jirl	$r0,$r1,0

1c00520c <run_function_100ms>:
run_function_100ms():
1c00520c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005210:	29803076 	st.w	$r22,$r3,12(0xc)
1c005214:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005218:	03400000 	andi	$r0,$r0,0x0
1c00521c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c005220:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005224:	4c000020 	jirl	$r0,$r1,0

1c005228 <run_function_500ms>:
run_function_500ms():
1c005228:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00522c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005230:	29802076 	st.w	$r22,$r3,8(0x8)
1c005234:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005238:	540b9c00 	bl	2972(0xb9c) # 1c005dd4 <mqtt_process>
1c00523c:	5400c000 	bl	192(0xc0) # 1c0052fc <led_show>
1c005240:	03400000 	andi	$r0,$r0,0x0
1c005244:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005248:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00524c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005250:	4c000020 	jirl	$r0,$r1,0

1c005254 <run_function_10ms>:
run_function_10ms():
1c005254:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005258:	29803076 	st.w	$r22,$r3,12(0xc)
1c00525c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005260:	03400000 	andi	$r0,$r0,0x0
1c005264:	28803076 	ld.w	$r22,$r3,12(0xc)
1c005268:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00526c:	4c000020 	jirl	$r0,$r1,0

1c005270 <run_function_20ms>:
run_function_20ms():
1c005270:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005274:	29803076 	st.w	$r22,$r3,12(0xc)
1c005278:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00527c:	03400000 	andi	$r0,$r0,0x0
1c005280:	28803076 	ld.w	$r22,$r3,12(0xc)
1c005284:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005288:	4c000020 	jirl	$r0,$r1,0

1c00528c <run_function_1000ms>:
run_function_1000ms():
1c00528c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005290:	29803076 	st.w	$r22,$r3,12(0xc)
1c005294:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005298:	03400000 	andi	$r0,$r0,0x0
1c00529c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0052a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0052a4:	4c000020 	jirl	$r0,$r1,0

1c0052a8 <main>:
main():
1c0052a8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0052ac:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0052b0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0052b4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0052b8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0052bc:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0052c0:	57fdfbff 	bl	-520(0xffffdf8) # 1c0050b8 <executer_init>
1c0052c4:	57fe33ff 	bl	-464(0xffffe30) # 1c0050f4 <executer_choose_run>
1c0052c8:	53ffffff 	b	-4(0xffffffc) # 1c0052c4 <main+0x1c>

1c0052cc <led_init>:
led_init():
1c0052cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0052d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0052d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0052d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0052dc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0052e0:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0052e4:	57c2c3ff 	bl	-15680(0xfffc2c0) # 1c0015a4 <gpio_write_pin>
1c0052e8:	03400000 	andi	$r0,$r0,0x0
1c0052ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0052f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0052f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0052f8:	4c000020 	jirl	$r0,$r1,0

1c0052fc <led_show>:
led_show():
1c0052fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005300:	29803061 	st.w	$r1,$r3,12(0xc)
1c005304:	29802076 	st.w	$r22,$r3,8(0x8)
1c005308:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00530c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005310:	02b4998c 	addi.w	$r12,$r12,-730(0xd26)
1c005314:	2a00018c 	ld.bu	$r12,$r12,0
1c005318:	0240058c 	sltui	$r12,$r12,1(0x1)
1c00531c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005320:	0015018d 	move	$r13,$r12
1c005324:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005328:	02b4398c 	addi.w	$r12,$r12,-754(0xd0e)
1c00532c:	2900018d 	st.b	$r13,$r12,0
1c005330:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005334:	02b4098c 	addi.w	$r12,$r12,-766(0xd02)
1c005338:	2a00018c 	ld.bu	$r12,$r12,0
1c00533c:	00150185 	move	$r5,$r12
1c005340:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005344:	57c263ff 	bl	-15776(0xfffc260) # 1c0015a4 <gpio_write_pin>
1c005348:	03400000 	andi	$r0,$r0,0x0
1c00534c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005350:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005354:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005358:	4c000020 	jirl	$r0,$r1,0

1c00535c <json_to_send>:
json_to_send():
1c00535c:	02a2c063 	addi.w	$r3,$r3,-1872(0x8b0)
1c005360:	299d3061 	st.w	$r1,$r3,1868(0x74c)
1c005364:	299d2076 	st.w	$r22,$r3,1864(0x748)
1c005368:	299d1077 	st.w	$r23,$r3,1860(0x744)
1c00536c:	029d4076 	addi.w	$r22,$r3,1872(0x750)
1c005370:	29a2f2c4 	st.w	$r4,$r22,-1860(0x8bc)
1c005374:	293f9ec0 	st.b	$r0,$r22,-25(0xfe7)
1c005378:	293f9ac0 	st.b	$r0,$r22,-26(0xfe6)
1c00537c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005380:	50021000 	b	528(0x210) # 1c005590 <json_to_send+0x234>
1c005384:	28a2f2cd 	ld.w	$r13,$r22,-1860(0x8bc)
1c005388:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00538c:	0040898c 	slli.w	$r12,$r12,0x2
1c005390:	001031ac 	add.w	$r12,$r13,$r12
1c005394:	2880018c 	ld.w	$r12,$r12,0
1c005398:	00150184 	move	$r4,$r12
1c00539c:	57e59bff 	bl	-6760(0xfffe598) # 1c003934 <strlen>
1c0053a0:	0015008c 	move	$r12,$r4
1c0053a4:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c0053a8:	28a2f2cd 	ld.w	$r13,$r22,-1860(0x8bc)
1c0053ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0053b0:	0280218c 	addi.w	$r12,$r12,8(0x8)
1c0053b4:	0040858c 	slli.w	$r12,$r12,0x1
1c0053b8:	001031ac 	add.w	$r12,$r13,$r12
1c0053bc:	2a40318c 	ld.hu	$r12,$r12,12(0xc)
1c0053c0:	02bf82cd 	addi.w	$r13,$r22,-32(0xfe0)
1c0053c4:	00150185 	move	$r5,$r12
1c0053c8:	001501a4 	move	$r4,$r13
1c0053cc:	57e34fff 	bl	-7348(0xfffe34c) # 1c003718 <itoa>
1c0053d0:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c0053d4:	00150184 	move	$r4,$r12
1c0053d8:	57e55fff 	bl	-6820(0xfffe55c) # 1c003934 <strlen>
1c0053dc:	0015008c 	move	$r12,$r4
1c0053e0:	293f9acc 	st.b	$r12,$r22,-26(0xfe6)
1c0053e4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0053e8:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c0053ec:	580045ac 	beq	$r13,$r12,68(0x44) # 1c005430 <json_to_send+0xd4>
1c0053f0:	2a3f9acc 	ld.bu	$r12,$r22,-26(0xfe6)
1c0053f4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0053f8:	001031ad 	add.w	$r13,$r13,$r12
1c0053fc:	0281700c 	addi.w	$r12,$r0,92(0x5c)
1c005400:	293fc1ac 	st.b	$r12,$r13,-16(0xff0)
1c005404:	2a3f9acc 	ld.bu	$r12,$r22,-26(0xfe6)
1c005408:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00540c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005410:	001031ad 	add.w	$r13,$r13,$r12
1c005414:	0280b00c 	addi.w	$r12,$r0,44(0x2c)
1c005418:	293fc1ac 	st.b	$r12,$r13,-16(0xff0)
1c00541c:	2a3f9acc 	ld.bu	$r12,$r22,-26(0xfe6)
1c005420:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c005424:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005428:	001031ac 	add.w	$r12,$r13,$r12
1c00542c:	293fc180 	st.b	$r0,$r12,-16(0xff0)
1c005430:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005434:	0040a18c 	slli.w	$r12,$r12,0x8
1c005438:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00543c:	001031ac 	add.w	$r12,$r13,$r12
1c005440:	0281700d 	addi.w	$r13,$r0,92(0x5c)
1c005444:	2923c18d 	st.b	$r13,$r12,-1808(0x8f0)
1c005448:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00544c:	0040a18c 	slli.w	$r12,$r12,0x8
1c005450:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c005454:	001031ac 	add.w	$r12,$r13,$r12
1c005458:	0280880d 	addi.w	$r13,$r0,34(0x22)
1c00545c:	2923c58d 	st.b	$r13,$r12,-1807(0x8f1)
1c005460:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005464:	50005000 	b	80(0x50) # 1c0054b4 <json_to_send+0x158>
1c005468:	28a2f2cd 	ld.w	$r13,$r22,-1860(0x8bc)
1c00546c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005470:	0040898c 	slli.w	$r12,$r12,0x2
1c005474:	001031ac 	add.w	$r12,$r13,$r12
1c005478:	2880018d 	ld.w	$r13,$r12,0
1c00547c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005480:	001031ac 	add.w	$r12,$r13,$r12
1c005484:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005488:	028009ae 	addi.w	$r14,$r13,2(0x2)
1c00548c:	2a00018d 	ld.bu	$r13,$r12,0
1c005490:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005494:	0040a18c 	slli.w	$r12,$r12,0x8
1c005498:	02bfc2cf 	addi.w	$r15,$r22,-16(0xff0)
1c00549c:	001031ec 	add.w	$r12,$r15,$r12
1c0054a0:	0010398c 	add.w	$r12,$r12,$r14
1c0054a4:	2923c18d 	st.b	$r13,$r12,-1808(0x8f0)
1c0054a8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0054ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0054b0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0054b4:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c0054b8:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0054bc:	63ffadac 	blt	$r13,$r12,-84(0x3ffac) # 1c005468 <json_to_send+0x10c>
1c0054c0:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c0054c4:	0280098d 	addi.w	$r13,$r12,2(0x2)
1c0054c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0054cc:	0040a18c 	slli.w	$r12,$r12,0x8
1c0054d0:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0054d4:	001031cc 	add.w	$r12,$r14,$r12
1c0054d8:	0010358c 	add.w	$r12,$r12,$r13
1c0054dc:	0281700d 	addi.w	$r13,$r0,92(0x5c)
1c0054e0:	2923c18d 	st.b	$r13,$r12,-1808(0x8f0)
1c0054e4:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c0054e8:	02800d8d 	addi.w	$r13,$r12,3(0x3)
1c0054ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0054f0:	0040a18c 	slli.w	$r12,$r12,0x8
1c0054f4:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0054f8:	001031cc 	add.w	$r12,$r14,$r12
1c0054fc:	0010358c 	add.w	$r12,$r12,$r13
1c005500:	0280880d 	addi.w	$r13,$r0,34(0x22)
1c005504:	2923c18d 	st.b	$r13,$r12,-1808(0x8f0)
1c005508:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c00550c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c005510:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005514:	0040a18c 	slli.w	$r12,$r12,0x8
1c005518:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c00551c:	001031cc 	add.w	$r12,$r14,$r12
1c005520:	0010358c 	add.w	$r12,$r12,$r13
1c005524:	0280e80d 	addi.w	$r13,$r0,58(0x3a)
1c005528:	2923c18d 	st.b	$r13,$r12,-1808(0x8f0)
1c00552c:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c005530:	0280158d 	addi.w	$r13,$r12,5(0x5)
1c005534:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005538:	0040a18c 	slli.w	$r12,$r12,0x8
1c00553c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c005540:	001031cc 	add.w	$r12,$r14,$r12
1c005544:	0010358c 	add.w	$r12,$r12,$r13
1c005548:	2923c180 	st.b	$r0,$r12,-1808(0x8f0)
1c00554c:	02a382cd 	addi.w	$r13,$r22,-1824(0x8e0)
1c005550:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005554:	0040a18c 	slli.w	$r12,$r12,0x8
1c005558:	001031ac 	add.w	$r12,$r13,$r12
1c00555c:	02bf82cd 	addi.w	$r13,$r22,-32(0xfe0)
1c005560:	001501a5 	move	$r5,$r13
1c005564:	00150184 	move	$r4,$r12
1c005568:	57e32fff 	bl	-7380(0xfffe32c) # 1c003894 <strcat>
1c00556c:	0015008d 	move	$r13,$r4
1c005570:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005574:	0040898c 	slli.w	$r12,$r12,0x2
1c005578:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c00557c:	001031cc 	add.w	$r12,$r14,$r12
1c005580:	29a3518d 	st.w	$r13,$r12,-1836(0x8d4)
1c005584:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005588:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00558c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005590:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005594:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c005598:	67fded8d 	bge	$r12,$r13,-532(0x3fdec) # 1c005384 <json_to_send+0x28>
1c00559c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0055a0:	28aa418c 	ld.w	$r12,$r12,-1392(0xa90)
1c0055a4:	2880018c 	ld.w	$r12,$r12,0
1c0055a8:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0055ac:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0055b0:	28aa018c 	ld.w	$r12,$r12,-1408(0xa80)
1c0055b4:	2980018d 	st.w	$r13,$r12,0
1c0055b8:	28a312cc 	ld.w	$r12,$r22,-1852(0x8c4)
1c0055bc:	28a322cd 	ld.w	$r13,$r22,-1848(0x8c8)
1c0055c0:	001501a5 	move	$r5,$r13
1c0055c4:	00150184 	move	$r4,$r12
1c0055c8:	57e2cfff 	bl	-7476(0xfffe2cc) # 1c003894 <strcat>
1c0055cc:	00150097 	move	$r23,$r4
1c0055d0:	28a332cc 	ld.w	$r12,$r22,-1844(0x8cc)
1c0055d4:	28a342cd 	ld.w	$r13,$r22,-1840(0x8d0)
1c0055d8:	001501a5 	move	$r5,$r13
1c0055dc:	00150184 	move	$r4,$r12
1c0055e0:	57e2b7ff 	bl	-7500(0xfffe2b4) # 1c003894 <strcat>
1c0055e4:	0015008c 	move	$r12,$r4
1c0055e8:	00150185 	move	$r5,$r12
1c0055ec:	001502e4 	move	$r4,$r23
1c0055f0:	57e2a7ff 	bl	-7516(0xfffe2a4) # 1c003894 <strcat>
1c0055f4:	00150097 	move	$r23,$r4
1c0055f8:	28a352cc 	ld.w	$r12,$r22,-1836(0x8d4)
1c0055fc:	28a362cd 	ld.w	$r13,$r22,-1832(0x8d8)
1c005600:	001501a5 	move	$r5,$r13
1c005604:	00150184 	move	$r4,$r12
1c005608:	57e28fff 	bl	-7540(0xfffe28c) # 1c003894 <strcat>
1c00560c:	0015008d 	move	$r13,$r4
1c005610:	28a372cc 	ld.w	$r12,$r22,-1828(0x8dc)
1c005614:	00150185 	move	$r5,$r12
1c005618:	001501a4 	move	$r4,$r13
1c00561c:	57e27bff 	bl	-7560(0xfffe278) # 1c003894 <strcat>
1c005620:	0015008c 	move	$r12,$r4
1c005624:	00150185 	move	$r5,$r12
1c005628:	001502e4 	move	$r4,$r23
1c00562c:	57e26bff 	bl	-7576(0xfffe268) # 1c003894 <strcat>
1c005630:	0015008d 	move	$r13,$r4
1c005634:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005638:	28a7e18c 	ld.w	$r12,$r12,-1544(0x9f8)
1c00563c:	2980018d 	st.w	$r13,$r12,0
1c005640:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005644:	28a7b18c 	ld.w	$r12,$r12,-1556(0x9ec)
1c005648:	2880018c 	ld.w	$r12,$r12,0
1c00564c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c005650:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005654:	28a7718c 	ld.w	$r12,$r12,-1572(0x9dc)
1c005658:	2980018d 	st.w	$r13,$r12,0
1c00565c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005660:	28a7418c 	ld.w	$r12,$r12,-1584(0x9d0)
1c005664:	2880018c 	ld.w	$r12,$r12,0
1c005668:	0281ec0d 	addi.w	$r13,$r0,123(0x7b)
1c00566c:	2900018d 	st.b	$r13,$r12,0
1c005670:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005674:	28a6f18c 	ld.w	$r12,$r12,-1604(0x9bc)
1c005678:	2880018c 	ld.w	$r12,$r12,0
1c00567c:	00150184 	move	$r4,$r12
1c005680:	57e2b7ff 	bl	-7500(0xfffe2b4) # 1c003934 <strlen>
1c005684:	0015008c 	move	$r12,$r4
1c005688:	293f96cc 	st.b	$r12,$r22,-27(0xfe5)
1c00568c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005690:	28a6818c 	ld.w	$r12,$r12,-1632(0x9a0)
1c005694:	2880018d 	ld.w	$r13,$r12,0
1c005698:	2a3f96cc 	ld.bu	$r12,$r22,-27(0xfe5)
1c00569c:	001031ac 	add.w	$r12,$r13,$r12
1c0056a0:	0281f40d 	addi.w	$r13,$r0,125(0x7d)
1c0056a4:	2900018d 	st.b	$r13,$r12,0
1c0056a8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0056ac:	28a6118c 	ld.w	$r12,$r12,-1660(0x984)
1c0056b0:	2880018d 	ld.w	$r13,$r12,0
1c0056b4:	2a3f96cc 	ld.bu	$r12,$r22,-27(0xfe5)
1c0056b8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056bc:	001031ac 	add.w	$r12,$r13,$r12
1c0056c0:	29000180 	st.b	$r0,$r12,0
1c0056c4:	03400000 	andi	$r0,$r0,0x0
1c0056c8:	289d3061 	ld.w	$r1,$r3,1868(0x74c)
1c0056cc:	289d2076 	ld.w	$r22,$r3,1864(0x748)
1c0056d0:	289d1077 	ld.w	$r23,$r3,1860(0x744)
1c0056d4:	029d4063 	addi.w	$r3,$r3,1872(0x750)
1c0056d8:	4c000020 	jirl	$r0,$r1,0

1c0056dc <esp8266_send_json>:
esp8266_send_json():
1c0056dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0056e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0056e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0056e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0056ec:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c0056f0:	0280500c 	addi.w	$r12,$r0,20(0x14)
1c0056f4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0056f8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0056fc:	28a4d18c 	ld.w	$r12,$r12,-1740(0x934)
1c005700:	2880018c 	ld.w	$r12,$r12,0
1c005704:	00150186 	move	$r6,$r12
1c005708:	1c000025 	pcaddu12i	$r5,1(0x1)
1c00570c:	029de0a5 	addi.w	$r5,$r5,1912(0x778)
1c005710:	00150004 	move	$r4,$r0
1c005714:	57c94bff 	bl	-14008(0xfffc948) # 1c00205c <myprintf2>
1c005718:	50002000 	b	32(0x20) # 1c005738 <esp8266_send_json+0x5c>
1c00571c:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005720:	029e80a5 	addi.w	$r5,$r5,1952(0x7a0)
1c005724:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005728:	28a47084 	ld.w	$r4,$r4,-1764(0x91c)
1c00572c:	54003c00 	bl	60(0x3c) # 1c005768 <esp8266_check_cmd>
1c005730:	0015008c 	move	$r12,$r4
1c005734:	44001d80 	bnez	$r12,28(0x1c) # 1c005750 <esp8266_send_json+0x74>
1c005738:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c00573c:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005740:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c005744:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c005748:	47ffd59f 	bnez	$r12,-44(0x7fffd4) # 1c00571c <esp8266_send_json+0x40>
1c00574c:	50000800 	b	8(0x8) # 1c005754 <esp8266_send_json+0x78>
1c005750:	03400000 	andi	$r0,$r0,0x0
1c005754:	03400000 	andi	$r0,$r0,0x0
1c005758:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00575c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005760:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005764:	4c000020 	jirl	$r0,$r1,0

1c005768 <esp8266_check_cmd>:
esp8266_check_cmd():
1c005768:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00576c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005770:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005774:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005778:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00577c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005780:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005784:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005788:	54034400 	bl	836(0x344) # 1c005acc <Queue_isEmpty>
1c00578c:	0015008c 	move	$r12,$r4
1c005790:	44007980 	bnez	$r12,120(0x78) # 1c005808 <esp8266_check_cmd+0xa0>
1c005794:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005798:	54038400 	bl	900(0x384) # 1c005b1c <Queue_HadUse>
1c00579c:	0015008c 	move	$r12,$r4
1c0057a0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0057a4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057a8:	28a1b18c 	ld.w	$r12,$r12,-1940(0x86c)
1c0057ac:	2900018d 	st.b	$r13,$r12,0
1c0057b0:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c0057b4:	00150005 	move	$r5,$r0
1c0057b8:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0057bc:	28a24084 	ld.w	$r4,$r4,-1904(0x890)
1c0057c0:	57de33ff 	bl	-8656(0xfffde30) # 1c0035f0 <memset>
1c0057c4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057c8:	28a1318c 	ld.w	$r12,$r12,-1972(0x84c)
1c0057cc:	2a00018c 	ld.bu	$r12,$r12,0
1c0057d0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0057d4:	00150186 	move	$r6,$r12
1c0057d8:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c0057dc:	28a1c0a5 	ld.w	$r5,$r5,-1936(0x870)
1c0057e0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0057e4:	5404e400 	bl	1252(0x4e4) # 1c005cc8 <Queue_Read>
1c0057e8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057ec:	28a0a18c 	ld.w	$r12,$r12,-2008(0x828)
1c0057f0:	2a00018c 	ld.bu	$r12,$r12,0
1c0057f4:	0015018d 	move	$r13,$r12
1c0057f8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0057fc:	28a1418c 	ld.w	$r12,$r12,-1968(0x850)
1c005800:	0010358c 	add.w	$r12,$r12,$r13
1c005804:	29000180 	st.b	$r0,$r12,0
1c005808:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c00580c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005810:	28a0f084 	ld.w	$r4,$r4,-1988(0x83c)
1c005814:	57de3fff 	bl	-8644(0xfffde3c) # 1c003650 <pstrstr>
1c005818:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00581c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005820:	00150184 	move	$r4,$r12
1c005824:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005828:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00582c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005830:	4c000020 	jirl	$r0,$r1,0

1c005834 <esp8266_send_cmd>:
esp8266_send_cmd():
1c005834:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005838:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00583c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005840:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005844:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005848:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00584c:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c005850:	001500ec 	move	$r12,$r7
1c005854:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c005858:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00585c:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005860:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005864:	02998084 	addi.w	$r4,$r4,1632(0x660)
1c005868:	57c453ff 	bl	-15280(0xfffc450) # 1c001cb8 <myprintf>
1c00586c:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c005870:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005874:	029970a5 	addi.w	$r5,$r5,1628(0x65c)
1c005878:	00150004 	move	$r4,$r0
1c00587c:	57c7e3ff 	bl	-14368(0xfffc7e0) # 1c00205c <myprintf2>
1c005880:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c005884:	40007d80 	beqz	$r12,124(0x7c) # 1c005900 <esp8266_send_cmd+0xcc>
1c005888:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c00588c:	40007580 	beqz	$r12,116(0x74) # 1c005900 <esp8266_send_cmd+0xcc>
1c005890:	50003400 	b	52(0x34) # 1c0058c4 <esp8266_send_cmd+0x90>
1c005894:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c005898:	57dd1bff 	bl	-8936(0xfffdd18) # 1c0035b0 <delay_ms>
1c00589c:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c0058a0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0058a4:	57fec7ff 	bl	-316(0xffffec4) # 1c005768 <esp8266_check_cmd>
1c0058a8:	0015008c 	move	$r12,$r4
1c0058ac:	40001980 	beqz	$r12,24(0x18) # 1c0058c4 <esp8266_send_cmd+0x90>
1c0058b0:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c0058b4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0058b8:	02987084 	addi.w	$r4,$r4,1564(0x61c)
1c0058bc:	57c3ffff 	bl	-15364(0xfffc3fc) # 1c001cb8 <myprintf>
1c0058c0:	50001800 	b	24(0x18) # 1c0058d8 <esp8266_send_cmd+0xa4>
1c0058c4:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c0058c8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0058cc:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c0058d0:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c0058d4:	47ffc19f 	bnez	$r12,-64(0x7fffc0) # 1c005894 <esp8266_send_cmd+0x60>
1c0058d8:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c0058dc:	44001180 	bnez	$r12,16(0x10) # 1c0058ec <esp8266_send_cmd+0xb8>
1c0058e0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0058e4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0058e8:	50001800 	b	24(0x18) # 1c005900 <esp8266_send_cmd+0xcc>
1c0058ec:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c0058f0:	00150185 	move	$r5,$r12
1c0058f4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0058f8:	0297a084 	addi.w	$r4,$r4,1512(0x5e8)
1c0058fc:	57c3bfff 	bl	-15428(0xfffc3bc) # 1c001cb8 <myprintf>
1c005900:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c005904:	00150184 	move	$r4,$r12
1c005908:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00590c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005910:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005914:	4c000020 	jirl	$r0,$r1,0

1c005918 <esp8266_init>:
esp8266_init():
1c005918:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00591c:	29803061 	st.w	$r1,$r3,12(0xc)
1c005920:	29802076 	st.w	$r22,$r3,8(0x8)
1c005924:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005928:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00592c:	02970084 	addi.w	$r4,$r4,1472(0x5c0)
1c005930:	57c38bff 	bl	-15480(0xfffc388) # 1c001cb8 <myprintf>
1c005934:	02825807 	addi.w	$r7,$r0,150(0x96)
1c005938:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00593c:	0296e0c6 	addi.w	$r6,$r6,1464(0x5b8)
1c005940:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005944:	0296d0a5 	addi.w	$r5,$r5,1460(0x5b4)
1c005948:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00594c:	289be084 	ld.w	$r4,$r4,1784(0x6f8)
1c005950:	57fee7ff 	bl	-284(0xffffee4) # 1c005834 <esp8266_send_cmd>
1c005954:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005958:	57dc5bff 	bl	-9128(0xfffdc58) # 1c0035b0 <delay_ms>
1c00595c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005960:	02967084 	addi.w	$r4,$r4,1436(0x59c)
1c005964:	57c357ff 	bl	-15532(0xfffc354) # 1c001cb8 <myprintf>
1c005968:	03400000 	andi	$r0,$r0,0x0
1c00596c:	02825807 	addi.w	$r7,$r0,150(0x96)
1c005970:	1c000026 	pcaddu12i	$r6,1(0x1)
1c005974:	029600c6 	addi.w	$r6,$r6,1408(0x580)
1c005978:	1c000025 	pcaddu12i	$r5,1(0x1)
1c00597c:	029640a5 	addi.w	$r5,$r5,1424(0x590)
1c005980:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005984:	289b0084 	ld.w	$r4,$r4,1728(0x6c0)
1c005988:	57feafff 	bl	-340(0xffffeac) # 1c005834 <esp8266_send_cmd>
1c00598c:	0015008c 	move	$r12,$r4
1c005990:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c00596c <esp8266_init+0x54>
1c005994:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005998:	57dc1bff 	bl	-9192(0xfffdc18) # 1c0035b0 <delay_ms>
1c00599c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0059a0:	0295e084 	addi.w	$r4,$r4,1400(0x578)
1c0059a4:	57c317ff 	bl	-15596(0xfffc314) # 1c001cb8 <myprintf>
1c0059a8:	03400000 	andi	$r0,$r0,0x0
1c0059ac:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c0059b0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0059b4:	029500c6 	addi.w	$r6,$r6,1344(0x540)
1c0059b8:	1c000025 	pcaddu12i	$r5,1(0x1)
1c0059bc:	0295f0a5 	addi.w	$r5,$r5,1404(0x57c)
1c0059c0:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0059c4:	289a0084 	ld.w	$r4,$r4,1664(0x680)
1c0059c8:	57fe6fff 	bl	-404(0xffffe6c) # 1c005834 <esp8266_send_cmd>
1c0059cc:	0015008c 	move	$r12,$r4
1c0059d0:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c0059ac <esp8266_init+0x94>
1c0059d4:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0059d8:	57dbdbff 	bl	-9256(0xfffdbd8) # 1c0035b0 <delay_ms>
1c0059dc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0059e0:	0295d084 	addi.w	$r4,$r4,1396(0x574)
1c0059e4:	57c2d7ff 	bl	-15660(0xfffc2d4) # 1c001cb8 <myprintf>
1c0059e8:	03400000 	andi	$r0,$r0,0x0
1c0059ec:	02825807 	addi.w	$r7,$r0,150(0x96)
1c0059f0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0059f4:	029400c6 	addi.w	$r6,$r6,1280(0x500)
1c0059f8:	1c000025 	pcaddu12i	$r5,1(0x1)
1c0059fc:	029730a5 	addi.w	$r5,$r5,1484(0x5cc)
1c005a00:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005a04:	28990084 	ld.w	$r4,$r4,1600(0x640)
1c005a08:	57fe2fff 	bl	-468(0xffffe2c) # 1c005834 <esp8266_send_cmd>
1c005a0c:	0015008c 	move	$r12,$r4
1c005a10:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c0059ec <esp8266_init+0xd4>
1c005a14:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005a18:	57db9bff 	bl	-9320(0xfffdb98) # 1c0035b0 <delay_ms>
1c005a1c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005a20:	02989084 	addi.w	$r4,$r4,1572(0x624)
1c005a24:	57c297ff 	bl	-15724(0xfffc294) # 1c001cb8 <myprintf>
1c005a28:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c005a2c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c005a30:	029310c6 	addi.w	$r6,$r6,1220(0x4c4)
1c005a34:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005a38:	0299c0a5 	addi.w	$r5,$r5,1648(0x670)
1c005a3c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005a40:	28981084 	ld.w	$r4,$r4,1540(0x604)
1c005a44:	57fdf3ff 	bl	-528(0xffffdf0) # 1c005834 <esp8266_send_cmd>
1c005a48:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005a4c:	57db67ff 	bl	-9372(0xfffdb64) # 1c0035b0 <delay_ms>
1c005a50:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005a54:	029af084 	addi.w	$r4,$r4,1724(0x6bc)
1c005a58:	57c263ff 	bl	-15776(0xfffc260) # 1c001cb8 <myprintf>
1c005a5c:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c005a60:	1c000026 	pcaddu12i	$r6,1(0x1)
1c005a64:	029240c6 	addi.w	$r6,$r6,1168(0x490)
1c005a68:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005a6c:	029bb0a5 	addi.w	$r5,$r5,1772(0x6ec)
1c005a70:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005a74:	28974084 	ld.w	$r4,$r4,1488(0x5d0)
1c005a78:	57fdbfff 	bl	-580(0xffffdbc) # 1c005834 <esp8266_send_cmd>
1c005a7c:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005a80:	57db33ff 	bl	-9424(0xfffdb30) # 1c0035b0 <delay_ms>
1c005a84:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005a88:	029c5084 	addi.w	$r4,$r4,1812(0x714)
1c005a8c:	57c22fff 	bl	-15828(0xfffc22c) # 1c001cb8 <myprintf>
1c005a90:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c005a94:	1c000026 	pcaddu12i	$r6,1(0x1)
1c005a98:	029170c6 	addi.w	$r6,$r6,1116(0x45c)
1c005a9c:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005aa0:	029c40a5 	addi.w	$r5,$r5,1808(0x710)
1c005aa4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005aa8:	28967084 	ld.w	$r4,$r4,1436(0x59c)
1c005aac:	57fd8bff 	bl	-632(0xffffd88) # 1c005834 <esp8266_send_cmd>
1c005ab0:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005ab4:	57daffff 	bl	-9476(0xfffdafc) # 1c0035b0 <delay_ms>
1c005ab8:	03400000 	andi	$r0,$r0,0x0
1c005abc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005ac0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005ac4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005ac8:	4c000020 	jirl	$r0,$r1,0

1c005acc <Queue_isEmpty>:
Queue_isEmpty():
1c005acc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005ad0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005ad4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005ad8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005adc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ae0:	44000d80 	bnez	$r12,12(0xc) # 1c005aec <Queue_isEmpty+0x20>
1c005ae4:	0015000c 	move	$r12,$r0
1c005ae8:	50002400 	b	36(0x24) # 1c005b0c <Queue_isEmpty+0x40>
1c005aec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005af0:	2a40018d 	ld.hu	$r13,$r12,0
1c005af4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005af8:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005afc:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c005b08 <Queue_isEmpty+0x3c>
1c005b00:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b04:	50000800 	b	8(0x8) # 1c005b0c <Queue_isEmpty+0x40>
1c005b08:	0015000c 	move	$r12,$r0
1c005b0c:	00150184 	move	$r4,$r12
1c005b10:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005b14:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005b18:	4c000020 	jirl	$r0,$r1,0

1c005b1c <Queue_HadUse>:
Queue_HadUse():
1c005b1c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005b20:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005b24:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005b28:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005b2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b30:	44000d80 	bnez	$r12,12(0xc) # 1c005b3c <Queue_HadUse+0x20>
1c005b34:	0015000c 	move	$r12,$r0
1c005b38:	50003800 	b	56(0x38) # 1c005b70 <Queue_HadUse+0x54>
1c005b3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b40:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c005b44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b48:	2a40018c 	ld.hu	$r12,$r12,0
1c005b4c:	001131ac 	sub.w	$r12,$r13,$r12
1c005b50:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005b54:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c005b58:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005b5c:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005b60:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005b64:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005b6c <Queue_HadUse+0x50>
1c005b68:	002a0007 	break	0x7
1c005b6c:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005b70:	00150184 	move	$r4,$r12
1c005b74:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005b78:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005b7c:	4c000020 	jirl	$r0,$r1,0

1c005b80 <Queue_NoUse>:
Queue_NoUse():
1c005b80:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005b84:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005b88:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005b8c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005b90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b94:	44000d80 	bnez	$r12,12(0xc) # 1c005ba0 <Queue_NoUse+0x20>
1c005b98:	0015000c 	move	$r12,$r0
1c005b9c:	50004000 	b	64(0x40) # 1c005bdc <Queue_NoUse+0x5c>
1c005ba0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ba4:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005ba8:	0015018d 	move	$r13,$r12
1c005bac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005bb0:	2a40018c 	ld.hu	$r12,$r12,0
1c005bb4:	001131ac 	sub.w	$r12,$r13,$r12
1c005bb8:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c005bbc:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005bc0:	0020b1ae 	mod.w	$r14,$r13,$r12
1c005bc4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005bcc <Queue_NoUse+0x4c>
1c005bc8:	002a0007 	break	0x7
1c005bcc:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005bd0:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c005bd4:	001131ac 	sub.w	$r12,$r13,$r12
1c005bd8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005bdc:	00150184 	move	$r4,$r12
1c005be0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005be4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005be8:	4c000020 	jirl	$r0,$r1,0

1c005bec <Queue_Wirte>:
Queue_Wirte():
1c005bec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005bf0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005bf4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005bf8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005bfc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005c00:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005c04:	001500cc 	move	$r12,$r6
1c005c08:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c005c0c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005c10:	44000d80 	bnez	$r12,12(0xc) # 1c005c1c <Queue_Wirte+0x30>
1c005c14:	0015000c 	move	$r12,$r0
1c005c18:	50009c00 	b	156(0x9c) # 1c005cb4 <Queue_Wirte+0xc8>
1c005c1c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005c20:	57ff63ff 	bl	-160(0xfffff60) # 1c005b80 <Queue_NoUse>
1c005c24:	0015008c 	move	$r12,$r4
1c005c28:	0015018d 	move	$r13,$r12
1c005c2c:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005c30:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c005c3c <Queue_Wirte+0x50>
1c005c34:	0015000c 	move	$r12,$r0
1c005c38:	50007c00 	b	124(0x7c) # 1c005cb4 <Queue_Wirte+0xc8>
1c005c3c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005c40:	50006400 	b	100(0x64) # 1c005ca4 <Queue_Wirte+0xb8>
1c005c44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c48:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005c4c:	001031ac 	add.w	$r12,$r13,$r12
1c005c50:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005c54:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c005c58:	001501ae 	move	$r14,$r13
1c005c5c:	2a00018d 	ld.bu	$r13,$r12,0
1c005c60:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005c64:	0010398c 	add.w	$r12,$r12,$r14
1c005c68:	2900118d 	st.b	$r13,$r12,4(0x4)
1c005c6c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005c70:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005c74:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c78:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005c7c:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005c80:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005c84:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005c8c <Queue_Wirte+0xa0>
1c005c88:	002a0007 	break	0x7
1c005c8c:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005c90:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005c94:	2940098d 	st.h	$r13,$r12,2(0x2)
1c005c98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005c9c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ca0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005ca4:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005ca8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005cac:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c005c44 <Queue_Wirte+0x58>
1c005cb0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005cb4:	00150184 	move	$r4,$r12
1c005cb8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005cbc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005cc0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005cc4:	4c000020 	jirl	$r0,$r1,0

1c005cc8 <Queue_Read>:
Queue_Read():
1c005cc8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005ccc:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005cd0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005cd4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005cd8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005cdc:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005ce0:	001500cc 	move	$r12,$r6
1c005ce4:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c005ce8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005cec:	44000d80 	bnez	$r12,12(0xc) # 1c005cf8 <Queue_Read+0x30>
1c005cf0:	0015000c 	move	$r12,$r0
1c005cf4:	50009c00 	b	156(0x9c) # 1c005d90 <Queue_Read+0xc8>
1c005cf8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005cfc:	57fe23ff 	bl	-480(0xffffe20) # 1c005b1c <Queue_HadUse>
1c005d00:	0015008c 	move	$r12,$r4
1c005d04:	0015018d 	move	$r13,$r12
1c005d08:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005d0c:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c005d18 <Queue_Read+0x50>
1c005d10:	0015000c 	move	$r12,$r0
1c005d14:	50007c00 	b	124(0x7c) # 1c005d90 <Queue_Read+0xc8>
1c005d18:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005d1c:	50006400 	b	100(0x64) # 1c005d80 <Queue_Read+0xb8>
1c005d20:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005d24:	2a40018c 	ld.hu	$r12,$r12,0
1c005d28:	0015018e 	move	$r14,$r12
1c005d2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d30:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005d34:	001031ac 	add.w	$r12,$r13,$r12
1c005d38:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005d3c:	001039ad 	add.w	$r13,$r13,$r14
1c005d40:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c005d44:	2900018d 	st.b	$r13,$r12,0
1c005d48:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005d4c:	2a40018c 	ld.hu	$r12,$r12,0
1c005d50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d54:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005d58:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005d5c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005d60:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005d68 <Queue_Read+0xa0>
1c005d64:	002a0007 	break	0x7
1c005d68:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005d6c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005d70:	2940018d 	st.h	$r13,$r12,0
1c005d74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d78:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d7c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005d80:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005d84:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005d88:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c005d20 <Queue_Read+0x58>
1c005d8c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005d90:	00150184 	move	$r4,$r12
1c005d94:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005d98:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005d9c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005da0:	4c000020 	jirl	$r0,$r1,0

1c005da4 <mqtt_process_init>:
mqtt_process_init():
1c005da4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005da8:	29803061 	st.w	$r1,$r3,12(0xc)
1c005dac:	29802076 	st.w	$r22,$r3,8(0x8)
1c005db0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005db4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005db8:	28896084 	ld.w	$r4,$r4,600(0x258)
1c005dbc:	54004800 	bl	72(0x48) # 1c005e04 <Mqtt_System_Init>
1c005dc0:	03400000 	andi	$r0,$r0,0x0
1c005dc4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005dc8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005dcc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005dd0:	4c000020 	jirl	$r0,$r1,0

1c005dd4 <mqtt_process>:
mqtt_process():
1c005dd4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005dd8:	29803061 	st.w	$r1,$r3,12(0xc)
1c005ddc:	29802076 	st.w	$r22,$r3,8(0x8)
1c005de0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005de4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005de8:	2888a084 	ld.w	$r4,$r4,552(0x228)
1c005dec:	54007800 	bl	120(0x78) # 1c005e64 <Mqtt_Feedback>
1c005df0:	03400000 	andi	$r0,$r0,0x0
1c005df4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005df8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005dfc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005e00:	4c000020 	jirl	$r0,$r1,0

1c005e04 <Mqtt_System_Init>:
Mqtt_System_Init():
1c005e04:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005e08:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005e0c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005e10:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005e14:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005e18:	57fb03ff 	bl	-1280(0xffffb00) # 1c005918 <esp8266_init>
1c005e1c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005e20:	50002400 	b	36(0x24) # 1c005e44 <Mqtt_System_Init+0x40>
1c005e24:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c005e28:	2887e1ad 	ld.w	$r13,$r13,504(0x1f8)
1c005e2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e30:	001031ac 	add.w	$r12,$r13,$r12
1c005e34:	29000180 	st.b	$r0,$r12,0
1c005e38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e3c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e40:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005e44:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005e48:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c005e4c:	67ffd98d 	bge	$r12,$r13,-40(0x3ffd8) # 1c005e24 <Mqtt_System_Init+0x20>
1c005e50:	03400000 	andi	$r0,$r0,0x0
1c005e54:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005e58:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005e5c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005e60:	4c000020 	jirl	$r0,$r1,0

1c005e64 <Mqtt_Feedback>:
Mqtt_Feedback():
1c005e64:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005e68:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005e6c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005e70:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005e74:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005e78:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005e7c:	2886e084 	ld.w	$r4,$r4,440(0x1b8)
1c005e80:	57fc4fff 	bl	-948(0xffffc4c) # 1c005acc <Queue_isEmpty>
1c005e84:	0015008c 	move	$r12,$r4
1c005e88:	44045980 	bnez	$r12,1112(0x458) # 1c0062e0 <Mqtt_Feedback+0x47c>
1c005e8c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005e90:	28869084 	ld.w	$r4,$r4,420(0x1a4)
1c005e94:	57fc8bff 	bl	-888(0xffffc88) # 1c005b1c <Queue_HadUse>
1c005e98:	0015008c 	move	$r12,$r4
1c005e9c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005ea0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ea4:	2886918c 	ld.w	$r12,$r12,420(0x1a4)
1c005ea8:	2900018d 	st.b	$r13,$r12,0
1c005eac:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c005eb0:	00150005 	move	$r5,$r0
1c005eb4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005eb8:	28858084 	ld.w	$r4,$r4,352(0x160)
1c005ebc:	57d737ff 	bl	-10444(0xfffd734) # 1c0035f0 <memset>
1c005ec0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005ec4:	2886118c 	ld.w	$r12,$r12,388(0x184)
1c005ec8:	2a00018c 	ld.bu	$r12,$r12,0
1c005ecc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005ed0:	00150186 	move	$r6,$r12
1c005ed4:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c005ed8:	288500a5 	ld.w	$r5,$r5,320(0x140)
1c005edc:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005ee0:	28855084 	ld.w	$r4,$r4,340(0x154)
1c005ee4:	57fde7ff 	bl	-540(0xffffde4) # 1c005cc8 <Queue_Read>
1c005ee8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005eec:	2885718c 	ld.w	$r12,$r12,348(0x15c)
1c005ef0:	2a00018c 	ld.bu	$r12,$r12,0
1c005ef4:	0015018d 	move	$r13,$r12
1c005ef8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005efc:	2884718c 	ld.w	$r12,$r12,284(0x11c)
1c005f00:	0010358c 	add.w	$r12,$r12,$r13
1c005f04:	29000180 	st.b	$r0,$r12,0
1c005f08:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005f0c:	028b60a5 	addi.w	$r5,$r5,728(0x2d8)
1c005f10:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005f14:	28841084 	ld.w	$r4,$r4,260(0x104)
1c005f18:	57d73bff 	bl	-10440(0xfffd738) # 1c003650 <pstrstr>
1c005f1c:	0015008c 	move	$r12,$r4
1c005f20:	40001980 	beqz	$r12,24(0x18) # 1c005f38 <Mqtt_Feedback+0xd4>
1c005f24:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005f28:	2883e18c 	ld.w	$r12,$r12,248(0xf8)
1c005f2c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005f30:	2900018d 	st.b	$r13,$r12,0
1c005f34:	50002c00 	b	44(0x2c) # 1c005f60 <Mqtt_Feedback+0xfc>
1c005f38:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005f3c:	028ad0a5 	addi.w	$r5,$r5,692(0x2b4)
1c005f40:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005f44:	28835084 	ld.w	$r4,$r4,212(0xd4)
1c005f48:	57d70bff 	bl	-10488(0xfffd708) # 1c003650 <pstrstr>
1c005f4c:	0015008c 	move	$r12,$r4
1c005f50:	40001180 	beqz	$r12,16(0x10) # 1c005f60 <Mqtt_Feedback+0xfc>
1c005f54:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005f58:	2883218c 	ld.w	$r12,$r12,200(0xc8)
1c005f5c:	29000180 	st.b	$r0,$r12,0
1c005f60:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005f64:	028a60a5 	addi.w	$r5,$r5,664(0x298)
1c005f68:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005f6c:	2882b084 	ld.w	$r4,$r4,172(0xac)
1c005f70:	57d6e3ff 	bl	-10528(0xfffd6e0) # 1c003650 <pstrstr>
1c005f74:	0015008c 	move	$r12,$r4
1c005f78:	40001980 	beqz	$r12,24(0x18) # 1c005f90 <Mqtt_Feedback+0x12c>
1c005f7c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005f80:	2882818c 	ld.w	$r12,$r12,160(0xa0)
1c005f84:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005f88:	2900058d 	st.b	$r13,$r12,1(0x1)
1c005f8c:	50002c00 	b	44(0x2c) # 1c005fb8 <Mqtt_Feedback+0x154>
1c005f90:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005f94:	0289d0a5 	addi.w	$r5,$r5,628(0x274)
1c005f98:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005f9c:	2881f084 	ld.w	$r4,$r4,124(0x7c)
1c005fa0:	57d6b3ff 	bl	-10576(0xfffd6b0) # 1c003650 <pstrstr>
1c005fa4:	0015008c 	move	$r12,$r4
1c005fa8:	40001180 	beqz	$r12,16(0x10) # 1c005fb8 <Mqtt_Feedback+0x154>
1c005fac:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005fb0:	2881c18c 	ld.w	$r12,$r12,112(0x70)
1c005fb4:	29000580 	st.b	$r0,$r12,1(0x1)
1c005fb8:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005fbc:	028960a5 	addi.w	$r5,$r5,600(0x258)
1c005fc0:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005fc4:	28815084 	ld.w	$r4,$r4,84(0x54)
1c005fc8:	57d68bff 	bl	-10616(0xfffd688) # 1c003650 <pstrstr>
1c005fcc:	0015008c 	move	$r12,$r4
1c005fd0:	40001980 	beqz	$r12,24(0x18) # 1c005fe8 <Mqtt_Feedback+0x184>
1c005fd4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005fd8:	2881218c 	ld.w	$r12,$r12,72(0x48)
1c005fdc:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c005fe0:	2900098d 	st.b	$r13,$r12,2(0x2)
1c005fe4:	50002c00 	b	44(0x2c) # 1c006010 <Mqtt_Feedback+0x1ac>
1c005fe8:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005fec:	0288d0a5 	addi.w	$r5,$r5,564(0x234)
1c005ff0:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005ff4:	28809084 	ld.w	$r4,$r4,36(0x24)
1c005ff8:	57d65bff 	bl	-10664(0xfffd658) # 1c003650 <pstrstr>
1c005ffc:	0015008c 	move	$r12,$r4
1c006000:	40001180 	beqz	$r12,16(0x10) # 1c006010 <Mqtt_Feedback+0x1ac>
1c006004:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006008:	2880618c 	ld.w	$r12,$r12,24(0x18)
1c00600c:	29000980 	st.b	$r0,$r12,2(0x2)
1c006010:	1c000025 	pcaddu12i	$r5,1(0x1)
1c006014:	028860a5 	addi.w	$r5,$r5,536(0x218)
1c006018:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00601c:	28bff084 	ld.w	$r4,$r4,-4(0xffc)
1c006020:	57d633ff 	bl	-10704(0xfffd630) # 1c003650 <pstrstr>
1c006024:	0015008c 	move	$r12,$r4
1c006028:	40001980 	beqz	$r12,24(0x18) # 1c006040 <Mqtt_Feedback+0x1dc>
1c00602c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006030:	28bfc18c 	ld.w	$r12,$r12,-16(0xff0)
1c006034:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006038:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00603c:	50002c00 	b	44(0x2c) # 1c006068 <Mqtt_Feedback+0x204>
1c006040:	1c000025 	pcaddu12i	$r5,1(0x1)
1c006044:	0287e0a5 	addi.w	$r5,$r5,504(0x1f8)
1c006048:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00604c:	28bf3084 	ld.w	$r4,$r4,-52(0xfcc)
1c006050:	57d603ff 	bl	-10752(0xfffd600) # 1c003650 <pstrstr>
1c006054:	0015008c 	move	$r12,$r4
1c006058:	40001180 	beqz	$r12,16(0x10) # 1c006068 <Mqtt_Feedback+0x204>
1c00605c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006060:	28bf018c 	ld.w	$r12,$r12,-64(0xfc0)
1c006064:	29000d80 	st.b	$r0,$r12,3(0x3)
1c006068:	1c000025 	pcaddu12i	$r5,1(0x1)
1c00606c:	028780a5 	addi.w	$r5,$r5,480(0x1e0)
1c006070:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006074:	28be9084 	ld.w	$r4,$r4,-92(0xfa4)
1c006078:	57d5dbff 	bl	-10792(0xfffd5d8) # 1c003650 <pstrstr>
1c00607c:	0015008c 	move	$r12,$r4
1c006080:	40001980 	beqz	$r12,24(0x18) # 1c006098 <Mqtt_Feedback+0x234>
1c006084:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006088:	28be618c 	ld.w	$r12,$r12,-104(0xf98)
1c00608c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006090:	2900118d 	st.b	$r13,$r12,4(0x4)
1c006094:	50002c00 	b	44(0x2c) # 1c0060c0 <Mqtt_Feedback+0x25c>
1c006098:	1c000025 	pcaddu12i	$r5,1(0x1)
1c00609c:	0286f0a5 	addi.w	$r5,$r5,444(0x1bc)
1c0060a0:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0060a4:	28bdd084 	ld.w	$r4,$r4,-140(0xf74)
1c0060a8:	57d5abff 	bl	-10840(0xfffd5a8) # 1c003650 <pstrstr>
1c0060ac:	0015008c 	move	$r12,$r4
1c0060b0:	40001180 	beqz	$r12,16(0x10) # 1c0060c0 <Mqtt_Feedback+0x25c>
1c0060b4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0060b8:	28bda18c 	ld.w	$r12,$r12,-152(0xf68)
1c0060bc:	29001180 	st.b	$r0,$r12,4(0x4)
1c0060c0:	1c000025 	pcaddu12i	$r5,1(0x1)
1c0060c4:	028680a5 	addi.w	$r5,$r5,416(0x1a0)
1c0060c8:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0060cc:	28bd3084 	ld.w	$r4,$r4,-180(0xf4c)
1c0060d0:	57d583ff 	bl	-10880(0xfffd580) # 1c003650 <pstrstr>
1c0060d4:	0015008c 	move	$r12,$r4
1c0060d8:	40001980 	beqz	$r12,24(0x18) # 1c0060f0 <Mqtt_Feedback+0x28c>
1c0060dc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0060e0:	28bd018c 	ld.w	$r12,$r12,-192(0xf40)
1c0060e4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0060e8:	2900158d 	st.b	$r13,$r12,5(0x5)
1c0060ec:	50002c00 	b	44(0x2c) # 1c006118 <Mqtt_Feedback+0x2b4>
1c0060f0:	1c000025 	pcaddu12i	$r5,1(0x1)
1c0060f4:	0285f0a5 	addi.w	$r5,$r5,380(0x17c)
1c0060f8:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0060fc:	28bc7084 	ld.w	$r4,$r4,-228(0xf1c)
1c006100:	57d553ff 	bl	-10928(0xfffd550) # 1c003650 <pstrstr>
1c006104:	0015008c 	move	$r12,$r4
1c006108:	40001180 	beqz	$r12,16(0x10) # 1c006118 <Mqtt_Feedback+0x2b4>
1c00610c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006110:	28bc418c 	ld.w	$r12,$r12,-240(0xf10)
1c006114:	29001580 	st.b	$r0,$r12,5(0x5)
1c006118:	1c000025 	pcaddu12i	$r5,1(0x1)
1c00611c:	028580a5 	addi.w	$r5,$r5,352(0x160)
1c006120:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006124:	28bbd084 	ld.w	$r4,$r4,-268(0xef4)
1c006128:	57d52bff 	bl	-10968(0xfffd528) # 1c003650 <pstrstr>
1c00612c:	0015008c 	move	$r12,$r4
1c006130:	40001980 	beqz	$r12,24(0x18) # 1c006148 <Mqtt_Feedback+0x2e4>
1c006134:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006138:	28bba18c 	ld.w	$r12,$r12,-280(0xee8)
1c00613c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006140:	2900198d 	st.b	$r13,$r12,6(0x6)
1c006144:	50002c00 	b	44(0x2c) # 1c006170 <Mqtt_Feedback+0x30c>
1c006148:	1c000025 	pcaddu12i	$r5,1(0x1)
1c00614c:	0284f0a5 	addi.w	$r5,$r5,316(0x13c)
1c006150:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006154:	28bb1084 	ld.w	$r4,$r4,-316(0xec4)
1c006158:	57d4fbff 	bl	-11016(0xfffd4f8) # 1c003650 <pstrstr>
1c00615c:	0015008c 	move	$r12,$r4
1c006160:	40001180 	beqz	$r12,16(0x10) # 1c006170 <Mqtt_Feedback+0x30c>
1c006164:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006168:	28bae18c 	ld.w	$r12,$r12,-328(0xeb8)
1c00616c:	29001980 	st.b	$r0,$r12,6(0x6)
1c006170:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006174:	50003400 	b	52(0x34) # 1c0061a8 <Mqtt_Feedback+0x344>
1c006178:	1cc7ff6d 	pcaddu12i	$r13,409595(0x63ffb)
1c00617c:	28ba91ad 	ld.w	$r13,$r13,-348(0xea4)
1c006180:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006184:	001031ac 	add.w	$r12,$r13,$r12
1c006188:	2a00018c 	ld.bu	$r12,$r12,0
1c00618c:	00150185 	move	$r5,$r12
1c006190:	1c000024 	pcaddu12i	$r4,1(0x1)
1c006194:	02840084 	addi.w	$r4,$r4,256(0x100)
1c006198:	57bb23ff 	bl	-17632(0xfffbb20) # 1c001cb8 <myprintf>
1c00619c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0061a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0061a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0061a8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0061ac:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c0061b0:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c006178 <Mqtt_Feedback+0x314>
1c0061b4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0061b8:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c0061bc:	028371ad 	addi.w	$r13,$r13,220(0xdc)
1c0061c0:	2980018d 	st.w	$r13,$r12,0
1c0061c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0061c8:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c0061cc:	028351ad 	addi.w	$r13,$r13,212(0xd4)
1c0061d0:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0061d4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0061d8:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c0061dc:	028331ad 	addi.w	$r13,$r13,204(0xcc)
1c0061e0:	2980218d 	st.w	$r13,$r12,8(0x8)
1c0061e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0061e8:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c0061ec:	028331ad 	addi.w	$r13,$r13,204(0xcc)
1c0061f0:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0061f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0061f8:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c0061fc:	028321ad 	addi.w	$r13,$r13,200(0xc8)
1c006200:	2980418d 	st.w	$r13,$r12,16(0x10)
1c006204:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006208:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c00620c:	028311ad 	addi.w	$r13,$r13,196(0xc4)
1c006210:	2980518d 	st.w	$r13,$r12,20(0x14)
1c006214:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006218:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c00621c:	028301ad 	addi.w	$r13,$r13,192(0xc0)
1c006220:	2980618d 	st.w	$r13,$r12,24(0x18)
1c006224:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006228:	28b7e18c 	ld.w	$r12,$r12,-520(0xdf8)
1c00622c:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c006230:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006234:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006238:	2940718d 	st.h	$r13,$r12,28(0x1c)
1c00623c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006240:	28b7818c 	ld.w	$r12,$r12,-544(0xde0)
1c006244:	2a00198c 	ld.bu	$r12,$r12,6(0x6)
1c006248:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00624c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006250:	2940798d 	st.h	$r13,$r12,30(0x1e)
1c006254:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006258:	28b7218c 	ld.w	$r12,$r12,-568(0xdc8)
1c00625c:	2a00018c 	ld.bu	$r12,$r12,0
1c006260:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006264:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006268:	2940818d 	st.h	$r13,$r12,32(0x20)
1c00626c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006270:	28b6c18c 	ld.w	$r12,$r12,-592(0xdb0)
1c006274:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c006278:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c00627c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006280:	2940898d 	st.h	$r13,$r12,34(0x22)
1c006284:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006288:	28b6618c 	ld.w	$r12,$r12,-616(0xd98)
1c00628c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c006290:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006294:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006298:	2940918d 	st.h	$r13,$r12,36(0x24)
1c00629c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062a0:	28b6018c 	ld.w	$r12,$r12,-640(0xd80)
1c0062a4:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0062a8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0062ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0062b0:	2940998d 	st.h	$r13,$r12,38(0x26)
1c0062b4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0062b8:	28b5a18c 	ld.w	$r12,$r12,-664(0xd68)
1c0062bc:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0062c0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0062c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0062c8:	2940a18d 	st.h	$r13,$r12,40(0x28)
1c0062cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0062d0:	00150184 	move	$r4,$r12
1c0062d4:	57f08bff 	bl	-3960(0xffff088) # 1c00535c <json_to_send>
1c0062d8:	57f407ff 	bl	-3068(0xffff404) # 1c0056dc <esp8266_send_json>
1c0062dc:	50000800 	b	8(0x8) # 1c0062e4 <Mqtt_Feedback+0x480>
1c0062e0:	03400000 	andi	$r0,$r0,0x0
1c0062e4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0062e8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0062ec:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0062f0:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c006300 <msg_wakeup>:
msg_wakeup():
1c006300:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01ce60 <_sidata+0x15b80>
1c006304:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c006309 <hexdecarr>:
hexdecarr():
1c006309:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c00630d:	37363534 	0x37363534
1c006311:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfec449 <_start-0x13bb7>
1c006315:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfec879 <_start-0x13787>
1c006319:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00631d:	79654b0a 	0x79654b0a
1c006321:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c006325:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c006329:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c00632d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01d39d <_sidata+0x160bd>
1c006331:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffd291 <_start-0x2d6f>
1c006335:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c006339:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffd29d <_start-0x2d63>
1c00633d:	72616220 	0x72616220
1c006341:	0a0d216b 	0x0a0d216b
1c006345:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006349:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffc4bd <_start-0x3b43>
1c00634d:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c006351:	d8000a0d 	0xd8000a0d
1c006355:	f41c001e 	0xf41c001e
1c006359:	f41c001f 	0xf41c001f
1c00635d:	f41c001f 	0xf41c001f
1c006361:	f41c001f 	0xf41c001f
1c006365:	f41c001f 	0xf41c001f
1c006369:	f41c001f 	0xf41c001f
1c00636d:	f41c001f 	0xf41c001f
1c006371:	f41c001f 	0xf41c001f
1c006375:	f41c001f 	0xf41c001f
1c006379:	f41c001f 	0xf41c001f
1c00637d:	f01c001f 	0xf01c001f
1c006381:	781c001e 	0x781c001e
1c006385:	781c001f 	0x781c001f
1c006389:	781c001f 	0x781c001f
1c00638d:	781c001f 	0x781c001f
1c006391:	781c001f 	0x781c001f
1c006395:	781c001f 	0x781c001f
1c006399:	781c001f 	0x781c001f
1c00639d:	781c001f 	0x781c001f
1c0063a1:	781c001f 	0x781c001f
1c0063a5:	f41c001f 	0xf41c001f
1c0063a9:	f41c001f 	0xf41c001f
1c0063ad:	f41c001f 	0xf41c001f
1c0063b1:	f41c001f 	0xf41c001f
1c0063b5:	f41c001f 	0xf41c001f
1c0063b9:	f41c001f 	0xf41c001f
1c0063bd:	f41c001f 	0xf41c001f
1c0063c1:	f41c001f 	0xf41c001f
1c0063c5:	f41c001f 	0xf41c001f
1c0063c9:	f41c001f 	0xf41c001f
1c0063cd:	f41c001f 	0xf41c001f
1c0063d1:	f41c001f 	0xf41c001f
1c0063d5:	f41c001f 	0xf41c001f
1c0063d9:	f41c001f 	0xf41c001f
1c0063dd:	f41c001f 	0xf41c001f
1c0063e1:	f41c001f 	0xf41c001f
1c0063e5:	f41c001f 	0xf41c001f
1c0063e9:	f41c001f 	0xf41c001f
1c0063ed:	f41c001f 	0xf41c001f
1c0063f1:	f41c001f 	0xf41c001f
1c0063f5:	f41c001f 	0xf41c001f
1c0063f9:	f41c001f 	0xf41c001f
1c0063fd:	f41c001f 	0xf41c001f
1c006401:	f41c001f 	0xf41c001f
1c006405:	f41c001f 	0xf41c001f
1c006409:	f41c001f 	0xf41c001f
1c00640d:	f41c001f 	0xf41c001f
1c006411:	f41c001f 	0xf41c001f
1c006415:	f41c001f 	0xf41c001f
1c006419:	f41c001f 	0xf41c001f
1c00641d:	f41c001f 	0xf41c001f
1c006421:	f41c001f 	0xf41c001f
1c006425:	f41c001f 	0xf41c001f
1c006429:	f41c001f 	0xf41c001f
1c00642d:	f41c001f 	0xf41c001f
1c006431:	f41c001f 	0xf41c001f
1c006435:	f41c001f 	0xf41c001f
1c006439:	f41c001f 	0xf41c001f
1c00643d:	f41c001f 	0xf41c001f
1c006441:	f41c001f 	0xf41c001f
1c006445:	681c001f 	bltu	$r0,$r31,7168(0x1c00) # 1c008045 <_sidata+0xd65>
1c006449:	901c001e 	0x901c001e
1c00644d:	f81c001d 	0xf81c001d
1c006451:	f41c001d 	0xf41c001d
1c006455:	f41c001f 	0xf41c001f
1c006459:	f41c001f 	0xf41c001f
1c00645d:	f41c001f 	0xf41c001f
1c006461:	f41c001f 	0xf41c001f
1c006465:	f41c001f 	0xf41c001f
1c006469:	f41c001f 	0xf41c001f
1c00646d:	f41c001f 	0xf41c001f
1c006471:	f41c001f 	0xf41c001f
1c006475:	f41c001f 	0xf41c001f
1c006479:	301c001f 	0x301c001f
1c00647d:	a01c001e 	0xa01c001e
1c006481:	f41c001e 	0xf41c001e
1c006485:	f41c001f 	0xf41c001f
1c006489:	641c001f 	bge	$r0,$r31,7168(0x1c00) # 1c008089 <_sidata+0xda9>
1c00648d:	f41c001d 	0xf41c001d
1c006491:	c01c001f 	0xc01c001f
1c006495:	f41c001d 	0xf41c001d
1c006499:	f41c001f 	0xf41c001f
1c00649d:	a01c001f 	0xa01c001f
1c0064a1:	cc1c001e 	0xcc1c001e
1c0064a5:	f01c0022 	0xf01c0022
1c0064a9:	f01c0023 	0xf01c0023
1c0064ad:	f01c0023 	0xf01c0023
1c0064b1:	f01c0023 	0xf01c0023
1c0064b5:	f01c0023 	0xf01c0023
1c0064b9:	f01c0023 	0xf01c0023
1c0064bd:	f01c0023 	0xf01c0023
1c0064c1:	f01c0023 	0xf01c0023
1c0064c5:	f01c0023 	0xf01c0023
1c0064c9:	f01c0023 	0xf01c0023
1c0064cd:	ec1c0023 	0xec1c0023
1c0064d1:	741c0022 	0x741c0022
1c0064d5:	741c0023 	0x741c0023
1c0064d9:	741c0023 	0x741c0023
1c0064dd:	741c0023 	0x741c0023
1c0064e1:	741c0023 	0x741c0023
1c0064e5:	741c0023 	0x741c0023
1c0064e9:	741c0023 	0x741c0023
1c0064ed:	741c0023 	0x741c0023
1c0064f1:	741c0023 	0x741c0023
1c0064f5:	f01c0023 	0xf01c0023
1c0064f9:	f01c0023 	0xf01c0023
1c0064fd:	f01c0023 	0xf01c0023
1c006501:	f01c0023 	0xf01c0023
1c006505:	f01c0023 	0xf01c0023
1c006509:	f01c0023 	0xf01c0023
1c00650d:	f01c0023 	0xf01c0023
1c006511:	f01c0023 	0xf01c0023
1c006515:	f01c0023 	0xf01c0023
1c006519:	f01c0023 	0xf01c0023
1c00651d:	f01c0023 	0xf01c0023
1c006521:	f01c0023 	0xf01c0023
1c006525:	f01c0023 	0xf01c0023
1c006529:	f01c0023 	0xf01c0023
1c00652d:	f01c0023 	0xf01c0023
1c006531:	f01c0023 	0xf01c0023
1c006535:	f01c0023 	0xf01c0023
1c006539:	f01c0023 	0xf01c0023
1c00653d:	f01c0023 	0xf01c0023
1c006541:	f01c0023 	0xf01c0023
1c006545:	f01c0023 	0xf01c0023
1c006549:	f01c0023 	0xf01c0023
1c00654d:	f01c0023 	0xf01c0023
1c006551:	f01c0023 	0xf01c0023
1c006555:	f01c0023 	0xf01c0023
1c006559:	f01c0023 	0xf01c0023
1c00655d:	f01c0023 	0xf01c0023
1c006561:	f01c0023 	0xf01c0023
1c006565:	f01c0023 	0xf01c0023
1c006569:	f01c0023 	0xf01c0023
1c00656d:	881c0023 	0x881c0023
1c006571:	f01c0022 	0xf01c0022
1c006575:	f01c0023 	0xf01c0023
1c006579:	f01c0023 	0xf01c0023
1c00657d:	f01c0023 	0xf01c0023
1c006581:	f01c0023 	0xf01c0023
1c006585:	f01c0023 	0xf01c0023
1c006589:	f01c0023 	0xf01c0023
1c00658d:	f01c0023 	0xf01c0023
1c006591:	f01c0023 	0xf01c0023
1c006595:	441c0023 	bnez	$r1,793600(0xc1c00) # 1c0c8195 <_sidata+0xc0eb5>
1c006599:	401c0022 	beqz	$r1,531456(0x81c00) # 1c088199 <_sidata+0x80eb9>
1c00659d:	bc1c0021 	0xbc1c0021
1c0065a1:	f01c0021 	0xf01c0021
1c0065a5:	f01c0023 	0xf01c0023
1c0065a9:	f01c0023 	0xf01c0023
1c0065ad:	f01c0023 	0xf01c0023
1c0065b1:	f01c0023 	0xf01c0023
1c0065b5:	f01c0023 	0xf01c0023
1c0065b9:	f01c0023 	0xf01c0023
1c0065bd:	f01c0023 	0xf01c0023
1c0065c1:	f01c0023 	0xf01c0023
1c0065c5:	f01c0023 	0xf01c0023
1c0065c9:	001c0023 	mul.w	$r3,$r1,$r0
1c0065cd:	881c0022 	0x881c0022
1c0065d1:	f01c0022 	0xf01c0022
1c0065d5:	f01c0023 	0xf01c0023
1c0065d9:	0c1c0023 	fcmp.cune.s	$fcc3,$f1,$f0
1c0065dd:	f01c0021 	0xf01c0021
1c0065e1:	781c0023 	0x781c0023
1c0065e5:	f01c0021 	0xf01c0021
1c0065e9:	f01c0023 	0xf01c0023
1c0065ed:	881c0023 	0x881c0023
1c0065f1:	0a1c0022 	xvfmadd.s	$xr2,$xr1,$xr0,$xr24
1c0065f5:	7c000000 	0x7c000000
1c0065f9:	7c7c7c7c 	0x7c7c7c7c
1c0065fd:	7c7c7c7c 	0x7c7c7c7c
1c006601:	7c7c7c7c 	0x7c7c7c7c
1c006605:	7c7c7c7c 	0x7c7c7c7c
1c006609:	7c7c7c7c 	0x7c7c7c7c
1c00660d:	7c7c7c7c 	0x7c7c7c7c
1c006611:	7c7c7c7c 	0x7c7c7c7c
1c006615:	7c7c7c7c 	0x7c7c7c7c
1c006619:	7c7c7c7c 	0x7c7c7c7c
1c00661d:	7c7c7c7c 	0x7c7c7c7c
1c006621:	7c7c7c7c 	0x7c7c7c7c
1c006625:	7c7c7c7c 	0x7c7c7c7c
1c006629:	7c7c7c7c 	0x7c7c7c7c
1c00662d:	7c7c7c7c 	0x7c7c7c7c
1c006631:	7c7c7c7c 	0x7c7c7c7c
1c006635:	7c7c7c7c 	0x7c7c7c7c
1c006639:	7c7c7c7c 	0x7c7c7c7c
1c00663d:	7c7c7c7c 	0x7c7c7c7c
1c006641:	7c7c7c7c 	0x7c7c7c7c
1c006645:	7c7c7c7c 	0x7c7c7c7c
1c006649:	7c7c7c7c 	0x7c7c7c7c
1c00664d:	7c7c7c7c 	0x7c7c7c7c
1c006651:	7c7c7c7c 	0x7c7c7c7c
1c006655:	7c7c7c7c 	0x7c7c7c7c
1c006659:	7c00000a 	0x7c00000a
1c00665d:	7c20207c 	0x7c20207c
1c006661:	7c7c7c7c 	0x7c7c7c7c
1c006665:	7c7c7c7c 	0x7c7c7c7c
1c006669:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00666d:	7c202020 	0x7c202020
1c006671:	7c7c7c7c 	0x7c7c7c7c
1c006675:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006679:	7c202020 	0x7c202020
1c00667d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006681:	7c7c2020 	0x7c7c2020
1c006685:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006689:	7c7c7c20 	0x7c7c7c20
1c00668d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006691:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006695:	7c7c7c7c 	0x7c7c7c7c
1c006699:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00669d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0066a1:	7c7c7c7c 	0x7c7c7c7c
1c0066a5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0066a9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0066ad:	7c7c7c7c 	0x7c7c7c7c
1c0066b1:	7c202020 	0x7c202020
1c0066b5:	7c7c7c7c 	0x7c7c7c7c
1c0066b9:	7c7c2020 	0x7c7c2020
1c0066bd:	7c00000a 	0x7c00000a
1c0066c1:	7c20207c 	0x7c20207c
1c0066c5:	7c7c7c7c 	0x7c7c7c7c
1c0066c9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0066cd:	7c7c2020 	0x7c7c2020
1c0066d1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0066d5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0066d9:	7c7c2020 	0x7c7c2020
1c0066dd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0066e1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0066e5:	7c202020 	0x7c202020
1c0066e9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0066ed:	7c7c7c20 	0x7c7c7c20
1c0066f1:	7c20207c 	0x7c20207c
1c0066f5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0066f9:	7c7c7c20 	0x7c7c7c20
1c0066fd:	7c202020 	0x7c202020
1c006701:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006705:	7c7c7c20 	0x7c7c7c20
1c006709:	7c202020 	0x7c202020
1c00670d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006711:	7c7c7c20 	0x7c7c7c20
1c006715:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006719:	7c7c7c7c 	0x7c7c7c7c
1c00671d:	7c7c2020 	0x7c7c2020
1c006721:	7c00000a 	0x7c00000a
1c006725:	7c20207c 	0x7c20207c
1c006729:	7c7c7c7c 	0x7c7c7c7c
1c00672d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006731:	7c7c7c20 	0x7c7c7c20
1c006735:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006739:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00673d:	7c7c7c20 	0x7c7c7c20
1c006741:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006745:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006749:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c00674d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006751:	7c7c7c20 	0x7c7c7c20
1c006755:	7c7c2020 	0x7c7c2020
1c006759:	7c7c7c7c 	0x7c7c7c7c
1c00675d:	7c7c7c7c 	0x7c7c7c7c
1c006761:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006765:	7c7c7c20 	0x7c7c7c20
1c006769:	7c7c7c7c 	0x7c7c7c7c
1c00676d:	7c7c2020 	0x7c7c2020
1c006771:	7c7c7c7c 	0x7c7c7c7c
1c006775:	7c7c7c20 	0x7c7c7c20
1c006779:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c00677d:	7c7c7c20 	0x7c7c7c20
1c006781:	7c7c2020 	0x7c7c2020
1c006785:	7c00000a 	0x7c00000a
1c006789:	7c20207c 	0x7c20207c
1c00678d:	7c7c7c7c 	0x7c7c7c7c
1c006791:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006795:	7c7c7c20 	0x7c7c7c20
1c006799:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00679d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0067a1:	7c7c7c20 	0x7c7c7c20
1c0067a5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0067a9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0067ad:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c0067b1:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c0067b5:	7c7c7c20 	0x7c7c7c20
1c0067b9:	7c7c2020 	0x7c7c2020
1c0067bd:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0067c1:	7c7c7c20 	0x7c7c7c20
1c0067c5:	7c7c7c7c 	0x7c7c7c7c
1c0067c9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0067cd:	7c7c7c7c 	0x7c7c7c7c
1c0067d1:	7c7c2020 	0x7c7c2020
1c0067d5:	7c7c7c7c 	0x7c7c7c7c
1c0067d9:	7c7c7c20 	0x7c7c7c20
1c0067dd:	7c7c2020 	0x7c7c2020
1c0067e1:	7c7c2020 	0x7c7c2020
1c0067e5:	7c7c2020 	0x7c7c2020
1c0067e9:	7c00000a 	0x7c00000a
1c0067ed:	7c20207c 	0x7c20207c
1c0067f1:	7c7c7c7c 	0x7c7c7c7c
1c0067f5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0067f9:	7c7c7c20 	0x7c7c7c20
1c0067fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006801:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006805:	7c7c7c20 	0x7c7c7c20
1c006809:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00680d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006811:	7c7c7c20 	0x7c7c7c20
1c006815:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c006819:	7c7c7c20 	0x7c7c7c20
1c00681d:	7c7c2020 	0x7c7c2020
1c006821:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006825:	7c7c7c20 	0x7c7c7c20
1c006829:	7c7c7c7c 	0x7c7c7c7c
1c00682d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006831:	7c7c7c20 	0x7c7c7c20
1c006835:	7c7c2020 	0x7c7c2020
1c006839:	7c7c7c7c 	0x7c7c7c7c
1c00683d:	7c7c7c20 	0x7c7c7c20
1c006841:	7c7c2020 	0x7c7c2020
1c006845:	7c20207c 	0x7c20207c
1c006849:	7c7c2020 	0x7c7c2020
1c00684d:	7c00000a 	0x7c00000a
1c006851:	7c20207c 	0x7c20207c
1c006855:	7c7c7c7c 	0x7c7c7c7c
1c006859:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00685d:	7c7c2020 	0x7c7c2020
1c006861:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006865:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006869:	7c7c2020 	0x7c7c2020
1c00686d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006871:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006875:	7c7c7c20 	0x7c7c7c20
1c006879:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00687d:	7c7c7c20 	0x7c7c7c20
1c006881:	7c202020 	0x7c202020
1c006885:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006889:	7c7c7c20 	0x7c7c7c20
1c00688d:	7c202020 	0x7c202020
1c006891:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006895:	7c7c7c7c 	0x7c7c7c7c
1c006899:	7c202020 	0x7c202020
1c00689d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0068a1:	7c7c7c20 	0x7c7c7c20
1c0068a5:	7c7c2020 	0x7c7c2020
1c0068a9:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0068ad:	7c7c2020 	0x7c7c2020
1c0068b1:	7c00000a 	0x7c00000a
1c0068b5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0068b9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0068bd:	7c7c7c7c 	0x7c7c7c7c
1c0068c1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0068c5:	7c202020 	0x7c202020
1c0068c9:	7c7c7c7c 	0x7c7c7c7c
1c0068cd:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0068d1:	7c202020 	0x7c202020
1c0068d5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0068d9:	7c7c7c20 	0x7c7c7c20
1c0068dd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0068e1:	7c7c7c20 	0x7c7c7c20
1c0068e5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0068e9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0068ed:	7c7c7c7c 	0x7c7c7c7c
1c0068f1:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0068f5:	7c202020 	0x7c202020
1c0068f9:	7c7c7c7c 	0x7c7c7c7c
1c0068fd:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006901:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006905:	7c7c7c7c 	0x7c7c7c7c
1c006909:	7c7c2020 	0x7c7c2020
1c00690d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006911:	7c7c2020 	0x7c7c2020
1c006915:	7c00000a 	0x7c00000a
1c006919:	7c7c7c7c 	0x7c7c7c7c
1c00691d:	7c7c7c7c 	0x7c7c7c7c
1c006921:	7c7c7c7c 	0x7c7c7c7c
1c006925:	7c7c7c7c 	0x7c7c7c7c
1c006929:	7c7c7c7c 	0x7c7c7c7c
1c00692d:	7c7c7c7c 	0x7c7c7c7c
1c006931:	7c7c7c7c 	0x7c7c7c7c
1c006935:	7c7c7c7c 	0x7c7c7c7c
1c006939:	7c7c7c7c 	0x7c7c7c7c
1c00693d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c006941:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c006945:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c006949:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c00694d:	7c7c7c5d 	0x7c7c7c5d
1c006951:	7c7c7c7c 	0x7c7c7c7c
1c006955:	7c7c7c7c 	0x7c7c7c7c
1c006959:	7c7c7c7c 	0x7c7c7c7c
1c00695d:	7c7c7c7c 	0x7c7c7c7c
1c006961:	7c7c7c7c 	0x7c7c7c7c
1c006965:	7c7c7c7c 	0x7c7c7c7c
1c006969:	7c7c7c7c 	0x7c7c7c7c
1c00696d:	7c7c7c7c 	0x7c7c7c7c
1c006971:	7c7c7c7c 	0x7c7c7c7c
1c006975:	7c7c7c7c 	0x7c7c7c7c
1c006979:	0900000a 	0x0900000a
1c00697d:	0a006425 	0x0a006425
1c006981:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006985:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c006989:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00698d:	0050550a 	0x0050550a
1c006991:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006995:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00dee1 <_sidata+0x6c01>
1c006999:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c00699d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c0069a1:	756f430a 	0x756f430a
1c0069a5:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c0069a9:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c0069ad:	3030090a 	0x3030090a
1c0069b1:	09313009 	0x09313009
1c0069b5:	30093230 	0x30093230
1c0069b9:	34300933 	0x34300933
1c0069bd:	09353009 	0x09353009
1c0069c1:	30093630 	0x30093630
1c0069c5:	38300937 	fldx.s	$f23,$r9,$r2
1c0069c9:	09393009 	0x09393009
1c0069cd:	31093031 	0x31093031
1c0069d1:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c0069d5:	746e630a 	0x746e630a
1c0069d9:	09000000 	0x09000000
1c0069dd:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c0069e1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0069e5:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c0069e9:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00cb3d <_sidata+0x585d>
1c0069ed:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0069f1:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfedf41 <_start-0x120bf>
1c0069f5:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c0069f9:	09000000 	0x09000000
1c0069fd:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c006a01:	09000000 	0x09000000
1c006a05:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c006a09:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006a0d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c006a11:	3a515249 	0x3a515249
1c006a15:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c006a19:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffd88d <_start-0x2773>
1c006a1d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c006a21:	0d3e2020 	0x0d3e2020
1c006a25:	0a00000a 	0x0a00000a
1c006a29:	2e2e2e2e 	0x2e2e2e2e
1c006a2d:	2e2e2e2e 	0x2e2e2e2e
1c006a31:	2e2e2e2e 	0x2e2e2e2e
1c006a35:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ab985 <_sidata+0x3a46a5>
1c006a39:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c006a3d:	2e2e2e54 	0x2e2e2e54
1c006a41:	2e2e2e2e 	0x2e2e2e2e
1c006a45:	2e2e2e2e 	0x2e2e2e2e
1c006a49:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c006a4d:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c006a51:	2e2e2e0a 	0x2e2e2e0a
1c006a55:	2e2e2e2e 	0x2e2e2e2e
1c006a59:	2e2e2e2e 	0x2e2e2e2e
1c006a5d:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39ac89 <_sidata+0x3939a9>
1c006a61:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1b0bd <_start-0x2e4f43>
1c006a65:	2e2e4c49 	0x2e2e4c49
1c006a69:	2e2e2e2e 	0x2e2e2e2e
1c006a6d:	2e2e2e2e 	0x2e2e2e2e
1c006a71:	2e2e2e2e 	0x2e2e2e2e
1c006a75:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c006a79:	2e2e2e0a 	0x2e2e2e0a
1c006a7d:	2e2e2e2e 	0x2e2e2e2e
1c006a81:	2e2e2e2e 	0x2e2e2e2e
1c006a85:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38abb1 <_sidata+0x3838d1>
1c006a89:	2e2e2e43 	0x2e2e2e43
1c006a8d:	2e2e2e2e 	0x2e2e2e2e
1c006a91:	2e2e2e2e 	0x2e2e2e2e
1c006a95:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c006a99:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b6a99 <_sidata+0x2af7b9>
1c006a9d:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c006aa1:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01d809 <_sidata+0x16529>
1c006aa5:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00cdc5 <_sidata+0x5ae5>
1c006aa9:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c006aad:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01df19 <_sidata+0x16c39>
1c006ab1:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c006ab5:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c006ab9:	 	bltu	$r0,$r10,0 # 1c006ab9 <hexdecarr+0x7b0>

1c006abc <Ext_IrqHandle>:
1c006abc:	1c004168 	pcaddu12i	$r8,523(0x20b)
1c006ac0:	1c0041b4 	pcaddu12i	$r20,525(0x20d)
1c006ac4:	1c004200 	pcaddu12i	$r0,528(0x210)
1c006ac8:	1c00424c 	pcaddu12i	$r12,530(0x212)
1c006acc:	1c004298 	pcaddu12i	$r24,532(0x214)
1c006ad0:	1c0042e4 	pcaddu12i	$r4,535(0x217)
1c006ad4:	1c004330 	pcaddu12i	$r16,537(0x219)
1c006ad8:	1c00437c 	pcaddu12i	$r28,539(0x21b)
1c006adc:	1c0043c8 	pcaddu12i	$r8,542(0x21e)
1c006ae0:	1c004414 	pcaddu12i	$r20,544(0x220)
1c006ae4:	1c004460 	pcaddu12i	$r0,547(0x223)
1c006ae8:	1c0044ac 	pcaddu12i	$r12,549(0x225)
1c006aec:	1c0044f8 	pcaddu12i	$r24,551(0x227)
1c006af0:	1c004544 	pcaddu12i	$r4,554(0x22a)
1c006af4:	1c004590 	pcaddu12i	$r16,556(0x22c)
1c006af8:	1c0045dc 	pcaddu12i	$r28,558(0x22e)
1c006afc:	1c004628 	pcaddu12i	$r8,561(0x231)
1c006b00:	1c004674 	pcaddu12i	$r20,563(0x233)
1c006b04:	1c0046c0 	pcaddu12i	$r0,566(0x236)
1c006b08:	1c00470c 	pcaddu12i	$r12,568(0x238)
1c006b0c:	1c004758 	pcaddu12i	$r24,570(0x23a)
1c006b10:	1c0047a4 	pcaddu12i	$r4,573(0x23d)
1c006b14:	1c0047f0 	pcaddu12i	$r16,575(0x23f)
1c006b18:	1c00483c 	pcaddu12i	$r28,577(0x241)
1c006b1c:	1c004888 	pcaddu12i	$r8,580(0x244)
1c006b20:	1c0048d4 	pcaddu12i	$r20,582(0x246)
1c006b24:	1c004920 	pcaddu12i	$r0,585(0x249)
1c006b28:	1c00496c 	pcaddu12i	$r12,587(0x24b)
1c006b2c:	1c0049b8 	pcaddu12i	$r24,589(0x24d)
1c006b30:	1c004a04 	pcaddu12i	$r4,592(0x250)
1c006b34:	1c004a50 	pcaddu12i	$r16,594(0x252)
1c006b38:	1c004a9c 	pcaddu12i	$r28,596(0x254)
1c006b3c:	1c004d80 	pcaddu12i	$r0,620(0x26c)
1c006b40:	1c004d30 	pcaddu12i	$r16,617(0x269)
1c006b44:	1c004d80 	pcaddu12i	$r0,620(0x26c)
1c006b48:	1c004d80 	pcaddu12i	$r0,620(0x26c)
1c006b4c:	1c004d80 	pcaddu12i	$r0,620(0x26c)
1c006b50:	1c004d80 	pcaddu12i	$r0,620(0x26c)
1c006b54:	1c004d80 	pcaddu12i	$r0,620(0x26c)
1c006b58:	1c004d80 	pcaddu12i	$r0,620(0x26c)
1c006b5c:	1c004d80 	pcaddu12i	$r0,620(0x26c)
1c006b60:	1c004d80 	pcaddu12i	$r0,620(0x26c)
1c006b64:	1c004d80 	pcaddu12i	$r0,620(0x26c)
1c006b68:	1c004d80 	pcaddu12i	$r0,620(0x26c)
1c006b6c:	1c004d80 	pcaddu12i	$r0,620(0x26c)
1c006b70:	1c004d80 	pcaddu12i	$r0,620(0x26c)
1c006b74:	1c004d80 	pcaddu12i	$r0,620(0x26c)
1c006b78:	1c004d80 	pcaddu12i	$r0,620(0x26c)
1c006b7c:	1c004d4c 	pcaddu12i	$r12,618(0x26a)

1c006b80 <__FUNCTION__.1666>:
1c006b80:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dff8 <_sidata+0x16d18>
1c006b84:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dbe8 <_sidata+0x16908>
1c006b88:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff9be8 <_start-0x6418>
1c006b8c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdcfc <_start-0x2304>
1c006b90:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d9f0 <_sidata+0x6710>
1c006b94:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006b98 <__FUNCTION__.1670>:
1c006b98:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e010 <_sidata+0x16d30>
1c006b9c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc00 <_sidata+0x16920>
1c006ba0:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff9d00 <_start-0x6300>
1c006ba4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd14 <_start-0x22ec>
1c006ba8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da08 <_sidata+0x6728>
1c006bac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006bb0 <__FUNCTION__.1674>:
1c006bb0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e028 <_sidata+0x16d48>
1c006bb4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc18 <_sidata+0x16938>
1c006bb8:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff9e18 <_start-0x61e8>
1c006bbc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd2c <_start-0x22d4>
1c006bc0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da20 <_sidata+0x6740>
1c006bc4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006bc8 <__FUNCTION__.1678>:
1c006bc8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e040 <_sidata+0x16d60>
1c006bcc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc30 <_sidata+0x16950>
1c006bd0:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff9f30 <_start-0x60d0>
1c006bd4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd44 <_start-0x22bc>
1c006bd8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da38 <_sidata+0x6758>
1c006bdc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006be0 <__FUNCTION__.1682>:
1c006be0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e058 <_sidata+0x16d78>
1c006be4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc48 <_sidata+0x16968>
1c006be8:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffa048 <_start-0x5fb8>
1c006bec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd5c <_start-0x22a4>
1c006bf0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da50 <_sidata+0x6770>
1c006bf4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006bf8 <__FUNCTION__.1686>:
1c006bf8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e070 <_sidata+0x16d90>
1c006bfc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc60 <_sidata+0x16980>
1c006c00:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffa160 <_start-0x5ea0>
1c006c04:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd74 <_start-0x228c>
1c006c08:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da68 <_sidata+0x6788>
1c006c0c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c10 <__FUNCTION__.1690>:
1c006c10:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e088 <_sidata+0x16da8>
1c006c14:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc78 <_sidata+0x16998>
1c006c18:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffa278 <_start-0x5d88>
1c006c1c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd8c <_start-0x2274>
1c006c20:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da80 <_sidata+0x67a0>
1c006c24:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c28 <__FUNCTION__.1694>:
1c006c28:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e0a0 <_sidata+0x16dc0>
1c006c2c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc90 <_sidata+0x169b0>
1c006c30:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffa390 <_start-0x5c70>
1c006c34:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdda4 <_start-0x225c>
1c006c38:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da98 <_sidata+0x67b8>
1c006c3c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c40 <__FUNCTION__.1698>:
1c006c40:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e0b8 <_sidata+0x16dd8>
1c006c44:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dca8 <_sidata+0x169c8>
1c006c48:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff9ca8 <_start-0x6358>
1c006c4c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffddbc <_start-0x2244>
1c006c50:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dab0 <_sidata+0x67d0>
1c006c54:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c58 <__FUNCTION__.1702>:
1c006c58:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e0d0 <_sidata+0x16df0>
1c006c5c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dcc0 <_sidata+0x169e0>
1c006c60:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff9dc0 <_start-0x6240>
1c006c64:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffddd4 <_start-0x222c>
1c006c68:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dac8 <_sidata+0x67e8>
1c006c6c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c70 <__FUNCTION__.1706>:
1c006c70:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e0e8 <_sidata+0x16e08>
1c006c74:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dcd8 <_sidata+0x169f8>
1c006c78:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff9ed8 <_start-0x6128>
1c006c7c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffddec <_start-0x2214>
1c006c80:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dae0 <_sidata+0x6800>
1c006c84:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c88 <__FUNCTION__.1710>:
1c006c88:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e100 <_sidata+0x16e20>
1c006c8c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dcf0 <_sidata+0x16a10>
1c006c90:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff9ff0 <_start-0x6010>
1c006c94:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde04 <_start-0x21fc>
1c006c98:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00daf8 <_sidata+0x6818>
1c006c9c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006ca0 <__FUNCTION__.1714>:
1c006ca0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e118 <_sidata+0x16e38>
1c006ca4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd08 <_sidata+0x16a28>
1c006ca8:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffa108 <_start-0x5ef8>
1c006cac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde1c <_start-0x21e4>
1c006cb0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00db10 <_sidata+0x6830>
1c006cb4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006cb8 <__FUNCTION__.1718>:
1c006cb8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e130 <_sidata+0x16e50>
1c006cbc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd20 <_sidata+0x16a40>
1c006cc0:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffa220 <_start-0x5de0>
1c006cc4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde34 <_start-0x21cc>
1c006cc8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00db28 <_sidata+0x6848>
1c006ccc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006cd0 <__FUNCTION__.1722>:
1c006cd0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e148 <_sidata+0x16e68>
1c006cd4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd38 <_sidata+0x16a58>
1c006cd8:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffa338 <_start-0x5cc8>
1c006cdc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde4c <_start-0x21b4>
1c006ce0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00db40 <_sidata+0x6860>
1c006ce4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006ce8 <__FUNCTION__.1726>:
1c006ce8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e160 <_sidata+0x16e80>
1c006cec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd50 <_sidata+0x16a70>
1c006cf0:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffa450 <_start-0x5bb0>
1c006cf4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde64 <_start-0x219c>
1c006cf8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00db58 <_sidata+0x6878>
1c006cfc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006d00 <__FUNCTION__.1730>:
1c006d00:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e178 <_sidata+0x16e98>
1c006d04:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd68 <_sidata+0x16a88>
1c006d08:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff9d68 <_start-0x6298>
1c006d0c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde7c <_start-0x2184>
1c006d10:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00db70 <_sidata+0x6890>
1c006d14:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006d18 <__FUNCTION__.1734>:
1c006d18:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e190 <_sidata+0x16eb0>
1c006d1c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd80 <_sidata+0x16aa0>
1c006d20:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff9e80 <_start-0x6180>
1c006d24:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde94 <_start-0x216c>
1c006d28:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00db88 <_sidata+0x68a8>
1c006d2c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006d30 <__FUNCTION__.1738>:
1c006d30:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e1a8 <_sidata+0x16ec8>
1c006d34:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd98 <_sidata+0x16ab8>
1c006d38:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff9f98 <_start-0x6068>
1c006d3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdeac <_start-0x2154>
1c006d40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dba0 <_sidata+0x68c0>
1c006d44:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006d48 <__FUNCTION__.1742>:
1c006d48:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e1c0 <_sidata+0x16ee0>
1c006d4c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ddb0 <_sidata+0x16ad0>
1c006d50:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffa0b0 <_start-0x5f50>
1c006d54:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdec4 <_start-0x213c>
1c006d58:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dbb8 <_sidata+0x68d8>
1c006d5c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006d60 <__FUNCTION__.1746>:
1c006d60:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e1d8 <_sidata+0x16ef8>
1c006d64:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ddc8 <_sidata+0x16ae8>
1c006d68:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffa1c8 <_start-0x5e38>
1c006d6c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdedc <_start-0x2124>
1c006d70:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dbd0 <_sidata+0x68f0>
1c006d74:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006d78 <__FUNCTION__.1750>:
1c006d78:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e1f0 <_sidata+0x16f10>
1c006d7c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dde0 <_sidata+0x16b00>
1c006d80:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffa2e0 <_start-0x5d20>
1c006d84:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdef4 <_start-0x210c>
1c006d88:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dbe8 <_sidata+0x6908>
1c006d8c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006d90 <__FUNCTION__.1754>:
1c006d90:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e208 <_sidata+0x16f28>
1c006d94:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ddf8 <_sidata+0x16b18>
1c006d98:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffa3f8 <_start-0x5c08>
1c006d9c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdf0c <_start-0x20f4>
1c006da0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dc00 <_sidata+0x6920>
1c006da4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006da8 <__FUNCTION__.1758>:
1c006da8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e220 <_sidata+0x16f40>
1c006dac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01de10 <_sidata+0x16b30>
1c006db0:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffa510 <_start-0x5af0>
1c006db4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdf24 <_start-0x20dc>
1c006db8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dc18 <_sidata+0x6938>
1c006dbc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006dc0 <__FUNCTION__.1762>:
1c006dc0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e238 <_sidata+0x16f58>
1c006dc4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01de28 <_sidata+0x16b48>
1c006dc8:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff9e2c <_start-0x61d4>
1c006dcc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdf3c <_start-0x20c4>
1c006dd0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dc30 <_sidata+0x6950>
1c006dd4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006dd8 <__FUNCTION__.1766>:
1c006dd8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e250 <_sidata+0x16f70>
1c006ddc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01de40 <_sidata+0x16b60>
1c006de0:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff9f44 <_start-0x60bc>
1c006de4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdf54 <_start-0x20ac>
1c006de8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dc48 <_sidata+0x6968>
1c006dec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006df0 <__FUNCTION__.1770>:
1c006df0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e268 <_sidata+0x16f88>
1c006df4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01de58 <_sidata+0x16b78>
1c006df8:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffa05c <_start-0x5fa4>
1c006dfc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdf6c <_start-0x2094>
1c006e00:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dc60 <_sidata+0x6980>
1c006e04:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006e08 <__FUNCTION__.1774>:
1c006e08:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e280 <_sidata+0x16fa0>
1c006e0c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01de70 <_sidata+0x16b90>
1c006e10:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffa174 <_start-0x5e8c>
1c006e14:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdf84 <_start-0x207c>
1c006e18:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dc78 <_sidata+0x6998>
1c006e1c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006e20 <__FUNCTION__.1778>:
1c006e20:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e298 <_sidata+0x16fb8>
1c006e24:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01de88 <_sidata+0x16ba8>
1c006e28:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffa28c <_start-0x5d74>
1c006e2c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdf9c <_start-0x2064>
1c006e30:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dc90 <_sidata+0x69b0>
1c006e34:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006e38 <__FUNCTION__.1782>:
1c006e38:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e2b0 <_sidata+0x16fd0>
1c006e3c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dea0 <_sidata+0x16bc0>
1c006e40:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffa3a4 <_start-0x5c5c>
1c006e44:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdfb4 <_start-0x204c>
1c006e48:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dca8 <_sidata+0x69c8>
1c006e4c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006e50 <__FUNCTION__.1786>:
1c006e50:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e2c8 <_sidata+0x16fe8>
1c006e54:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01deb8 <_sidata+0x16bd8>
1c006e58:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffa4bc <_start-0x5b44>
1c006e5c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdfcc <_start-0x2034>
1c006e60:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dcc0 <_sidata+0x69e0>
1c006e64:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006e68 <__FUNCTION__.1790>:
1c006e68:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e2e0 <_sidata+0x17000>
1c006e6c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ded0 <_sidata+0x16bf0>
1c006e70:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffa5d4 <_start-0x5a2c>
1c006e74:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdfe4 <_start-0x201c>
1c006e78:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dcd8 <_sidata+0x69f8>
1c006e7c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c006e80:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c006e84:	50545451 	b	21255252(0x1445454) # 1d44c2d8 <_sidata+0x1444ff8>
1c006e88:	303d4255 	0x303d4255
1c006e8c:	6b2f222c 	bltu	$r17,$r12,-53472(0x32f20) # 1bff9dac <_start-0x6254>
1c006e90:	336c6431 	xvstelm.h	$xr17,$r1,50(0x32),0xb
1c006e94:	52324a65 	b	-107597240(0x9963248) # 1596a0dc <_start-0x6695f24>
1c006e98:	312f4242 	vstelm.w	$vr2,$r18,-192(0x340),0x3
1c006e9c:	32303163 	0x32303163
1c006ea0:	2f77656e 	0x2f77656e
1c006ea4:	72657375 	0x72657375
1c006ea8:	6470752f 	bge	$r9,$r15,28788(0x7074) # 1c00df1c <_sidata+0x6c3c>
1c006eac:	22657461 	ll.d	$r1,$r3,25972(0x6574)
1c006eb0:	7325222c 	vsat.d	$vr12,$vr17,0x8
1c006eb4:	2c302c22 	vld	$vr2,$r1,-1013(0xc0b)
1c006eb8:	00000a30 	0x00000a30
1c006ebc:	00004b4f 	bitrev.4b	$r15,$r26
1c006ec0:	3a646d63 	0x3a646d63
1c006ec4:	0a0d7325 	0x0a0d7325
1c006ec8:	00000000 	0x00000000
1c006ecc:	000a7325 	0x000a7325
1c006ed0:	3a6b6361 	0x3a6b6361
1c006ed4:	0a0d7325 	0x0a0d7325
1c006ed8:	00000000 	0x00000000
1c006edc:	3a736572 	0x3a736572
1c006ee0:	0a0d6425 	0x0a0d6425
1c006ee4:	00000000 	0x00000000
1c006ee8:	0a0d5441 	0x0a0d5441
1c006eec:	00000000 	0x00000000
1c006ef0:	00004b4f 	bitrev.4b	$r15,$r26
1c006ef4:	00005441 	bitrev.d	$r1,$r2
1c006ef8:	432b5441 	beqz	$r2,469844(0x72b54) # 1c079a4c <_sidata+0x7276c>
1c006efc:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdcbe48 <_start-0x2341b8>
1c006f00:	0d313d45 	0x0d313d45
1c006f04:	0000000a 	0x0000000a
1c006f08:	432b5441 	beqz	$r2,469844(0x72b54) # 1c079a5c <_sidata+0x7277c>
1c006f0c:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdcbe58 <_start-0x2341a8>
1c006f10:	00313d45 	0x00313d45
1c006f14:	432b5441 	beqz	$r2,469844(0x72b54) # 1c079a68 <_sidata+0x72788>
1c006f18:	50414a57 	b	-111394488(0x95c4148) # 155cb060 <_start-0x6a34fa0>
1c006f1c:	2d78793d 	0x2d78793d
1c006f20:	6f687069 	bgeu	$r3,$r9,-38800(0x36870) # 1bffd790 <_start-0x2870>
1c006f24:	312c656e 	vstelm.w	$vr14,$r11,100(0x64),0x3
1c006f28:	35343332 	0x35343332
1c006f2c:	0d383736 	0x0d383736
1c006f30:	0000000a 	0x0000000a
1c006f34:	432b5441 	beqz	$r2,469844(0x72b54) # 1c079a88 <_sidata+0x727a8>
1c006f38:	50414a57 	b	-111394488(0x95c4148) # 155cb080 <_start-0x6a34f80>
1c006f3c:	6f6e223d 	bgeu	$r17,$r29,-37344(0x36e20) # 1bffdd5c <_start-0x22a4>
1c006f40:	2c226176 	vld	$vr22,$r11,-1896(0x898)
1c006f44:	33323122 	xvstelm.w	$xr2,$r9,-464(0x230),0x4
1c006f48:	37363534 	0x37363534
1c006f4c:	00002238 	clo.d	$r24,$r17
1c006f50:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c006f54:	55545451 	bl	21320788(0x1455454) # 1d45c3a8 <_sidata+0x14550c8>
1c006f58:	43524553 	beqz	$r10,-3190204(0x4f5244) # 1bcfc19c <_start-0x303e64>
1c006f5c:	313d4746 	0x313d4746
1c006f60:	4c554e2c 	jirl	$r12,$r17,21836(0x554c)
1c006f64:	63312c4c 	blt	$r2,$r12,-52948(0x3312c) # 1bffa090 <_start-0x5f70>
1c006f68:	73323031 	0x73323031
1c006f6c:	64316b26 	bge	$r25,$r6,12648(0x3168) # 1c00a0d4 <_sidata+0x2df4>
1c006f70:	4a65336c 	0x4a65336c
1c006f74:	42425232 	beqz	$r17,-3521968(0x4a4250) # 1bcab1c4 <_start-0x354e3c>
1c006f78:	3430642c 	0x3430642c
1c006f7c:	66653932 	bge	$r9,$r18,-105160(0x26538) # 1bfed4b4 <_start-0x12b4c>
1c006f80:	34383438 	0x34383438
1c006f84:	65613131 	bge	$r9,$r17,90416(0x16130) # 1c01d0b4 <_sidata+0x15dd4>
1c006f88:	37646339 	0x37646339
1c006f8c:	35616232 	0x35616232
1c006f90:	65373565 	bge	$r11,$r5,79668(0x13734) # 1c01a6c4 <_sidata+0x133e4>
1c006f94:	33303730 	xvstelm.w	$xr16,$r25,52(0x34),0x4
1c006f98:	36353533 	0x36353533
1c006f9c:	31303962 	0x31303962
1c006fa0:	63313736 	blt	$r25,$r22,-52940(0x33134) # 1bffa0d4 <_start-0x5f2c>
1c006fa4:	35323836 	0x35323836
1c006fa8:	37663262 	0x37663262
1c006fac:	61356135 	blt	$r9,$r21,79200(0x13560) # 1c01a50c <_sidata+0x1322c>
1c006fb0:	63366265 	blt	$r19,$r5,-51616(0x33660) # 1bffa610 <_start-0x59f0>
1c006fb4:	36633735 	0x36633735
1c006fb8:	2c302c64 	vld	$vr4,$r3,-1013(0xc0b)
1c006fbc:	22222c30 	ll.d	$r16,$r1,8748(0x222c)
1c006fc0:	00000a0d 	0x00000a0d
1c006fc4:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c006fc8:	55545451 	bl	21320788(0x1455454) # 1d45c41c <_sidata+0x145513c>
1c006fcc:	43524553 	beqz	$r10,-3190204(0x4f5244) # 1bcfc210 <_start-0x303df0>
1c006fd0:	303d4746 	0x303d4746
1c006fd4:	222c312c 	ll.d	$r12,$r9,11312(0x2c30)
1c006fd8:	4c4c554e 	jirl	$r14,$r10,19540(0x4c54)
1c006fdc:	31222c22 	vstelm.w	$vr2,$r1,-468(0x22c),0x0
1c006fe0:	32303163 	0x32303163
1c006fe4:	2677656e 	ldptr.d	$r14,$r11,30564(0x7764)
1c006fe8:	6c64316b 	bgeu	$r11,$r11,25648(0x6430) # 1c00d418 <_sidata+0x6138>
1c006fec:	324a6533 	xvldrepl.h	$xr19,$r9,1330(0x532)
1c006ff0:	22424252 	ll.d	$r18,$r18,16960(0x4240)
1c006ff4:	6165222c 	blt	$r17,$r12,91424(0x16520) # 1c01d514 <_sidata+0x16234>
1c006ff8:	30343037 	0x30343037
1c006ffc:	33313663 	xvstelm.w	$xr3,$r19,308(0x134),0x4
1c007000:	66316438 	bge	$r1,$r24,-118428(0x23164) # 1bfea164 <_start-0x15e9c>
1c007004:	32353134 	0x32353134
1c007008:	32626534 	0x32626534
1c00700c:	37326633 	0x37326633
1c007010:	39333565 	0x39333565
1c007014:	35343432 	0x35343432
1c007018:	63643063 	blt	$r3,$r3,-39888(0x36430) # 1bffd448 <_start-0x2bb8>
1c00701c:	61636331 	blt	$r25,$r17,90976(0x16360) # 1c01d37c <_sidata+0x1609c>
1c007020:	32643264 	0x32643264
1c007024:	35313865 	0x35313865
1c007028:	65313139 	bge	$r9,$r25,78128(0x13130) # 1c01a158 <_sidata+0x12e78>
1c00702c:	64356263 	bge	$r19,$r3,13664(0x3560) # 1c00a58c <_sidata+0x32ac>
1c007030:	31323434 	0x31323434
1c007034:	2c226430 	vld	$vr16,$r1,-1895(0x899)
1c007038:	2c302c30 	vld	$vr16,$r1,-1013(0xc0b)
1c00703c:	00002222 	clo.d	$r2,$r17
1c007040:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007044:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7c498 <_start-0x383b68>
1c007048:	4e45494c 	jirl	$r12,$r10,-113336(0x24548)
1c00704c:	3d444954 	0x3d444954
1c007050:	316b2c30 	0x316b2c30
1c007054:	65336c64 	bge	$r3,$r4,78700(0x1336c) # 1c01a3c0 <_sidata+0x130e0>
1c007058:	4252324a 	beqz	$r18,2773552(0x2a5230) # 1c2ac288 <_sidata+0x2a4fa8>
1c00705c:	63312e42 	blt	$r18,$r2,-52948(0x3312c) # 1bffa188 <_start-0x5e78>
1c007060:	73323031 	0x73323031
1c007064:	6365737c 	blt	$r27,$r28,-39568(0x36570) # 1bffd5d4 <_start-0x2a2c>
1c007068:	6d657275 	bgeu	$r19,$r21,91504(0x16570) # 1c01d5d8 <_sidata+0x162f8>
1c00706c:	3d65646f 	0x3d65646f
1c007070:	69732c32 	bltu	$r1,$r18,95020(0x1732c) # 1c01e39c <_sidata+0x170bc>
1c007074:	656d6e67 	bge	$r19,$r7,93548(0x16d6c) # 1c01dde0 <_sidata+0x16b00>
1c007078:	646f6874 	bge	$r3,$r20,28520(0x6f68) # 1c00dfe0 <_sidata+0x6d00>
1c00707c:	616d683d 	blt	$r1,$r29,93544(0x16d68) # 1c01dde4 <_sidata+0x16b04>
1c007080:	61687363 	blt	$r27,$r3,92272(0x16870) # 1c01d8f0 <_sidata+0x16610>
1c007084:	2c363532 	vld	$vr18,$r9,-627(0xd8d)
1c007088:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01ddf0 <_sidata+0x16b10>
1c00708c:	6d617473 	bgeu	$r3,$r19,90484(0x16174) # 1c01d200 <_sidata+0x15f20>
1c007090:	37313d70 	0x37313d70
1c007094:	33363931 	xvstelm.w	$xr17,$r9,-456(0x238),0x5
1c007098:	30343736 	0x30343736
1c00709c:	7c393931 	0x7c393931
1c0070a0:	00000a0d 	0x00000a0d
1c0070a4:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c0070a8:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7c4fc <_start-0x383b04>
1c0070ac:	4e45494c 	jirl	$r12,$r10,-113336(0x24548)
1c0070b0:	3d444954 	0x3d444954
1c0070b4:	6b222c30 	bltu	$r1,$r16,-56788(0x3222c) # 1bff92e0 <_start-0x6d20>
1c0070b8:	336c6431 	xvstelm.h	$xr17,$r1,50(0x32),0xb
1c0070bc:	52324a65 	b	-107597240(0x9963248) # 1596a304 <_start-0x6695cfc>
1c0070c0:	312e4242 	vstelm.w	$vr2,$r18,-448(0x240),0x3
1c0070c4:	32303163 	0x32303163
1c0070c8:	7c77656e 	0x7c77656e
1c0070cc:	75636573 	0x75636573
1c0070d0:	6f6d6572 	bgeu	$r11,$r18,-37532(0x36d64) # 1bffde34 <_start-0x21cc>
1c0070d4:	323d6564 	0x323d6564
1c0070d8:	69732c5c 	bltu	$r2,$r28,95020(0x1732c) # 1c01e404 <_sidata+0x17124>
1c0070dc:	656d6e67 	bge	$r19,$r7,93548(0x16d6c) # 1c01de48 <_sidata+0x16b68>
1c0070e0:	646f6874 	bge	$r3,$r20,28520(0x6f68) # 1c00e048 <_sidata+0x6d68>
1c0070e4:	616d683d 	blt	$r1,$r29,93544(0x16d68) # 1c01de4c <_sidata+0x16b6c>
1c0070e8:	61687363 	blt	$r27,$r3,92272(0x16870) # 1c01d958 <_sidata+0x16678>
1c0070ec:	5c363532 	bne	$r9,$r18,13876(0x3634) # 1c00a720 <_sidata+0x3440>
1c0070f0:	6d69742c 	bgeu	$r1,$r12,92532(0x16974) # 1c01da64 <_sidata+0x16784>
1c0070f4:	61747365 	blt	$r27,$r5,95344(0x17470) # 1c01e564 <_sidata+0x17284>
1c0070f8:	313d706d 	0x313d706d
1c0070fc:	31333237 	0x31333237
1c007100:	31373939 	0x31373939
1c007104:	39343234 	0x39343234
1c007108:	0000227c 	clo.d	$r28,$r19
1c00710c:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007110:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7c564 <_start-0x383a9c>
1c007114:	3d4e4e4f 	0x3d4e4e4f
1c007118:	69222c30 	bltu	$r1,$r16,74284(0x1222c) # 1c019344 <_sidata+0x12064>
1c00711c:	302d746f 	vldrepl.w	$vr15,$r3,-652(0xd74)
1c007120:	30307a36 	0x30307a36
1c007124:	36397a62 	0x36397a62
1c007128:	62783437 	blt	$r1,$r23,-100300(0x27834) # 1bfee95c <_start-0x116a4>
1c00712c:	6d2e7665 	bgeu	$r19,$r5,77428(0x12e74) # 1c019fa0 <_sidata+0x12cc0>
1c007130:	2e747471 	0x2e747471
1c007134:	68746f69 	bltu	$r27,$r9,29804(0x746c) # 1c00e5a0 <_sidata+0x72c0>
1c007138:	612e6275 	blt	$r19,$r21,77408(0x12e60) # 1c019f98 <_sidata+0x12cb8>
1c00713c:	7579696c 	0x7579696c
1c007140:	2e73636e 	0x2e73636e
1c007144:	226d6f63 	ll.d	$r3,$r27,28012(0x6d6c)
1c007148:	3838312c 	fstx.s	$f12,$r9,$r12
1c00714c:	0d312c33 	0x0d312c33
1c007150:	0000000a 	0x0000000a
1c007154:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007158:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7c5ac <_start-0x383a54>
1c00715c:	3d4e4e4f 	0x3d4e4e4f
1c007160:	69222c30 	bltu	$r1,$r16,74284(0x1222c) # 1c01938c <_sidata+0x120ac>
1c007164:	302d746f 	vldrepl.w	$vr15,$r3,-652(0xd74)
1c007168:	30307a36 	0x30307a36
1c00716c:	36397a62 	0x36397a62
1c007170:	62783437 	blt	$r1,$r23,-100300(0x27834) # 1bfee9a4 <_start-0x1165c>
1c007174:	6d2e7665 	bgeu	$r19,$r5,77428(0x12e74) # 1c019fe8 <_sidata+0x12d08>
1c007178:	2e747471 	0x2e747471
1c00717c:	68746f69 	bltu	$r27,$r9,29804(0x746c) # 1c00e5e8 <_sidata+0x7308>
1c007180:	612e6275 	blt	$r19,$r21,77408(0x12e60) # 1c019fe0 <_sidata+0x12d00>
1c007184:	7579696c 	0x7579696c
1c007188:	2e73636e 	0x2e73636e
1c00718c:	226d6f63 	ll.d	$r3,$r27,28012(0x6d6c)
1c007190:	3838312c 	fstx.s	$f12,$r9,$r12
1c007194:	00312c33 	0x00312c33
1c007198:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c00719c:	53545451 	b	21451860(0x1475454) # 1d47c5f0 <_sidata+0x1475310>
1c0071a0:	303d4255 	0x303d4255
1c0071a4:	0d312c2c 	0x0d312c2c
1c0071a8:	0000000a 	0x0000000a
1c0071ac:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c0071b0:	53545451 	b	21451860(0x1475454) # 1d47c604 <_sidata+0x1475324>
1c0071b4:	303d4255 	0x303d4255
1c0071b8:	6b2f222c 	bltu	$r17,$r12,-53472(0x32f20) # 1bffa0d8 <_start-0x5f28>
1c0071bc:	336c6431 	xvstelm.h	$xr17,$r1,50(0x32),0xb
1c0071c0:	52324a65 	b	-107597240(0x9963248) # 1596a408 <_start-0x6695bf8>
1c0071c4:	312f4242 	vstelm.w	$vr2,$r18,-192(0x340),0x3
1c0071c8:	32303163 	0x32303163
1c0071cc:	73752f74 	0x73752f74
1c0071d0:	672f7265 	bge	$r19,$r5,-53392(0x32f70) # 1bffa140 <_start-0x5ec0>
1c0071d4:	2c227465 	vld	$vr5,$r3,-1891(0x89d)
1c0071d8:	00000031 	0x00000031
1c0071dc:	00007325 	0x00007325
1c0071e0:	746c6946 	0x746c6946
1c0071e4:	4f5f7265 	jirl	$r5,$r19,-41104(0x35f70)
1c0071e8:	0000006e 	0x0000006e
1c0071ec:	746c6946 	0x746c6946
1c0071f0:	4f5f7265 	jirl	$r5,$r19,-41104(0x35f70)
1c0071f4:	00006666 	rdtimeh.w	$r6,$r19
1c0071f8:	6867694c 	bltu	$r10,$r12,26472(0x6768) # 1c00d960 <_sidata+0x6680>
1c0071fc:	6e4f5f74 	bgeu	$r27,$r20,-110756(0x24f5c) # 1bfec158 <_start-0x13ea8>
1c007200:	00000000 	0x00000000
1c007204:	6867694c 	bltu	$r10,$r12,26472(0x6768) # 1c00d96c <_sidata+0x668c>
1c007208:	664f5f74 	bge	$r27,$r20,-110756(0x24f5c) # 1bfec164 <_start-0x13e9c>
1c00720c:	00000066 	0x00000066
1c007210:	6779784f 	bge	$r2,$r15,-34440(0x37978) # 1bffeb88 <_start-0x1478>
1c007214:	4f5f6e65 	jirl	$r5,$r19,-41108(0x35f6c)
1c007218:	0000006e 	0x0000006e
1c00721c:	6779784f 	bge	$r2,$r15,-34440(0x37978) # 1bffeb94 <_start-0x146c>
1c007220:	4f5f6e65 	jirl	$r5,$r19,-41108(0x35f6c)
1c007224:	00006666 	rdtimeh.w	$r6,$r19
1c007228:	746e6556 	0x746e6556
1c00722c:	74616c69 	xvabsd.w	$xr9,$xr3,$xr27
1c007230:	6e4f5f65 	bgeu	$r27,$r5,-110756(0x24f5c) # 1bfec18c <_start-0x13e74>
1c007234:	00000000 	0x00000000
1c007238:	746e6556 	0x746e6556
1c00723c:	74616c69 	xvabsd.w	$xr9,$xr3,$xr27
1c007240:	664f5f65 	bge	$r27,$r5,-110756(0x24f5c) # 1bfec19c <_start-0x13e64>
1c007244:	00000066 	0x00000066
1c007248:	65746157 	bge	$r10,$r23,95328(0x17460) # 1c01e6a8 <_sidata+0x173c8>
1c00724c:	4f5f3072 	jirl	$r18,$r3,-41168(0x35f30)
1c007250:	0000006e 	0x0000006e
1c007254:	65746157 	bge	$r10,$r23,95328(0x17460) # 1c01e6b4 <_sidata+0x173d4>
1c007258:	4f5f3072 	jirl	$r18,$r3,-41168(0x35f30)
1c00725c:	00006666 	rdtimeh.w	$r6,$r19
1c007260:	65746157 	bge	$r10,$r23,95328(0x17460) # 1c01e6c0 <_sidata+0x173e0>
1c007264:	4f5f3172 	jirl	$r18,$r11,-41168(0x35f30)
1c007268:	0000006e 	0x0000006e
1c00726c:	65746157 	bge	$r10,$r23,95328(0x17460) # 1c01e6cc <_sidata+0x173ec>
1c007270:	4f5f3172 	jirl	$r18,$r11,-41168(0x35f30)
1c007274:	00006666 	rdtimeh.w	$r6,$r19
1c007278:	65746157 	bge	$r10,$r23,95328(0x17460) # 1c01e6d8 <_sidata+0x173f8>
1c00727c:	4f5f3272 	jirl	$r18,$r19,-41168(0x35f30)
1c007280:	0000006e 	0x0000006e
1c007284:	65746157 	bge	$r10,$r23,95328(0x17460) # 1c01e6e4 <_sidata+0x17404>
1c007288:	4f5f3272 	jirl	$r18,$r19,-41168(0x35f30)
1c00728c:	00006666 	rdtimeh.w	$r6,$r19
1c007290:	00006425 	rdtimeh.w	$r5,$r1
1c007294:	65746177 	bge	$r11,$r23,95328(0x17460) # 1c01e6f4 <_sidata+0x17414>
1c007298:	00315f72 	0x00315f72
1c00729c:	65746177 	bge	$r11,$r23,95328(0x17460) # 1c01e6fc <_sidata+0x1741c>
1c0072a0:	00325f72 	0x00325f72
1c0072a4:	65746177 	bge	$r11,$r23,95328(0x17460) # 1c01e704 <_sidata+0x17424>
1c0072a8:	69665f72 	bltu	$r27,$r18,91740(0x1665c) # 1c01d904 <_sidata+0x16624>
1c0072ac:	7265746c 	0x7265746c
1c0072b0:	00000000 	0x00000000
1c0072b4:	6579786f 	bge	$r3,$r15,96632(0x17978) # 1c01ec2c <_sidata+0x1794c>
1c0072b8:	6e6f5f6e 	bgeu	$r27,$r14,-102564(0x26f5c) # 1bfee214 <_start-0x11dec>
1c0072bc:	00000000 	0x00000000
1c0072c0:	65746177 	bge	$r11,$r23,95328(0x17460) # 1c01e720 <_sidata+0x17440>
1c0072c4:	6e6f5f72 	bgeu	$r27,$r18,-102564(0x26f5c) # 1bfee220 <_start-0x11de0>
1c0072c8:	00000000 	0x00000000
1c0072cc:	6867696c 	bltu	$r11,$r12,26472(0x6768) # 1c00da34 <_sidata+0x6754>
1c0072d0:	6e6f5f74 	bgeu	$r27,$r20,-102564(0x26f5c) # 1bfee22c <_start-0x11dd4>
1c0072d4:	00000000 	0x00000000
1c0072d8:	5f6e6166 	bne	$r11,$r6,-37280(0x36e60) # 1bffe138 <_start-0x1ec8>
1c0072dc:	00006e6f 	cpucfg	$r15,$r19

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c006309 	pcaddu12i	$r9,792(0x318)
80001008:	80000014 	0x80000014
8000100c:	800003c8 	0x800003c8
80001010:	80000038 	0x80000038
80001014:	800003f4 	0x800003f4
80001018:	80000024 	0x80000024
8000101c:	80000520 	0x80000520
80001020:	8000104c 	0x8000104c
80001024:	8000000c 	0x8000000c
80001028:	8000001c 	0x8000001c
8000102c:	80000034 	0x80000034
80001030:	80000168 	0x80000168
80001034:	1c006300 	pcaddu12i	$r0,792(0x318)
80001038:	80000004 	0x80000004
8000103c:	8000002c 	0x8000002c
80001040:	80000298 	0x80000298
80001044:	80000527 	0x80000527
80001048:	8000003c 	0x8000003c

8000104c <g_SystemFreq>:
8000104c:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

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

80000030 <receive_data_uart1.1853>:
	...

80000031 <receive_data_uart0.1854>:
	...

80000032 <temp>:
	...

80000034 <mqtt_data>:
80000034:	00000000 	0x00000000

80000038 <Read_length>:
80000038:	00000000 	0x00000000

8000003c <Read_Buffer>:
	...

80000168 <Circular_queue_asrpro>:
	...

80000298 <Circular_queue_send>:
	...

800003c8 <mqtt_esp_type>:
	...

800003f4 <send_package>:
	...

80000520 <send_contrl>:
80000520:	00000000 	0x00000000
80000524:	 	0x00000000

80000527 <send_len>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
