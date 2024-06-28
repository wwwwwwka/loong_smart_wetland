
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
1c00000c:	038121ef 	ori	$r15,$r15,0x48
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
1c000030:	038151ef 	ori	$r15,$r15,0x54
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	0391b1ad 	ori	$r13,$r13,0x46c
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
1c001090:	543a3000 	bl	14896(0x3a30) # 1c004ac0 <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	543a7800 	bl	14968(0x3a78) # 1c004b10 <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	543b0400 	bl	15108(0x3b04) # 1c004ba4 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	543b3800 	bl	15160(0x3b38) # 1c004be0 <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54395800 	bl	14680(0x3958) # 1c004a08 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	543ee800 	bl	16104(0x3ee8) # 1c004fa0 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543bf000 	bl	15344(0x3bf0) # 1c004cb8 <intc_handler>
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
1c0013e0:	54245c00 	bl	9308(0x245c) # 1c00383c <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	54239c00 	bl	9116(0x239c) # 1c003784 <WDG_SetWatchDog>
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
1c001438:	5423d800 	bl	9176(0x23d8) # 1c003810 <WDG_DogFeed>
1c00143c:	541e4400 	bl	7748(0x1e44) # 1c003280 <PMU_GetRstRrc>
1c001440:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001448:	44003180 	bnez	$r12,48(0x30) # 1c001478 <bsp_init+0xb4>
1c00144c:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001450:	02b54084 	addi.w	$r4,$r4,-688(0xd50)
1c001454:	54085800 	bl	2136(0x858) # 1c001cac <myprintf>
1c001458:	541e9400 	bl	7828(0x1e94) # 1c0032ec <PMU_GetBootSpiStatus>
1c00145c:	0015008c 	move	$r12,$r4
1c001460:	40001180 	beqz	$r12,16(0x10) # 1c001470 <bsp_init+0xac>
1c001464:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001468:	02b52084 	addi.w	$r4,$r4,-696(0xd48)
1c00146c:	54084000 	bl	2112(0x840) # 1c001cac <myprintf>
1c001470:	543d7000 	bl	15728(0x3d70) # 1c0051e0 <main>
1c001474:	50004000 	b	64(0x40) # 1c0014b4 <bsp_init+0xf0>
1c001478:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00147c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001480:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c001498 <bsp_init+0xd4>
1c001484:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c001488:	02b4d084 	addi.w	$r4,$r4,-716(0xd34)
1c00148c:	54082000 	bl	2080(0x820) # 1c001cac <myprintf>
1c001490:	543d5000 	bl	15696(0x3d50) # 1c0051e0 <main>
1c001494:	50002000 	b	32(0x20) # 1c0014b4 <bsp_init+0xf0>
1c001498:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00149c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0014a0:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014b4 <bsp_init+0xf0>
1c0014a4:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0014a8:	02b49084 	addi.w	$r4,$r4,-732(0xd24)
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
1c001d44:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c001d48:	0292418c 	addi.w	$r12,$r12,1168(0x490)
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
1c0020ec:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c0020f0:	0288e18c 	addi.w	$r12,$r12,568(0x238)
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
1c002938:	289ba18c 	ld.w	$r12,$r12,1768(0x6e8)
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
1c0029fc:	2898918c 	ld.w	$r12,$r12,1572(0x624)
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
1c002fcc:	0282018c 	addi.w	$r12,$r12,128(0x80)
1c002fd0:	2980018d 	st.w	$r13,$r12,0
1c002fd4:	50008000 	b	128(0x80) # 1c003054 <CLOCK_Init+0x21c>
1c002fd8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002fdc:	0281c18c 	addi.w	$r12,$r12,112(0x70)
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
1c00301c:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c003020:	2980018d 	st.w	$r13,$r12,0
1c003024:	50003000 	b	48(0x30) # 1c003054 <CLOCK_Init+0x21c>
1c003028:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00302c:	0280818c 	addi.w	$r12,$r12,32(0x20)
1c003030:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003034:	038801ad 	ori	$r13,$r13,0x200
1c003038:	2980018d 	st.w	$r13,$r12,0
1c00303c:	50001800 	b	24(0x18) # 1c003054 <CLOCK_Init+0x21c>
1c003040:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c003044:	0280218c 	addi.w	$r12,$r12,8(0x8)
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
1c00334c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003350:	0284a084 	addi.w	$r4,$r4,296(0x128)
1c003354:	57e95bff 	bl	-5800(0xfffe958) # 1c001cac <myprintf>
1c003358:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00335c:	02848084 	addi.w	$r4,$r4,288(0x120)
1c003360:	57e94fff 	bl	-5812(0xfffe94c) # 1c001cac <myprintf>
1c003364:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003368:	0285e084 	addi.w	$r4,$r4,376(0x178)
1c00336c:	57e943ff 	bl	-5824(0xfffe940) # 1c001cac <myprintf>
1c003370:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003374:	02874084 	addi.w	$r4,$r4,464(0x1d0)
1c003378:	57e937ff 	bl	-5836(0xfffe934) # 1c001cac <myprintf>
1c00337c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003380:	0288a084 	addi.w	$r4,$r4,552(0x228)
1c003384:	57e92bff 	bl	-5848(0xfffe928) # 1c001cac <myprintf>
1c003388:	1c000064 	pcaddu12i	$r4,3(0x3)
1c00338c:	028a0084 	addi.w	$r4,$r4,640(0x280)
1c003390:	57e91fff 	bl	-5860(0xfffe91c) # 1c001cac <myprintf>
1c003394:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003398:	028b6084 	addi.w	$r4,$r4,728(0x2d8)
1c00339c:	57e913ff 	bl	-5872(0xfffe910) # 1c001cac <myprintf>
1c0033a0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033a4:	028cc084 	addi.w	$r4,$r4,816(0x330)
1c0033a8:	57e907ff 	bl	-5884(0xfffe904) # 1c001cac <myprintf>
1c0033ac:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033b0:	028e2084 	addi.w	$r4,$r4,904(0x388)
1c0033b4:	57e8fbff 	bl	-5896(0xfffe8f8) # 1c001cac <myprintf>
1c0033b8:	1c000064 	pcaddu12i	$r4,3(0x3)
1c0033bc:	028f8084 	addi.w	$r4,$r4,992(0x3e0)
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

1c0036c0 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c0036c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0036c4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0036c8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0036cc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0036d0:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0036d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036d8:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c0036dc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036e0:	001531ad 	or	$r13,$r13,$r12
1c0036e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036e8:	2980318d 	st.w	$r13,$r12,12(0xc)
1c0036ec:	03400000 	andi	$r0,$r0,0x0
1c0036f0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0036f4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0036f8:	4c000020 	jirl	$r0,$r1,0

1c0036fc <WDG_getOddValue>:
WDG_getOddValue():
1c0036fc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003700:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003704:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003708:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00370c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003710:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003714:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003718:	50003800 	b	56(0x38) # 1c003750 <WDG_getOddValue+0x54>
1c00371c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003720:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003724:	001731ac 	sll.w	$r12,$r13,$r12
1c003728:	0015018d 	move	$r13,$r12
1c00372c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003730:	0014b1ac 	and	$r12,$r13,$r12
1c003734:	40001180 	beqz	$r12,16(0x10) # 1c003744 <WDG_getOddValue+0x48>
1c003738:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00373c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003740:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003744:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003748:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00374c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003750:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003754:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003758:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c00371c <WDG_getOddValue+0x20>
1c00375c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003760:	0340058c 	andi	$r12,$r12,0x1
1c003764:	44000d80 	bnez	$r12,12(0xc) # 1c003770 <WDG_getOddValue+0x74>
1c003768:	1400010c 	lu12i.w	$r12,8(0x8)
1c00376c:	50000800 	b	8(0x8) # 1c003774 <WDG_getOddValue+0x78>
1c003770:	0015000c 	move	$r12,$r0
1c003774:	00150184 	move	$r4,$r12
1c003778:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00377c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003780:	4c000020 	jirl	$r0,$r1,0

1c003784 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c003784:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003788:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00378c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003790:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003794:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003798:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00379c:	140000ec 	lu12i.w	$r12,7(0x7)
1c0037a0:	03bffd8c 	ori	$r12,$r12,0xfff
1c0037a4:	0014b1ac 	and	$r12,$r13,$r12
1c0037a8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037ac:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c0037b0:	57ff4fff 	bl	-180(0xfffff4c) # 1c0036fc <WDG_getOddValue>
1c0037b4:	0015008c 	move	$r12,$r4
1c0037b8:	0015018d 	move	$r13,$r12
1c0037bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037c0:	0015358c 	or	$r12,$r12,$r13
1c0037c4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0037cc:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0037d0:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0037d4:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0037d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037dc:	0014300c 	nor	$r12,$r0,$r12
1c0037e0:	0040c18c 	slli.w	$r12,$r12,0x10
1c0037e4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0037e8:	001531ac 	or	$r12,$r13,$r12
1c0037ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0037f4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0037f8:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c0037fc:	03400000 	andi	$r0,$r0,0x0
1c003800:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003804:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003808:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00380c:	4c000020 	jirl	$r0,$r1,0

1c003810 <WDG_DogFeed>:
WDG_DogFeed():
1c003810:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003814:	29803076 	st.w	$r22,$r3,12(0xc)
1c003818:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00381c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003820:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003824:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003828:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c00382c:	03400000 	andi	$r0,$r0,0x0
1c003830:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003834:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003838:	4c000020 	jirl	$r0,$r1,0

1c00383c <WdgInit>:
WdgInit():
1c00383c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003840:	29803061 	st.w	$r1,$r3,12(0xc)
1c003844:	29802076 	st.w	$r22,$r3,8(0x8)
1c003848:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00384c:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c003850:	03bffd84 	ori	$r4,$r12,0xfff
1c003854:	57ff33ff 	bl	-208(0xfffff30) # 1c003784 <WDG_SetWatchDog>
1c003858:	03400000 	andi	$r0,$r0,0x0
1c00385c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003860:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003864:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003868:	4c000020 	jirl	$r0,$r1,0

1c00386c <Adc_powerOn>:
Adc_powerOn():
1c00386c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003870:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003874:	29806076 	st.w	$r22,$r3,24(0x18)
1c003878:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00387c:	57f897ff 	bl	-1900(0xffff894) # 1c003110 <IsGlobalIntOpen>
1c003880:	0015008c 	move	$r12,$r4
1c003884:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003888:	57f8c3ff 	bl	-1856(0xffff8c0) # 1c003148 <DisableInt>
1c00388c:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003890:	288001ac 	ld.w	$r12,$r13,0
1c003894:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c003898:	007041cc 	bstrins.w	$r12,$r14,0x10,0x10
1c00389c:	298001ac 	st.w	$r12,$r13,0
1c0038a0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0038a4:	40000980 	beqz	$r12,8(0x8) # 1c0038ac <Adc_powerOn+0x40>
1c0038a8:	57f8c7ff 	bl	-1852(0xffff8c4) # 1c00316c <EnableInt>
1c0038ac:	03400000 	andi	$r0,$r0,0x0
1c0038b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0038b4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0038b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0038bc:	4c000020 	jirl	$r0,$r1,0

1c0038c0 <Adc_open>:
Adc_open():
1c0038c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0038c4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0038c8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0038cc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0038d0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0038d4:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0038d8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0038dc:	001731ac 	sll.w	$r12,$r13,$r12
1c0038e0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0038e8:	0340058c 	andi	$r12,$r12,0x1
1c0038ec:	40003580 	beqz	$r12,52(0x34) # 1c003920 <Adc_open+0x60>
1c0038f0:	57f823ff 	bl	-2016(0xffff820) # 1c003110 <IsGlobalIntOpen>
1c0038f4:	0015008c 	move	$r12,$r4
1c0038f8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0038fc:	57f84fff 	bl	-1972(0xffff84c) # 1c003148 <DisableInt>
1c003900:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c003904:	288001ac 	ld.w	$r12,$r13,0
1c003908:	0071440c 	bstrins.w	$r12,$r0,0x11,0x11
1c00390c:	298001ac 	st.w	$r12,$r13,0
1c003910:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c003914:	40004980 	beqz	$r12,72(0x48) # 1c00395c <Adc_open+0x9c>
1c003918:	57f857ff 	bl	-1964(0xffff854) # 1c00316c <EnableInt>
1c00391c:	50004000 	b	64(0x40) # 1c00395c <Adc_open+0x9c>
1c003920:	57f7f3ff 	bl	-2064(0xffff7f0) # 1c003110 <IsGlobalIntOpen>
1c003924:	0015008c 	move	$r12,$r4
1c003928:	293faacc 	st.b	$r12,$r22,-22(0xfea)
1c00392c:	57f81fff 	bl	-2020(0xffff81c) # 1c003148 <DisableInt>
1c003930:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003934:	0044918c 	srli.w	$r12,$r12,0x4
1c003938:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c00393c:	03403d8c 	andi	$r12,$r12,0xf
1c003940:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c003944:	288001ac 	ld.w	$r12,$r13,0
1c003948:	007751cc 	bstrins.w	$r12,$r14,0x17,0x14
1c00394c:	298001ac 	st.w	$r12,$r13,0
1c003950:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c003954:	40000980 	beqz	$r12,8(0x8) # 1c00395c <Adc_open+0x9c>
1c003958:	57f817ff 	bl	-2028(0xffff814) # 1c00316c <EnableInt>
1c00395c:	03400000 	andi	$r0,$r0,0x0
1c003960:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003964:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003968:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00396c:	4c000020 	jirl	$r0,$r1,0

1c003970 <Adc_Measure>:
Adc_Measure():
1c003970:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003974:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003978:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00397c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003980:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c003984:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c003988:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c00398c:	50008400 	b	132(0x84) # 1c003a10 <Adc_Measure+0xa0>
1c003990:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003994:	0381b18c 	ori	$r12,$r12,0x6c
1c003998:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00399c:	038401ad 	ori	$r13,$r13,0x100
1c0039a0:	2980018d 	st.w	$r13,$r12,0
1c0039a4:	03400000 	andi	$r0,$r0,0x0
1c0039a8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0039ac:	0381b18c 	ori	$r12,$r12,0x6c
1c0039b0:	2880018c 	ld.w	$r12,$r12,0
1c0039b4:	0344018c 	andi	$r12,$r12,0x100
1c0039b8:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c0039a8 <Adc_Measure+0x38>
1c0039bc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0039c0:	0381c18c 	ori	$r12,$r12,0x70
1c0039c4:	2880018c 	ld.w	$r12,$r12,0
1c0039c8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0039cc:	037ffd8c 	andi	$r12,$r12,0xfff
1c0039d0:	297fa2cc 	st.h	$r12,$r22,-24(0xfe8)
1c0039d4:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c0039d8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0039dc:	6c00298d 	bgeu	$r12,$r13,40(0x28) # 1c003a04 <Adc_Measure+0x94>
1c0039e0:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c0039e4:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c0039e8:	001031ac 	add.w	$r12,$r13,$r12
1c0039ec:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c0039f0:	2a7fa2cd 	ld.hu	$r13,$r22,-24(0xfe8)
1c0039f4:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0039f8:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c003a04 <Adc_Measure+0x94>
1c0039fc:	2a7fa2cc 	ld.hu	$r12,$r22,-24(0xfe8)
1c003a00:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c003a04:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003a08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003a0c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003a10:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c003a14:	0280180c 	addi.w	$r12,$r0,6(0x6)
1c003a18:	6fff798d 	bgeu	$r12,$r13,-136(0x3ff78) # 1c003990 <Adc_Measure+0x20>
1c003a1c:	2a7faacd 	ld.hu	$r13,$r22,-22(0xfea)
1c003a20:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c003a24:	001131ad 	sub.w	$r13,$r13,$r12
1c003a28:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003a2c:	002031ae 	div.w	$r14,$r13,$r12
1c003a30:	5c000980 	bne	$r12,$r0,8(0x8) # 1c003a38 <Adc_Measure+0xc8>
1c003a34:	002a0007 	break	0x7
1c003a38:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c003a3c:	00150184 	move	$r4,$r12
1c003a40:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003a44:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003a48:	4c000020 	jirl	$r0,$r1,0

1c003a4c <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003a4c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a50:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003a54:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a58:	0015008c 	move	$r12,$r4
1c003a5c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003a60:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003a64:	0040898c 	slli.w	$r12,$r12,0x2
1c003a68:	0015018d 	move	$r13,$r12
1c003a6c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003a70:	0381018c 	ori	$r12,$r12,0x40
1c003a74:	001031ac 	add.w	$r12,$r13,$r12
1c003a78:	2880018c 	ld.w	$r12,$r12,0
1c003a7c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003a80:	037ffd8c 	andi	$r12,$r12,0xfff
1c003a84:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003a88:	00150184 	move	$r4,$r12
1c003a8c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003a90:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a94:	4c000020 	jirl	$r0,$r1,0

1c003a98 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003a98:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a9c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003aa0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003aa4:	0015008c 	move	$r12,$r4
1c003aa8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003aac:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003ab0:	0040898c 	slli.w	$r12,$r12,0x2
1c003ab4:	0015018d 	move	$r13,$r12
1c003ab8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003abc:	0382018c 	ori	$r12,$r12,0x80
1c003ac0:	001031ac 	add.w	$r12,$r13,$r12
1c003ac4:	2880018c 	ld.w	$r12,$r12,0
1c003ac8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003acc:	037ffd8c 	andi	$r12,$r12,0xfff
1c003ad0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003ad4:	00150184 	move	$r4,$r12
1c003ad8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003adc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003ae0:	4c000020 	jirl	$r0,$r1,0

1c003ae4 <Printf_KeyChannel>:
Printf_KeyChannel():
1c003ae4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003ae8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003aec:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003af0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003af4:	0015008c 	move	$r12,$r4
1c003af8:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003afc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b00:	50003400 	b	52(0x34) # 1c003b34 <Printf_KeyChannel+0x50>
1c003b04:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003b08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b0c:	001831ac 	sra.w	$r12,$r13,$r12
1c003b10:	0340058c 	andi	$r12,$r12,0x1
1c003b14:	40001580 	beqz	$r12,20(0x14) # 1c003b28 <Printf_KeyChannel+0x44>
1c003b18:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003b1c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b20:	02b38084 	addi.w	$r4,$r4,-800(0xce0)
1c003b24:	57e18bff 	bl	-7800(0xfffe188) # 1c001cac <myprintf>
1c003b28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b2c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003b30:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003b34:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003b38:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003b3c:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003b04 <Printf_KeyChannel+0x20>
1c003b40:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b44:	02b30084 	addi.w	$r4,$r4,-832(0xcc0)
1c003b48:	57e167ff 	bl	-7836(0xfffe164) # 1c001cac <myprintf>
1c003b4c:	03400000 	andi	$r0,$r0,0x0
1c003b50:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003b54:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003b58:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003b5c:	4c000020 	jirl	$r0,$r1,0

1c003b60 <Printf_KeyType>:
Printf_KeyType():
1c003b60:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003b64:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003b68:	29806076 	st.w	$r22,$r3,24(0x18)
1c003b6c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003b70:	0015008c 	move	$r12,$r4
1c003b74:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003b78:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003b7c:	0340058c 	andi	$r12,$r12,0x1
1c003b80:	40001180 	beqz	$r12,16(0x10) # 1c003b90 <Printf_KeyType+0x30>
1c003b84:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003b88:	02b20084 	addi.w	$r4,$r4,-896(0xc80)
1c003b8c:	57e123ff 	bl	-7904(0xfffe120) # 1c001cac <myprintf>
1c003b90:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003b94:	0340098c 	andi	$r12,$r12,0x2
1c003b98:	40001180 	beqz	$r12,16(0x10) # 1c003ba8 <Printf_KeyType+0x48>
1c003b9c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ba0:	02b1c084 	addi.w	$r4,$r4,-912(0xc70)
1c003ba4:	57e10bff 	bl	-7928(0xfffe108) # 1c001cac <myprintf>
1c003ba8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003bac:	0340118c 	andi	$r12,$r12,0x4
1c003bb0:	40001180 	beqz	$r12,16(0x10) # 1c003bc0 <Printf_KeyType+0x60>
1c003bb4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003bb8:	02b18084 	addi.w	$r4,$r4,-928(0xc60)
1c003bbc:	57e0f3ff 	bl	-7952(0xfffe0f0) # 1c001cac <myprintf>
1c003bc0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003bc4:	0340218c 	andi	$r12,$r12,0x8
1c003bc8:	40001180 	beqz	$r12,16(0x10) # 1c003bd8 <Printf_KeyType+0x78>
1c003bcc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003bd0:	02b15084 	addi.w	$r4,$r4,-940(0xc54)
1c003bd4:	57e0dbff 	bl	-7976(0xfffe0d8) # 1c001cac <myprintf>
1c003bd8:	03400000 	andi	$r0,$r0,0x0
1c003bdc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003be0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003be4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003be8:	4c000020 	jirl	$r0,$r1,0

1c003bec <Printf_KeyVal>:
Printf_KeyVal():
1c003bec:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003bf0:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003bf4:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003bf8:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003bfc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003c00:	5000d800 	b	216(0xd8) # 1c003cd8 <Printf_KeyVal+0xec>
1c003c04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c08:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c0c:	00150184 	move	$r4,$r12
1c003c10:	57fe8bff 	bl	-376(0xffffe88) # 1c003a98 <TOUCH_GetCountValue>
1c003c14:	0015008c 	move	$r12,$r4
1c003c18:	0015018d 	move	$r13,$r12
1c003c1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c20:	0040898c 	slli.w	$r12,$r12,0x2
1c003c24:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003c28:	001031cc 	add.w	$r12,$r14,$r12
1c003c2c:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003c30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c34:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003c38:	00150184 	move	$r4,$r12
1c003c3c:	57fe13ff 	bl	-496(0xffffe10) # 1c003a4c <TOUCH_GetBaseVal>
1c003c40:	0015008c 	move	$r12,$r4
1c003c44:	0015018d 	move	$r13,$r12
1c003c48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c4c:	0040898c 	slli.w	$r12,$r12,0x2
1c003c50:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003c54:	001031cc 	add.w	$r12,$r14,$r12
1c003c58:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003c5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c60:	0040898c 	slli.w	$r12,$r12,0x2
1c003c64:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003c68:	001031ac 	add.w	$r12,$r13,$r12
1c003c6c:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003c70:	40004980 	beqz	$r12,72(0x48) # 1c003cb8 <Printf_KeyVal+0xcc>
1c003c74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c78:	0040898c 	slli.w	$r12,$r12,0x2
1c003c7c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003c80:	001031ac 	add.w	$r12,$r13,$r12
1c003c84:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003c88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c8c:	0040898c 	slli.w	$r12,$r12,0x2
1c003c90:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003c94:	001031cc 	add.w	$r12,$r14,$r12
1c003c98:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003c9c:	001131ad 	sub.w	$r13,$r13,$r12
1c003ca0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ca4:	0040898c 	slli.w	$r12,$r12,0x2
1c003ca8:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003cac:	001031cc 	add.w	$r12,$r14,$r12
1c003cb0:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003cb4:	50001800 	b	24(0x18) # 1c003ccc <Printf_KeyVal+0xe0>
1c003cb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cbc:	0040898c 	slli.w	$r12,$r12,0x2
1c003cc0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003cc4:	001031ac 	add.w	$r12,$r13,$r12
1c003cc8:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003ccc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cd0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003cd4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003cd8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003cdc:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003ce0:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003c04 <Printf_KeyVal+0x18>
1c003ce4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003ce8:	02ad2084 	addi.w	$r4,$r4,-1208(0xb48)
1c003cec:	57dfc3ff 	bl	-8256(0xfffdfc0) # 1c001cac <myprintf>
1c003cf0:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003cf4:	02ad9084 	addi.w	$r4,$r4,-1180(0xb64)
1c003cf8:	57dfb7ff 	bl	-8268(0xfffdfb4) # 1c001cac <myprintf>
1c003cfc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003d00:	50003400 	b	52(0x34) # 1c003d34 <Printf_KeyVal+0x148>
1c003d04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d08:	0040898c 	slli.w	$r12,$r12,0x2
1c003d0c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d10:	001031ac 	add.w	$r12,$r13,$r12
1c003d14:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003d18:	00150185 	move	$r5,$r12
1c003d1c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d20:	02ad0084 	addi.w	$r4,$r4,-1216(0xb40)
1c003d24:	57df8bff 	bl	-8312(0xfffdf88) # 1c001cac <myprintf>
1c003d28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d2c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003d30:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d34:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d38:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003d3c:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003d04 <Printf_KeyVal+0x118>
1c003d40:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d44:	02ac9084 	addi.w	$r4,$r4,-1244(0xb24)
1c003d48:	57df67ff 	bl	-8348(0xfffdf64) # 1c001cac <myprintf>
1c003d4c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003d50:	50003400 	b	52(0x34) # 1c003d84 <Printf_KeyVal+0x198>
1c003d54:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d58:	0040898c 	slli.w	$r12,$r12,0x2
1c003d5c:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d60:	001031ac 	add.w	$r12,$r13,$r12
1c003d64:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003d68:	00150185 	move	$r5,$r12
1c003d6c:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d70:	02abc084 	addi.w	$r4,$r4,-1296(0xaf0)
1c003d74:	57df3bff 	bl	-8392(0xfffdf38) # 1c001cac <myprintf>
1c003d78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003d80:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d84:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d88:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003d8c:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003d54 <Printf_KeyVal+0x168>
1c003d90:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003d94:	02ab8084 	addi.w	$r4,$r4,-1312(0xae0)
1c003d98:	57df17ff 	bl	-8428(0xfffdf14) # 1c001cac <myprintf>
1c003d9c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003da0:	50007400 	b	116(0x74) # 1c003e14 <Printf_KeyVal+0x228>
1c003da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003da8:	0040898c 	slli.w	$r12,$r12,0x2
1c003dac:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003db0:	001031ac 	add.w	$r12,$r13,$r12
1c003db4:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003db8:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003de4 <Printf_KeyVal+0x1f8>
1c003dbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003dc0:	0040898c 	slli.w	$r12,$r12,0x2
1c003dc4:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003dc8:	001031ac 	add.w	$r12,$r13,$r12
1c003dcc:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003dd0:	00150185 	move	$r5,$r12
1c003dd4:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003dd8:	02aaa084 	addi.w	$r4,$r4,-1368(0xaa8)
1c003ddc:	57ded3ff 	bl	-8496(0xfffded0) # 1c001cac <myprintf>
1c003de0:	50002800 	b	40(0x28) # 1c003e08 <Printf_KeyVal+0x21c>
1c003de4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003de8:	0040898c 	slli.w	$r12,$r12,0x2
1c003dec:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003df0:	001031ac 	add.w	$r12,$r13,$r12
1c003df4:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003df8:	00150185 	move	$r5,$r12
1c003dfc:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e00:	02aa2084 	addi.w	$r4,$r4,-1400(0xa88)
1c003e04:	57deabff 	bl	-8536(0xfffdea8) # 1c001cac <myprintf>
1c003e08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003e10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003e14:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003e18:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003e1c:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003da4 <Printf_KeyVal+0x1b8>
1c003e20:	1c000064 	pcaddu12i	$r4,3(0x3)
1c003e24:	02a78084 	addi.w	$r4,$r4,-1568(0x9e0)
1c003e28:	57de87ff 	bl	-8572(0xfffde84) # 1c001cac <myprintf>
1c003e2c:	03400000 	andi	$r0,$r0,0x0
1c003e30:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003e34:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003e38:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003e3c:	4c000020 	jirl	$r0,$r1,0

1c003e40 <TIM_Init>:
TIM_Init():
1c003e40:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003e44:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003e48:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003e4c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003e50:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e54:	29800180 	st.w	$r0,$r12,0
1c003e58:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e5c:	0380118c 	ori	$r12,$r12,0x4
1c003e60:	29800180 	st.w	$r0,$r12,0
1c003e64:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e68:	0380218c 	ori	$r12,$r12,0x8
1c003e6c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003e70:	288011ad 	ld.w	$r13,$r13,4(0x4)
1c003e74:	2980018d 	st.w	$r13,$r12,0
1c003e78:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e7c:	0380318c 	ori	$r12,$r12,0xc
1c003e80:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003e84:	288021ad 	ld.w	$r13,$r13,8(0x8)
1c003e88:	2980018d 	st.w	$r13,$r12,0
1c003e8c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e90:	2880018e 	ld.w	$r14,$r12,0
1c003e94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e98:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c003e9c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003ea0:	001535cd 	or	$r13,$r14,$r13
1c003ea4:	2980018d 	st.w	$r13,$r12,0
1c003ea8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003eac:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c003eb0:	40002180 	beqz	$r12,32(0x20) # 1c003ed0 <TIM_Init+0x90>
1c003eb4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003eb8:	2a00018c 	ld.bu	$r12,$r12,0
1c003ebc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003ec0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003ec4:	038005ad 	ori	$r13,$r13,0x1
1c003ec8:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003ecc:	2900018d 	st.b	$r13,$r12,0
1c003ed0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003ed4:	2880018e 	ld.w	$r14,$r12,0
1c003ed8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003edc:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c003ee0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003ee4:	001535cd 	or	$r13,$r14,$r13
1c003ee8:	2980018d 	st.w	$r13,$r12,0
1c003eec:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003ef0:	2880018e 	ld.w	$r14,$r12,0
1c003ef4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ef8:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c003efc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f00:	001535cd 	or	$r13,$r14,$r13
1c003f04:	2980018d 	st.w	$r13,$r12,0
1c003f08:	03400000 	andi	$r0,$r0,0x0
1c003f0c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003f10:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003f14:	4c000020 	jirl	$r0,$r1,0

1c003f18 <TIM_StructInit>:
TIM_StructInit():
1c003f18:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003f1c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003f20:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003f24:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003f28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f2c:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003f30:	038801ad 	ori	$r13,$r13,0x200
1c003f34:	2980018d 	st.w	$r13,$r12,0
1c003f38:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f3c:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003f40:	2980618d 	st.w	$r13,$r12,24(0x18)
1c003f44:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f48:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c003f4c:	2980518d 	st.w	$r13,$r12,20(0x14)
1c003f50:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f54:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003f58:	2980418d 	st.w	$r13,$r12,16(0x10)
1c003f5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f60:	1400002d 	lu12i.w	$r13,1(0x1)
1c003f64:	03bcfdad 	ori	$r13,$r13,0xf3f
1c003f68:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003f6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f70:	29802180 	st.w	$r0,$r12,8(0x8)
1c003f74:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f78:	29803180 	st.w	$r0,$r12,12(0xc)
1c003f7c:	03400000 	andi	$r0,$r0,0x0
1c003f80:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003f84:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003f88:	4c000020 	jirl	$r0,$r1,0

1c003f8c <timer_init>:
timer_init():
1c003f8c:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c003f90:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c003f94:	2980e076 	st.w	$r22,$r3,56(0x38)
1c003f98:	02810076 	addi.w	$r22,$r3,64(0x40)
1c003f9c:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c003fa0:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003fa4:	00150184 	move	$r4,$r12
1c003fa8:	57ff73ff 	bl	-144(0xfffff70) # 1c003f18 <TIM_StructInit>
1c003fac:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c003fb0:	1400002c 	lu12i.w	$r12,1(0x1)
1c003fb4:	03bd018c 	ori	$r12,$r12,0xf40
1c003fb8:	001c31ac 	mul.w	$r12,$r13,$r12
1c003fbc:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003fc0:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003fc4:	00150184 	move	$r4,$r12
1c003fc8:	57fe7bff 	bl	-392(0xffffe78) # 1c003e40 <TIM_Init>
1c003fcc:	03400000 	andi	$r0,$r0,0x0
1c003fd0:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c003fd4:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c003fd8:	02810063 	addi.w	$r3,$r3,64(0x40)
1c003fdc:	4c000020 	jirl	$r0,$r1,0

1c003fe0 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003fe0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003fe4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003fe8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003fec:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003ff0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003ff4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003ff8:	2880018d 	ld.w	$r13,$r12,0
1c003ffc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004000:	0014b1ac 	and	$r12,$r13,$r12
1c004004:	40001180 	beqz	$r12,16(0x10) # 1c004014 <TIM_GetITStatus+0x34>
1c004008:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00400c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004010:	50000800 	b	8(0x8) # 1c004018 <TIM_GetITStatus+0x38>
1c004014:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004018:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00401c:	00150184 	move	$r4,$r12
1c004020:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c004024:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004028:	4c000020 	jirl	$r0,$r1,0

1c00402c <TIM_ClearIT>:
TIM_ClearIT():
1c00402c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004030:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004034:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004038:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00403c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004040:	2880018e 	ld.w	$r14,$r12,0
1c004044:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c004048:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00404c:	001535cd 	or	$r13,$r14,$r13
1c004050:	2980018d 	st.w	$r13,$r12,0
1c004054:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004058:	03800d8c 	ori	$r12,$r12,0x3
1c00405c:	2a00018c 	ld.bu	$r12,$r12,0
1c004060:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004064:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004068:	03800d8c 	ori	$r12,$r12,0x3
1c00406c:	038005ad 	ori	$r13,$r13,0x1
1c004070:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c004074:	2900018d 	st.b	$r13,$r12,0
1c004078:	03400000 	andi	$r0,$r0,0x0
1c00407c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004080:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004084:	4c000020 	jirl	$r0,$r1,0

1c004088 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c004088:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00408c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004090:	29802076 	st.w	$r22,$r3,8(0x8)
1c004094:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004098:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00409c:	02a5a0c6 	addi.w	$r6,$r6,-1688(0x968)
1c0040a0:	02805405 	addi.w	$r5,$r0,21(0x15)
1c0040a4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0040a8:	029fa084 	addi.w	$r4,$r4,2024(0x7e8)
1c0040ac:	57dc03ff 	bl	-9216(0xfffdc00) # 1c001cac <myprintf>
1c0040b0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0040b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040b8:	03808184 	ori	$r4,$r12,0x20
1c0040bc:	57f607ff 	bl	-2556(0xffff604) # 1c0036c0 <EXTI_ClearITPendingBit>
1c0040c0:	03400000 	andi	$r0,$r0,0x0
1c0040c4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040c8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040d0:	4c000020 	jirl	$r0,$r1,0

1c0040d4 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c0040d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040e4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0040e8:	02a4d0c6 	addi.w	$r6,$r6,-1740(0x934)
1c0040ec:	02806805 	addi.w	$r5,$r0,26(0x1a)
1c0040f0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0040f4:	029e7084 	addi.w	$r4,$r4,1948(0x79c)
1c0040f8:	57dbb7ff 	bl	-9292(0xfffdbb4) # 1c001cac <myprintf>
1c0040fc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c004100:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004104:	03808184 	ori	$r4,$r12,0x20
1c004108:	57f5bbff 	bl	-2632(0xffff5b8) # 1c0036c0 <EXTI_ClearITPendingBit>
1c00410c:	03400000 	andi	$r0,$r0,0x0
1c004110:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004114:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004118:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00411c:	4c000020 	jirl	$r0,$r1,0

1c004120 <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c004120:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004124:	29803061 	st.w	$r1,$r3,12(0xc)
1c004128:	29802076 	st.w	$r22,$r3,8(0x8)
1c00412c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004130:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004134:	02a400c6 	addi.w	$r6,$r6,-1792(0x900)
1c004138:	02807c05 	addi.w	$r5,$r0,31(0x1f)
1c00413c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004140:	029d4084 	addi.w	$r4,$r4,1872(0x750)
1c004144:	57db6bff 	bl	-9368(0xfffdb68) # 1c001cac <myprintf>
1c004148:	02801005 	addi.w	$r5,$r0,4(0x4)
1c00414c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004150:	03808184 	ori	$r4,$r12,0x20
1c004154:	57f56fff 	bl	-2708(0xffff56c) # 1c0036c0 <EXTI_ClearITPendingBit>
1c004158:	03400000 	andi	$r0,$r0,0x0
1c00415c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004160:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004164:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004168:	4c000020 	jirl	$r0,$r1,0

1c00416c <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c00416c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004170:	29803061 	st.w	$r1,$r3,12(0xc)
1c004174:	29802076 	st.w	$r22,$r3,8(0x8)
1c004178:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00417c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004180:	02a330c6 	addi.w	$r6,$r6,-1844(0x8cc)
1c004184:	02809005 	addi.w	$r5,$r0,36(0x24)
1c004188:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00418c:	029c1084 	addi.w	$r4,$r4,1796(0x704)
1c004190:	57db1fff 	bl	-9444(0xfffdb1c) # 1c001cac <myprintf>
1c004194:	02802005 	addi.w	$r5,$r0,8(0x8)
1c004198:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00419c:	03808184 	ori	$r4,$r12,0x20
1c0041a0:	57f523ff 	bl	-2784(0xffff520) # 1c0036c0 <EXTI_ClearITPendingBit>
1c0041a4:	03400000 	andi	$r0,$r0,0x0
1c0041a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041b4:	4c000020 	jirl	$r0,$r1,0

1c0041b8 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c0041b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041c8:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0041cc:	02a260c6 	addi.w	$r6,$r6,-1896(0x898)
1c0041d0:	0280a405 	addi.w	$r5,$r0,41(0x29)
1c0041d4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0041d8:	029ae084 	addi.w	$r4,$r4,1720(0x6b8)
1c0041dc:	57dad3ff 	bl	-9520(0xfffdad0) # 1c001cac <myprintf>
1c0041e0:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0041e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041e8:	03808184 	ori	$r4,$r12,0x20
1c0041ec:	57f4d7ff 	bl	-2860(0xffff4d4) # 1c0036c0 <EXTI_ClearITPendingBit>
1c0041f0:	03400000 	andi	$r0,$r0,0x0
1c0041f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004200:	4c000020 	jirl	$r0,$r1,0

1c004204 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c004204:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004208:	29803061 	st.w	$r1,$r3,12(0xc)
1c00420c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004210:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004214:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004218:	02a190c6 	addi.w	$r6,$r6,-1948(0x864)
1c00421c:	0280b805 	addi.w	$r5,$r0,46(0x2e)
1c004220:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004224:	0299b084 	addi.w	$r4,$r4,1644(0x66c)
1c004228:	57da87ff 	bl	-9596(0xfffda84) # 1c001cac <myprintf>
1c00422c:	02808005 	addi.w	$r5,$r0,32(0x20)
1c004230:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004234:	03808184 	ori	$r4,$r12,0x20
1c004238:	57f48bff 	bl	-2936(0xffff488) # 1c0036c0 <EXTI_ClearITPendingBit>
1c00423c:	03400000 	andi	$r0,$r0,0x0
1c004240:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004244:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004248:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00424c:	4c000020 	jirl	$r0,$r1,0

1c004250 <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c004250:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004254:	29803061 	st.w	$r1,$r3,12(0xc)
1c004258:	29802076 	st.w	$r22,$r3,8(0x8)
1c00425c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004260:	1c000066 	pcaddu12i	$r6,3(0x3)
1c004264:	02a0c0c6 	addi.w	$r6,$r6,-2000(0x830)
1c004268:	0280cc05 	addi.w	$r5,$r0,51(0x33)
1c00426c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004270:	02988084 	addi.w	$r4,$r4,1568(0x620)
1c004274:	57da3bff 	bl	-9672(0xfffda38) # 1c001cac <myprintf>
1c004278:	02810005 	addi.w	$r5,$r0,64(0x40)
1c00427c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004280:	03808184 	ori	$r4,$r12,0x20
1c004284:	57f43fff 	bl	-3012(0xffff43c) # 1c0036c0 <EXTI_ClearITPendingBit>
1c004288:	03400000 	andi	$r0,$r0,0x0
1c00428c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004290:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004294:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004298:	4c000020 	jirl	$r0,$r1,0

1c00429c <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c00429c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042ac:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0042b0:	029ff0c6 	addi.w	$r6,$r6,2044(0x7fc)
1c0042b4:	0280e005 	addi.w	$r5,$r0,56(0x38)
1c0042b8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0042bc:	02975084 	addi.w	$r4,$r4,1492(0x5d4)
1c0042c0:	57d9efff 	bl	-9748(0xfffd9ec) # 1c001cac <myprintf>
1c0042c4:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0042c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042cc:	03808184 	ori	$r4,$r12,0x20
1c0042d0:	57f3f3ff 	bl	-3088(0xffff3f0) # 1c0036c0 <EXTI_ClearITPendingBit>
1c0042d4:	03400000 	andi	$r0,$r0,0x0
1c0042d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042e4:	4c000020 	jirl	$r0,$r1,0

1c0042e8 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0042e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042f8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0042fc:	029f20c6 	addi.w	$r6,$r6,1992(0x7c8)
1c004300:	0280f405 	addi.w	$r5,$r0,61(0x3d)
1c004304:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004308:	02962084 	addi.w	$r4,$r4,1416(0x588)
1c00430c:	57d9a3ff 	bl	-9824(0xfffd9a0) # 1c001cac <myprintf>
1c004310:	02840005 	addi.w	$r5,$r0,256(0x100)
1c004314:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004318:	03808184 	ori	$r4,$r12,0x20
1c00431c:	57f3a7ff 	bl	-3164(0xffff3a4) # 1c0036c0 <EXTI_ClearITPendingBit>
1c004320:	03400000 	andi	$r0,$r0,0x0
1c004324:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004328:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00432c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004330:	4c000020 	jirl	$r0,$r1,0

1c004334 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c004334:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004338:	29803061 	st.w	$r1,$r3,12(0xc)
1c00433c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004340:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004344:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004348:	029e50c6 	addi.w	$r6,$r6,1940(0x794)
1c00434c:	02810805 	addi.w	$r5,$r0,66(0x42)
1c004350:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004354:	0294f084 	addi.w	$r4,$r4,1340(0x53c)
1c004358:	57d957ff 	bl	-9900(0xfffd954) # 1c001cac <myprintf>
1c00435c:	02880005 	addi.w	$r5,$r0,512(0x200)
1c004360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004364:	03808184 	ori	$r4,$r12,0x20
1c004368:	57f35bff 	bl	-3240(0xffff358) # 1c0036c0 <EXTI_ClearITPendingBit>
1c00436c:	03400000 	andi	$r0,$r0,0x0
1c004370:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004374:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004378:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00437c:	4c000020 	jirl	$r0,$r1,0

1c004380 <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c004380:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004384:	29803061 	st.w	$r1,$r3,12(0xc)
1c004388:	29802076 	st.w	$r22,$r3,8(0x8)
1c00438c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004390:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004394:	029d80c6 	addi.w	$r6,$r6,1888(0x760)
1c004398:	02811c05 	addi.w	$r5,$r0,71(0x47)
1c00439c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0043a0:	0293c084 	addi.w	$r4,$r4,1264(0x4f0)
1c0043a4:	57d90bff 	bl	-9976(0xfffd908) # 1c001cac <myprintf>
1c0043a8:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c0043ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043b0:	03808184 	ori	$r4,$r12,0x20
1c0043b4:	57f30fff 	bl	-3316(0xffff30c) # 1c0036c0 <EXTI_ClearITPendingBit>
1c0043b8:	03400000 	andi	$r0,$r0,0x0
1c0043bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043c8:	4c000020 	jirl	$r0,$r1,0

1c0043cc <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c0043cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043dc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0043e0:	029cb0c6 	addi.w	$r6,$r6,1836(0x72c)
1c0043e4:	02813005 	addi.w	$r5,$r0,76(0x4c)
1c0043e8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0043ec:	02929084 	addi.w	$r4,$r4,1188(0x4a4)
1c0043f0:	57d8bfff 	bl	-10052(0xfffd8bc) # 1c001cac <myprintf>
1c0043f4:	03a00005 	ori	$r5,$r0,0x800
1c0043f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043fc:	03808184 	ori	$r4,$r12,0x20
1c004400:	57f2c3ff 	bl	-3392(0xffff2c0) # 1c0036c0 <EXTI_ClearITPendingBit>
1c004404:	03400000 	andi	$r0,$r0,0x0
1c004408:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00440c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004410:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004414:	4c000020 	jirl	$r0,$r1,0

1c004418 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c004418:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00441c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004420:	29802076 	st.w	$r22,$r3,8(0x8)
1c004424:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004428:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00442c:	029be0c6 	addi.w	$r6,$r6,1784(0x6f8)
1c004430:	02814405 	addi.w	$r5,$r0,81(0x51)
1c004434:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004438:	02916084 	addi.w	$r4,$r4,1112(0x458)
1c00443c:	57d873ff 	bl	-10128(0xfffd870) # 1c001cac <myprintf>
1c004440:	14000025 	lu12i.w	$r5,1(0x1)
1c004444:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004448:	03808184 	ori	$r4,$r12,0x20
1c00444c:	57f277ff 	bl	-3468(0xffff274) # 1c0036c0 <EXTI_ClearITPendingBit>
1c004450:	03400000 	andi	$r0,$r0,0x0
1c004454:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004458:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00445c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004460:	4c000020 	jirl	$r0,$r1,0

1c004464 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c004464:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004468:	29803061 	st.w	$r1,$r3,12(0xc)
1c00446c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004470:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004474:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004478:	029b10c6 	addi.w	$r6,$r6,1732(0x6c4)
1c00447c:	02815805 	addi.w	$r5,$r0,86(0x56)
1c004480:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004484:	02903084 	addi.w	$r4,$r4,1036(0x40c)
1c004488:	57d827ff 	bl	-10204(0xfffd824) # 1c001cac <myprintf>
1c00448c:	14000045 	lu12i.w	$r5,2(0x2)
1c004490:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004494:	03808184 	ori	$r4,$r12,0x20
1c004498:	57f22bff 	bl	-3544(0xffff228) # 1c0036c0 <EXTI_ClearITPendingBit>
1c00449c:	03400000 	andi	$r0,$r0,0x0
1c0044a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044ac:	4c000020 	jirl	$r0,$r1,0

1c0044b0 <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c0044b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044c0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0044c4:	029a40c6 	addi.w	$r6,$r6,1680(0x690)
1c0044c8:	02816c05 	addi.w	$r5,$r0,91(0x5b)
1c0044cc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0044d0:	028f0084 	addi.w	$r4,$r4,960(0x3c0)
1c0044d4:	57d7dbff 	bl	-10280(0xfffd7d8) # 1c001cac <myprintf>
1c0044d8:	14000085 	lu12i.w	$r5,4(0x4)
1c0044dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044e0:	03808184 	ori	$r4,$r12,0x20
1c0044e4:	57f1dfff 	bl	-3620(0xffff1dc) # 1c0036c0 <EXTI_ClearITPendingBit>
1c0044e8:	03400000 	andi	$r0,$r0,0x0
1c0044ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044f8:	4c000020 	jirl	$r0,$r1,0

1c0044fc <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c0044fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004500:	29803061 	st.w	$r1,$r3,12(0xc)
1c004504:	29802076 	st.w	$r22,$r3,8(0x8)
1c004508:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00450c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004510:	029970c6 	addi.w	$r6,$r6,1628(0x65c)
1c004514:	02818005 	addi.w	$r5,$r0,96(0x60)
1c004518:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00451c:	028dd084 	addi.w	$r4,$r4,884(0x374)
1c004520:	57d78fff 	bl	-10356(0xfffd78c) # 1c001cac <myprintf>
1c004524:	14000105 	lu12i.w	$r5,8(0x8)
1c004528:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00452c:	03808184 	ori	$r4,$r12,0x20
1c004530:	57f193ff 	bl	-3696(0xffff190) # 1c0036c0 <EXTI_ClearITPendingBit>
1c004534:	03400000 	andi	$r0,$r0,0x0
1c004538:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00453c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004540:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004544:	4c000020 	jirl	$r0,$r1,0

1c004548 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c004548:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00454c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004550:	29802076 	st.w	$r22,$r3,8(0x8)
1c004554:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004558:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00455c:	0298a0c6 	addi.w	$r6,$r6,1576(0x628)
1c004560:	02819805 	addi.w	$r5,$r0,102(0x66)
1c004564:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004568:	028ca084 	addi.w	$r4,$r4,808(0x328)
1c00456c:	57d743ff 	bl	-10432(0xfffd740) # 1c001cac <myprintf>
1c004570:	14000205 	lu12i.w	$r5,16(0x10)
1c004574:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004578:	03808184 	ori	$r4,$r12,0x20
1c00457c:	57f147ff 	bl	-3772(0xffff144) # 1c0036c0 <EXTI_ClearITPendingBit>
1c004580:	03400000 	andi	$r0,$r0,0x0
1c004584:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004588:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00458c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004590:	4c000020 	jirl	$r0,$r1,0

1c004594 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c004594:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004598:	29803061 	st.w	$r1,$r3,12(0xc)
1c00459c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045a4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0045a8:	0297d0c6 	addi.w	$r6,$r6,1524(0x5f4)
1c0045ac:	0281ac05 	addi.w	$r5,$r0,107(0x6b)
1c0045b0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0045b4:	028b7084 	addi.w	$r4,$r4,732(0x2dc)
1c0045b8:	57d6f7ff 	bl	-10508(0xfffd6f4) # 1c001cac <myprintf>
1c0045bc:	14000405 	lu12i.w	$r5,32(0x20)
1c0045c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045c4:	03808184 	ori	$r4,$r12,0x20
1c0045c8:	57f0fbff 	bl	-3848(0xffff0f8) # 1c0036c0 <EXTI_ClearITPendingBit>
1c0045cc:	03400000 	andi	$r0,$r0,0x0
1c0045d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045dc:	4c000020 	jirl	$r0,$r1,0

1c0045e0 <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c0045e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045f0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0045f4:	029700c6 	addi.w	$r6,$r6,1472(0x5c0)
1c0045f8:	0281c005 	addi.w	$r5,$r0,112(0x70)
1c0045fc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004600:	028a4084 	addi.w	$r4,$r4,656(0x290)
1c004604:	57d6abff 	bl	-10584(0xfffd6a8) # 1c001cac <myprintf>
1c004608:	14000805 	lu12i.w	$r5,64(0x40)
1c00460c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004610:	03808184 	ori	$r4,$r12,0x20
1c004614:	57f0afff 	bl	-3924(0xffff0ac) # 1c0036c0 <EXTI_ClearITPendingBit>
1c004618:	03400000 	andi	$r0,$r0,0x0
1c00461c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004620:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004624:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004628:	4c000020 	jirl	$r0,$r1,0

1c00462c <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c00462c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004630:	29803061 	st.w	$r1,$r3,12(0xc)
1c004634:	29802076 	st.w	$r22,$r3,8(0x8)
1c004638:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00463c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004640:	029630c6 	addi.w	$r6,$r6,1420(0x58c)
1c004644:	0281d405 	addi.w	$r5,$r0,117(0x75)
1c004648:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00464c:	02891084 	addi.w	$r4,$r4,580(0x244)
1c004650:	57d65fff 	bl	-10660(0xfffd65c) # 1c001cac <myprintf>
1c004654:	14001005 	lu12i.w	$r5,128(0x80)
1c004658:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00465c:	03808184 	ori	$r4,$r12,0x20
1c004660:	57f063ff 	bl	-4000(0xffff060) # 1c0036c0 <EXTI_ClearITPendingBit>
1c004664:	03400000 	andi	$r0,$r0,0x0
1c004668:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00466c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004670:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004674:	4c000020 	jirl	$r0,$r1,0

1c004678 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c004678:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00467c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004680:	29802076 	st.w	$r22,$r3,8(0x8)
1c004684:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004688:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00468c:	029560c6 	addi.w	$r6,$r6,1368(0x558)
1c004690:	0281e805 	addi.w	$r5,$r0,122(0x7a)
1c004694:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004698:	0287e084 	addi.w	$r4,$r4,504(0x1f8)
1c00469c:	57d613ff 	bl	-10736(0xfffd610) # 1c001cac <myprintf>
1c0046a0:	14002005 	lu12i.w	$r5,256(0x100)
1c0046a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046a8:	03808184 	ori	$r4,$r12,0x20
1c0046ac:	57f017ff 	bl	-4076(0xffff014) # 1c0036c0 <EXTI_ClearITPendingBit>
1c0046b0:	03400000 	andi	$r0,$r0,0x0
1c0046b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046c0:	4c000020 	jirl	$r0,$r1,0

1c0046c4 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c0046c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046d4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0046d8:	029490c6 	addi.w	$r6,$r6,1316(0x524)
1c0046dc:	0281fc05 	addi.w	$r5,$r0,127(0x7f)
1c0046e0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0046e4:	0286b084 	addi.w	$r4,$r4,428(0x1ac)
1c0046e8:	57d5c7ff 	bl	-10812(0xfffd5c4) # 1c001cac <myprintf>
1c0046ec:	14004005 	lu12i.w	$r5,512(0x200)
1c0046f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046f4:	03808184 	ori	$r4,$r12,0x20
1c0046f8:	57efcbff 	bl	-4152(0xfffefc8) # 1c0036c0 <EXTI_ClearITPendingBit>
1c0046fc:	03400000 	andi	$r0,$r0,0x0
1c004700:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004704:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004708:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00470c:	4c000020 	jirl	$r0,$r1,0

1c004710 <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c004710:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004714:	29803061 	st.w	$r1,$r3,12(0xc)
1c004718:	29802076 	st.w	$r22,$r3,8(0x8)
1c00471c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004720:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004724:	0293c0c6 	addi.w	$r6,$r6,1264(0x4f0)
1c004728:	02821005 	addi.w	$r5,$r0,132(0x84)
1c00472c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004730:	02858084 	addi.w	$r4,$r4,352(0x160)
1c004734:	57d57bff 	bl	-10888(0xfffd578) # 1c001cac <myprintf>
1c004738:	14008005 	lu12i.w	$r5,1024(0x400)
1c00473c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004740:	03808184 	ori	$r4,$r12,0x20
1c004744:	57ef7fff 	bl	-4228(0xfffef7c) # 1c0036c0 <EXTI_ClearITPendingBit>
1c004748:	03400000 	andi	$r0,$r0,0x0
1c00474c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004750:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004754:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004758:	4c000020 	jirl	$r0,$r1,0

1c00475c <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c00475c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004760:	29803061 	st.w	$r1,$r3,12(0xc)
1c004764:	29802076 	st.w	$r22,$r3,8(0x8)
1c004768:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00476c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004770:	0292f0c6 	addi.w	$r6,$r6,1212(0x4bc)
1c004774:	02822405 	addi.w	$r5,$r0,137(0x89)
1c004778:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00477c:	02845084 	addi.w	$r4,$r4,276(0x114)
1c004780:	57d52fff 	bl	-10964(0xfffd52c) # 1c001cac <myprintf>
1c004784:	14010005 	lu12i.w	$r5,2048(0x800)
1c004788:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00478c:	03808184 	ori	$r4,$r12,0x20
1c004790:	57ef33ff 	bl	-4304(0xfffef30) # 1c0036c0 <EXTI_ClearITPendingBit>
1c004794:	03400000 	andi	$r0,$r0,0x0
1c004798:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00479c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047a4:	4c000020 	jirl	$r0,$r1,0

1c0047a8 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c0047a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047b8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0047bc:	029220c6 	addi.w	$r6,$r6,1160(0x488)
1c0047c0:	02823805 	addi.w	$r5,$r0,142(0x8e)
1c0047c4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0047c8:	02832084 	addi.w	$r4,$r4,200(0xc8)
1c0047cc:	57d4e3ff 	bl	-11040(0xfffd4e0) # 1c001cac <myprintf>
1c0047d0:	14020005 	lu12i.w	$r5,4096(0x1000)
1c0047d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047d8:	03808184 	ori	$r4,$r12,0x20
1c0047dc:	57eee7ff 	bl	-4380(0xfffeee4) # 1c0036c0 <EXTI_ClearITPendingBit>
1c0047e0:	03400000 	andi	$r0,$r0,0x0
1c0047e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047f0:	4c000020 	jirl	$r0,$r1,0

1c0047f4 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c0047f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004800:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004804:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004808:	029150c6 	addi.w	$r6,$r6,1108(0x454)
1c00480c:	02824c05 	addi.w	$r5,$r0,147(0x93)
1c004810:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004814:	0281f084 	addi.w	$r4,$r4,124(0x7c)
1c004818:	57d497ff 	bl	-11116(0xfffd494) # 1c001cac <myprintf>
1c00481c:	14040005 	lu12i.w	$r5,8192(0x2000)
1c004820:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004824:	03808184 	ori	$r4,$r12,0x20
1c004828:	57ee9bff 	bl	-4456(0xfffee98) # 1c0036c0 <EXTI_ClearITPendingBit>
1c00482c:	03400000 	andi	$r0,$r0,0x0
1c004830:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004834:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004838:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00483c:	4c000020 	jirl	$r0,$r1,0

1c004840 <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c004840:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004844:	29803061 	st.w	$r1,$r3,12(0xc)
1c004848:	29802076 	st.w	$r22,$r3,8(0x8)
1c00484c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004850:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004854:	029080c6 	addi.w	$r6,$r6,1056(0x420)
1c004858:	02826005 	addi.w	$r5,$r0,152(0x98)
1c00485c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004860:	0280c084 	addi.w	$r4,$r4,48(0x30)
1c004864:	57d44bff 	bl	-11192(0xfffd448) # 1c001cac <myprintf>
1c004868:	14080005 	lu12i.w	$r5,16384(0x4000)
1c00486c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004870:	03808184 	ori	$r4,$r12,0x20
1c004874:	57ee4fff 	bl	-4532(0xfffee4c) # 1c0036c0 <EXTI_ClearITPendingBit>
1c004878:	03400000 	andi	$r0,$r0,0x0
1c00487c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004880:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004884:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004888:	4c000020 	jirl	$r0,$r1,0

1c00488c <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c00488c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004890:	29803061 	st.w	$r1,$r3,12(0xc)
1c004894:	29802076 	st.w	$r22,$r3,8(0x8)
1c004898:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00489c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0048a0:	028fb0c6 	addi.w	$r6,$r6,1004(0x3ec)
1c0048a4:	02827405 	addi.w	$r5,$r0,157(0x9d)
1c0048a8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0048ac:	02bf9084 	addi.w	$r4,$r4,-28(0xfe4)
1c0048b0:	57d3ffff 	bl	-11268(0xfffd3fc) # 1c001cac <myprintf>
1c0048b4:	14100005 	lu12i.w	$r5,32768(0x8000)
1c0048b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048bc:	03808184 	ori	$r4,$r12,0x20
1c0048c0:	57ee03ff 	bl	-4608(0xfffee00) # 1c0036c0 <EXTI_ClearITPendingBit>
1c0048c4:	03400000 	andi	$r0,$r0,0x0
1c0048c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048d4:	4c000020 	jirl	$r0,$r1,0

1c0048d8 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c0048d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048e8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0048ec:	028ee0c6 	addi.w	$r6,$r6,952(0x3b8)
1c0048f0:	02828805 	addi.w	$r5,$r0,162(0xa2)
1c0048f4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0048f8:	02be6084 	addi.w	$r4,$r4,-104(0xf98)
1c0048fc:	57d3b3ff 	bl	-11344(0xfffd3b0) # 1c001cac <myprintf>
1c004900:	14200005 	lu12i.w	$r5,65536(0x10000)
1c004904:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004908:	03808184 	ori	$r4,$r12,0x20
1c00490c:	57edb7ff 	bl	-4684(0xfffedb4) # 1c0036c0 <EXTI_ClearITPendingBit>
1c004910:	03400000 	andi	$r0,$r0,0x0
1c004914:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004918:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00491c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004920:	4c000020 	jirl	$r0,$r1,0

1c004924 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004924:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004928:	29803061 	st.w	$r1,$r3,12(0xc)
1c00492c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004930:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004934:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004938:	028e10c6 	addi.w	$r6,$r6,900(0x384)
1c00493c:	0282a005 	addi.w	$r5,$r0,168(0xa8)
1c004940:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004944:	02bd3084 	addi.w	$r4,$r4,-180(0xf4c)
1c004948:	57d367ff 	bl	-11420(0xfffd364) # 1c001cac <myprintf>
1c00494c:	14400005 	lu12i.w	$r5,131072(0x20000)
1c004950:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004954:	03808184 	ori	$r4,$r12,0x20
1c004958:	57ed6bff 	bl	-4760(0xfffed68) # 1c0036c0 <EXTI_ClearITPendingBit>
1c00495c:	03400000 	andi	$r0,$r0,0x0
1c004960:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004964:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004968:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00496c:	4c000020 	jirl	$r0,$r1,0

1c004970 <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c004970:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004974:	29803061 	st.w	$r1,$r3,12(0xc)
1c004978:	29802076 	st.w	$r22,$r3,8(0x8)
1c00497c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004980:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004984:	028d40c6 	addi.w	$r6,$r6,848(0x350)
1c004988:	0282b405 	addi.w	$r5,$r0,173(0xad)
1c00498c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004990:	02bc0084 	addi.w	$r4,$r4,-256(0xf00)
1c004994:	57d31bff 	bl	-11496(0xfffd318) # 1c001cac <myprintf>
1c004998:	14800005 	lu12i.w	$r5,262144(0x40000)
1c00499c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049a0:	03808184 	ori	$r4,$r12,0x20
1c0049a4:	57ed1fff 	bl	-4836(0xfffed1c) # 1c0036c0 <EXTI_ClearITPendingBit>
1c0049a8:	03400000 	andi	$r0,$r0,0x0
1c0049ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0049b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0049b8:	4c000020 	jirl	$r0,$r1,0

1c0049bc <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c0049bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0049c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0049c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0049c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0049cc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0049d0:	028c70c6 	addi.w	$r6,$r6,796(0x31c)
1c0049d4:	0282c805 	addi.w	$r5,$r0,178(0xb2)
1c0049d8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0049dc:	02bad084 	addi.w	$r4,$r4,-332(0xeb4)
1c0049e0:	57d2cfff 	bl	-11572(0xfffd2cc) # 1c001cac <myprintf>
1c0049e4:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c0049e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049ec:	03808184 	ori	$r4,$r12,0x20
1c0049f0:	57ecd3ff 	bl	-4912(0xfffecd0) # 1c0036c0 <EXTI_ClearITPendingBit>
1c0049f4:	03400000 	andi	$r0,$r0,0x0
1c0049f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0049fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004a00:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004a04:	4c000020 	jirl	$r0,$r1,0

1c004a08 <ext_handler>:
ext_handler():
1c004a08:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a0c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004a10:	29806076 	st.w	$r22,$r3,24(0x18)
1c004a14:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a1c:	0380f18c 	ori	$r12,$r12,0x3c
1c004a20:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004a24:	2980018d 	st.w	$r13,$r12,0
1c004a28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a2c:	0380818c 	ori	$r12,$r12,0x20
1c004a30:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004a34:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004a38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a3c:	0380818c 	ori	$r12,$r12,0x20
1c004a40:	2880018c 	ld.w	$r12,$r12,0
1c004a44:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004a48:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004a4c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c004a50:	0014b1ac 	and	$r12,$r13,$r12
1c004a54:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004a58:	03400000 	andi	$r0,$r0,0x0
1c004a5c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004a60:	50004000 	b	64(0x40) # 1c004aa0 <ext_handler+0x98>
1c004a64:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004a68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a6c:	0017b1ac 	srl.w	$r12,$r13,$r12
1c004a70:	0340058c 	andi	$r12,$r12,0x1
1c004a74:	40002180 	beqz	$r12,32(0x20) # 1c004a94 <ext_handler+0x8c>
1c004a78:	1c00004d 	pcaddu12i	$r13,2(0x2)
1c004a7c:	02bb11ad 	addi.w	$r13,$r13,-316(0xec4)
1c004a80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a84:	0040898c 	slli.w	$r12,$r12,0x2
1c004a88:	001031ac 	add.w	$r12,$r13,$r12
1c004a8c:	2880018c 	ld.w	$r12,$r12,0
1c004a90:	4c000181 	jirl	$r1,$r12,0
1c004a94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004a9c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004aa0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004aa4:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c004aa8:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c004a64 <ext_handler+0x5c>
1c004aac:	03400000 	andi	$r0,$r0,0x0
1c004ab0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004ab4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004ab8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004abc:	4c000020 	jirl	$r0,$r1,0

1c004ac0 <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004ac0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004ac4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004ac8:	29806076 	st.w	$r22,$r3,24(0x18)
1c004acc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004ad0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ad4:	0380f18c 	ori	$r12,$r12,0x3c
1c004ad8:	1400020d 	lu12i.w	$r13,16(0x10)
1c004adc:	2980018d 	st.w	$r13,$r12,0
1c004ae0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ae4:	0380118c 	ori	$r12,$r12,0x4
1c004ae8:	2880018c 	ld.w	$r12,$r12,0
1c004aec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004af0:	57ed23ff 	bl	-4832(0xfffed20) # 1c003810 <WDG_DogFeed>
1c004af4:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004af8:	57e6dfff 	bl	-6436(0xfffe6dc) # 1c0031d4 <Wake_Set>
1c004afc:	03400000 	andi	$r0,$r0,0x0
1c004b00:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004b04:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004b08:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b0c:	4c000020 	jirl	$r0,$r1,0

1c004b10 <TOUCH>:
TOUCH():
1c004b10:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b14:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004b18:	29806076 	st.w	$r22,$r3,24(0x18)
1c004b1c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b20:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004b24:	0380118c 	ori	$r12,$r12,0x4
1c004b28:	2880018c 	ld.w	$r12,$r12,0
1c004b2c:	0044c18c 	srli.w	$r12,$r12,0x10
1c004b30:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004b34:	037ffd8c 	andi	$r12,$r12,0xfff
1c004b38:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004b3c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004b40:	0380118c 	ori	$r12,$r12,0x4
1c004b44:	2880018c 	ld.w	$r12,$r12,0
1c004b48:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004b4c:	03403d8c 	andi	$r12,$r12,0xf
1c004b50:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004b54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b58:	0380f18c 	ori	$r12,$r12,0x3c
1c004b5c:	1400040d 	lu12i.w	$r13,32(0x20)
1c004b60:	2980018d 	st.w	$r13,$r12,0
1c004b64:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004b68:	0380118c 	ori	$r12,$r12,0x4
1c004b6c:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004b70:	2980018d 	st.w	$r13,$r12,0
1c004b74:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004b78:	00150184 	move	$r4,$r12
1c004b7c:	57efe7ff 	bl	-4124(0xfffefe4) # 1c003b60 <Printf_KeyType>
1c004b80:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004b84:	00150184 	move	$r4,$r12
1c004b88:	57ef5fff 	bl	-4260(0xfffef5c) # 1c003ae4 <Printf_KeyChannel>
1c004b8c:	57f063ff 	bl	-4000(0xffff060) # 1c003bec <Printf_KeyVal>
1c004b90:	03400000 	andi	$r0,$r0,0x0
1c004b94:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004b98:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004b9c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004ba0:	4c000020 	jirl	$r0,$r1,0

1c004ba4 <UART2_INT>:
UART2_INT():
1c004ba4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004ba8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004bac:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004bb0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bb4:	0380f18c 	ori	$r12,$r12,0x3c
1c004bb8:	1400080d 	lu12i.w	$r13,64(0x40)
1c004bbc:	2980018d 	st.w	$r13,$r12,0
1c004bc0:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004bc4:	0380098c 	ori	$r12,$r12,0x2
1c004bc8:	2a00018c 	ld.bu	$r12,$r12,0
1c004bcc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004bd0:	03400000 	andi	$r0,$r0,0x0
1c004bd4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004bd8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004bdc:	4c000020 	jirl	$r0,$r1,0

1c004be0 <BAT_FAIL>:
BAT_FAIL():
1c004be0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004be4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004be8:	29806076 	st.w	$r22,$r3,24(0x18)
1c004bec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004bf0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bf4:	0380118c 	ori	$r12,$r12,0x4
1c004bf8:	2880018c 	ld.w	$r12,$r12,0
1c004bfc:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004c00:	03407d8c 	andi	$r12,$r12,0x1f
1c004c04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004c08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c0c:	0380118c 	ori	$r12,$r12,0x4
1c004c10:	2880018e 	ld.w	$r14,$r12,0
1c004c14:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c18:	0380f18c 	ori	$r12,$r12,0x3c
1c004c1c:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004c20:	0014b5cd 	and	$r13,$r14,$r13
1c004c24:	2980018d 	st.w	$r13,$r12,0
1c004c28:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004c2c:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004c30:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004ca0 <BAT_FAIL+0xc0>
1c004c34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c38:	0040898d 	slli.w	$r13,$r12,0x2
1c004c3c:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c004c40:	02b6018c 	addi.w	$r12,$r12,-640(0xd80)
1c004c44:	001031ac 	add.w	$r12,$r13,$r12
1c004c48:	2880018c 	ld.w	$r12,$r12,0
1c004c4c:	4c000180 	jirl	$r0,$r12,0
1c004c50:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004c54:	02b20084 	addi.w	$r4,$r4,-896(0xc80)
1c004c58:	57d057ff 	bl	-12204(0xfffd054) # 1c001cac <myprintf>
1c004c5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c60:	0380118c 	ori	$r12,$r12,0x4
1c004c64:	29800180 	st.w	$r0,$r12,0
1c004c68:	50003c00 	b	60(0x3c) # 1c004ca4 <BAT_FAIL+0xc4>
1c004c6c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004c70:	02b23084 	addi.w	$r4,$r4,-884(0xc8c)
1c004c74:	57d03bff 	bl	-12232(0xfffd038) # 1c001cac <myprintf>
1c004c78:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c7c:	0380118c 	ori	$r12,$r12,0x4
1c004c80:	2880018e 	ld.w	$r14,$r12,0
1c004c84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c88:	0380118c 	ori	$r12,$r12,0x4
1c004c8c:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004c90:	03bffdad 	ori	$r13,$r13,0xfff
1c004c94:	0014b5cd 	and	$r13,$r14,$r13
1c004c98:	2980018d 	st.w	$r13,$r12,0
1c004c9c:	50000800 	b	8(0x8) # 1c004ca4 <BAT_FAIL+0xc4>
1c004ca0:	03400000 	andi	$r0,$r0,0x0
1c004ca4:	03400000 	andi	$r0,$r0,0x0
1c004ca8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004cac:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004cb0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004cb4:	4c000020 	jirl	$r0,$r1,0

1c004cb8 <intc_handler>:
intc_handler():
1c004cb8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004cbc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004cc0:	29806076 	st.w	$r22,$r3,24(0x18)
1c004cc4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004cc8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004ccc:	0380158c 	ori	$r12,$r12,0x5
1c004cd0:	2a00018c 	ld.bu	$r12,$r12,0
1c004cd4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004cd8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004cdc:	0340058c 	andi	$r12,$r12,0x1
1c004ce0:	4001fd80 	beqz	$r12,508(0x1fc) # 1c004edc <intc_handler+0x224>
1c004ce4:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004ce8:	57f2fbff 	bl	-3336(0xffff2f8) # 1c003fe0 <TIM_GetITStatus>
1c004cec:	0015008c 	move	$r12,$r4
1c004cf0:	4001ed80 	beqz	$r12,492(0x1ec) # 1c004edc <intc_handler+0x224>
1c004cf4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004cf8:	028c318c 	addi.w	$r12,$r12,780(0x30c)
1c004cfc:	2a00018c 	ld.bu	$r12,$r12,0
1c004d00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004d04:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004d08:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d0c:	028be18c 	addi.w	$r12,$r12,760(0x2f8)
1c004d10:	2900018d 	st.b	$r13,$r12,0
1c004d14:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d18:	028bd18c 	addi.w	$r12,$r12,756(0x2f4)
1c004d1c:	2a00018c 	ld.bu	$r12,$r12,0
1c004d20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004d24:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004d28:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d2c:	028b818c 	addi.w	$r12,$r12,736(0x2e0)
1c004d30:	2900018d 	st.b	$r13,$r12,0
1c004d34:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d38:	028b718c 	addi.w	$r12,$r12,732(0x2dc)
1c004d3c:	2a00018c 	ld.bu	$r12,$r12,0
1c004d40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004d44:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004d48:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d4c:	028b218c 	addi.w	$r12,$r12,712(0x2c8)
1c004d50:	2900018d 	st.b	$r13,$r12,0
1c004d54:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d58:	028b118c 	addi.w	$r12,$r12,708(0x2c4)
1c004d5c:	2a00018c 	ld.bu	$r12,$r12,0
1c004d60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004d64:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004d68:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d6c:	028ac18c 	addi.w	$r12,$r12,688(0x2b0)
1c004d70:	2900018d 	st.b	$r13,$r12,0
1c004d74:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d78:	028ab18c 	addi.w	$r12,$r12,684(0x2ac)
1c004d7c:	2a00018c 	ld.bu	$r12,$r12,0
1c004d80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004d84:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004d88:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d8c:	028a618c 	addi.w	$r12,$r12,664(0x298)
1c004d90:	2900018d 	st.b	$r13,$r12,0
1c004d94:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004d98:	028a518c 	addi.w	$r12,$r12,660(0x294)
1c004d9c:	2a00018c 	ld.bu	$r12,$r12,0
1c004da0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004da4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004da8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004dac:	028a018c 	addi.w	$r12,$r12,640(0x280)
1c004db0:	2900018d 	st.b	$r13,$r12,0
1c004db4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004db8:	0289318c 	addi.w	$r12,$r12,588(0x24c)
1c004dbc:	2a00018d 	ld.bu	$r13,$r12,0
1c004dc0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004dc4:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c004de4 <intc_handler+0x12c>
1c004dc8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004dcc:	0288f18c 	addi.w	$r12,$r12,572(0x23c)
1c004dd0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004dd4:	2980018d 	st.w	$r13,$r12,0
1c004dd8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ddc:	0288a18c 	addi.w	$r12,$r12,552(0x228)
1c004de0:	29000180 	st.b	$r0,$r12,0
1c004de4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004de8:	0288918c 	addi.w	$r12,$r12,548(0x224)
1c004dec:	2a00018d 	ld.bu	$r13,$r12,0
1c004df0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c004df4:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c004e14 <intc_handler+0x15c>
1c004df8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004dfc:	0288518c 	addi.w	$r12,$r12,532(0x214)
1c004e00:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004e04:	2980018d 	st.w	$r13,$r12,0
1c004e08:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e0c:	0288018c 	addi.w	$r12,$r12,512(0x200)
1c004e10:	29000180 	st.b	$r0,$r12,0
1c004e14:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e18:	0287f18c 	addi.w	$r12,$r12,508(0x1fc)
1c004e1c:	2a00018d 	ld.bu	$r13,$r12,0
1c004e20:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c004e24:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c004e44 <intc_handler+0x18c>
1c004e28:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e2c:	0287b18c 	addi.w	$r12,$r12,492(0x1ec)
1c004e30:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004e34:	2980018d 	st.w	$r13,$r12,0
1c004e38:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e3c:	0287618c 	addi.w	$r12,$r12,472(0x1d8)
1c004e40:	29000180 	st.b	$r0,$r12,0
1c004e44:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e48:	0287518c 	addi.w	$r12,$r12,468(0x1d4)
1c004e4c:	2a00018d 	ld.bu	$r13,$r12,0
1c004e50:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c004e54:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c004e74 <intc_handler+0x1bc>
1c004e58:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e5c:	0287118c 	addi.w	$r12,$r12,452(0x1c4)
1c004e60:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004e64:	2980018d 	st.w	$r13,$r12,0
1c004e68:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e6c:	0286c18c 	addi.w	$r12,$r12,432(0x1b0)
1c004e70:	29000180 	st.b	$r0,$r12,0
1c004e74:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e78:	0286b18c 	addi.w	$r12,$r12,428(0x1ac)
1c004e7c:	2a00018d 	ld.bu	$r13,$r12,0
1c004e80:	0280c80c 	addi.w	$r12,$r0,50(0x32)
1c004e84:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c004ea4 <intc_handler+0x1ec>
1c004e88:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e8c:	0286718c 	addi.w	$r12,$r12,412(0x19c)
1c004e90:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004e94:	2980018d 	st.w	$r13,$r12,0
1c004e98:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004e9c:	0286218c 	addi.w	$r12,$r12,392(0x188)
1c004ea0:	29000180 	st.b	$r0,$r12,0
1c004ea4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ea8:	0286118c 	addi.w	$r12,$r12,388(0x184)
1c004eac:	2a00018d 	ld.bu	$r13,$r12,0
1c004eb0:	0281900c 	addi.w	$r12,$r0,100(0x64)
1c004eb4:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c004ed4 <intc_handler+0x21c>
1c004eb8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ebc:	0285d18c 	addi.w	$r12,$r12,372(0x174)
1c004ec0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c004ec4:	2980018d 	st.w	$r13,$r12,0
1c004ec8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ecc:	0285818c 	addi.w	$r12,$r12,352(0x160)
1c004ed0:	29000180 	st.b	$r0,$r12,0
1c004ed4:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004ed8:	57f157ff 	bl	-3756(0xffff154) # 1c00402c <TIM_ClearIT>
1c004edc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004ee0:	0340118c 	andi	$r12,$r12,0x4
1c004ee4:	40001580 	beqz	$r12,20(0x14) # 1c004ef8 <intc_handler+0x240>
1c004ee8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004eec:	03800d8c 	ori	$r12,$r12,0x3
1c004ef0:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004ef4:	2900018d 	st.b	$r13,$r12,0
1c004ef8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004efc:	0340218c 	andi	$r12,$r12,0x8
1c004f00:	40007d80 	beqz	$r12,124(0x7c) # 1c004f7c <intc_handler+0x2c4>
1c004f04:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004f08:	0380098c 	ori	$r12,$r12,0x2
1c004f0c:	2a00018c 	ld.bu	$r12,$r12,0
1c004f10:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004f14:	0340118c 	andi	$r12,$r12,0x4
1c004f18:	40005580 	beqz	$r12,84(0x54) # 1c004f6c <intc_handler+0x2b4>
1c004f1c:	50003800 	b	56(0x38) # 1c004f54 <intc_handler+0x29c>
1c004f20:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c004f24:	57d98fff 	bl	-9844(0xfffd98c) # 1c0028b0 <UART_ReceiveData>
1c004f28:	0015008c 	move	$r12,$r4
1c004f2c:	0015018d 	move	$r13,$r12
1c004f30:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004f34:	0284018c 	addi.w	$r12,$r12,256(0x100)
1c004f38:	2900018d 	st.b	$r13,$r12,0
1c004f3c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004f40:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c004f44:	0283c0a5 	addi.w	$r5,$r5,240(0xf0)
1c004f48:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004f4c:	2883e084 	ld.w	$r4,$r4,248(0xf8)
1c004f50:	540af800 	bl	2808(0xaf8) # 1c005a48 <Queue_Wirte>
1c004f54:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004f58:	0380158c 	ori	$r12,$r12,0x5
1c004f5c:	2a00018c 	ld.bu	$r12,$r12,0
1c004f60:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004f64:	0340058c 	andi	$r12,$r12,0x1
1c004f68:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c004f20 <intc_handler+0x268>
1c004f6c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004f70:	03800d8c 	ori	$r12,$r12,0x3
1c004f74:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004f78:	2900018d 	st.b	$r13,$r12,0
1c004f7c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004f80:	03800d8c 	ori	$r12,$r12,0x3
1c004f84:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004f88:	2900018d 	st.b	$r13,$r12,0
1c004f8c:	03400000 	andi	$r0,$r0,0x0
1c004f90:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004f94:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004f98:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004f9c:	4c000020 	jirl	$r0,$r1,0

1c004fa0 <TIMER_HANDLER>:
TIMER_HANDLER():
1c004fa0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004fa4:	29803061 	st.w	$r1,$r3,12(0xc)
1c004fa8:	29802076 	st.w	$r22,$r3,8(0x8)
1c004fac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004fb0:	57e203ff 	bl	-7680(0xfffe200) # 1c0031b0 <Set_Timer_clear>
1c004fb4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c004fb8:	02a5a084 	addi.w	$r4,$r4,-1688(0x968)
1c004fbc:	57ccf3ff 	bl	-13072(0xfffccf0) # 1c001cac <myprintf>
1c004fc0:	57e1d3ff 	bl	-7728(0xfffe1d0) # 1c003190 <Set_Timer_stop>
1c004fc4:	03400000 	andi	$r0,$r0,0x0
1c004fc8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004fcc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004fd0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004fd4:	4c000020 	jirl	$r0,$r1,0

1c004fd8 <executer_init>:
executer_init():
1c004fd8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004fdc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004fe0:	29802076 	st.w	$r22,$r3,8(0x8)
1c004fe4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004fe8:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c004fec:	57e56fff 	bl	-6804(0xfffe56c) # 1c003558 <delay_ms>
1c004ff0:	54054400 	bl	1348(0x544) # 1c005534 <led_init>
1c004ff4:	5410e000 	bl	4320(0x10e0) # 1c0060d4 <mqtt_process_init>
1c004ff8:	54020c00 	bl	524(0x20c) # 1c005204 <tempareture_process_init>
1c004ffc:	540c0400 	bl	3076(0xc04) # 1c005c00 <Humidity_process_init>
1c005000:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c005004:	57e557ff 	bl	-6828(0xfffe554) # 1c003558 <delay_ms>
1c005008:	02802804 	addi.w	$r4,$r0,10(0xa)
1c00500c:	57ef83ff 	bl	-4224(0xfffef80) # 1c003f8c <timer_init>
1c005010:	03400000 	andi	$r0,$r0,0x0
1c005014:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005018:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00501c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005020:	4c000020 	jirl	$r0,$r1,0

1c005024 <executer_choose_run>:
executer_choose_run():
1c005024:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005028:	29803061 	st.w	$r1,$r3,12(0xc)
1c00502c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005030:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005034:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005038:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c00503c:	2880018d 	ld.w	$r13,$r12,0
1c005040:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005044:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c005058 <executer_choose_run+0x34>
1c005048:	54012c00 	bl	300(0x12c) # 1c005174 <run_function_10ms>
1c00504c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005050:	28bfb18c 	ld.w	$r12,$r12,-20(0xfec)
1c005054:	29800180 	st.w	$r0,$r12,0
1c005058:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00505c:	28bf218c 	ld.w	$r12,$r12,-56(0xfc8)
1c005060:	2880018d 	ld.w	$r13,$r12,0
1c005064:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005068:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c00507c <executer_choose_run+0x58>
1c00506c:	54012400 	bl	292(0x124) # 1c005190 <run_function_20ms>
1c005070:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005074:	28bec18c 	ld.w	$r12,$r12,-80(0xfb0)
1c005078:	29800180 	st.w	$r0,$r12,0
1c00507c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005080:	28be418c 	ld.w	$r12,$r12,-112(0xf90)
1c005084:	2880018d 	ld.w	$r13,$r12,0
1c005088:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00508c:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0050a0 <executer_choose_run+0x7c>
1c005090:	54009000 	bl	144(0x90) # 1c005120 <run_function_50ms>
1c005094:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005098:	28bde18c 	ld.w	$r12,$r12,-136(0xf78)
1c00509c:	29800180 	st.w	$r0,$r12,0
1c0050a0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050a4:	28be218c 	ld.w	$r12,$r12,-120(0xf88)
1c0050a8:	2880018d 	ld.w	$r13,$r12,0
1c0050ac:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0050b0:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0050c4 <executer_choose_run+0xa0>
1c0050b4:	54008800 	bl	136(0x88) # 1c00513c <run_function_100ms>
1c0050b8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050bc:	28bdc18c 	ld.w	$r12,$r12,-144(0xf70)
1c0050c0:	29800180 	st.w	$r0,$r12,0
1c0050c4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050c8:	28bd518c 	ld.w	$r12,$r12,-172(0xf54)
1c0050cc:	2880018d 	ld.w	$r13,$r12,0
1c0050d0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0050d4:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0050e8 <executer_choose_run+0xc4>
1c0050d8:	54008000 	bl	128(0x80) # 1c005158 <run_function_500ms>
1c0050dc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050e0:	28bcf18c 	ld.w	$r12,$r12,-196(0xf3c)
1c0050e4:	29800180 	st.w	$r0,$r12,0
1c0050e8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0050ec:	28bd518c 	ld.w	$r12,$r12,-172(0xf54)
1c0050f0:	2880018d 	ld.w	$r13,$r12,0
1c0050f4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0050f8:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c00510c <executer_choose_run+0xe8>
1c0050fc:	5400b000 	bl	176(0xb0) # 1c0051ac <run_function_1000ms>
1c005100:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005104:	28bcf18c 	ld.w	$r12,$r12,-196(0xf3c)
1c005108:	29800180 	st.w	$r0,$r12,0
1c00510c:	03400000 	andi	$r0,$r0,0x0
1c005110:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005114:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005118:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00511c:	4c000020 	jirl	$r0,$r1,0

1c005120 <run_function_50ms>:
run_function_50ms():
1c005120:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005124:	29803076 	st.w	$r22,$r3,12(0xc)
1c005128:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00512c:	03400000 	andi	$r0,$r0,0x0
1c005130:	28803076 	ld.w	$r22,$r3,12(0xc)
1c005134:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005138:	4c000020 	jirl	$r0,$r1,0

1c00513c <run_function_100ms>:
run_function_100ms():
1c00513c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005140:	29803076 	st.w	$r22,$r3,12(0xc)
1c005144:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005148:	03400000 	andi	$r0,$r0,0x0
1c00514c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c005150:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005154:	4c000020 	jirl	$r0,$r1,0

1c005158 <run_function_500ms>:
run_function_500ms():
1c005158:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00515c:	29803076 	st.w	$r22,$r3,12(0xc)
1c005160:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005164:	03400000 	andi	$r0,$r0,0x0
1c005168:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00516c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005170:	4c000020 	jirl	$r0,$r1,0

1c005174 <run_function_10ms>:
run_function_10ms():
1c005174:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005178:	29803076 	st.w	$r22,$r3,12(0xc)
1c00517c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005180:	03400000 	andi	$r0,$r0,0x0
1c005184:	28803076 	ld.w	$r22,$r3,12(0xc)
1c005188:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00518c:	4c000020 	jirl	$r0,$r1,0

1c005190 <run_function_20ms>:
run_function_20ms():
1c005190:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005194:	29803076 	st.w	$r22,$r3,12(0xc)
1c005198:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00519c:	03400000 	andi	$r0,$r0,0x0
1c0051a0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0051a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0051a8:	4c000020 	jirl	$r0,$r1,0

1c0051ac <run_function_1000ms>:
run_function_1000ms():
1c0051ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0051b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0051b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0051b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0051bc:	540f4800 	bl	3912(0xf48) # 1c006104 <mqtt_process>
1c0051c0:	54007400 	bl	116(0x74) # 1c005234 <tempareture_process>
1c0051c4:	540a6c00 	bl	2668(0xa6c) # 1c005c30 <Humidity_process>
1c0051c8:	54039c00 	bl	924(0x39c) # 1c005564 <led_show>
1c0051cc:	03400000 	andi	$r0,$r0,0x0
1c0051d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0051d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0051d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0051dc:	4c000020 	jirl	$r0,$r1,0

1c0051e0 <main>:
main():
1c0051e0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0051e4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0051e8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0051ec:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0051f0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0051f4:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0051f8:	57fde3ff 	bl	-544(0xffffde0) # 1c004fd8 <executer_init>
1c0051fc:	57fe2bff 	bl	-472(0xffffe28) # 1c005024 <executer_choose_run>
1c005200:	53ffffff 	b	-4(0xffffffc) # 1c0051fc <main+0x1c>

1c005204 <tempareture_process_init>:
tempareture_process_init():
1c005204:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005208:	29803061 	st.w	$r1,$r3,12(0xc)
1c00520c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005210:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005214:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005218:	28b7d084 	ld.w	$r4,$r4,-524(0xdf4)
1c00521c:	54005400 	bl	84(0x54) # 1c005270 <Tempareture_System_Init>
1c005220:	03400000 	andi	$r0,$r0,0x0
1c005224:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005228:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00522c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005230:	4c000020 	jirl	$r0,$r1,0

1c005234 <tempareture_process>:
tempareture_process():
1c005234:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005238:	29803061 	st.w	$r1,$r3,12(0xc)
1c00523c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005240:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005244:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005248:	28b71084 	ld.w	$r4,$r4,-572(0xdc4)
1c00524c:	5401e000 	bl	480(0x1e0) # 1c00542c <Tempareture_SHT10_Get>
1c005250:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005254:	28b6e084 	ld.w	$r4,$r4,-584(0xdb8)
1c005258:	54027000 	bl	624(0x270) # 1c0054c8 <Tempareture_value_feedback>
1c00525c:	03400000 	andi	$r0,$r0,0x0
1c005260:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005264:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005268:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00526c:	4c000020 	jirl	$r0,$r1,0

1c005270 <Tempareture_System_Init>:
Tempareture_System_Init():
1c005270:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005274:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005278:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00527c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005280:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005284:	540e0800 	bl	3592(0xe08) # 1c00608c <Temp_Hum_Data_Piont>
1c005288:	0015008d 	move	$r13,$r4
1c00528c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005290:	2980018d 	st.w	$r13,$r12,0
1c005294:	540e1c00 	bl	3612(0xe1c) # 1c0060b0 <PWM_485_Data_Piont>
1c005298:	0015008d 	move	$r13,$r4
1c00529c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0052a0:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0052a4:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0052a8:	50016400 	b	356(0x164) # 1c00540c <Tempareture_System_Init+0x19c>
1c0052ac:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c0052b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0052b4:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0052b8:	2900c18d 	st.b	$r13,$r12,48(0x30)
1c0052bc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0052c0:	0280180d 	addi.w	$r13,$r0,6(0x6)
1c0052c4:	2900c58d 	st.b	$r13,$r12,49(0x31)
1c0052c8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0052cc:	2900c980 	st.b	$r0,$r12,50(0x32)
1c0052d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0052d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0052d8:	0280318c 	addi.w	$r12,$r12,12(0xc)
1c0052dc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0052e0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0052e4:	2900cd8d 	st.b	$r13,$r12,51(0x33)
1c0052e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0052ec:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0052f0:	2900d18d 	st.b	$r13,$r12,52(0x34)
1c0052f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0052f8:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c0052fc:	2900d58d 	st.b	$r13,$r12,53(0x35)
1c005300:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005304:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c005308:	02801805 	addi.w	$r5,$r0,6(0x6)
1c00530c:	00150184 	move	$r4,$r12
1c005310:	540c7400 	bl	3188(0xc74) # 1c005f84 <getModbusCRC16>
1c005314:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005318:	2a00d98d 	ld.bu	$r13,$r12,54(0x36)
1c00531c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005320:	2900d98d 	st.b	$r13,$r12,54(0x36)
1c005324:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005328:	2a00dd8d 	ld.bu	$r13,$r12,55(0x37)
1c00532c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005330:	2900dd8d 	st.b	$r13,$r12,55(0x37)
1c005334:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c005338:	50002800 	b	40(0x28) # 1c005360 <Tempareture_System_Init+0xf0>
1c00533c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005340:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005344:	001031ac 	add.w	$r12,$r13,$r12
1c005348:	2a00c18c 	ld.bu	$r12,$r12,48(0x30)
1c00534c:	00150184 	move	$r4,$r12
1c005350:	57d773ff 	bl	-10384(0xfffd770) # 1c002ac0 <Uart1_send>
1c005354:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005358:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00535c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005360:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c005364:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005368:	67ffd58d 	bge	$r12,$r13,-44(0x3ffd4) # 1c00533c <Tempareture_System_Init+0xcc>
1c00536c:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005370:	57e1ebff 	bl	-7704(0xfffe1e8) # 1c003558 <delay_ms>
1c005374:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c005378:	50006400 	b	100(0x64) # 1c0053dc <Tempareture_System_Init+0x16c>
1c00537c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005380:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c005384:	001031ac 	add.w	$r12,$r13,$r12
1c005388:	2a00c18d 	ld.bu	$r13,$r12,48(0x30)
1c00538c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005390:	2880118e 	ld.w	$r14,$r12,4(0x4)
1c005394:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c005398:	001031cc 	add.w	$r12,$r14,$r12
1c00539c:	2a00018c 	ld.bu	$r12,$r12,0
1c0053a0:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c0053ac <Tempareture_System_Init+0x13c>
1c0053a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0053a8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0053ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0053b0:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c0053b4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0053b8:	001031ac 	add.w	$r12,$r13,$r12
1c0053bc:	2a00018c 	ld.bu	$r12,$r12,0
1c0053c0:	00150185 	move	$r5,$r12
1c0053c4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0053c8:	02a4f084 	addi.w	$r4,$r4,-1732(0x93c)
1c0053cc:	57c8e3ff 	bl	-14112(0xfffc8e0) # 1c001cac <myprintf>
1c0053d0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0053d4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0053d8:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0053dc:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0053e0:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c0053e4:	67ff998d 	bge	$r12,$r13,-104(0x3ff98) # 1c00537c <Tempareture_System_Init+0x10c>
1c0053e8:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0053ec:	44001580 	bnez	$r12,20(0x14) # 1c005400 <Tempareture_System_Init+0x190>
1c0053f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0053f4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0053f8:	57c1a3ff 	bl	-15968(0xfffc1a0) # 1c001598 <gpio_write_pin>
1c0053fc:	53fff7ff 	b	-12(0xffffff4) # 1c0053f0 <Tempareture_System_Init+0x180>
1c005400:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005404:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005408:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00540c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005410:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005414:	67fe998d 	bge	$r12,$r13,-360(0x3fe98) # 1c0052ac <Tempareture_System_Init+0x3c>
1c005418:	03400000 	andi	$r0,$r0,0x0
1c00541c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005420:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005424:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005428:	4c000020 	jirl	$r0,$r1,0

1c00542c <Tempareture_SHT10_Get>:
Tempareture_SHT10_Get():
1c00542c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005430:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005434:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005438:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00543c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005440:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005444:	50002c00 	b	44(0x2c) # 1c005470 <Tempareture_SHT10_Get+0x44>
1c005448:	1cc7ff8d 	pcaddu12i	$r13,409596(0x63ffc)
1c00544c:	02b011ad 	addi.w	$r13,$r13,-1020(0xc04)
1c005450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005454:	001031ac 	add.w	$r12,$r13,$r12
1c005458:	2a00018c 	ld.bu	$r12,$r12,0
1c00545c:	00150184 	move	$r4,$r12
1c005460:	57d663ff 	bl	-10656(0xfffd660) # 1c002ac0 <Uart1_send>
1c005464:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005468:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00546c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005470:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005474:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005478:	67ffd18d 	bge	$r12,$r13,-48(0x3ffd0) # 1c005448 <Tempareture_SHT10_Get+0x1c>
1c00547c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005480:	2880018c 	ld.w	$r12,$r12,0
1c005484:	2a40318c 	ld.hu	$r12,$r12,12(0xc)
1c005488:	0015018d 	move	$r13,$r12
1c00548c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005490:	2880018c 	ld.w	$r12,$r12,0
1c005494:	2a40298c 	ld.hu	$r12,$r12,10(0xa)
1c005498:	00150186 	move	$r6,$r12
1c00549c:	001501a5 	move	$r5,$r13
1c0054a0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0054a4:	02a19084 	addi.w	$r4,$r4,-1948(0x864)
1c0054a8:	57c807ff 	bl	-14332(0xfffc804) # 1c001cac <myprintf>
1c0054ac:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0054b0:	57e0abff 	bl	-8024(0xfffe0a8) # 1c003558 <delay_ms>
1c0054b4:	03400000 	andi	$r0,$r0,0x0
1c0054b8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0054bc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0054c0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0054c4:	4c000020 	jirl	$r0,$r1,0

1c0054c8 <Tempareture_value_feedback>:
Tempareture_value_feedback():
1c0054c8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0054cc:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0054d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0054d4:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0054d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0054dc:	2880018c 	ld.w	$r12,$r12,0
1c0054e0:	2a40298d 	ld.hu	$r13,$r12,10(0xa)
1c0054e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0054e8:	2940e18d 	st.h	$r13,$r12,56(0x38)
1c0054ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0054f0:	2880018c 	ld.w	$r12,$r12,0
1c0054f4:	2a40318d 	ld.hu	$r13,$r12,12(0xc)
1c0054f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0054fc:	2940e98d 	st.h	$r13,$r12,58(0x3a)
1c005500:	03400000 	andi	$r0,$r0,0x0
1c005504:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005508:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00550c:	4c000020 	jirl	$r0,$r1,0

1c005510 <tempareture_type_Piont>:
tempareture_type_Piont():
1c005510:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005514:	29803076 	st.w	$r22,$r3,12(0xc)
1c005518:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00551c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005520:	28abb18c 	ld.w	$r12,$r12,-1300(0xaec)
1c005524:	00150184 	move	$r4,$r12
1c005528:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00552c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005530:	4c000020 	jirl	$r0,$r1,0

1c005534 <led_init>:
led_init():
1c005534:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005538:	29803061 	st.w	$r1,$r3,12(0xc)
1c00553c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005540:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005544:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005548:	02805004 	addi.w	$r4,$r0,20(0x14)
1c00554c:	57c04fff 	bl	-16308(0xfffc04c) # 1c001598 <gpio_write_pin>
1c005550:	03400000 	andi	$r0,$r0,0x0
1c005554:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005558:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00555c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005560:	4c000020 	jirl	$r0,$r1,0

1c005564 <led_show>:
led_show():
1c005564:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005568:	29803061 	st.w	$r1,$r3,12(0xc)
1c00556c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005570:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005574:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005578:	02aaf58c 	addi.w	$r12,$r12,-1347(0xabd)
1c00557c:	2a00018c 	ld.bu	$r12,$r12,0
1c005580:	0240058c 	sltui	$r12,$r12,1(0x1)
1c005584:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005588:	0015018d 	move	$r13,$r12
1c00558c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005590:	02aa958c 	addi.w	$r12,$r12,-1371(0xaa5)
1c005594:	2900018d 	st.b	$r13,$r12,0
1c005598:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00559c:	02aa658c 	addi.w	$r12,$r12,-1383(0xa99)
1c0055a0:	2a00018c 	ld.bu	$r12,$r12,0
1c0055a4:	00150185 	move	$r5,$r12
1c0055a8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0055ac:	57bfefff 	bl	-16404(0xfffbfec) # 1c001598 <gpio_write_pin>
1c0055b0:	03400000 	andi	$r0,$r0,0x0
1c0055b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0055b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0055bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0055c0:	4c000020 	jirl	$r0,$r1,0

1c0055c4 <esp8266_check_cmd>:
esp8266_check_cmd():
1c0055c4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0055c8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0055cc:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0055d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0055d4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0055d8:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0055dc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0055e0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0055e4:	54034400 	bl	836(0x344) # 1c005928 <Queue_isEmpty>
1c0055e8:	0015008c 	move	$r12,$r4
1c0055ec:	44007980 	bnez	$r12,120(0x78) # 1c005664 <esp8266_check_cmd+0xa0>
1c0055f0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0055f4:	54038400 	bl	900(0x384) # 1c005978 <Queue_HadUse>
1c0055f8:	0015008c 	move	$r12,$r4
1c0055fc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005600:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005604:	28a8518c 	ld.w	$r12,$r12,-1516(0xa14)
1c005608:	2900018d 	st.b	$r13,$r12,0
1c00560c:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c005610:	00150005 	move	$r5,$r0
1c005614:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005618:	28a8c084 	ld.w	$r4,$r4,-1488(0xa30)
1c00561c:	57df7fff 	bl	-8324(0xfffdf7c) # 1c003598 <memset>
1c005620:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005624:	28a7d18c 	ld.w	$r12,$r12,-1548(0x9f4)
1c005628:	2a00018c 	ld.bu	$r12,$r12,0
1c00562c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005630:	00150186 	move	$r6,$r12
1c005634:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c005638:	28a840a5 	ld.w	$r5,$r5,-1520(0xa10)
1c00563c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005640:	5404e400 	bl	1252(0x4e4) # 1c005b24 <Queue_Read>
1c005644:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005648:	28a7418c 	ld.w	$r12,$r12,-1584(0x9d0)
1c00564c:	2a00018c 	ld.bu	$r12,$r12,0
1c005650:	0015018d 	move	$r13,$r12
1c005654:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005658:	28a7c18c 	ld.w	$r12,$r12,-1552(0x9f0)
1c00565c:	0010358c 	add.w	$r12,$r12,$r13
1c005660:	29000180 	st.b	$r0,$r12,0
1c005664:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c005668:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c00566c:	28a77084 	ld.w	$r4,$r4,-1572(0x9dc)
1c005670:	57df8bff 	bl	-8312(0xfffdf88) # 1c0035f8 <pstrstr>
1c005674:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005678:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00567c:	00150184 	move	$r4,$r12
1c005680:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005684:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005688:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00568c:	4c000020 	jirl	$r0,$r1,0

1c005690 <esp8266_send_cmd>:
esp8266_send_cmd():
1c005690:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005694:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005698:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00569c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0056a0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0056a4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0056a8:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0056ac:	001500ec 	move	$r12,$r7
1c0056b0:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c0056b4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0056b8:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c0056bc:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0056c0:	02994084 	addi.w	$r4,$r4,1616(0x650)
1c0056c4:	57c5ebff 	bl	-14872(0xfffc5e8) # 1c001cac <myprintf>
1c0056c8:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c0056cc:	1c000025 	pcaddu12i	$r5,1(0x1)
1c0056d0:	029930a5 	addi.w	$r5,$r5,1612(0x64c)
1c0056d4:	00150004 	move	$r4,$r0
1c0056d8:	57c97bff 	bl	-13960(0xfffc978) # 1c002050 <myprintf2>
1c0056dc:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0056e0:	40007d80 	beqz	$r12,124(0x7c) # 1c00575c <esp8266_send_cmd+0xcc>
1c0056e4:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c0056e8:	40007580 	beqz	$r12,116(0x74) # 1c00575c <esp8266_send_cmd+0xcc>
1c0056ec:	50003400 	b	52(0x34) # 1c005720 <esp8266_send_cmd+0x90>
1c0056f0:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c0056f4:	57de67ff 	bl	-8604(0xfffde64) # 1c003558 <delay_ms>
1c0056f8:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c0056fc:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005700:	57fec7ff 	bl	-316(0xffffec4) # 1c0055c4 <esp8266_check_cmd>
1c005704:	0015008c 	move	$r12,$r4
1c005708:	40001980 	beqz	$r12,24(0x18) # 1c005720 <esp8266_send_cmd+0x90>
1c00570c:	28bf52c5 	ld.w	$r5,$r22,-44(0xfd4)
1c005710:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005714:	02983084 	addi.w	$r4,$r4,1548(0x60c)
1c005718:	57c597ff 	bl	-14956(0xfffc594) # 1c001cac <myprintf>
1c00571c:	50001800 	b	24(0x18) # 1c005734 <esp8266_send_cmd+0xa4>
1c005720:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c005724:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c005728:	297f4acc 	st.h	$r12,$r22,-46(0xfd2)
1c00572c:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c005730:	47ffc19f 	bnez	$r12,-64(0x7fffc0) # 1c0056f0 <esp8266_send_cmd+0x60>
1c005734:	2a7f4acc 	ld.hu	$r12,$r22,-46(0xfd2)
1c005738:	44001180 	bnez	$r12,16(0x10) # 1c005748 <esp8266_send_cmd+0xb8>
1c00573c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005740:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005744:	50001800 	b	24(0x18) # 1c00575c <esp8266_send_cmd+0xcc>
1c005748:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c00574c:	00150185 	move	$r5,$r12
1c005750:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005754:	02976084 	addi.w	$r4,$r4,1496(0x5d8)
1c005758:	57c557ff 	bl	-15020(0xfffc554) # 1c001cac <myprintf>
1c00575c:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c005760:	00150184 	move	$r4,$r12
1c005764:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005768:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00576c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005770:	4c000020 	jirl	$r0,$r1,0

1c005774 <esp8266_init>:
esp8266_init():
1c005774:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005778:	29803061 	st.w	$r1,$r3,12(0xc)
1c00577c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005780:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005784:	1c000024 	pcaddu12i	$r4,1(0x1)
1c005788:	0296c084 	addi.w	$r4,$r4,1456(0x5b0)
1c00578c:	57c523ff 	bl	-15072(0xfffc520) # 1c001cac <myprintf>
1c005790:	02825807 	addi.w	$r7,$r0,150(0x96)
1c005794:	1c000026 	pcaddu12i	$r6,1(0x1)
1c005798:	0296a0c6 	addi.w	$r6,$r6,1448(0x5a8)
1c00579c:	1c000025 	pcaddu12i	$r5,1(0x1)
1c0057a0:	029690a5 	addi.w	$r5,$r5,1444(0x5a4)
1c0057a4:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0057a8:	28a27084 	ld.w	$r4,$r4,-1892(0x89c)
1c0057ac:	57fee7ff 	bl	-284(0xffffee4) # 1c005690 <esp8266_send_cmd>
1c0057b0:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0057b4:	57dda7ff 	bl	-8796(0xfffdda4) # 1c003558 <delay_ms>
1c0057b8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0057bc:	02963084 	addi.w	$r4,$r4,1420(0x58c)
1c0057c0:	57c4efff 	bl	-15124(0xfffc4ec) # 1c001cac <myprintf>
1c0057c4:	03400000 	andi	$r0,$r0,0x0
1c0057c8:	02825807 	addi.w	$r7,$r0,150(0x96)
1c0057cc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0057d0:	0295c0c6 	addi.w	$r6,$r6,1392(0x570)
1c0057d4:	1c000025 	pcaddu12i	$r5,1(0x1)
1c0057d8:	029600a5 	addi.w	$r5,$r5,1408(0x580)
1c0057dc:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c0057e0:	28a19084 	ld.w	$r4,$r4,-1948(0x864)
1c0057e4:	57feafff 	bl	-340(0xffffeac) # 1c005690 <esp8266_send_cmd>
1c0057e8:	0015008c 	move	$r12,$r4
1c0057ec:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c0057c8 <esp8266_init+0x54>
1c0057f0:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0057f4:	57dd67ff 	bl	-8860(0xfffdd64) # 1c003558 <delay_ms>
1c0057f8:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0057fc:	0295a084 	addi.w	$r4,$r4,1384(0x568)
1c005800:	57c4afff 	bl	-15188(0xfffc4ac) # 1c001cac <myprintf>
1c005804:	03400000 	andi	$r0,$r0,0x0
1c005808:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c00580c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c005810:	0294c0c6 	addi.w	$r6,$r6,1328(0x530)
1c005814:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005818:	0295b0a5 	addi.w	$r5,$r5,1388(0x56c)
1c00581c:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005820:	28a09084 	ld.w	$r4,$r4,-2012(0x824)
1c005824:	57fe6fff 	bl	-404(0xffffe6c) # 1c005690 <esp8266_send_cmd>
1c005828:	0015008c 	move	$r12,$r4
1c00582c:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c005808 <esp8266_init+0x94>
1c005830:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005834:	57dd27ff 	bl	-8924(0xfffdd24) # 1c003558 <delay_ms>
1c005838:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00583c:	0295c084 	addi.w	$r4,$r4,1392(0x570)
1c005840:	57c46fff 	bl	-15252(0xfffc46c) # 1c001cac <myprintf>
1c005844:	03400000 	andi	$r0,$r0,0x0
1c005848:	02825807 	addi.w	$r7,$r0,150(0x96)
1c00584c:	1c000026 	pcaddu12i	$r6,1(0x1)
1c005850:	0293c0c6 	addi.w	$r6,$r6,1264(0x4f0)
1c005854:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005858:	029720a5 	addi.w	$r5,$r5,1480(0x5c8)
1c00585c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005860:	289f9084 	ld.w	$r4,$r4,2020(0x7e4)
1c005864:	57fe2fff 	bl	-468(0xffffe2c) # 1c005690 <esp8266_send_cmd>
1c005868:	0015008c 	move	$r12,$r4
1c00586c:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c005848 <esp8266_init+0xd4>
1c005870:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005874:	57dce7ff 	bl	-8988(0xfffdce4) # 1c003558 <delay_ms>
1c005878:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00587c:	02988084 	addi.w	$r4,$r4,1568(0x620)
1c005880:	57c42fff 	bl	-15316(0xfffc42c) # 1c001cac <myprintf>
1c005884:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c005888:	1c000026 	pcaddu12i	$r6,1(0x1)
1c00588c:	0292d0c6 	addi.w	$r6,$r6,1204(0x4b4)
1c005890:	1c000025 	pcaddu12i	$r5,1(0x1)
1c005894:	0299b0a5 	addi.w	$r5,$r5,1644(0x66c)
1c005898:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00589c:	289ea084 	ld.w	$r4,$r4,1960(0x7a8)
1c0058a0:	57fdf3ff 	bl	-528(0xffffdf0) # 1c005690 <esp8266_send_cmd>
1c0058a4:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0058a8:	57dcb3ff 	bl	-9040(0xfffdcb0) # 1c003558 <delay_ms>
1c0058ac:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0058b0:	029ae084 	addi.w	$r4,$r4,1720(0x6b8)
1c0058b4:	57c3fbff 	bl	-15368(0xfffc3f8) # 1c001cac <myprintf>
1c0058b8:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c0058bc:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0058c0:	029200c6 	addi.w	$r6,$r6,1152(0x480)
1c0058c4:	1c000025 	pcaddu12i	$r5,1(0x1)
1c0058c8:	029ba0a5 	addi.w	$r5,$r5,1768(0x6e8)
1c0058cc:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0058d0:	289dd084 	ld.w	$r4,$r4,1908(0x774)
1c0058d4:	57fdbfff 	bl	-580(0xffffdbc) # 1c005690 <esp8266_send_cmd>
1c0058d8:	02819004 	addi.w	$r4,$r0,100(0x64)
1c0058dc:	57dc7fff 	bl	-9092(0xfffdc7c) # 1c003558 <delay_ms>
1c0058e0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0058e4:	029c4084 	addi.w	$r4,$r4,1808(0x710)
1c0058e8:	57c3c7ff 	bl	-15420(0xfffc3c4) # 1c001cac <myprintf>
1c0058ec:	0284b007 	addi.w	$r7,$r0,300(0x12c)
1c0058f0:	1c000026 	pcaddu12i	$r6,1(0x1)
1c0058f4:	029130c6 	addi.w	$r6,$r6,1100(0x44c)
1c0058f8:	1c000025 	pcaddu12i	$r5,1(0x1)
1c0058fc:	029c30a5 	addi.w	$r5,$r5,1804(0x70c)
1c005900:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005904:	289d0084 	ld.w	$r4,$r4,1856(0x740)
1c005908:	57fd8bff 	bl	-632(0xffffd88) # 1c005690 <esp8266_send_cmd>
1c00590c:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005910:	57dc4bff 	bl	-9144(0xfffdc48) # 1c003558 <delay_ms>
1c005914:	03400000 	andi	$r0,$r0,0x0
1c005918:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00591c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005920:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005924:	4c000020 	jirl	$r0,$r1,0

1c005928 <Queue_isEmpty>:
Queue_isEmpty():
1c005928:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00592c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005930:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005934:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005938:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00593c:	44000d80 	bnez	$r12,12(0xc) # 1c005948 <Queue_isEmpty+0x20>
1c005940:	0015000c 	move	$r12,$r0
1c005944:	50002400 	b	36(0x24) # 1c005968 <Queue_isEmpty+0x40>
1c005948:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00594c:	2a40018d 	ld.hu	$r13,$r12,0
1c005950:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005954:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005958:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c005964 <Queue_isEmpty+0x3c>
1c00595c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005960:	50000800 	b	8(0x8) # 1c005968 <Queue_isEmpty+0x40>
1c005964:	0015000c 	move	$r12,$r0
1c005968:	00150184 	move	$r4,$r12
1c00596c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005970:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005974:	4c000020 	jirl	$r0,$r1,0

1c005978 <Queue_HadUse>:
Queue_HadUse():
1c005978:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00597c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005980:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005984:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005988:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00598c:	44000d80 	bnez	$r12,12(0xc) # 1c005998 <Queue_HadUse+0x20>
1c005990:	0015000c 	move	$r12,$r0
1c005994:	50003800 	b	56(0x38) # 1c0059cc <Queue_HadUse+0x54>
1c005998:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00599c:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c0059a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0059a4:	2a40018c 	ld.hu	$r12,$r12,0
1c0059a8:	001131ac 	sub.w	$r12,$r13,$r12
1c0059ac:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0059b0:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c0059b4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0059b8:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0059bc:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0059c0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0059c8 <Queue_HadUse+0x50>
1c0059c4:	002a0007 	break	0x7
1c0059c8:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0059cc:	00150184 	move	$r4,$r12
1c0059d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0059d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0059d8:	4c000020 	jirl	$r0,$r1,0

1c0059dc <Queue_NoUse>:
Queue_NoUse():
1c0059dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0059e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0059e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0059e8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0059ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0059f0:	44000d80 	bnez	$r12,12(0xc) # 1c0059fc <Queue_NoUse+0x20>
1c0059f4:	0015000c 	move	$r12,$r0
1c0059f8:	50004000 	b	64(0x40) # 1c005a38 <Queue_NoUse+0x5c>
1c0059fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a00:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005a04:	0015018d 	move	$r13,$r12
1c005a08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005a0c:	2a40018c 	ld.hu	$r12,$r12,0
1c005a10:	001131ac 	sub.w	$r12,$r13,$r12
1c005a14:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c005a18:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005a1c:	0020b1ae 	mod.w	$r14,$r13,$r12
1c005a20:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005a28 <Queue_NoUse+0x4c>
1c005a24:	002a0007 	break	0x7
1c005a28:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c005a2c:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c005a30:	001131ac 	sub.w	$r12,$r13,$r12
1c005a34:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005a38:	00150184 	move	$r4,$r12
1c005a3c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005a40:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005a44:	4c000020 	jirl	$r0,$r1,0

1c005a48 <Queue_Wirte>:
Queue_Wirte():
1c005a48:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005a4c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005a50:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005a54:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005a58:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005a5c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005a60:	001500cc 	move	$r12,$r6
1c005a64:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c005a68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005a6c:	44000d80 	bnez	$r12,12(0xc) # 1c005a78 <Queue_Wirte+0x30>
1c005a70:	0015000c 	move	$r12,$r0
1c005a74:	50009c00 	b	156(0x9c) # 1c005b10 <Queue_Wirte+0xc8>
1c005a78:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005a7c:	57ff63ff 	bl	-160(0xfffff60) # 1c0059dc <Queue_NoUse>
1c005a80:	0015008c 	move	$r12,$r4
1c005a84:	0015018d 	move	$r13,$r12
1c005a88:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005a8c:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c005a98 <Queue_Wirte+0x50>
1c005a90:	0015000c 	move	$r12,$r0
1c005a94:	50007c00 	b	124(0x7c) # 1c005b10 <Queue_Wirte+0xc8>
1c005a98:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005a9c:	50006400 	b	100(0x64) # 1c005b00 <Queue_Wirte+0xb8>
1c005aa0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005aa4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005aa8:	001031ac 	add.w	$r12,$r13,$r12
1c005aac:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005ab0:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c005ab4:	001501ae 	move	$r14,$r13
1c005ab8:	2a00018d 	ld.bu	$r13,$r12,0
1c005abc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005ac0:	0010398c 	add.w	$r12,$r12,$r14
1c005ac4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c005ac8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005acc:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c005ad0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ad4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005ad8:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005adc:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005ae0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005ae8 <Queue_Wirte+0xa0>
1c005ae4:	002a0007 	break	0x7
1c005ae8:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005aec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005af0:	2940098d 	st.h	$r13,$r12,2(0x2)
1c005af4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005af8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005afc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005b00:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005b04:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005b08:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c005aa0 <Queue_Wirte+0x58>
1c005b0c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005b10:	00150184 	move	$r4,$r12
1c005b14:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005b18:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005b1c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005b20:	4c000020 	jirl	$r0,$r1,0

1c005b24 <Queue_Read>:
Queue_Read():
1c005b24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005b28:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005b2c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005b30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005b34:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005b38:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005b3c:	001500cc 	move	$r12,$r6
1c005b40:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c005b44:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005b48:	44000d80 	bnez	$r12,12(0xc) # 1c005b54 <Queue_Read+0x30>
1c005b4c:	0015000c 	move	$r12,$r0
1c005b50:	50009c00 	b	156(0x9c) # 1c005bec <Queue_Read+0xc8>
1c005b54:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c005b58:	57fe23ff 	bl	-480(0xffffe20) # 1c005978 <Queue_HadUse>
1c005b5c:	0015008c 	move	$r12,$r4
1c005b60:	0015018d 	move	$r13,$r12
1c005b64:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005b68:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c005b74 <Queue_Read+0x50>
1c005b6c:	0015000c 	move	$r12,$r0
1c005b70:	50007c00 	b	124(0x7c) # 1c005bec <Queue_Read+0xc8>
1c005b74:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005b78:	50006400 	b	100(0x64) # 1c005bdc <Queue_Read+0xb8>
1c005b7c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005b80:	2a40018c 	ld.hu	$r12,$r12,0
1c005b84:	0015018e 	move	$r14,$r12
1c005b88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005b8c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c005b90:	001031ac 	add.w	$r12,$r13,$r12
1c005b94:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005b98:	001039ad 	add.w	$r13,$r13,$r14
1c005b9c:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c005ba0:	2900018d 	st.b	$r13,$r12,0
1c005ba4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005ba8:	2a40018c 	ld.hu	$r12,$r12,0
1c005bac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005bb0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005bb4:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c005bb8:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c005bbc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005bc4 <Queue_Read+0xa0>
1c005bc0:	002a0007 	break	0x7
1c005bc4:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005bc8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005bcc:	2940018d 	st.h	$r13,$r12,0
1c005bd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005bd4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005bd8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005bdc:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c005be0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005be4:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c005b7c <Queue_Read+0x58>
1c005be8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005bec:	00150184 	move	$r4,$r12
1c005bf0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005bf4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005bf8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005bfc:	4c000020 	jirl	$r0,$r1,0

1c005c00 <Humidity_process_init>:
Humidity_process_init():
1c005c00:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005c04:	29803061 	st.w	$r1,$r3,12(0xc)
1c005c08:	29802076 	st.w	$r22,$r3,8(0x8)
1c005c0c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005c10:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005c14:	28907084 	ld.w	$r4,$r4,1052(0x41c)
1c005c18:	54006000 	bl	96(0x60) # 1c005c78 <Humidity_System_Init>
1c005c1c:	03400000 	andi	$r0,$r0,0x0
1c005c20:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005c24:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005c28:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005c2c:	4c000020 	jirl	$r0,$r1,0

1c005c30 <Humidity_process>:
Humidity_process():
1c005c30:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005c34:	29803061 	st.w	$r1,$r3,12(0xc)
1c005c38:	29802076 	st.w	$r22,$r3,8(0x8)
1c005c3c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005c40:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005c44:	288fb084 	ld.w	$r4,$r4,1004(0x3ec)
1c005c48:	5400a800 	bl	168(0xa8) # 1c005cf0 <Humidity_SHT10_Get>
1c005c4c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005c50:	288f8084 	ld.w	$r4,$r4,992(0x3e0)
1c005c54:	54009c00 	bl	156(0x9c) # 1c005cf0 <Humidity_SHT10_Get>
1c005c58:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c005c5c:	288f5084 	ld.w	$r4,$r4,980(0x3d4)
1c005c60:	54029400 	bl	660(0x294) # 1c005ef4 <Humidity_value_feedback>
1c005c64:	03400000 	andi	$r0,$r0,0x0
1c005c68:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005c6c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005c70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005c74:	4c000020 	jirl	$r0,$r1,0

1c005c78 <Humidity_System_Init>:
Humidity_System_Init():
1c005c78:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005c7c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005c80:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005c84:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005c88:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005c8c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005c90:	29402980 	st.h	$r0,$r12,10(0xa)
1c005c94:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005c98:	29803180 	st.w	$r0,$r12,12(0xc)
1c005c9c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005ca0:	50002400 	b	36(0x24) # 1c005cc4 <Humidity_System_Init+0x4c>
1c005ca4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005ca8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005cac:	0040858c 	slli.w	$r12,$r12,0x1
1c005cb0:	001031ac 	add.w	$r12,$r13,$r12
1c005cb4:	29400180 	st.h	$r0,$r12,0
1c005cb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005cbc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005cc0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005cc4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005cc8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005ccc:	67ffd98d 	bge	$r12,$r13,-40(0x3ffd8) # 1c005ca4 <Humidity_System_Init+0x2c>
1c005cd0:	57db9fff 	bl	-9316(0xfffdb9c) # 1c00386c <Adc_powerOn>
1c005cd4:	00150004 	move	$r4,$r0
1c005cd8:	57dbebff 	bl	-9240(0xfffdbe8) # 1c0038c0 <Adc_open>
1c005cdc:	03400000 	andi	$r0,$r0,0x0
1c005ce0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005ce4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005ce8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005cec:	4c000020 	jirl	$r0,$r1,0

1c005cf0 <Humidity_SHT10_Get>:
Humidity_SHT10_Get():
1c005cf0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005cf4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005cf8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005cfc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005d00:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005d04:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005d08:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005d0c:	297f8ac0 	st.h	$r0,$r22,-30(0xfe2)
1c005d10:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005d14:	29402980 	st.h	$r0,$r12,10(0xa)
1c005d18:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005d1c:	29803180 	st.w	$r0,$r12,12(0xc)
1c005d20:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c005d24:	50002400 	b	36(0x24) # 1c005d48 <Humidity_SHT10_Get+0x58>
1c005d28:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005d2c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005d30:	0040858c 	slli.w	$r12,$r12,0x1
1c005d34:	001031ac 	add.w	$r12,$r13,$r12
1c005d38:	29400180 	st.h	$r0,$r12,0
1c005d3c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c005d40:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d44:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c005d48:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c005d4c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005d50:	67ffd98d 	bge	$r12,$r13,-40(0x3ffd8) # 1c005d28 <Humidity_SHT10_Get+0x38>
1c005d54:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005d58:	50003400 	b	52(0x34) # 1c005d8c <Humidity_SHT10_Get+0x9c>
1c005d5c:	00150004 	move	$r4,$r0
1c005d60:	57dc13ff 	bl	-9200(0xfffdc10) # 1c003970 <Adc_Measure>
1c005d64:	0015008c 	move	$r12,$r4
1c005d68:	0015018e 	move	$r14,$r12
1c005d6c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005d70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d74:	0040858c 	slli.w	$r12,$r12,0x1
1c005d78:	001031ac 	add.w	$r12,$r13,$r12
1c005d7c:	2940018e 	st.h	$r14,$r12,0
1c005d80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005d84:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d88:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005d8c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005d90:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005d94:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c005d5c <Humidity_SHT10_Get+0x6c>
1c005d98:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c005d9c:	5000c800 	b	200(0xc8) # 1c005e64 <Humidity_SHT10_Get+0x174>
1c005da0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005da4:	5000a000 	b	160(0xa0) # 1c005e44 <Humidity_SHT10_Get+0x154>
1c005da8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005dac:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005db0:	0040858c 	slli.w	$r12,$r12,0x1
1c005db4:	001031ac 	add.w	$r12,$r13,$r12
1c005db8:	2a40018d 	ld.hu	$r13,$r12,0
1c005dbc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005dc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005dc4:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c005dc8:	0040858c 	slli.w	$r12,$r12,0x1
1c005dcc:	001031cc 	add.w	$r12,$r14,$r12
1c005dd0:	2a40018c 	ld.hu	$r12,$r12,0
1c005dd4:	6c00658d 	bgeu	$r12,$r13,100(0x64) # 1c005e38 <Humidity_SHT10_Get+0x148>
1c005dd8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005ddc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005de0:	0040858c 	slli.w	$r12,$r12,0x1
1c005de4:	001031ac 	add.w	$r12,$r13,$r12
1c005de8:	2a40018c 	ld.hu	$r12,$r12,0
1c005dec:	297f8acc 	st.h	$r12,$r22,-30(0xfe2)
1c005df0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005df4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005df8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005dfc:	0040858c 	slli.w	$r12,$r12,0x1
1c005e00:	001031ac 	add.w	$r12,$r13,$r12
1c005e04:	2a40018d 	ld.hu	$r13,$r12,0
1c005e08:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c005e0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005e10:	0040858c 	slli.w	$r12,$r12,0x1
1c005e14:	001031cc 	add.w	$r12,$r14,$r12
1c005e18:	2940018d 	st.h	$r13,$r12,0
1c005e1c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005e20:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e24:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005e28:	0040858c 	slli.w	$r12,$r12,0x1
1c005e2c:	001031ac 	add.w	$r12,$r13,$r12
1c005e30:	2a7f8acd 	ld.hu	$r13,$r22,-30(0xfe2)
1c005e34:	2940018d 	st.h	$r13,$r12,0
1c005e38:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005e3c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e40:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005e44:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c005e48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e4c:	001131ac 	sub.w	$r12,$r13,$r12
1c005e50:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c005e54:	63ff55ac 	blt	$r13,$r12,-172(0x3ff54) # 1c005da8 <Humidity_SHT10_Get+0xb8>
1c005e58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005e5c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e60:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005e64:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005e68:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005e6c:	67ff358d 	bge	$r12,$r13,-204(0x3ff34) # 1c005da0 <Humidity_SHT10_Get+0xb0>
1c005e70:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005e74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005e78:	50003800 	b	56(0x38) # 1c005eb0 <Humidity_SHT10_Get+0x1c0>
1c005e7c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005e80:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c005e84:	28bf72ce 	ld.w	$r14,$r22,-36(0xfdc)
1c005e88:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005e8c:	004085ad 	slli.w	$r13,$r13,0x1
1c005e90:	001035cd 	add.w	$r13,$r14,$r13
1c005e94:	2a4001ad 	ld.hu	$r13,$r13,0
1c005e98:	0010358d 	add.w	$r13,$r12,$r13
1c005e9c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005ea0:	2980318d 	st.w	$r13,$r12,12(0xc)
1c005ea4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005ea8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005eac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c005eb0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c005eb4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005eb8:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c005e7c <Humidity_SHT10_Get+0x18c>
1c005ebc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005ec0:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c005ec4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005ec8:	002131ae 	div.wu	$r14,$r13,$r12
1c005ecc:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005ed4 <Humidity_SHT10_Get+0x1e4>
1c005ed0:	002a0007 	break	0x7
1c005ed4:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c005ed8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005edc:	2940298d 	st.h	$r13,$r12,10(0xa)
1c005ee0:	03400000 	andi	$r0,$r0,0x0
1c005ee4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005ee8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005eec:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005ef0:	4c000020 	jirl	$r0,$r1,0

1c005ef4 <Humidity_value_feedback>:
Humidity_value_feedback():
1c005ef4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005ef8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c005efc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005f00:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c005f04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f08:	2a40298c 	ld.hu	$r12,$r12,10(0xa)
1c005f0c:	03bffc0d 	ori	$r13,$r0,0xfff
1c005f10:	001131ac 	sub.w	$r12,$r13,$r12
1c005f14:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005f18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f1c:	2940418d 	st.h	$r13,$r12,16(0x10)
1c005f20:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f24:	2a40418c 	ld.hu	$r12,$r12,16(0x10)
1c005f28:	0015018d 	move	$r13,$r12
1c005f2c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c005f30:	001c31ad 	mul.w	$r13,$r13,$r12
1c005f34:	03bffc0c 	ori	$r12,$r0,0xfff
1c005f38:	002031ae 	div.w	$r14,$r13,$r12
1c005f3c:	5c000980 	bne	$r12,$r0,8(0x8) # 1c005f44 <Humidity_value_feedback+0x50>
1c005f40:	002a0007 	break	0x7
1c005f44:	001501cd 	move	$r13,$r14
1c005f48:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c005f4c:	2980518d 	st.w	$r13,$r12,20(0x14)
1c005f50:	03400000 	andi	$r0,$r0,0x0
1c005f54:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c005f58:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005f5c:	4c000020 	jirl	$r0,$r1,0

1c005f60 <humidity_type_Piont>:
humidity_type_Piont():
1c005f60:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005f64:	29803076 	st.w	$r22,$r3,12(0xc)
1c005f68:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005f6c:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c005f70:	2883018c 	ld.w	$r12,$r12,192(0xc0)
1c005f74:	00150184 	move	$r4,$r12
1c005f78:	28803076 	ld.w	$r22,$r3,12(0xc)
1c005f7c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005f80:	4c000020 	jirl	$r0,$r1,0

1c005f84 <getModbusCRC16>:
getModbusCRC16():
1c005f84:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005f88:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c005f8c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005f90:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005f94:	001500ac 	move	$r12,$r5
1c005f98:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c005f9c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c005fa0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c005fa4:	293fb6c0 	st.b	$r0,$r22,-19(0xfed)
1c005fa8:	50008800 	b	136(0x88) # 1c006030 <getModbusCRC16+0xac>
1c005fac:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c005fb0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c005fb4:	001031ac 	add.w	$r12,$r13,$r12
1c005fb8:	2a00018c 	ld.bu	$r12,$r12,0
1c005fbc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005fc0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c005fc4:	0015b1ac 	xor	$r12,$r13,$r12
1c005fc8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c005fcc:	293fb2c0 	st.b	$r0,$r22,-20(0xfec)
1c005fd0:	50004800 	b	72(0x48) # 1c006018 <getModbusCRC16+0x94>
1c005fd4:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c005fd8:	0340058c 	andi	$r12,$r12,0x1
1c005fdc:	40002580 	beqz	$r12,36(0x24) # 1c006000 <getModbusCRC16+0x7c>
1c005fe0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c005fe4:	0044858c 	srli.w	$r12,$r12,0x1
1c005fe8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005fec:	15ffff4c 	lu12i.w	$r12,-6(0xffffa)
1c005ff0:	0380058c 	ori	$r12,$r12,0x1
1c005ff4:	0015b1ac 	xor	$r12,$r13,$r12
1c005ff8:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c005ffc:	50001000 	b	16(0x10) # 1c00600c <getModbusCRC16+0x88>
1c006000:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c006004:	0044858c 	srli.w	$r12,$r12,0x1
1c006008:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c00600c:	2a3fb2cc 	ld.bu	$r12,$r22,-20(0xfec)
1c006010:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006014:	293fb2cc 	st.b	$r12,$r22,-20(0xfec)
1c006018:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c00601c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c006020:	6fffb58d 	bgeu	$r12,$r13,-76(0x3ffb4) # 1c005fd4 <getModbusCRC16+0x50>
1c006024:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c006028:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00602c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c006030:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c006034:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006038:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c00603c:	6bff718d 	bltu	$r12,$r13,-144(0x3ff70) # 1c005fac <getModbusCRC16+0x28>
1c006040:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c006044:	0044a18c 	srli.w	$r12,$r12,0x8
1c006048:	006f818e 	bstrpick.w	$r14,$r12,0xf,0x0
1c00604c:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c006050:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006054:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006058:	001031ac 	add.w	$r12,$r13,$r12
1c00605c:	006781cd 	bstrpick.w	$r13,$r14,0x7,0x0
1c006060:	2900018d 	st.b	$r13,$r12,0
1c006064:	2a7f6acc 	ld.hu	$r12,$r22,-38(0xfda)
1c006068:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c00606c:	001031ac 	add.w	$r12,$r13,$r12
1c006070:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c006074:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c006078:	2900018d 	st.b	$r13,$r12,0
1c00607c:	03400000 	andi	$r0,$r0,0x0
1c006080:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c006084:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006088:	4c000020 	jirl	$r0,$r1,0

1c00608c <Temp_Hum_Data_Piont>:
Temp_Hum_Data_Piont():
1c00608c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006090:	29803076 	st.w	$r22,$r3,12(0xc)
1c006094:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006098:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c00609c:	28be318c 	ld.w	$r12,$r12,-116(0xf8c)
1c0060a0:	00150184 	move	$r4,$r12
1c0060a4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0060a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0060ac:	4c000020 	jirl	$r0,$r1,0

1c0060b0 <PWM_485_Data_Piont>:
PWM_485_Data_Piont():
1c0060b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0060b4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0060b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0060bc:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0060c0:	28bdd18c 	ld.w	$r12,$r12,-140(0xf74)
1c0060c4:	00150184 	move	$r4,$r12
1c0060c8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0060cc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0060d0:	4c000020 	jirl	$r0,$r1,0

1c0060d4 <mqtt_process_init>:
mqtt_process_init():
1c0060d4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0060d8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0060dc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0060e0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0060e4:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0060e8:	28bcb084 	ld.w	$r4,$r4,-212(0xf2c)
1c0060ec:	54003400 	bl	52(0x34) # 1c006120 <Mqtt_System_Init>
1c0060f0:	03400000 	andi	$r0,$r0,0x0
1c0060f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0060f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0060fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006100:	4c000020 	jirl	$r0,$r1,0

1c006104 <mqtt_process>:
mqtt_process():
1c006104:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006108:	29803076 	st.w	$r22,$r3,12(0xc)
1c00610c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006110:	03400000 	andi	$r0,$r0,0x0
1c006114:	28803076 	ld.w	$r22,$r3,12(0xc)
1c006118:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00611c:	4c000020 	jirl	$r0,$r1,0

1c006120 <Mqtt_System_Init>:
Mqtt_System_Init():
1c006120:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006124:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006128:	29806076 	st.w	$r22,$r3,24(0x18)
1c00612c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006130:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006134:	57f643ff 	bl	-2496(0xffff640) # 1c005774 <esp8266_init>
1c006138:	57f3dbff 	bl	-3112(0xffff3d8) # 1c005510 <tempareture_type_Piont>
1c00613c:	0015008d 	move	$r13,$r4
1c006140:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006144:	2980118d 	st.w	$r13,$r12,4(0x4)
1c006148:	57fe1bff 	bl	-488(0xffffe18) # 1c005f60 <humidity_type_Piont>
1c00614c:	0015008d 	move	$r13,$r4
1c006150:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006154:	2980018d 	st.w	$r13,$r12,0
1c006158:	03400000 	andi	$r0,$r0,0x0
1c00615c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006160:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006164:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006168:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c006180 <msg_wakeup>:
msg_wakeup():
1c006180:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01cce0 <_sidata+0x15c98>
1c006184:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c006189 <hexdecarr>:
hexdecarr():
1c006189:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c00618d:	37363534 	0x37363534
1c006191:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfec2c9 <_start-0x13d37>
1c006195:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfec6f9 <_start-0x13907>
1c006199:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00619d:	79654b0a 	0x79654b0a
1c0061a1:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c0061a5:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c0061a9:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c0061ad:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01d21d <_sidata+0x161d5>
1c0061b1:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffd111 <_start-0x2eef>
1c0061b5:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c0061b9:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffd11d <_start-0x2ee3>
1c0061bd:	72616220 	0x72616220
1c0061c1:	0a0d216b 	0x0a0d216b
1c0061c5:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0061c9:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffc33d <_start-0x3cc3>
1c0061cd:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c0061d1:	cc000a0d 	0xcc000a0d
1c0061d5:	e81c001e 	0xe81c001e
1c0061d9:	e81c001f 	0xe81c001f
1c0061dd:	e81c001f 	0xe81c001f
1c0061e1:	e81c001f 	0xe81c001f
1c0061e5:	e81c001f 	0xe81c001f
1c0061e9:	e81c001f 	0xe81c001f
1c0061ed:	e81c001f 	0xe81c001f
1c0061f1:	e81c001f 	0xe81c001f
1c0061f5:	e81c001f 	0xe81c001f
1c0061f9:	e81c001f 	0xe81c001f
1c0061fd:	e41c001f 	0xe41c001f
1c006201:	6c1c001e 	bgeu	$r0,$r30,7168(0x1c00) # 1c007e01 <_sidata+0xdb9>
1c006205:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c007e05 <_sidata+0xdbd>
1c006209:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c007e09 <_sidata+0xdc1>
1c00620d:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c007e0d <_sidata+0xdc5>
1c006211:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c007e11 <_sidata+0xdc9>
1c006215:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c007e15 <_sidata+0xdcd>
1c006219:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c007e19 <_sidata+0xdd1>
1c00621d:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c007e1d <_sidata+0xdd5>
1c006221:	6c1c001f 	bgeu	$r0,$r31,7168(0x1c00) # 1c007e21 <_sidata+0xdd9>
1c006225:	e81c001f 	0xe81c001f
1c006229:	e81c001f 	0xe81c001f
1c00622d:	e81c001f 	0xe81c001f
1c006231:	e81c001f 	0xe81c001f
1c006235:	e81c001f 	0xe81c001f
1c006239:	e81c001f 	0xe81c001f
1c00623d:	e81c001f 	0xe81c001f
1c006241:	e81c001f 	0xe81c001f
1c006245:	e81c001f 	0xe81c001f
1c006249:	e81c001f 	0xe81c001f
1c00624d:	e81c001f 	0xe81c001f
1c006251:	e81c001f 	0xe81c001f
1c006255:	e81c001f 	0xe81c001f
1c006259:	e81c001f 	0xe81c001f
1c00625d:	e81c001f 	0xe81c001f
1c006261:	e81c001f 	0xe81c001f
1c006265:	e81c001f 	0xe81c001f
1c006269:	e81c001f 	0xe81c001f
1c00626d:	e81c001f 	0xe81c001f
1c006271:	e81c001f 	0xe81c001f
1c006275:	e81c001f 	0xe81c001f
1c006279:	e81c001f 	0xe81c001f
1c00627d:	e81c001f 	0xe81c001f
1c006281:	e81c001f 	0xe81c001f
1c006285:	e81c001f 	0xe81c001f
1c006289:	e81c001f 	0xe81c001f
1c00628d:	e81c001f 	0xe81c001f
1c006291:	e81c001f 	0xe81c001f
1c006295:	e81c001f 	0xe81c001f
1c006299:	e81c001f 	0xe81c001f
1c00629d:	e81c001f 	0xe81c001f
1c0062a1:	e81c001f 	0xe81c001f
1c0062a5:	e81c001f 	0xe81c001f
1c0062a9:	e81c001f 	0xe81c001f
1c0062ad:	e81c001f 	0xe81c001f
1c0062b1:	e81c001f 	0xe81c001f
1c0062b5:	e81c001f 	0xe81c001f
1c0062b9:	e81c001f 	0xe81c001f
1c0062bd:	e81c001f 	0xe81c001f
1c0062c1:	e81c001f 	0xe81c001f
1c0062c5:	5c1c001f 	bne	$r0,$r31,7168(0x1c00) # 1c007ec5 <_sidata+0xe7d>
1c0062c9:	841c001e 	0x841c001e
1c0062cd:	ec1c001d 	0xec1c001d
1c0062d1:	e81c001d 	0xe81c001d
1c0062d5:	e81c001f 	0xe81c001f
1c0062d9:	e81c001f 	0xe81c001f
1c0062dd:	e81c001f 	0xe81c001f
1c0062e1:	e81c001f 	0xe81c001f
1c0062e5:	e81c001f 	0xe81c001f
1c0062e9:	e81c001f 	0xe81c001f
1c0062ed:	e81c001f 	0xe81c001f
1c0062f1:	e81c001f 	0xe81c001f
1c0062f5:	e81c001f 	0xe81c001f
1c0062f9:	241c001f 	ldptr.w	$r31,$r0,7168(0x1c00)
1c0062fd:	941c001e 	0x941c001e
1c006301:	e81c001e 	0xe81c001e
1c006305:	e81c001f 	0xe81c001f
1c006309:	581c001f 	beq	$r0,$r31,7168(0x1c00) # 1c007f09 <_sidata+0xec1>
1c00630d:	e81c001d 	0xe81c001d
1c006311:	b41c001f 	0xb41c001f
1c006315:	e81c001d 	0xe81c001d
1c006319:	e81c001f 	0xe81c001f
1c00631d:	941c001f 	0x941c001f
1c006321:	c01c001e 	0xc01c001e
1c006325:	e41c0022 	0xe41c0022
1c006329:	e41c0023 	0xe41c0023
1c00632d:	e41c0023 	0xe41c0023
1c006331:	e41c0023 	0xe41c0023
1c006335:	e41c0023 	0xe41c0023
1c006339:	e41c0023 	0xe41c0023
1c00633d:	e41c0023 	0xe41c0023
1c006341:	e41c0023 	0xe41c0023
1c006345:	e41c0023 	0xe41c0023
1c006349:	e41c0023 	0xe41c0023
1c00634d:	e01c0023 	0xe01c0023
1c006351:	681c0022 	bltu	$r1,$r2,7168(0x1c00) # 1c007f51 <_sidata+0xf09>
1c006355:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c007f55 <_sidata+0xf0d>
1c006359:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c007f59 <_sidata+0xf11>
1c00635d:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c007f5d <_sidata+0xf15>
1c006361:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c007f61 <_sidata+0xf19>
1c006365:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c007f65 <_sidata+0xf1d>
1c006369:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c007f69 <_sidata+0xf21>
1c00636d:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c007f6d <_sidata+0xf25>
1c006371:	681c0023 	bltu	$r1,$r3,7168(0x1c00) # 1c007f71 <_sidata+0xf29>
1c006375:	e41c0023 	0xe41c0023
1c006379:	e41c0023 	0xe41c0023
1c00637d:	e41c0023 	0xe41c0023
1c006381:	e41c0023 	0xe41c0023
1c006385:	e41c0023 	0xe41c0023
1c006389:	e41c0023 	0xe41c0023
1c00638d:	e41c0023 	0xe41c0023
1c006391:	e41c0023 	0xe41c0023
1c006395:	e41c0023 	0xe41c0023
1c006399:	e41c0023 	0xe41c0023
1c00639d:	e41c0023 	0xe41c0023
1c0063a1:	e41c0023 	0xe41c0023
1c0063a5:	e41c0023 	0xe41c0023
1c0063a9:	e41c0023 	0xe41c0023
1c0063ad:	e41c0023 	0xe41c0023
1c0063b1:	e41c0023 	0xe41c0023
1c0063b5:	e41c0023 	0xe41c0023
1c0063b9:	e41c0023 	0xe41c0023
1c0063bd:	e41c0023 	0xe41c0023
1c0063c1:	e41c0023 	0xe41c0023
1c0063c5:	e41c0023 	0xe41c0023
1c0063c9:	e41c0023 	0xe41c0023
1c0063cd:	e41c0023 	0xe41c0023
1c0063d1:	e41c0023 	0xe41c0023
1c0063d5:	e41c0023 	0xe41c0023
1c0063d9:	e41c0023 	0xe41c0023
1c0063dd:	e41c0023 	0xe41c0023
1c0063e1:	e41c0023 	0xe41c0023
1c0063e5:	e41c0023 	0xe41c0023
1c0063e9:	e41c0023 	0xe41c0023
1c0063ed:	7c1c0023 	0x7c1c0023
1c0063f1:	e41c0022 	0xe41c0022
1c0063f5:	e41c0023 	0xe41c0023
1c0063f9:	e41c0023 	0xe41c0023
1c0063fd:	e41c0023 	0xe41c0023
1c006401:	e41c0023 	0xe41c0023
1c006405:	e41c0023 	0xe41c0023
1c006409:	e41c0023 	0xe41c0023
1c00640d:	e41c0023 	0xe41c0023
1c006411:	e41c0023 	0xe41c0023
1c006415:	381c0023 	stx.d	$r3,$r1,$r0
1c006419:	341c0022 	0x341c0022
1c00641d:	b01c0021 	0xb01c0021
1c006421:	e41c0021 	0xe41c0021
1c006425:	e41c0023 	0xe41c0023
1c006429:	e41c0023 	0xe41c0023
1c00642d:	e41c0023 	0xe41c0023
1c006431:	e41c0023 	0xe41c0023
1c006435:	e41c0023 	0xe41c0023
1c006439:	e41c0023 	0xe41c0023
1c00643d:	e41c0023 	0xe41c0023
1c006441:	e41c0023 	0xe41c0023
1c006445:	e41c0023 	0xe41c0023
1c006449:	f41c0023 	0xf41c0023
1c00644d:	7c1c0021 	0x7c1c0021
1c006451:	e41c0022 	0xe41c0022
1c006455:	e41c0023 	0xe41c0023
1c006459:	001c0023 	mul.w	$r3,$r1,$r0
1c00645d:	e41c0021 	0xe41c0021
1c006461:	6c1c0023 	bgeu	$r1,$r3,7168(0x1c00) # 1c008061 <_sidata+0x1019>
1c006465:	e41c0021 	0xe41c0021
1c006469:	e41c0023 	0xe41c0023
1c00646d:	7c1c0023 	0x7c1c0023
1c006471:	0a1c0022 	xvfmadd.s	$xr2,$xr1,$xr0,$xr24
1c006475:	7c000000 	0x7c000000
1c006479:	7c7c7c7c 	0x7c7c7c7c
1c00647d:	7c7c7c7c 	0x7c7c7c7c
1c006481:	7c7c7c7c 	0x7c7c7c7c
1c006485:	7c7c7c7c 	0x7c7c7c7c
1c006489:	7c7c7c7c 	0x7c7c7c7c
1c00648d:	7c7c7c7c 	0x7c7c7c7c
1c006491:	7c7c7c7c 	0x7c7c7c7c
1c006495:	7c7c7c7c 	0x7c7c7c7c
1c006499:	7c7c7c7c 	0x7c7c7c7c
1c00649d:	7c7c7c7c 	0x7c7c7c7c
1c0064a1:	7c7c7c7c 	0x7c7c7c7c
1c0064a5:	7c7c7c7c 	0x7c7c7c7c
1c0064a9:	7c7c7c7c 	0x7c7c7c7c
1c0064ad:	7c7c7c7c 	0x7c7c7c7c
1c0064b1:	7c7c7c7c 	0x7c7c7c7c
1c0064b5:	7c7c7c7c 	0x7c7c7c7c
1c0064b9:	7c7c7c7c 	0x7c7c7c7c
1c0064bd:	7c7c7c7c 	0x7c7c7c7c
1c0064c1:	7c7c7c7c 	0x7c7c7c7c
1c0064c5:	7c7c7c7c 	0x7c7c7c7c
1c0064c9:	7c7c7c7c 	0x7c7c7c7c
1c0064cd:	7c7c7c7c 	0x7c7c7c7c
1c0064d1:	7c7c7c7c 	0x7c7c7c7c
1c0064d5:	7c7c7c7c 	0x7c7c7c7c
1c0064d9:	7c00000a 	0x7c00000a
1c0064dd:	7c20207c 	0x7c20207c
1c0064e1:	7c7c7c7c 	0x7c7c7c7c
1c0064e5:	7c7c7c7c 	0x7c7c7c7c
1c0064e9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0064ed:	7c202020 	0x7c202020
1c0064f1:	7c7c7c7c 	0x7c7c7c7c
1c0064f5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0064f9:	7c202020 	0x7c202020
1c0064fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006501:	7c7c2020 	0x7c7c2020
1c006505:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006509:	7c7c7c20 	0x7c7c7c20
1c00650d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006511:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006515:	7c7c7c7c 	0x7c7c7c7c
1c006519:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00651d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006521:	7c7c7c7c 	0x7c7c7c7c
1c006525:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006529:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00652d:	7c7c7c7c 	0x7c7c7c7c
1c006531:	7c202020 	0x7c202020
1c006535:	7c7c7c7c 	0x7c7c7c7c
1c006539:	7c7c2020 	0x7c7c2020
1c00653d:	7c00000a 	0x7c00000a
1c006541:	7c20207c 	0x7c20207c
1c006545:	7c7c7c7c 	0x7c7c7c7c
1c006549:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00654d:	7c7c2020 	0x7c7c2020
1c006551:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006555:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006559:	7c7c2020 	0x7c7c2020
1c00655d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006561:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006565:	7c202020 	0x7c202020
1c006569:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00656d:	7c7c7c20 	0x7c7c7c20
1c006571:	7c20207c 	0x7c20207c
1c006575:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006579:	7c7c7c20 	0x7c7c7c20
1c00657d:	7c202020 	0x7c202020
1c006581:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006585:	7c7c7c20 	0x7c7c7c20
1c006589:	7c202020 	0x7c202020
1c00658d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006591:	7c7c7c20 	0x7c7c7c20
1c006595:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006599:	7c7c7c7c 	0x7c7c7c7c
1c00659d:	7c7c2020 	0x7c7c2020
1c0065a1:	7c00000a 	0x7c00000a
1c0065a5:	7c20207c 	0x7c20207c
1c0065a9:	7c7c7c7c 	0x7c7c7c7c
1c0065ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0065b1:	7c7c7c20 	0x7c7c7c20
1c0065b5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0065b9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0065bd:	7c7c7c20 	0x7c7c7c20
1c0065c1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0065c5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0065c9:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c0065cd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0065d1:	7c7c7c20 	0x7c7c7c20
1c0065d5:	7c7c2020 	0x7c7c2020
1c0065d9:	7c7c7c7c 	0x7c7c7c7c
1c0065dd:	7c7c7c7c 	0x7c7c7c7c
1c0065e1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0065e5:	7c7c7c20 	0x7c7c7c20
1c0065e9:	7c7c7c7c 	0x7c7c7c7c
1c0065ed:	7c7c2020 	0x7c7c2020
1c0065f1:	7c7c7c7c 	0x7c7c7c7c
1c0065f5:	7c7c7c20 	0x7c7c7c20
1c0065f9:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0065fd:	7c7c7c20 	0x7c7c7c20
1c006601:	7c7c2020 	0x7c7c2020
1c006605:	7c00000a 	0x7c00000a
1c006609:	7c20207c 	0x7c20207c
1c00660d:	7c7c7c7c 	0x7c7c7c7c
1c006611:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006615:	7c7c7c20 	0x7c7c7c20
1c006619:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00661d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006621:	7c7c7c20 	0x7c7c7c20
1c006625:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006629:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00662d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006631:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c006635:	7c7c7c20 	0x7c7c7c20
1c006639:	7c7c2020 	0x7c7c2020
1c00663d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006641:	7c7c7c20 	0x7c7c7c20
1c006645:	7c7c7c7c 	0x7c7c7c7c
1c006649:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00664d:	7c7c7c7c 	0x7c7c7c7c
1c006651:	7c7c2020 	0x7c7c2020
1c006655:	7c7c7c7c 	0x7c7c7c7c
1c006659:	7c7c7c20 	0x7c7c7c20
1c00665d:	7c7c2020 	0x7c7c2020
1c006661:	7c7c2020 	0x7c7c2020
1c006665:	7c7c2020 	0x7c7c2020
1c006669:	7c00000a 	0x7c00000a
1c00666d:	7c20207c 	0x7c20207c
1c006671:	7c7c7c7c 	0x7c7c7c7c
1c006675:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006679:	7c7c7c20 	0x7c7c7c20
1c00667d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006681:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006685:	7c7c7c20 	0x7c7c7c20
1c006689:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00668d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006691:	7c7c7c20 	0x7c7c7c20
1c006695:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c006699:	7c7c7c20 	0x7c7c7c20
1c00669d:	7c7c2020 	0x7c7c2020
1c0066a1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0066a5:	7c7c7c20 	0x7c7c7c20
1c0066a9:	7c7c7c7c 	0x7c7c7c7c
1c0066ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0066b1:	7c7c7c20 	0x7c7c7c20
1c0066b5:	7c7c2020 	0x7c7c2020
1c0066b9:	7c7c7c7c 	0x7c7c7c7c
1c0066bd:	7c7c7c20 	0x7c7c7c20
1c0066c1:	7c7c2020 	0x7c7c2020
1c0066c5:	7c20207c 	0x7c20207c
1c0066c9:	7c7c2020 	0x7c7c2020
1c0066cd:	7c00000a 	0x7c00000a
1c0066d1:	7c20207c 	0x7c20207c
1c0066d5:	7c7c7c7c 	0x7c7c7c7c
1c0066d9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0066dd:	7c7c2020 	0x7c7c2020
1c0066e1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0066e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0066e9:	7c7c2020 	0x7c7c2020
1c0066ed:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0066f1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0066f5:	7c7c7c20 	0x7c7c7c20
1c0066f9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0066fd:	7c7c7c20 	0x7c7c7c20
1c006701:	7c202020 	0x7c202020
1c006705:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006709:	7c7c7c20 	0x7c7c7c20
1c00670d:	7c202020 	0x7c202020
1c006711:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006715:	7c7c7c7c 	0x7c7c7c7c
1c006719:	7c202020 	0x7c202020
1c00671d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006721:	7c7c7c20 	0x7c7c7c20
1c006725:	7c7c2020 	0x7c7c2020
1c006729:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00672d:	7c7c2020 	0x7c7c2020
1c006731:	7c00000a 	0x7c00000a
1c006735:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006739:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00673d:	7c7c7c7c 	0x7c7c7c7c
1c006741:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006745:	7c202020 	0x7c202020
1c006749:	7c7c7c7c 	0x7c7c7c7c
1c00674d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006751:	7c202020 	0x7c202020
1c006755:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006759:	7c7c7c20 	0x7c7c7c20
1c00675d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c006761:	7c7c7c20 	0x7c7c7c20
1c006765:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006769:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00676d:	7c7c7c7c 	0x7c7c7c7c
1c006771:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006775:	7c202020 	0x7c202020
1c006779:	7c7c7c7c 	0x7c7c7c7c
1c00677d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c006781:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c006785:	7c7c7c7c 	0x7c7c7c7c
1c006789:	7c7c2020 	0x7c7c2020
1c00678d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c006791:	7c7c2020 	0x7c7c2020
1c006795:	7c00000a 	0x7c00000a
1c006799:	7c7c7c7c 	0x7c7c7c7c
1c00679d:	7c7c7c7c 	0x7c7c7c7c
1c0067a1:	7c7c7c7c 	0x7c7c7c7c
1c0067a5:	7c7c7c7c 	0x7c7c7c7c
1c0067a9:	7c7c7c7c 	0x7c7c7c7c
1c0067ad:	7c7c7c7c 	0x7c7c7c7c
1c0067b1:	7c7c7c7c 	0x7c7c7c7c
1c0067b5:	7c7c7c7c 	0x7c7c7c7c
1c0067b9:	7c7c7c7c 	0x7c7c7c7c
1c0067bd:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c0067c1:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c0067c5:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c0067c9:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c0067cd:	7c7c7c5d 	0x7c7c7c5d
1c0067d1:	7c7c7c7c 	0x7c7c7c7c
1c0067d5:	7c7c7c7c 	0x7c7c7c7c
1c0067d9:	7c7c7c7c 	0x7c7c7c7c
1c0067dd:	7c7c7c7c 	0x7c7c7c7c
1c0067e1:	7c7c7c7c 	0x7c7c7c7c
1c0067e5:	7c7c7c7c 	0x7c7c7c7c
1c0067e9:	7c7c7c7c 	0x7c7c7c7c
1c0067ed:	7c7c7c7c 	0x7c7c7c7c
1c0067f1:	7c7c7c7c 	0x7c7c7c7c
1c0067f5:	7c7c7c7c 	0x7c7c7c7c
1c0067f9:	0900000a 	0x0900000a
1c0067fd:	0a006425 	0x0a006425
1c006801:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006805:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c006809:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00680d:	0050550a 	0x0050550a
1c006811:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006815:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00dd61 <_sidata+0x6d19>
1c006819:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c00681d:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c006821:	756f430a 	0x756f430a
1c006825:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c006829:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00682d:	3030090a 	0x3030090a
1c006831:	09313009 	0x09313009
1c006835:	30093230 	0x30093230
1c006839:	34300933 	0x34300933
1c00683d:	09353009 	0x09353009
1c006841:	30093630 	0x30093630
1c006845:	38300937 	fldx.s	$f23,$r9,$r2
1c006849:	09393009 	0x09393009
1c00684d:	31093031 	0x31093031
1c006851:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c006855:	746e630a 	0x746e630a
1c006859:	09000000 	0x09000000
1c00685d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c006861:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006865:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c006869:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00c9bd <_sidata+0x5975>
1c00686d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c006871:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfeddc1 <_start-0x1223f>
1c006875:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c006879:	09000000 	0x09000000
1c00687d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c006881:	09000000 	0x09000000
1c006885:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c006889:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00688d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c006891:	3a515249 	0x3a515249
1c006895:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c006899:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffd70d <_start-0x28f3>
1c00689d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c0068a1:	0d3e2020 	0x0d3e2020
1c0068a5:	0a00000a 	0x0a00000a
1c0068a9:	2e2e2e2e 	0x2e2e2e2e
1c0068ad:	2e2e2e2e 	0x2e2e2e2e
1c0068b1:	2e2e2e2e 	0x2e2e2e2e
1c0068b5:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ab805 <_sidata+0x3a47bd>
1c0068b9:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c0068bd:	2e2e2e54 	0x2e2e2e54
1c0068c1:	2e2e2e2e 	0x2e2e2e2e
1c0068c5:	2e2e2e2e 	0x2e2e2e2e
1c0068c9:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c0068cd:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c0068d1:	2e2e2e0a 	0x2e2e2e0a
1c0068d5:	2e2e2e2e 	0x2e2e2e2e
1c0068d9:	2e2e2e2e 	0x2e2e2e2e
1c0068dd:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39ab09 <_sidata+0x393ac1>
1c0068e1:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1af3d <_start-0x2e50c3>
1c0068e5:	2e2e4c49 	0x2e2e4c49
1c0068e9:	2e2e2e2e 	0x2e2e2e2e
1c0068ed:	2e2e2e2e 	0x2e2e2e2e
1c0068f1:	2e2e2e2e 	0x2e2e2e2e
1c0068f5:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c0068f9:	2e2e2e0a 	0x2e2e2e0a
1c0068fd:	2e2e2e2e 	0x2e2e2e2e
1c006901:	2e2e2e2e 	0x2e2e2e2e
1c006905:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38aa31 <_sidata+0x3839e9>
1c006909:	2e2e2e43 	0x2e2e2e43
1c00690d:	2e2e2e2e 	0x2e2e2e2e
1c006911:	2e2e2e2e 	0x2e2e2e2e
1c006915:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c006919:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b6919 <_sidata+0x2af8d1>
1c00691d:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c006921:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01d689 <_sidata+0x16641>
1c006925:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00cc45 <_sidata+0x5bfd>
1c006929:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c00692d:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01dd99 <_sidata+0x16d51>
1c006931:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c006935:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c006939:	 	0x8800000a

1c00693c <Ext_IrqHandle>:
1c00693c:	1c004088 	pcaddu12i	$r8,516(0x204)
1c006940:	1c0040d4 	pcaddu12i	$r20,518(0x206)
1c006944:	1c004120 	pcaddu12i	$r0,521(0x209)
1c006948:	1c00416c 	pcaddu12i	$r12,523(0x20b)
1c00694c:	1c0041b8 	pcaddu12i	$r24,525(0x20d)
1c006950:	1c004204 	pcaddu12i	$r4,528(0x210)
1c006954:	1c004250 	pcaddu12i	$r16,530(0x212)
1c006958:	1c00429c 	pcaddu12i	$r28,532(0x214)
1c00695c:	1c0042e8 	pcaddu12i	$r8,535(0x217)
1c006960:	1c004334 	pcaddu12i	$r20,537(0x219)
1c006964:	1c004380 	pcaddu12i	$r0,540(0x21c)
1c006968:	1c0043cc 	pcaddu12i	$r12,542(0x21e)
1c00696c:	1c004418 	pcaddu12i	$r24,544(0x220)
1c006970:	1c004464 	pcaddu12i	$r4,547(0x223)
1c006974:	1c0044b0 	pcaddu12i	$r16,549(0x225)
1c006978:	1c0044fc 	pcaddu12i	$r28,551(0x227)
1c00697c:	1c004548 	pcaddu12i	$r8,554(0x22a)
1c006980:	1c004594 	pcaddu12i	$r20,556(0x22c)
1c006984:	1c0045e0 	pcaddu12i	$r0,559(0x22f)
1c006988:	1c00462c 	pcaddu12i	$r12,561(0x231)
1c00698c:	1c004678 	pcaddu12i	$r24,563(0x233)
1c006990:	1c0046c4 	pcaddu12i	$r4,566(0x236)
1c006994:	1c004710 	pcaddu12i	$r16,568(0x238)
1c006998:	1c00475c 	pcaddu12i	$r28,570(0x23a)
1c00699c:	1c0047a8 	pcaddu12i	$r8,573(0x23d)
1c0069a0:	1c0047f4 	pcaddu12i	$r20,575(0x23f)
1c0069a4:	1c004840 	pcaddu12i	$r0,578(0x242)
1c0069a8:	1c00488c 	pcaddu12i	$r12,580(0x244)
1c0069ac:	1c0048d8 	pcaddu12i	$r24,582(0x246)
1c0069b0:	1c004924 	pcaddu12i	$r4,585(0x249)
1c0069b4:	1c004970 	pcaddu12i	$r16,587(0x24b)
1c0069b8:	1c0049bc 	pcaddu12i	$r28,589(0x24d)
1c0069bc:	1c004ca0 	pcaddu12i	$r0,613(0x265)
1c0069c0:	1c004c50 	pcaddu12i	$r16,610(0x262)
1c0069c4:	1c004ca0 	pcaddu12i	$r0,613(0x265)
1c0069c8:	1c004ca0 	pcaddu12i	$r0,613(0x265)
1c0069cc:	1c004ca0 	pcaddu12i	$r0,613(0x265)
1c0069d0:	1c004ca0 	pcaddu12i	$r0,613(0x265)
1c0069d4:	1c004ca0 	pcaddu12i	$r0,613(0x265)
1c0069d8:	1c004ca0 	pcaddu12i	$r0,613(0x265)
1c0069dc:	1c004ca0 	pcaddu12i	$r0,613(0x265)
1c0069e0:	1c004ca0 	pcaddu12i	$r0,613(0x265)
1c0069e4:	1c004ca0 	pcaddu12i	$r0,613(0x265)
1c0069e8:	1c004ca0 	pcaddu12i	$r0,613(0x265)
1c0069ec:	1c004ca0 	pcaddu12i	$r0,613(0x265)
1c0069f0:	1c004ca0 	pcaddu12i	$r0,613(0x265)
1c0069f4:	1c004ca0 	pcaddu12i	$r0,613(0x265)
1c0069f8:	1c004ca0 	pcaddu12i	$r0,613(0x265)
1c0069fc:	1c004c6c 	pcaddu12i	$r12,611(0x263)

1c006a00 <__FUNCTION__.1673>:
1c006a00:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01de78 <_sidata+0x16e30>
1c006a04:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01da68 <_sidata+0x16a20>
1c006a08:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff9a68 <_start-0x6598>
1c006a0c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdb7c <_start-0x2484>
1c006a10:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d870 <_sidata+0x6828>
1c006a14:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a18 <__FUNCTION__.1677>:
1c006a18:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01de90 <_sidata+0x16e48>
1c006a1c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01da80 <_sidata+0x16a38>
1c006a20:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff9b80 <_start-0x6480>
1c006a24:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdb94 <_start-0x246c>
1c006a28:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d888 <_sidata+0x6840>
1c006a2c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a30 <__FUNCTION__.1681>:
1c006a30:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dea8 <_sidata+0x16e60>
1c006a34:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01da98 <_sidata+0x16a50>
1c006a38:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff9c98 <_start-0x6368>
1c006a3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdbac <_start-0x2454>
1c006a40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d8a0 <_sidata+0x6858>
1c006a44:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a48 <__FUNCTION__.1685>:
1c006a48:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dec0 <_sidata+0x16e78>
1c006a4c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dab0 <_sidata+0x16a68>
1c006a50:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff9db0 <_start-0x6250>
1c006a54:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdbc4 <_start-0x243c>
1c006a58:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d8b8 <_sidata+0x6870>
1c006a5c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a60 <__FUNCTION__.1689>:
1c006a60:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ded8 <_sidata+0x16e90>
1c006a64:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dac8 <_sidata+0x16a80>
1c006a68:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff9ec8 <_start-0x6138>
1c006a6c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdbdc <_start-0x2424>
1c006a70:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d8d0 <_sidata+0x6888>
1c006a74:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a78 <__FUNCTION__.1693>:
1c006a78:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01def0 <_sidata+0x16ea8>
1c006a7c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dae0 <_sidata+0x16a98>
1c006a80:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff9fe0 <_start-0x6020>
1c006a84:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdbf4 <_start-0x240c>
1c006a88:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d8e8 <_sidata+0x68a0>
1c006a8c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006a90 <__FUNCTION__.1697>:
1c006a90:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df08 <_sidata+0x16ec0>
1c006a94:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01daf8 <_sidata+0x16ab0>
1c006a98:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffa0f8 <_start-0x5f08>
1c006a9c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc0c <_start-0x23f4>
1c006aa0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d900 <_sidata+0x68b8>
1c006aa4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006aa8 <__FUNCTION__.1701>:
1c006aa8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df20 <_sidata+0x16ed8>
1c006aac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db10 <_sidata+0x16ac8>
1c006ab0:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffa210 <_start-0x5df0>
1c006ab4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc24 <_start-0x23dc>
1c006ab8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d918 <_sidata+0x68d0>
1c006abc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006ac0 <__FUNCTION__.1705>:
1c006ac0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df38 <_sidata+0x16ef0>
1c006ac4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db28 <_sidata+0x16ae0>
1c006ac8:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff9b28 <_start-0x64d8>
1c006acc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc3c <_start-0x23c4>
1c006ad0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d930 <_sidata+0x68e8>
1c006ad4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006ad8 <__FUNCTION__.1709>:
1c006ad8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df50 <_sidata+0x16f08>
1c006adc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db40 <_sidata+0x16af8>
1c006ae0:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff9c40 <_start-0x63c0>
1c006ae4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc54 <_start-0x23ac>
1c006ae8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d948 <_sidata+0x6900>
1c006aec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006af0 <__FUNCTION__.1713>:
1c006af0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df68 <_sidata+0x16f20>
1c006af4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db58 <_sidata+0x16b10>
1c006af8:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff9d58 <_start-0x62a8>
1c006afc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc6c <_start-0x2394>
1c006b00:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d960 <_sidata+0x6918>
1c006b04:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006b08 <__FUNCTION__.1717>:
1c006b08:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df80 <_sidata+0x16f38>
1c006b0c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db70 <_sidata+0x16b28>
1c006b10:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff9e70 <_start-0x6190>
1c006b14:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc84 <_start-0x237c>
1c006b18:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d978 <_sidata+0x6930>
1c006b1c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006b20 <__FUNCTION__.1721>:
1c006b20:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01df98 <_sidata+0x16f50>
1c006b24:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01db88 <_sidata+0x16b40>
1c006b28:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff9f88 <_start-0x6078>
1c006b2c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdc9c <_start-0x2364>
1c006b30:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d990 <_sidata+0x6948>
1c006b34:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006b38 <__FUNCTION__.1725>:
1c006b38:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dfb0 <_sidata+0x16f68>
1c006b3c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dba0 <_sidata+0x16b58>
1c006b40:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffa0a0 <_start-0x5f60>
1c006b44:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdcb4 <_start-0x234c>
1c006b48:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d9a8 <_sidata+0x6960>
1c006b4c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006b50 <__FUNCTION__.1729>:
1c006b50:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dfc8 <_sidata+0x16f80>
1c006b54:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dbb8 <_sidata+0x16b70>
1c006b58:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffa1b8 <_start-0x5e48>
1c006b5c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdccc <_start-0x2334>
1c006b60:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d9c0 <_sidata+0x6978>
1c006b64:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006b68 <__FUNCTION__.1733>:
1c006b68:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dfe0 <_sidata+0x16f98>
1c006b6c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dbd0 <_sidata+0x16b88>
1c006b70:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffa2d0 <_start-0x5d30>
1c006b74:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdce4 <_start-0x231c>
1c006b78:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d9d8 <_sidata+0x6990>
1c006b7c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006b80 <__FUNCTION__.1737>:
1c006b80:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01dff8 <_sidata+0x16fb0>
1c006b84:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dbe8 <_sidata+0x16ba0>
1c006b88:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff9be8 <_start-0x6418>
1c006b8c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdcfc <_start-0x2304>
1c006b90:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00d9f0 <_sidata+0x69a8>
1c006b94:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006b98 <__FUNCTION__.1741>:
1c006b98:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e010 <_sidata+0x16fc8>
1c006b9c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc00 <_sidata+0x16bb8>
1c006ba0:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff9d00 <_start-0x6300>
1c006ba4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd14 <_start-0x22ec>
1c006ba8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da08 <_sidata+0x69c0>
1c006bac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006bb0 <__FUNCTION__.1745>:
1c006bb0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e028 <_sidata+0x16fe0>
1c006bb4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc18 <_sidata+0x16bd0>
1c006bb8:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff9e18 <_start-0x61e8>
1c006bbc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd2c <_start-0x22d4>
1c006bc0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da20 <_sidata+0x69d8>
1c006bc4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006bc8 <__FUNCTION__.1749>:
1c006bc8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e040 <_sidata+0x16ff8>
1c006bcc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc30 <_sidata+0x16be8>
1c006bd0:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff9f30 <_start-0x60d0>
1c006bd4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd44 <_start-0x22bc>
1c006bd8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da38 <_sidata+0x69f0>
1c006bdc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006be0 <__FUNCTION__.1753>:
1c006be0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e058 <_sidata+0x17010>
1c006be4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc48 <_sidata+0x16c00>
1c006be8:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffa048 <_start-0x5fb8>
1c006bec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd5c <_start-0x22a4>
1c006bf0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da50 <_sidata+0x6a08>
1c006bf4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006bf8 <__FUNCTION__.1757>:
1c006bf8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e070 <_sidata+0x17028>
1c006bfc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc60 <_sidata+0x16c18>
1c006c00:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffa160 <_start-0x5ea0>
1c006c04:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd74 <_start-0x228c>
1c006c08:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da68 <_sidata+0x6a20>
1c006c0c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c10 <__FUNCTION__.1761>:
1c006c10:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e088 <_sidata+0x17040>
1c006c14:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc78 <_sidata+0x16c30>
1c006c18:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffa278 <_start-0x5d88>
1c006c1c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdd8c <_start-0x2274>
1c006c20:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da80 <_sidata+0x6a38>
1c006c24:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c28 <__FUNCTION__.1765>:
1c006c28:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e0a0 <_sidata+0x17058>
1c006c2c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dc90 <_sidata+0x16c48>
1c006c30:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffa390 <_start-0x5c70>
1c006c34:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffdda4 <_start-0x225c>
1c006c38:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00da98 <_sidata+0x6a50>
1c006c3c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c40 <__FUNCTION__.1769>:
1c006c40:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e0b8 <_sidata+0x17070>
1c006c44:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dca8 <_sidata+0x16c60>
1c006c48:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff9cac <_start-0x6354>
1c006c4c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffddbc <_start-0x2244>
1c006c50:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dab0 <_sidata+0x6a68>
1c006c54:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c58 <__FUNCTION__.1773>:
1c006c58:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e0d0 <_sidata+0x17088>
1c006c5c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dcc0 <_sidata+0x16c78>
1c006c60:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff9dc4 <_start-0x623c>
1c006c64:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffddd4 <_start-0x222c>
1c006c68:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dac8 <_sidata+0x6a80>
1c006c6c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c70 <__FUNCTION__.1777>:
1c006c70:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e0e8 <_sidata+0x170a0>
1c006c74:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dcd8 <_sidata+0x16c90>
1c006c78:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff9edc <_start-0x6124>
1c006c7c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffddec <_start-0x2214>
1c006c80:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00dae0 <_sidata+0x6a98>
1c006c84:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006c88 <__FUNCTION__.1781>:
1c006c88:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e100 <_sidata+0x170b8>
1c006c8c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dcf0 <_sidata+0x16ca8>
1c006c90:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff9ff4 <_start-0x600c>
1c006c94:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde04 <_start-0x21fc>
1c006c98:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00daf8 <_sidata+0x6ab0>
1c006c9c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006ca0 <__FUNCTION__.1785>:
1c006ca0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e118 <_sidata+0x170d0>
1c006ca4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd08 <_sidata+0x16cc0>
1c006ca8:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffa10c <_start-0x5ef4>
1c006cac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde1c <_start-0x21e4>
1c006cb0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00db10 <_sidata+0x6ac8>
1c006cb4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006cb8 <__FUNCTION__.1789>:
1c006cb8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e130 <_sidata+0x170e8>
1c006cbc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd20 <_sidata+0x16cd8>
1c006cc0:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffa224 <_start-0x5ddc>
1c006cc4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde34 <_start-0x21cc>
1c006cc8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00db28 <_sidata+0x6ae0>
1c006ccc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006cd0 <__FUNCTION__.1793>:
1c006cd0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e148 <_sidata+0x17100>
1c006cd4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd38 <_sidata+0x16cf0>
1c006cd8:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffa33c <_start-0x5cc4>
1c006cdc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde4c <_start-0x21b4>
1c006ce0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00db40 <_sidata+0x6af8>
1c006ce4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c006ce8 <__FUNCTION__.1797>:
1c006ce8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01e160 <_sidata+0x17118>
1c006cec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01dd50 <_sidata+0x16d08>
1c006cf0:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffa454 <_start-0x5bac>
1c006cf4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffde64 <_start-0x219c>
1c006cf8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00db58 <_sidata+0x6b10>
1c006cfc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19
1c006d00:	00207825 	div.w	$r5,$r1,$r30
1c006d04:	252c6425 	stptr.w	$r5,$r1,11364(0x2c64)
1c006d08:	00000a64 	0x00000a64
1c006d0c:	3a646d63 	0x3a646d63
1c006d10:	0a0d7325 	0x0a0d7325
1c006d14:	00000000 	0x00000000
1c006d18:	000a7325 	0x000a7325
1c006d1c:	3a6b6361 	0x3a6b6361
1c006d20:	0a0d7325 	0x0a0d7325
1c006d24:	00000000 	0x00000000
1c006d28:	3a736572 	0x3a736572
1c006d2c:	0a0d6425 	0x0a0d6425
1c006d30:	00000000 	0x00000000
1c006d34:	0a0d5441 	0x0a0d5441
1c006d38:	00000000 	0x00000000
1c006d3c:	00004b4f 	bitrev.4b	$r15,$r26
1c006d40:	00005441 	bitrev.d	$r1,$r2
1c006d44:	432b5441 	beqz	$r2,469844(0x72b54) # 1c079898 <_sidata+0x72850>
1c006d48:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdcbc94 <_start-0x23436c>
1c006d4c:	0d313d45 	0x0d313d45
1c006d50:	0000000a 	0x0000000a
1c006d54:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0798a8 <_sidata+0x72860>
1c006d58:	444f4d57 	bnez	$r10,-2338996(0x5c4f4c) # 1bdcbca4 <_start-0x23435c>
1c006d5c:	00313d45 	0x00313d45
1c006d60:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0798b4 <_sidata+0x7286c>
1c006d64:	50414a57 	b	-111394488(0x95c4148) # 155caeac <_start-0x6a35154>
1c006d68:	2d78793d 	0x2d78793d
1c006d6c:	6f687069 	bgeu	$r3,$r9,-38800(0x36870) # 1bffd5dc <_start-0x2a24>
1c006d70:	312c656e 	vstelm.w	$vr14,$r11,100(0x64),0x3
1c006d74:	35343332 	0x35343332
1c006d78:	0d383736 	0x0d383736
1c006d7c:	0000000a 	0x0000000a
1c006d80:	432b5441 	beqz	$r2,469844(0x72b54) # 1c0798d4 <_sidata+0x7288c>
1c006d84:	50414a57 	b	-111394488(0x95c4148) # 155caecc <_start-0x6a35134>
1c006d88:	6554223d 	bge	$r17,$r29,87072(0x15420) # 1c01c1a8 <_sidata+0x15160>
1c006d8c:	5f61646e 	bne	$r3,$r14,-40604(0x36164) # 1bffcef0 <_start-0x3110>
1c006d90:	39374342 	0x39374342
1c006d94:	2c223045 	vld	$vr5,$r2,-1908(0x88c)
1c006d98:	6d747322 	bgeu	$r25,$r2,95344(0x17470) # 1c01e208 <_sidata+0x171c0>
1c006d9c:	31663233 	0x31663233
1c006da0:	38633330 	amor.w	$r16,$r12,$r25
1c006da4:	00223674 	div.d	$r20,$r19,$r13
1c006da8:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c006dac:	55545451 	bl	21320788(0x1455454) # 1d45c200 <_sidata+0x14551b8>
1c006db0:	43524553 	beqz	$r10,-3190204(0x4f5244) # 1bcfbff4 <_start-0x30400c>
1c006db4:	313d4746 	0x313d4746
1c006db8:	4c554e2c 	jirl	$r12,$r17,21836(0x554c)
1c006dbc:	63312c4c 	blt	$r2,$r12,-52948(0x3312c) # 1bff9ee8 <_start-0x6118>
1c006dc0:	73323031 	0x73323031
1c006dc4:	64316b26 	bge	$r25,$r6,12648(0x3168) # 1c009f2c <_sidata+0x2ee4>
1c006dc8:	4a65336c 	0x4a65336c
1c006dcc:	42425232 	beqz	$r17,-3521968(0x4a4250) # 1bcab01c <_start-0x354fe4>
1c006dd0:	3430642c 	0x3430642c
1c006dd4:	66653932 	bge	$r9,$r18,-105160(0x26538) # 1bfed30c <_start-0x12cf4>
1c006dd8:	34383438 	0x34383438
1c006ddc:	65613131 	bge	$r9,$r17,90416(0x16130) # 1c01cf0c <_sidata+0x15ec4>
1c006de0:	37646339 	0x37646339
1c006de4:	35616232 	0x35616232
1c006de8:	65373565 	bge	$r11,$r5,79668(0x13734) # 1c01a51c <_sidata+0x134d4>
1c006dec:	33303730 	xvstelm.w	$xr16,$r25,52(0x34),0x4
1c006df0:	36353533 	0x36353533
1c006df4:	31303962 	0x31303962
1c006df8:	63313736 	blt	$r25,$r22,-52940(0x33134) # 1bff9f2c <_start-0x60d4>
1c006dfc:	35323836 	0x35323836
1c006e00:	37663262 	0x37663262
1c006e04:	61356135 	blt	$r9,$r21,79200(0x13560) # 1c01a364 <_sidata+0x1331c>
1c006e08:	63366265 	blt	$r19,$r5,-51616(0x33660) # 1bffa468 <_start-0x5b98>
1c006e0c:	36633735 	0x36633735
1c006e10:	2c302c64 	vld	$vr4,$r3,-1013(0xc0b)
1c006e14:	22222c30 	ll.d	$r16,$r1,8748(0x222c)
1c006e18:	00000a0d 	0x00000a0d
1c006e1c:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c006e20:	55545451 	bl	21320788(0x1455454) # 1d45c274 <_sidata+0x145522c>
1c006e24:	43524553 	beqz	$r10,-3190204(0x4f5244) # 1bcfc068 <_start-0x303f98>
1c006e28:	303d4746 	0x303d4746
1c006e2c:	222c312c 	ll.d	$r12,$r9,11312(0x2c30)
1c006e30:	4c4c554e 	jirl	$r14,$r10,19540(0x4c54)
1c006e34:	31222c22 	vstelm.w	$vr2,$r1,-468(0x22c),0x0
1c006e38:	32303163 	0x32303163
1c006e3c:	316b2673 	0x316b2673
1c006e40:	65336c64 	bge	$r3,$r4,78700(0x1336c) # 1c01a1ac <_sidata+0x13164>
1c006e44:	4252324a 	beqz	$r18,2773552(0x2a5230) # 1c2ac074 <_sidata+0x2a502c>
1c006e48:	222c2242 	ll.d	$r2,$r18,11296(0x2c20)
1c006e4c:	35366337 	0x35366337
1c006e50:	64353435 	bge	$r1,$r21,13620(0x3534) # 1c00a384 <_sidata+0x333c>
1c006e54:	31383962 	0x31383962
1c006e58:	62353266 	blt	$r19,$r6,-117456(0x23530) # 1bfea388 <_start-0x15c78>
1c006e5c:	35373733 	0x35373733
1c006e60:	36663330 	0x36663330
1c006e64:	32646633 	0x32646633
1c006e68:	30373962 	0x30373962
1c006e6c:	34336530 	0x34336530
1c006e70:	32366135 	0x32366135
1c006e74:	66373731 	bge	$r25,$r17,-116940(0x23734) # 1bfea5a8 <_start-0x15a58>
1c006e78:	61646632 	blt	$r17,$r18,91236(0x16464) # 1c01d2dc <_sidata+0x16294>
1c006e7c:	62336336 	blt	$r25,$r22,-117920(0x23360) # 1bfea1dc <_start-0x15e24>
1c006e80:	65386435 	bge	$r1,$r21,79972(0x13864) # 1c01a6e4 <_sidata+0x1369c>
1c006e84:	63323534 	blt	$r9,$r20,-52684(0x33234) # 1bffa0b8 <_start-0x5f48>
1c006e88:	32316466 	0x32316466
1c006e8c:	2c302c22 	vld	$vr2,$r1,-1013(0xc0b)
1c006e90:	22222c30 	ll.d	$r16,$r1,8748(0x222c)
1c006e94:	00000000 	0x00000000
1c006e98:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c006e9c:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7c2f0 <_start-0x383d10>
1c006ea0:	4e45494c 	jirl	$r12,$r10,-113336(0x24548)
1c006ea4:	3d444954 	0x3d444954
1c006ea8:	316b2c30 	0x316b2c30
1c006eac:	65336c64 	bge	$r3,$r4,78700(0x1336c) # 1c01a218 <_sidata+0x131d0>
1c006eb0:	4252324a 	beqz	$r18,2773552(0x2a5230) # 1c2ac0e0 <_sidata+0x2a5098>
1c006eb4:	63312e42 	blt	$r18,$r2,-52948(0x3312c) # 1bff9fe0 <_start-0x6020>
1c006eb8:	73323031 	0x73323031
1c006ebc:	6365737c 	blt	$r27,$r28,-39568(0x36570) # 1bffd42c <_start-0x2bd4>
1c006ec0:	6d657275 	bgeu	$r19,$r21,91504(0x16570) # 1c01d430 <_sidata+0x163e8>
1c006ec4:	3d65646f 	0x3d65646f
1c006ec8:	69732c32 	bltu	$r1,$r18,95020(0x1732c) # 1c01e1f4 <_sidata+0x171ac>
1c006ecc:	656d6e67 	bge	$r19,$r7,93548(0x16d6c) # 1c01dc38 <_sidata+0x16bf0>
1c006ed0:	646f6874 	bge	$r3,$r20,28520(0x6f68) # 1c00de38 <_sidata+0x6df0>
1c006ed4:	616d683d 	blt	$r1,$r29,93544(0x16d68) # 1c01dc3c <_sidata+0x16bf4>
1c006ed8:	61687363 	blt	$r27,$r3,92272(0x16870) # 1c01d748 <_sidata+0x16700>
1c006edc:	2c363532 	vld	$vr18,$r9,-627(0xd8d)
1c006ee0:	656d6974 	bge	$r11,$r20,93544(0x16d68) # 1c01dc48 <_sidata+0x16c00>
1c006ee4:	6d617473 	bgeu	$r3,$r19,90484(0x16174) # 1c01d058 <_sidata+0x16010>
1c006ee8:	37313d70 	0x37313d70
1c006eec:	33363931 	xvstelm.w	$xr17,$r9,-456(0x238),0x5
1c006ef0:	30343736 	0x30343736
1c006ef4:	7c393931 	0x7c393931
1c006ef8:	00000a0d 	0x00000a0d
1c006efc:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c006f00:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7c354 <_start-0x383cac>
1c006f04:	4e45494c 	jirl	$r12,$r10,-113336(0x24548)
1c006f08:	3d444954 	0x3d444954
1c006f0c:	6b222c30 	bltu	$r1,$r16,-56788(0x3222c) # 1bff9138 <_start-0x6ec8>
1c006f10:	336c6431 	xvstelm.h	$xr17,$r1,50(0x32),0xb
1c006f14:	52324a65 	b	-107597240(0x9963248) # 1596a15c <_start-0x6695ea4>
1c006f18:	312e4242 	vstelm.w	$vr2,$r18,-448(0x240),0x3
1c006f1c:	32303163 	0x32303163
1c006f20:	65737c73 	bge	$r3,$r19,95100(0x1737c) # 1c01e29c <_sidata+0x17254>
1c006f24:	65727563 	bge	$r11,$r3,94836(0x17274) # 1c01e198 <_sidata+0x17150>
1c006f28:	65646f6d 	bge	$r27,$r13,91244(0x1646c) # 1c01d394 <_sidata+0x1634c>
1c006f2c:	2c5c323d 	vst	$vr29,$r17,1804(0x70c)
1c006f30:	6e676973 	bgeu	$r11,$r19,-104600(0x26768) # 1bfed698 <_start-0x12968>
1c006f34:	6874656d 	bltu	$r11,$r13,29796(0x7464) # 1c00e398 <_sidata+0x7350>
1c006f38:	683d646f 	bltu	$r3,$r15,15716(0x3d64) # 1c00ac9c <_sidata+0x3c54>
1c006f3c:	7363616d 	vssrani.d.q	$vr13,$vr11,0x58
1c006f40:	35326168 	0x35326168
1c006f44:	742c5c36 	0x742c5c36
1c006f48:	73656d69 	vssrani.wu.d	$vr9,$vr11,0x1b
1c006f4c:	706d6174 	0x706d6174
1c006f50:	3137313d 	0x3137313d
1c006f54:	39383939 	0x39383939
1c006f58:	39373037 	0x39373037
1c006f5c:	227c3132 	ll.d	$r18,$r9,31792(0x7c30)
1c006f60:	00000000 	0x00000000
1c006f64:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c006f68:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7c3bc <_start-0x383c44>
1c006f6c:	3d4e4e4f 	0x3d4e4e4f
1c006f70:	69222c30 	bltu	$r1,$r16,74284(0x1222c) # 1c01919c <_sidata+0x12154>
1c006f74:	302d746f 	vldrepl.w	$vr15,$r3,-652(0xd74)
1c006f78:	30307a36 	0x30307a36
1c006f7c:	36397a62 	0x36397a62
1c006f80:	62783437 	blt	$r1,$r23,-100300(0x27834) # 1bfee7b4 <_start-0x1184c>
1c006f84:	6d2e7665 	bgeu	$r19,$r5,77428(0x12e74) # 1c019df8 <_sidata+0x12db0>
1c006f88:	2e747471 	0x2e747471
1c006f8c:	68746f69 	bltu	$r27,$r9,29804(0x746c) # 1c00e3f8 <_sidata+0x73b0>
1c006f90:	612e6275 	blt	$r19,$r21,77408(0x12e60) # 1c019df0 <_sidata+0x12da8>
1c006f94:	7579696c 	0x7579696c
1c006f98:	2e73636e 	0x2e73636e
1c006f9c:	226d6f63 	ll.d	$r3,$r27,28012(0x6d6c)
1c006fa0:	3838312c 	fstx.s	$f12,$r9,$r12
1c006fa4:	0d312c33 	0x0d312c33
1c006fa8:	0000000a 	0x0000000a
1c006fac:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c006fb0:	43545451 	beqz	$r2,-3713964(0x475454) # 1bc7c404 <_start-0x383bfc>
1c006fb4:	3d4e4e4f 	0x3d4e4e4f
1c006fb8:	69222c30 	bltu	$r1,$r16,74284(0x1222c) # 1c0191e4 <_sidata+0x1219c>
1c006fbc:	302d746f 	vldrepl.w	$vr15,$r3,-652(0xd74)
1c006fc0:	30307a36 	0x30307a36
1c006fc4:	36397a62 	0x36397a62
1c006fc8:	62783437 	blt	$r1,$r23,-100300(0x27834) # 1bfee7fc <_start-0x11804>
1c006fcc:	6d2e7665 	bgeu	$r19,$r5,77428(0x12e74) # 1c019e40 <_sidata+0x12df8>
1c006fd0:	2e747471 	0x2e747471
1c006fd4:	68746f69 	bltu	$r27,$r9,29804(0x746c) # 1c00e440 <_sidata+0x73f8>
1c006fd8:	612e6275 	blt	$r19,$r21,77408(0x12e60) # 1c019e38 <_sidata+0x12df0>
1c006fdc:	7579696c 	0x7579696c
1c006fe0:	2e73636e 	0x2e73636e
1c006fe4:	226d6f63 	ll.d	$r3,$r27,28012(0x6d6c)
1c006fe8:	3838312c 	fstx.s	$f12,$r9,$r12
1c006fec:	00312c33 	0x00312c33
1c006ff0:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c006ff4:	53545451 	b	21451860(0x1475454) # 1d47c448 <_sidata+0x1475400>
1c006ff8:	303d4255 	0x303d4255
1c006ffc:	0d312c2c 	0x0d312c2c
1c007000:	0000000a 	0x0000000a
1c007004:	4d2b5441 	jirl	$r1,$r2,76628(0x12b54)
1c007008:	53545451 	b	21451860(0x1475454) # 1d47c45c <_sidata+0x1475414>
1c00700c:	303d4255 	0x303d4255
1c007010:	6b2f222c 	bltu	$r17,$r12,-53472(0x32f20) # 1bff9f30 <_start-0x60d0>
1c007014:	336c6431 	xvstelm.h	$xr17,$r1,50(0x32),0xb
1c007018:	52324a65 	b	-107597240(0x9963248) # 1596a260 <_start-0x6695da0>
1c00701c:	312f4242 	vstelm.w	$vr2,$r18,-192(0x340),0x3
1c007020:	32303163 	0x32303163
1c007024:	73752f74 	0x73752f74
1c007028:	672f7265 	bge	$r19,$r5,-53392(0x32f70) # 1bff9f98 <_start-0x6068>
1c00702c:	2c227465 	vld	$vr5,$r3,-1891(0x89d)
1c007030:	00000031 	0x00000031
1c007034:	00007325 	0x00007325
1c007038:	54514d2b 	bl	78401868(0x4ac514c) # 20acc184 <_sidata+0x4ac513c>
1c00703c:	42555354 	beqz	$r26,-2992816(0x525550) # 1bd2c58c <_start-0x2d3a74>
1c007040:	56434552 	bl	88752964(0x54a4344) # 214ab384 <_sidata+0x54a433c>
1c007044:	00000000 	0x00000000

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c006189 	pcaddu12i	$r9,780(0x30c)
80001008:	80000034 	0x80000034
8000100c:	80000014 	0x80000014
80001010:	8000044c 	0x8000044c
80001014:	80000070 	0x80000070
80001018:	80000024 	0x80000024
8000101c:	80001048 	0x80001048
80001020:	8000000c 	0x8000000c
80001024:	80000424 	0x80000424
80001028:	8000001c 	0x8000001c
8000102c:	80000400 	0x80000400
80001030:	80000440 	0x80000440
80001034:	1c006180 	pcaddu12i	$r0,780(0x30c)
80001038:	80000004 	0x80000004
8000103c:	8000002c 	0x8000002c
80001040:	800002d0 	0x800002d0
80001044:	80000074 	0x80000074

80001048 <g_SystemFreq>:
80001048:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

8000104c <tx_data>:
8000104c:	00000401 	0x00000401
80001050:	cb710200 	0xcb710200

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
80000031:	 	0x00000000

80000034 <tempareture_type>:
	...

80000070 <Read_length>:
80000070:	00000000 	0x00000000

80000074 <Read_Buffer>:
	...

800001a0 <Circular_queue_recv>:
	...

800002d0 <Circular_queue_send>:
	...

80000400 <humidity_type>:
	...

80000418 <Serial_TxPacket>:
	...

80000420 <Serial_RxFlag>:
	...

80000421 <Serial_TxFlag>:
80000421:	 	0x00000000

80000424 <Temp_Hum>:
	...

80000434 <Serial_RxPacket>:
	...

80000440 <PWM_485_Data>:
	...

8000044c <mqtt_esp_type>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
