
build/usart_terminal.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00001450  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000004  08001510  08001510  00011510  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .ARM              00000008  08001514  08001514  00011514  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  4 .init_array       00000008  0800151c  0800151c  0001151c  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .fini_array       00000004  08001524  08001524  00011524  2**2  CONTENTS, ALLOC, LOAD, DATA
  6 .data             0000048c  20000000  08001528  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  7 .bss              0000008c  20000490  080019b4  00020490  2**3  ALLOC
  8 ._user_heap_stack 00000604  2000051c  080019b4  0002051c  2**0  ALLOC
  9 .ARM.attributes   00000028  00000000  00000000  0002048c  2**0  CONTENTS, READONLY
 10 .debug_info       00001377  00000000  00000000  000204b4  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_abbrev     000003af  00000000  00000000  0002182b  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_loc        000008c8  00000000  00000000  00021bda  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_aranges    000001a8  00000000  00000000  000224a2  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_ranges     00000178  00000000  00000000  0002264a  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_line       00000724  00000000  00000000  000227c2  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_str        00000bb6  00000000  00000000  00022ee6  2**0  CONTENTS, READONLY, DEBUGGING
 17 .comment          0000007f  00000000  00000000  00023a9c  2**0  CONTENTS, READONLY
 18 .debug_frame      00000768  00000000  00000000  00023b1c  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	20000490 	.word	0x20000490
 80000e0:	00000000 	.word	0x00000000
 80000e4:	080014f8 	.word	0x080014f8

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	20000494 	.word	0x20000494
 8000104:	080014f8 	.word	0x080014f8

08000108 <__aeabi_idiv0>:
 8000108:	4770      	bx	lr
 800010a:	46c0      	nop			; (mov r8, r8)

0800010c <__aeabi_uldivmod>:
 800010c:	2b00      	cmp	r3, #0
 800010e:	d111      	bne.n	8000134 <__aeabi_uldivmod+0x28>
 8000110:	2a00      	cmp	r2, #0
 8000112:	d10f      	bne.n	8000134 <__aeabi_uldivmod+0x28>
 8000114:	2900      	cmp	r1, #0
 8000116:	d100      	bne.n	800011a <__aeabi_uldivmod+0xe>
 8000118:	2800      	cmp	r0, #0
 800011a:	d002      	beq.n	8000122 <__aeabi_uldivmod+0x16>
 800011c:	2100      	movs	r1, #0
 800011e:	43c9      	mvns	r1, r1
 8000120:	1c08      	adds	r0, r1, #0
 8000122:	b407      	push	{r0, r1, r2}
 8000124:	4802      	ldr	r0, [pc, #8]	; (8000130 <__aeabi_uldivmod+0x24>)
 8000126:	a102      	add	r1, pc, #8	; (adr r1, 8000130 <__aeabi_uldivmod+0x24>)
 8000128:	1840      	adds	r0, r0, r1
 800012a:	9002      	str	r0, [sp, #8]
 800012c:	bd03      	pop	{r0, r1, pc}
 800012e:	46c0      	nop			; (mov r8, r8)
 8000130:	ffffffd9 	.word	0xffffffd9
 8000134:	b403      	push	{r0, r1}
 8000136:	4668      	mov	r0, sp
 8000138:	b501      	push	{r0, lr}
 800013a:	9802      	ldr	r0, [sp, #8]
 800013c:	f000 f806 	bl	800014c <__udivmoddi4>
 8000140:	9b01      	ldr	r3, [sp, #4]
 8000142:	469e      	mov	lr, r3
 8000144:	b002      	add	sp, #8
 8000146:	bc0c      	pop	{r2, r3}
 8000148:	4770      	bx	lr
 800014a:	46c0      	nop			; (mov r8, r8)

0800014c <__udivmoddi4>:
 800014c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800014e:	464f      	mov	r7, r9
 8000150:	4646      	mov	r6, r8
 8000152:	46d6      	mov	lr, sl
 8000154:	b5c0      	push	{r6, r7, lr}
 8000156:	0004      	movs	r4, r0
 8000158:	b082      	sub	sp, #8
 800015a:	000d      	movs	r5, r1
 800015c:	4691      	mov	r9, r2
 800015e:	4698      	mov	r8, r3
 8000160:	428b      	cmp	r3, r1
 8000162:	d82f      	bhi.n	80001c4 <__udivmoddi4+0x78>
 8000164:	d02c      	beq.n	80001c0 <__udivmoddi4+0x74>
 8000166:	4641      	mov	r1, r8
 8000168:	4648      	mov	r0, r9
 800016a:	f000 f8b1 	bl	80002d0 <__clzdi2>
 800016e:	0029      	movs	r1, r5
 8000170:	0006      	movs	r6, r0
 8000172:	0020      	movs	r0, r4
 8000174:	f000 f8ac 	bl	80002d0 <__clzdi2>
 8000178:	1a33      	subs	r3, r6, r0
 800017a:	469c      	mov	ip, r3
 800017c:	3b20      	subs	r3, #32
 800017e:	469a      	mov	sl, r3
 8000180:	d500      	bpl.n	8000184 <__udivmoddi4+0x38>
 8000182:	e076      	b.n	8000272 <__udivmoddi4+0x126>
 8000184:	464b      	mov	r3, r9
 8000186:	4652      	mov	r2, sl
 8000188:	4093      	lsls	r3, r2
 800018a:	001f      	movs	r7, r3
 800018c:	464b      	mov	r3, r9
 800018e:	4662      	mov	r2, ip
 8000190:	4093      	lsls	r3, r2
 8000192:	001e      	movs	r6, r3
 8000194:	42af      	cmp	r7, r5
 8000196:	d828      	bhi.n	80001ea <__udivmoddi4+0x9e>
 8000198:	d025      	beq.n	80001e6 <__udivmoddi4+0x9a>
 800019a:	4653      	mov	r3, sl
 800019c:	1ba4      	subs	r4, r4, r6
 800019e:	41bd      	sbcs	r5, r7
 80001a0:	2b00      	cmp	r3, #0
 80001a2:	da00      	bge.n	80001a6 <__udivmoddi4+0x5a>
 80001a4:	e07b      	b.n	800029e <__udivmoddi4+0x152>
 80001a6:	2200      	movs	r2, #0
 80001a8:	2300      	movs	r3, #0
 80001aa:	9200      	str	r2, [sp, #0]
 80001ac:	9301      	str	r3, [sp, #4]
 80001ae:	2301      	movs	r3, #1
 80001b0:	4652      	mov	r2, sl
 80001b2:	4093      	lsls	r3, r2
 80001b4:	9301      	str	r3, [sp, #4]
 80001b6:	2301      	movs	r3, #1
 80001b8:	4662      	mov	r2, ip
 80001ba:	4093      	lsls	r3, r2
 80001bc:	9300      	str	r3, [sp, #0]
 80001be:	e018      	b.n	80001f2 <__udivmoddi4+0xa6>
 80001c0:	4282      	cmp	r2, r0
 80001c2:	d9d0      	bls.n	8000166 <__udivmoddi4+0x1a>
 80001c4:	2200      	movs	r2, #0
 80001c6:	2300      	movs	r3, #0
 80001c8:	9200      	str	r2, [sp, #0]
 80001ca:	9301      	str	r3, [sp, #4]
 80001cc:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80001ce:	2b00      	cmp	r3, #0
 80001d0:	d001      	beq.n	80001d6 <__udivmoddi4+0x8a>
 80001d2:	601c      	str	r4, [r3, #0]
 80001d4:	605d      	str	r5, [r3, #4]
 80001d6:	9800      	ldr	r0, [sp, #0]
 80001d8:	9901      	ldr	r1, [sp, #4]
 80001da:	b002      	add	sp, #8
 80001dc:	bc1c      	pop	{r2, r3, r4}
 80001de:	4690      	mov	r8, r2
 80001e0:	4699      	mov	r9, r3
 80001e2:	46a2      	mov	sl, r4
 80001e4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80001e6:	42a3      	cmp	r3, r4
 80001e8:	d9d7      	bls.n	800019a <__udivmoddi4+0x4e>
 80001ea:	2200      	movs	r2, #0
 80001ec:	2300      	movs	r3, #0
 80001ee:	9200      	str	r2, [sp, #0]
 80001f0:	9301      	str	r3, [sp, #4]
 80001f2:	4663      	mov	r3, ip
 80001f4:	2b00      	cmp	r3, #0
 80001f6:	d0e9      	beq.n	80001cc <__udivmoddi4+0x80>
 80001f8:	07fb      	lsls	r3, r7, #31
 80001fa:	4698      	mov	r8, r3
 80001fc:	4641      	mov	r1, r8
 80001fe:	0872      	lsrs	r2, r6, #1
 8000200:	430a      	orrs	r2, r1
 8000202:	087b      	lsrs	r3, r7, #1
 8000204:	4666      	mov	r6, ip
 8000206:	e00e      	b.n	8000226 <__udivmoddi4+0xda>
 8000208:	42ab      	cmp	r3, r5
 800020a:	d101      	bne.n	8000210 <__udivmoddi4+0xc4>
 800020c:	42a2      	cmp	r2, r4
 800020e:	d80c      	bhi.n	800022a <__udivmoddi4+0xde>
 8000210:	1aa4      	subs	r4, r4, r2
 8000212:	419d      	sbcs	r5, r3
 8000214:	2001      	movs	r0, #1
 8000216:	1924      	adds	r4, r4, r4
 8000218:	416d      	adcs	r5, r5
 800021a:	2100      	movs	r1, #0
 800021c:	3e01      	subs	r6, #1
 800021e:	1824      	adds	r4, r4, r0
 8000220:	414d      	adcs	r5, r1
 8000222:	2e00      	cmp	r6, #0
 8000224:	d006      	beq.n	8000234 <__udivmoddi4+0xe8>
 8000226:	42ab      	cmp	r3, r5
 8000228:	d9ee      	bls.n	8000208 <__udivmoddi4+0xbc>
 800022a:	3e01      	subs	r6, #1
 800022c:	1924      	adds	r4, r4, r4
 800022e:	416d      	adcs	r5, r5
 8000230:	2e00      	cmp	r6, #0
 8000232:	d1f8      	bne.n	8000226 <__udivmoddi4+0xda>
 8000234:	9800      	ldr	r0, [sp, #0]
 8000236:	9901      	ldr	r1, [sp, #4]
 8000238:	4653      	mov	r3, sl
 800023a:	1900      	adds	r0, r0, r4
 800023c:	4169      	adcs	r1, r5
 800023e:	2b00      	cmp	r3, #0
 8000240:	db23      	blt.n	800028a <__udivmoddi4+0x13e>
 8000242:	002b      	movs	r3, r5
 8000244:	4652      	mov	r2, sl
 8000246:	40d3      	lsrs	r3, r2
 8000248:	002a      	movs	r2, r5
 800024a:	4664      	mov	r4, ip
 800024c:	40e2      	lsrs	r2, r4
 800024e:	001c      	movs	r4, r3
 8000250:	4653      	mov	r3, sl
 8000252:	0015      	movs	r5, r2
 8000254:	2b00      	cmp	r3, #0
 8000256:	db2d      	blt.n	80002b4 <__udivmoddi4+0x168>
 8000258:	0026      	movs	r6, r4
 800025a:	4657      	mov	r7, sl
 800025c:	40be      	lsls	r6, r7
 800025e:	0033      	movs	r3, r6
 8000260:	0026      	movs	r6, r4
 8000262:	4667      	mov	r7, ip
 8000264:	40be      	lsls	r6, r7
 8000266:	0032      	movs	r2, r6
 8000268:	1a80      	subs	r0, r0, r2
 800026a:	4199      	sbcs	r1, r3
 800026c:	9000      	str	r0, [sp, #0]
 800026e:	9101      	str	r1, [sp, #4]
 8000270:	e7ac      	b.n	80001cc <__udivmoddi4+0x80>
 8000272:	4662      	mov	r2, ip
 8000274:	2320      	movs	r3, #32
 8000276:	1a9b      	subs	r3, r3, r2
 8000278:	464a      	mov	r2, r9
 800027a:	40da      	lsrs	r2, r3
 800027c:	4661      	mov	r1, ip
 800027e:	0013      	movs	r3, r2
 8000280:	4642      	mov	r2, r8
 8000282:	408a      	lsls	r2, r1
 8000284:	0017      	movs	r7, r2
 8000286:	431f      	orrs	r7, r3
 8000288:	e780      	b.n	800018c <__udivmoddi4+0x40>
 800028a:	4662      	mov	r2, ip
 800028c:	2320      	movs	r3, #32
 800028e:	1a9b      	subs	r3, r3, r2
 8000290:	002a      	movs	r2, r5
 8000292:	4666      	mov	r6, ip
 8000294:	409a      	lsls	r2, r3
 8000296:	0023      	movs	r3, r4
 8000298:	40f3      	lsrs	r3, r6
 800029a:	4313      	orrs	r3, r2
 800029c:	e7d4      	b.n	8000248 <__udivmoddi4+0xfc>
 800029e:	4662      	mov	r2, ip
 80002a0:	2320      	movs	r3, #32
 80002a2:	2100      	movs	r1, #0
 80002a4:	1a9b      	subs	r3, r3, r2
 80002a6:	2200      	movs	r2, #0
 80002a8:	9100      	str	r1, [sp, #0]
 80002aa:	9201      	str	r2, [sp, #4]
 80002ac:	2201      	movs	r2, #1
 80002ae:	40da      	lsrs	r2, r3
 80002b0:	9201      	str	r2, [sp, #4]
 80002b2:	e780      	b.n	80001b6 <__udivmoddi4+0x6a>
 80002b4:	2320      	movs	r3, #32
 80002b6:	4662      	mov	r2, ip
 80002b8:	0026      	movs	r6, r4
 80002ba:	1a9b      	subs	r3, r3, r2
 80002bc:	40de      	lsrs	r6, r3
 80002be:	002f      	movs	r7, r5
 80002c0:	46b0      	mov	r8, r6
 80002c2:	4666      	mov	r6, ip
 80002c4:	40b7      	lsls	r7, r6
 80002c6:	4646      	mov	r6, r8
 80002c8:	003b      	movs	r3, r7
 80002ca:	4333      	orrs	r3, r6
 80002cc:	e7c8      	b.n	8000260 <__udivmoddi4+0x114>
 80002ce:	46c0      	nop			; (mov r8, r8)

080002d0 <__clzdi2>:
 80002d0:	b510      	push	{r4, lr}
 80002d2:	2900      	cmp	r1, #0
 80002d4:	d103      	bne.n	80002de <__clzdi2+0xe>
 80002d6:	f000 f807 	bl	80002e8 <__clzsi2>
 80002da:	3020      	adds	r0, #32
 80002dc:	e002      	b.n	80002e4 <__clzdi2+0x14>
 80002de:	1c08      	adds	r0, r1, #0
 80002e0:	f000 f802 	bl	80002e8 <__clzsi2>
 80002e4:	bd10      	pop	{r4, pc}
 80002e6:	46c0      	nop			; (mov r8, r8)

080002e8 <__clzsi2>:
 80002e8:	211c      	movs	r1, #28
 80002ea:	2301      	movs	r3, #1
 80002ec:	041b      	lsls	r3, r3, #16
 80002ee:	4298      	cmp	r0, r3
 80002f0:	d301      	bcc.n	80002f6 <__clzsi2+0xe>
 80002f2:	0c00      	lsrs	r0, r0, #16
 80002f4:	3910      	subs	r1, #16
 80002f6:	0a1b      	lsrs	r3, r3, #8
 80002f8:	4298      	cmp	r0, r3
 80002fa:	d301      	bcc.n	8000300 <__clzsi2+0x18>
 80002fc:	0a00      	lsrs	r0, r0, #8
 80002fe:	3908      	subs	r1, #8
 8000300:	091b      	lsrs	r3, r3, #4
 8000302:	4298      	cmp	r0, r3
 8000304:	d301      	bcc.n	800030a <__clzsi2+0x22>
 8000306:	0900      	lsrs	r0, r0, #4
 8000308:	3904      	subs	r1, #4
 800030a:	a202      	add	r2, pc, #8	; (adr r2, 8000314 <__clzsi2+0x2c>)
 800030c:	5c10      	ldrb	r0, [r2, r0]
 800030e:	1840      	adds	r0, r0, r1
 8000310:	4770      	bx	lr
 8000312:	46c0      	nop			; (mov r8, r8)
 8000314:	02020304 	.word	0x02020304
 8000318:	01010101 	.word	0x01010101
	...

08000324 <Reset_Handler>:
 8000324:	480d      	ldr	r0, [pc, #52]	; (800035c <LoopForever+0x2>)
 8000326:	4685      	mov	sp, r0
 8000328:	480d      	ldr	r0, [pc, #52]	; (8000360 <LoopForever+0x6>)
 800032a:	490e      	ldr	r1, [pc, #56]	; (8000364 <LoopForever+0xa>)
 800032c:	4a0e      	ldr	r2, [pc, #56]	; (8000368 <LoopForever+0xe>)
 800032e:	2300      	movs	r3, #0
 8000330:	e002      	b.n	8000338 <LoopCopyDataInit>

08000332 <CopyDataInit>:
 8000332:	58d4      	ldr	r4, [r2, r3]
 8000334:	50c4      	str	r4, [r0, r3]
 8000336:	3304      	adds	r3, #4

08000338 <LoopCopyDataInit>:
 8000338:	18c4      	adds	r4, r0, r3
 800033a:	428c      	cmp	r4, r1
 800033c:	d3f9      	bcc.n	8000332 <CopyDataInit>
 800033e:	4a0b      	ldr	r2, [pc, #44]	; (800036c <LoopForever+0x12>)
 8000340:	4c0b      	ldr	r4, [pc, #44]	; (8000370 <LoopForever+0x16>)
 8000342:	2300      	movs	r3, #0
 8000344:	e001      	b.n	800034a <LoopFillZerobss>

08000346 <FillZerobss>:
 8000346:	6013      	str	r3, [r2, #0]
 8000348:	3204      	adds	r2, #4

0800034a <LoopFillZerobss>:
 800034a:	42a2      	cmp	r2, r4
 800034c:	d3fb      	bcc.n	8000346 <FillZerobss>
 800034e:	f000 ffad 	bl	80012ac <SystemInit>
 8000352:	f001 f801 	bl	8001358 <__libc_init_array>
 8000356:	f000 fe0f 	bl	8000f78 <main>

0800035a <LoopForever>:
 800035a:	e7fe      	b.n	800035a <LoopForever>
 800035c:	20002000 	.word	0x20002000
 8000360:	20000000 	.word	0x20000000
 8000364:	2000048c 	.word	0x2000048c
 8000368:	08001528 	.word	0x08001528
 800036c:	20000490 	.word	0x20000490
 8000370:	2000051c 	.word	0x2000051c

08000374 <ADC1_COMP_IRQHandler>:
 8000374:	e7fe      	b.n	8000374 <ADC1_COMP_IRQHandler>
	...

08000378 <NVIC_EnableIRQ>:
 8000378:	b580      	push	{r7, lr}
 800037a:	b082      	sub	sp, #8
 800037c:	af00      	add	r7, sp, #0
 800037e:	0002      	movs	r2, r0
 8000380:	1dfb      	adds	r3, r7, #7
 8000382:	701a      	strb	r2, [r3, #0]
 8000384:	1dfb      	adds	r3, r7, #7
 8000386:	781b      	ldrb	r3, [r3, #0]
 8000388:	001a      	movs	r2, r3
 800038a:	231f      	movs	r3, #31
 800038c:	401a      	ands	r2, r3
 800038e:	4b04      	ldr	r3, [pc, #16]	; (80003a0 <NVIC_EnableIRQ+0x28>)
 8000390:	2101      	movs	r1, #1
 8000392:	4091      	lsls	r1, r2
 8000394:	000a      	movs	r2, r1
 8000396:	601a      	str	r2, [r3, #0]
 8000398:	46c0      	nop			; (mov r8, r8)
 800039a:	46bd      	mov	sp, r7
 800039c:	b002      	add	sp, #8
 800039e:	bd80      	pop	{r7, pc}
 80003a0:	e000e100 	.word	0xe000e100

080003a4 <NVIC_SetPriority>:
 80003a4:	b590      	push	{r4, r7, lr}
 80003a6:	b083      	sub	sp, #12
 80003a8:	af00      	add	r7, sp, #0
 80003aa:	0002      	movs	r2, r0
 80003ac:	6039      	str	r1, [r7, #0]
 80003ae:	1dfb      	adds	r3, r7, #7
 80003b0:	701a      	strb	r2, [r3, #0]
 80003b2:	1dfb      	adds	r3, r7, #7
 80003b4:	781b      	ldrb	r3, [r3, #0]
 80003b6:	2b7f      	cmp	r3, #127	; 0x7f
 80003b8:	d932      	bls.n	8000420 <NVIC_SetPriority+0x7c>
 80003ba:	4a2f      	ldr	r2, [pc, #188]	; (8000478 <NVIC_SetPriority+0xd4>)
 80003bc:	1dfb      	adds	r3, r7, #7
 80003be:	781b      	ldrb	r3, [r3, #0]
 80003c0:	0019      	movs	r1, r3
 80003c2:	230f      	movs	r3, #15
 80003c4:	400b      	ands	r3, r1
 80003c6:	3b08      	subs	r3, #8
 80003c8:	089b      	lsrs	r3, r3, #2
 80003ca:	3306      	adds	r3, #6
 80003cc:	009b      	lsls	r3, r3, #2
 80003ce:	18d3      	adds	r3, r2, r3
 80003d0:	3304      	adds	r3, #4
 80003d2:	681b      	ldr	r3, [r3, #0]
 80003d4:	1dfa      	adds	r2, r7, #7
 80003d6:	7812      	ldrb	r2, [r2, #0]
 80003d8:	0011      	movs	r1, r2
 80003da:	2203      	movs	r2, #3
 80003dc:	400a      	ands	r2, r1
 80003de:	00d2      	lsls	r2, r2, #3
 80003e0:	21ff      	movs	r1, #255	; 0xff
 80003e2:	4091      	lsls	r1, r2
 80003e4:	000a      	movs	r2, r1
 80003e6:	43d2      	mvns	r2, r2
 80003e8:	401a      	ands	r2, r3
 80003ea:	0011      	movs	r1, r2
 80003ec:	683b      	ldr	r3, [r7, #0]
 80003ee:	019b      	lsls	r3, r3, #6
 80003f0:	22ff      	movs	r2, #255	; 0xff
 80003f2:	401a      	ands	r2, r3
 80003f4:	1dfb      	adds	r3, r7, #7
 80003f6:	781b      	ldrb	r3, [r3, #0]
 80003f8:	0018      	movs	r0, r3
 80003fa:	2303      	movs	r3, #3
 80003fc:	4003      	ands	r3, r0
 80003fe:	00db      	lsls	r3, r3, #3
 8000400:	409a      	lsls	r2, r3
 8000402:	481d      	ldr	r0, [pc, #116]	; (8000478 <NVIC_SetPriority+0xd4>)
 8000404:	1dfb      	adds	r3, r7, #7
 8000406:	781b      	ldrb	r3, [r3, #0]
 8000408:	001c      	movs	r4, r3
 800040a:	230f      	movs	r3, #15
 800040c:	4023      	ands	r3, r4
 800040e:	3b08      	subs	r3, #8
 8000410:	089b      	lsrs	r3, r3, #2
 8000412:	430a      	orrs	r2, r1
 8000414:	3306      	adds	r3, #6
 8000416:	009b      	lsls	r3, r3, #2
 8000418:	18c3      	adds	r3, r0, r3
 800041a:	3304      	adds	r3, #4
 800041c:	601a      	str	r2, [r3, #0]
 800041e:	e027      	b.n	8000470 <NVIC_SetPriority+0xcc>
 8000420:	4a16      	ldr	r2, [pc, #88]	; (800047c <NVIC_SetPriority+0xd8>)
 8000422:	1dfb      	adds	r3, r7, #7
 8000424:	781b      	ldrb	r3, [r3, #0]
 8000426:	b25b      	sxtb	r3, r3
 8000428:	089b      	lsrs	r3, r3, #2
 800042a:	33c0      	adds	r3, #192	; 0xc0
 800042c:	009b      	lsls	r3, r3, #2
 800042e:	589b      	ldr	r3, [r3, r2]
 8000430:	1dfa      	adds	r2, r7, #7
 8000432:	7812      	ldrb	r2, [r2, #0]
 8000434:	0011      	movs	r1, r2
 8000436:	2203      	movs	r2, #3
 8000438:	400a      	ands	r2, r1
 800043a:	00d2      	lsls	r2, r2, #3
 800043c:	21ff      	movs	r1, #255	; 0xff
 800043e:	4091      	lsls	r1, r2
 8000440:	000a      	movs	r2, r1
 8000442:	43d2      	mvns	r2, r2
 8000444:	401a      	ands	r2, r3
 8000446:	0011      	movs	r1, r2
 8000448:	683b      	ldr	r3, [r7, #0]
 800044a:	019b      	lsls	r3, r3, #6
 800044c:	22ff      	movs	r2, #255	; 0xff
 800044e:	401a      	ands	r2, r3
 8000450:	1dfb      	adds	r3, r7, #7
 8000452:	781b      	ldrb	r3, [r3, #0]
 8000454:	0018      	movs	r0, r3
 8000456:	2303      	movs	r3, #3
 8000458:	4003      	ands	r3, r0
 800045a:	00db      	lsls	r3, r3, #3
 800045c:	409a      	lsls	r2, r3
 800045e:	4807      	ldr	r0, [pc, #28]	; (800047c <NVIC_SetPriority+0xd8>)
 8000460:	1dfb      	adds	r3, r7, #7
 8000462:	781b      	ldrb	r3, [r3, #0]
 8000464:	b25b      	sxtb	r3, r3
 8000466:	089b      	lsrs	r3, r3, #2
 8000468:	430a      	orrs	r2, r1
 800046a:	33c0      	adds	r3, #192	; 0xc0
 800046c:	009b      	lsls	r3, r3, #2
 800046e:	501a      	str	r2, [r3, r0]
 8000470:	46c0      	nop			; (mov r8, r8)
 8000472:	46bd      	mov	sp, r7
 8000474:	b003      	add	sp, #12
 8000476:	bd90      	pop	{r4, r7, pc}
 8000478:	e000ed00 	.word	0xe000ed00
 800047c:	e000e100 	.word	0xe000e100

08000480 <SysTick_Config>:
 8000480:	b580      	push	{r7, lr}
 8000482:	b082      	sub	sp, #8
 8000484:	af00      	add	r7, sp, #0
 8000486:	6078      	str	r0, [r7, #4]
 8000488:	687b      	ldr	r3, [r7, #4]
 800048a:	3b01      	subs	r3, #1
 800048c:	4a0c      	ldr	r2, [pc, #48]	; (80004c0 <SysTick_Config+0x40>)
 800048e:	4293      	cmp	r3, r2
 8000490:	d901      	bls.n	8000496 <SysTick_Config+0x16>
 8000492:	2301      	movs	r3, #1
 8000494:	e010      	b.n	80004b8 <SysTick_Config+0x38>
 8000496:	4b0b      	ldr	r3, [pc, #44]	; (80004c4 <SysTick_Config+0x44>)
 8000498:	687a      	ldr	r2, [r7, #4]
 800049a:	3a01      	subs	r2, #1
 800049c:	605a      	str	r2, [r3, #4]
 800049e:	2301      	movs	r3, #1
 80004a0:	425b      	negs	r3, r3
 80004a2:	2103      	movs	r1, #3
 80004a4:	0018      	movs	r0, r3
 80004a6:	f7ff ff7d 	bl	80003a4 <NVIC_SetPriority>
 80004aa:	4b06      	ldr	r3, [pc, #24]	; (80004c4 <SysTick_Config+0x44>)
 80004ac:	2200      	movs	r2, #0
 80004ae:	609a      	str	r2, [r3, #8]
 80004b0:	4b04      	ldr	r3, [pc, #16]	; (80004c4 <SysTick_Config+0x44>)
 80004b2:	2207      	movs	r2, #7
 80004b4:	601a      	str	r2, [r3, #0]
 80004b6:	2300      	movs	r3, #0
 80004b8:	0018      	movs	r0, r3
 80004ba:	46bd      	mov	sp, r7
 80004bc:	b002      	add	sp, #8
 80004be:	bd80      	pop	{r7, pc}
 80004c0:	00ffffff 	.word	0x00ffffff
 80004c4:	e000e010 	.word	0xe000e010

080004c8 <LL_AHB1_GRP1_EnableClock>:
 80004c8:	b580      	push	{r7, lr}
 80004ca:	b084      	sub	sp, #16
 80004cc:	af00      	add	r7, sp, #0
 80004ce:	6078      	str	r0, [r7, #4]
 80004d0:	4b07      	ldr	r3, [pc, #28]	; (80004f0 <LL_AHB1_GRP1_EnableClock+0x28>)
 80004d2:	6959      	ldr	r1, [r3, #20]
 80004d4:	4b06      	ldr	r3, [pc, #24]	; (80004f0 <LL_AHB1_GRP1_EnableClock+0x28>)
 80004d6:	687a      	ldr	r2, [r7, #4]
 80004d8:	430a      	orrs	r2, r1
 80004da:	615a      	str	r2, [r3, #20]
 80004dc:	4b04      	ldr	r3, [pc, #16]	; (80004f0 <LL_AHB1_GRP1_EnableClock+0x28>)
 80004de:	695b      	ldr	r3, [r3, #20]
 80004e0:	687a      	ldr	r2, [r7, #4]
 80004e2:	4013      	ands	r3, r2
 80004e4:	60fb      	str	r3, [r7, #12]
 80004e6:	68fb      	ldr	r3, [r7, #12]
 80004e8:	46c0      	nop			; (mov r8, r8)
 80004ea:	46bd      	mov	sp, r7
 80004ec:	b004      	add	sp, #16
 80004ee:	bd80      	pop	{r7, pc}
 80004f0:	40021000 	.word	0x40021000

080004f4 <LL_APB1_GRP2_EnableClock>:
 80004f4:	b580      	push	{r7, lr}
 80004f6:	b084      	sub	sp, #16
 80004f8:	af00      	add	r7, sp, #0
 80004fa:	6078      	str	r0, [r7, #4]
 80004fc:	4b07      	ldr	r3, [pc, #28]	; (800051c <LL_APB1_GRP2_EnableClock+0x28>)
 80004fe:	6999      	ldr	r1, [r3, #24]
 8000500:	4b06      	ldr	r3, [pc, #24]	; (800051c <LL_APB1_GRP2_EnableClock+0x28>)
 8000502:	687a      	ldr	r2, [r7, #4]
 8000504:	430a      	orrs	r2, r1
 8000506:	619a      	str	r2, [r3, #24]
 8000508:	4b04      	ldr	r3, [pc, #16]	; (800051c <LL_APB1_GRP2_EnableClock+0x28>)
 800050a:	699b      	ldr	r3, [r3, #24]
 800050c:	687a      	ldr	r2, [r7, #4]
 800050e:	4013      	ands	r3, r2
 8000510:	60fb      	str	r3, [r7, #12]
 8000512:	68fb      	ldr	r3, [r7, #12]
 8000514:	46c0      	nop			; (mov r8, r8)
 8000516:	46bd      	mov	sp, r7
 8000518:	b004      	add	sp, #16
 800051a:	bd80      	pop	{r7, pc}
 800051c:	40021000 	.word	0x40021000

08000520 <LL_GPIO_SetPinMode>:
 8000520:	b580      	push	{r7, lr}
 8000522:	b084      	sub	sp, #16
 8000524:	af00      	add	r7, sp, #0
 8000526:	60f8      	str	r0, [r7, #12]
 8000528:	60b9      	str	r1, [r7, #8]
 800052a:	607a      	str	r2, [r7, #4]
 800052c:	68fb      	ldr	r3, [r7, #12]
 800052e:	6819      	ldr	r1, [r3, #0]
 8000530:	68bb      	ldr	r3, [r7, #8]
 8000532:	68ba      	ldr	r2, [r7, #8]
 8000534:	435a      	muls	r2, r3
 8000536:	0013      	movs	r3, r2
 8000538:	005b      	lsls	r3, r3, #1
 800053a:	189b      	adds	r3, r3, r2
 800053c:	43db      	mvns	r3, r3
 800053e:	400b      	ands	r3, r1
 8000540:	001a      	movs	r2, r3
 8000542:	68bb      	ldr	r3, [r7, #8]
 8000544:	68b9      	ldr	r1, [r7, #8]
 8000546:	434b      	muls	r3, r1
 8000548:	6879      	ldr	r1, [r7, #4]
 800054a:	434b      	muls	r3, r1
 800054c:	431a      	orrs	r2, r3
 800054e:	68fb      	ldr	r3, [r7, #12]
 8000550:	601a      	str	r2, [r3, #0]
 8000552:	46c0      	nop			; (mov r8, r8)
 8000554:	46bd      	mov	sp, r7
 8000556:	b004      	add	sp, #16
 8000558:	bd80      	pop	{r7, pc}

0800055a <LL_GPIO_SetPinPull>:
 800055a:	b580      	push	{r7, lr}
 800055c:	b084      	sub	sp, #16
 800055e:	af00      	add	r7, sp, #0
 8000560:	60f8      	str	r0, [r7, #12]
 8000562:	60b9      	str	r1, [r7, #8]
 8000564:	607a      	str	r2, [r7, #4]
 8000566:	68fb      	ldr	r3, [r7, #12]
 8000568:	68d9      	ldr	r1, [r3, #12]
 800056a:	68bb      	ldr	r3, [r7, #8]
 800056c:	68ba      	ldr	r2, [r7, #8]
 800056e:	435a      	muls	r2, r3
 8000570:	0013      	movs	r3, r2
 8000572:	005b      	lsls	r3, r3, #1
 8000574:	189b      	adds	r3, r3, r2
 8000576:	43db      	mvns	r3, r3
 8000578:	400b      	ands	r3, r1
 800057a:	001a      	movs	r2, r3
 800057c:	68bb      	ldr	r3, [r7, #8]
 800057e:	68b9      	ldr	r1, [r7, #8]
 8000580:	434b      	muls	r3, r1
 8000582:	6879      	ldr	r1, [r7, #4]
 8000584:	434b      	muls	r3, r1
 8000586:	431a      	orrs	r2, r3
 8000588:	68fb      	ldr	r3, [r7, #12]
 800058a:	60da      	str	r2, [r3, #12]
 800058c:	46c0      	nop			; (mov r8, r8)
 800058e:	46bd      	mov	sp, r7
 8000590:	b004      	add	sp, #16
 8000592:	bd80      	pop	{r7, pc}

08000594 <LL_GPIO_IsInputPinSet>:
 8000594:	b580      	push	{r7, lr}
 8000596:	b082      	sub	sp, #8
 8000598:	af00      	add	r7, sp, #0
 800059a:	6078      	str	r0, [r7, #4]
 800059c:	6039      	str	r1, [r7, #0]
 800059e:	687b      	ldr	r3, [r7, #4]
 80005a0:	691b      	ldr	r3, [r3, #16]
 80005a2:	683a      	ldr	r2, [r7, #0]
 80005a4:	4013      	ands	r3, r2
 80005a6:	683a      	ldr	r2, [r7, #0]
 80005a8:	1ad3      	subs	r3, r2, r3
 80005aa:	425a      	negs	r2, r3
 80005ac:	4153      	adcs	r3, r2
 80005ae:	b2db      	uxtb	r3, r3
 80005b0:	0018      	movs	r0, r3
 80005b2:	46bd      	mov	sp, r7
 80005b4:	b002      	add	sp, #8
 80005b6:	bd80      	pop	{r7, pc}

080005b8 <LL_GPIO_WriteOutputPort>:
 80005b8:	b580      	push	{r7, lr}
 80005ba:	b082      	sub	sp, #8
 80005bc:	af00      	add	r7, sp, #0
 80005be:	6078      	str	r0, [r7, #4]
 80005c0:	6039      	str	r1, [r7, #0]
 80005c2:	687b      	ldr	r3, [r7, #4]
 80005c4:	683a      	ldr	r2, [r7, #0]
 80005c6:	615a      	str	r2, [r3, #20]
 80005c8:	46c0      	nop			; (mov r8, r8)
 80005ca:	46bd      	mov	sp, r7
 80005cc:	b002      	add	sp, #8
 80005ce:	bd80      	pop	{r7, pc}

080005d0 <LL_GPIO_TogglePin>:
 80005d0:	b580      	push	{r7, lr}
 80005d2:	b082      	sub	sp, #8
 80005d4:	af00      	add	r7, sp, #0
 80005d6:	6078      	str	r0, [r7, #4]
 80005d8:	6039      	str	r1, [r7, #0]
 80005da:	687b      	ldr	r3, [r7, #4]
 80005dc:	695a      	ldr	r2, [r3, #20]
 80005de:	683b      	ldr	r3, [r7, #0]
 80005e0:	405a      	eors	r2, r3
 80005e2:	687b      	ldr	r3, [r7, #4]
 80005e4:	615a      	str	r2, [r3, #20]
 80005e6:	46c0      	nop			; (mov r8, r8)
 80005e8:	46bd      	mov	sp, r7
 80005ea:	b002      	add	sp, #8
 80005ec:	bd80      	pop	{r7, pc}
	...

080005f0 <LL_RCC_HSI_Enable>:
 80005f0:	b580      	push	{r7, lr}
 80005f2:	af00      	add	r7, sp, #0
 80005f4:	4b04      	ldr	r3, [pc, #16]	; (8000608 <LL_RCC_HSI_Enable+0x18>)
 80005f6:	681a      	ldr	r2, [r3, #0]
 80005f8:	4b03      	ldr	r3, [pc, #12]	; (8000608 <LL_RCC_HSI_Enable+0x18>)
 80005fa:	2101      	movs	r1, #1
 80005fc:	430a      	orrs	r2, r1
 80005fe:	601a      	str	r2, [r3, #0]
 8000600:	46c0      	nop			; (mov r8, r8)
 8000602:	46bd      	mov	sp, r7
 8000604:	bd80      	pop	{r7, pc}
 8000606:	46c0      	nop			; (mov r8, r8)
 8000608:	40021000 	.word	0x40021000

0800060c <LL_RCC_HSI_IsReady>:
 800060c:	b580      	push	{r7, lr}
 800060e:	af00      	add	r7, sp, #0
 8000610:	4b05      	ldr	r3, [pc, #20]	; (8000628 <LL_RCC_HSI_IsReady+0x1c>)
 8000612:	681b      	ldr	r3, [r3, #0]
 8000614:	2202      	movs	r2, #2
 8000616:	4013      	ands	r3, r2
 8000618:	3b02      	subs	r3, #2
 800061a:	425a      	negs	r2, r3
 800061c:	4153      	adcs	r3, r2
 800061e:	b2db      	uxtb	r3, r3
 8000620:	0018      	movs	r0, r3
 8000622:	46bd      	mov	sp, r7
 8000624:	bd80      	pop	{r7, pc}
 8000626:	46c0      	nop			; (mov r8, r8)
 8000628:	40021000 	.word	0x40021000

0800062c <LL_RCC_SetSysClkSource>:
 800062c:	b580      	push	{r7, lr}
 800062e:	b082      	sub	sp, #8
 8000630:	af00      	add	r7, sp, #0
 8000632:	6078      	str	r0, [r7, #4]
 8000634:	4b06      	ldr	r3, [pc, #24]	; (8000650 <LL_RCC_SetSysClkSource+0x24>)
 8000636:	685b      	ldr	r3, [r3, #4]
 8000638:	2203      	movs	r2, #3
 800063a:	4393      	bics	r3, r2
 800063c:	0019      	movs	r1, r3
 800063e:	4b04      	ldr	r3, [pc, #16]	; (8000650 <LL_RCC_SetSysClkSource+0x24>)
 8000640:	687a      	ldr	r2, [r7, #4]
 8000642:	430a      	orrs	r2, r1
 8000644:	605a      	str	r2, [r3, #4]
 8000646:	46c0      	nop			; (mov r8, r8)
 8000648:	46bd      	mov	sp, r7
 800064a:	b002      	add	sp, #8
 800064c:	bd80      	pop	{r7, pc}
 800064e:	46c0      	nop			; (mov r8, r8)
 8000650:	40021000 	.word	0x40021000

08000654 <LL_RCC_GetSysClkSource>:
 8000654:	b580      	push	{r7, lr}
 8000656:	af00      	add	r7, sp, #0
 8000658:	4b03      	ldr	r3, [pc, #12]	; (8000668 <LL_RCC_GetSysClkSource+0x14>)
 800065a:	685b      	ldr	r3, [r3, #4]
 800065c:	220c      	movs	r2, #12
 800065e:	4013      	ands	r3, r2
 8000660:	0018      	movs	r0, r3
 8000662:	46bd      	mov	sp, r7
 8000664:	bd80      	pop	{r7, pc}
 8000666:	46c0      	nop			; (mov r8, r8)
 8000668:	40021000 	.word	0x40021000

0800066c <LL_RCC_SetAHBPrescaler>:
 800066c:	b580      	push	{r7, lr}
 800066e:	b082      	sub	sp, #8
 8000670:	af00      	add	r7, sp, #0
 8000672:	6078      	str	r0, [r7, #4]
 8000674:	4b06      	ldr	r3, [pc, #24]	; (8000690 <LL_RCC_SetAHBPrescaler+0x24>)
 8000676:	685b      	ldr	r3, [r3, #4]
 8000678:	22f0      	movs	r2, #240	; 0xf0
 800067a:	4393      	bics	r3, r2
 800067c:	0019      	movs	r1, r3
 800067e:	4b04      	ldr	r3, [pc, #16]	; (8000690 <LL_RCC_SetAHBPrescaler+0x24>)
 8000680:	687a      	ldr	r2, [r7, #4]
 8000682:	430a      	orrs	r2, r1
 8000684:	605a      	str	r2, [r3, #4]
 8000686:	46c0      	nop			; (mov r8, r8)
 8000688:	46bd      	mov	sp, r7
 800068a:	b002      	add	sp, #8
 800068c:	bd80      	pop	{r7, pc}
 800068e:	46c0      	nop			; (mov r8, r8)
 8000690:	40021000 	.word	0x40021000

08000694 <LL_RCC_SetAPB1Prescaler>:
 8000694:	b580      	push	{r7, lr}
 8000696:	b082      	sub	sp, #8
 8000698:	af00      	add	r7, sp, #0
 800069a:	6078      	str	r0, [r7, #4]
 800069c:	4b06      	ldr	r3, [pc, #24]	; (80006b8 <LL_RCC_SetAPB1Prescaler+0x24>)
 800069e:	685b      	ldr	r3, [r3, #4]
 80006a0:	4a06      	ldr	r2, [pc, #24]	; (80006bc <LL_RCC_SetAPB1Prescaler+0x28>)
 80006a2:	4013      	ands	r3, r2
 80006a4:	0019      	movs	r1, r3
 80006a6:	4b04      	ldr	r3, [pc, #16]	; (80006b8 <LL_RCC_SetAPB1Prescaler+0x24>)
 80006a8:	687a      	ldr	r2, [r7, #4]
 80006aa:	430a      	orrs	r2, r1
 80006ac:	605a      	str	r2, [r3, #4]
 80006ae:	46c0      	nop			; (mov r8, r8)
 80006b0:	46bd      	mov	sp, r7
 80006b2:	b002      	add	sp, #8
 80006b4:	bd80      	pop	{r7, pc}
 80006b6:	46c0      	nop			; (mov r8, r8)
 80006b8:	40021000 	.word	0x40021000
 80006bc:	fffff8ff 	.word	0xfffff8ff

080006c0 <LL_RCC_PLL_Enable>:
 80006c0:	b580      	push	{r7, lr}
 80006c2:	af00      	add	r7, sp, #0
 80006c4:	4b04      	ldr	r3, [pc, #16]	; (80006d8 <LL_RCC_PLL_Enable+0x18>)
 80006c6:	681a      	ldr	r2, [r3, #0]
 80006c8:	4b03      	ldr	r3, [pc, #12]	; (80006d8 <LL_RCC_PLL_Enable+0x18>)
 80006ca:	2180      	movs	r1, #128	; 0x80
 80006cc:	0449      	lsls	r1, r1, #17
 80006ce:	430a      	orrs	r2, r1
 80006d0:	601a      	str	r2, [r3, #0]
 80006d2:	46c0      	nop			; (mov r8, r8)
 80006d4:	46bd      	mov	sp, r7
 80006d6:	bd80      	pop	{r7, pc}
 80006d8:	40021000 	.word	0x40021000

080006dc <LL_RCC_PLL_IsReady>:
 80006dc:	b580      	push	{r7, lr}
 80006de:	af00      	add	r7, sp, #0
 80006e0:	4b07      	ldr	r3, [pc, #28]	; (8000700 <LL_RCC_PLL_IsReady+0x24>)
 80006e2:	681a      	ldr	r2, [r3, #0]
 80006e4:	2380      	movs	r3, #128	; 0x80
 80006e6:	049b      	lsls	r3, r3, #18
 80006e8:	4013      	ands	r3, r2
 80006ea:	22fe      	movs	r2, #254	; 0xfe
 80006ec:	0612      	lsls	r2, r2, #24
 80006ee:	4694      	mov	ip, r2
 80006f0:	4463      	add	r3, ip
 80006f2:	425a      	negs	r2, r3
 80006f4:	4153      	adcs	r3, r2
 80006f6:	b2db      	uxtb	r3, r3
 80006f8:	0018      	movs	r0, r3
 80006fa:	46bd      	mov	sp, r7
 80006fc:	bd80      	pop	{r7, pc}
 80006fe:	46c0      	nop			; (mov r8, r8)
 8000700:	40021000 	.word	0x40021000

08000704 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000704:	b580      	push	{r7, lr}
 8000706:	b082      	sub	sp, #8
 8000708:	af00      	add	r7, sp, #0
 800070a:	6078      	str	r0, [r7, #4]
 800070c:	6039      	str	r1, [r7, #0]
 800070e:	4b0e      	ldr	r3, [pc, #56]	; (8000748 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000710:	685b      	ldr	r3, [r3, #4]
 8000712:	4a0e      	ldr	r2, [pc, #56]	; (800074c <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8000714:	4013      	ands	r3, r2
 8000716:	0019      	movs	r1, r3
 8000718:	687a      	ldr	r2, [r7, #4]
 800071a:	2380      	movs	r3, #128	; 0x80
 800071c:	025b      	lsls	r3, r3, #9
 800071e:	401a      	ands	r2, r3
 8000720:	683b      	ldr	r3, [r7, #0]
 8000722:	431a      	orrs	r2, r3
 8000724:	4b08      	ldr	r3, [pc, #32]	; (8000748 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000726:	430a      	orrs	r2, r1
 8000728:	605a      	str	r2, [r3, #4]
 800072a:	4b07      	ldr	r3, [pc, #28]	; (8000748 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800072c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800072e:	220f      	movs	r2, #15
 8000730:	4393      	bics	r3, r2
 8000732:	0019      	movs	r1, r3
 8000734:	687b      	ldr	r3, [r7, #4]
 8000736:	220f      	movs	r2, #15
 8000738:	401a      	ands	r2, r3
 800073a:	4b03      	ldr	r3, [pc, #12]	; (8000748 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800073c:	430a      	orrs	r2, r1
 800073e:	62da      	str	r2, [r3, #44]	; 0x2c
 8000740:	46c0      	nop			; (mov r8, r8)
 8000742:	46bd      	mov	sp, r7
 8000744:	b002      	add	sp, #8
 8000746:	bd80      	pop	{r7, pc}
 8000748:	40021000 	.word	0x40021000
 800074c:	ffc2ffff 	.word	0xffc2ffff

08000750 <LL_SYSCFG_SetEXTISource>:
 8000750:	b590      	push	{r4, r7, lr}
 8000752:	b083      	sub	sp, #12
 8000754:	af00      	add	r7, sp, #0
 8000756:	6078      	str	r0, [r7, #4]
 8000758:	6039      	str	r1, [r7, #0]
 800075a:	4a0f      	ldr	r2, [pc, #60]	; (8000798 <LL_SYSCFG_SetEXTISource+0x48>)
 800075c:	683b      	ldr	r3, [r7, #0]
 800075e:	21ff      	movs	r1, #255	; 0xff
 8000760:	400b      	ands	r3, r1
 8000762:	3302      	adds	r3, #2
 8000764:	009b      	lsls	r3, r3, #2
 8000766:	589b      	ldr	r3, [r3, r2]
 8000768:	683a      	ldr	r2, [r7, #0]
 800076a:	0c12      	lsrs	r2, r2, #16
 800076c:	210f      	movs	r1, #15
 800076e:	4091      	lsls	r1, r2
 8000770:	000a      	movs	r2, r1
 8000772:	43d2      	mvns	r2, r2
 8000774:	401a      	ands	r2, r3
 8000776:	0011      	movs	r1, r2
 8000778:	683b      	ldr	r3, [r7, #0]
 800077a:	0c1b      	lsrs	r3, r3, #16
 800077c:	687a      	ldr	r2, [r7, #4]
 800077e:	409a      	lsls	r2, r3
 8000780:	4805      	ldr	r0, [pc, #20]	; (8000798 <LL_SYSCFG_SetEXTISource+0x48>)
 8000782:	683b      	ldr	r3, [r7, #0]
 8000784:	24ff      	movs	r4, #255	; 0xff
 8000786:	4023      	ands	r3, r4
 8000788:	430a      	orrs	r2, r1
 800078a:	3302      	adds	r3, #2
 800078c:	009b      	lsls	r3, r3, #2
 800078e:	501a      	str	r2, [r3, r0]
 8000790:	46c0      	nop			; (mov r8, r8)
 8000792:	46bd      	mov	sp, r7
 8000794:	b003      	add	sp, #12
 8000796:	bd90      	pop	{r4, r7, pc}
 8000798:	40010000 	.word	0x40010000

0800079c <LL_FLASH_SetLatency>:
 800079c:	b580      	push	{r7, lr}
 800079e:	b082      	sub	sp, #8
 80007a0:	af00      	add	r7, sp, #0
 80007a2:	6078      	str	r0, [r7, #4]
 80007a4:	4b06      	ldr	r3, [pc, #24]	; (80007c0 <LL_FLASH_SetLatency+0x24>)
 80007a6:	681b      	ldr	r3, [r3, #0]
 80007a8:	2201      	movs	r2, #1
 80007aa:	4393      	bics	r3, r2
 80007ac:	0019      	movs	r1, r3
 80007ae:	4b04      	ldr	r3, [pc, #16]	; (80007c0 <LL_FLASH_SetLatency+0x24>)
 80007b0:	687a      	ldr	r2, [r7, #4]
 80007b2:	430a      	orrs	r2, r1
 80007b4:	601a      	str	r2, [r3, #0]
 80007b6:	46c0      	nop			; (mov r8, r8)
 80007b8:	46bd      	mov	sp, r7
 80007ba:	b002      	add	sp, #8
 80007bc:	bd80      	pop	{r7, pc}
 80007be:	46c0      	nop			; (mov r8, r8)
 80007c0:	40022000 	.word	0x40022000

080007c4 <LL_EXTI_EnableIT_0_31>:
 80007c4:	b580      	push	{r7, lr}
 80007c6:	b082      	sub	sp, #8
 80007c8:	af00      	add	r7, sp, #0
 80007ca:	6078      	str	r0, [r7, #4]
 80007cc:	4b04      	ldr	r3, [pc, #16]	; (80007e0 <LL_EXTI_EnableIT_0_31+0x1c>)
 80007ce:	6819      	ldr	r1, [r3, #0]
 80007d0:	4b03      	ldr	r3, [pc, #12]	; (80007e0 <LL_EXTI_EnableIT_0_31+0x1c>)
 80007d2:	687a      	ldr	r2, [r7, #4]
 80007d4:	430a      	orrs	r2, r1
 80007d6:	601a      	str	r2, [r3, #0]
 80007d8:	46c0      	nop			; (mov r8, r8)
 80007da:	46bd      	mov	sp, r7
 80007dc:	b002      	add	sp, #8
 80007de:	bd80      	pop	{r7, pc}
 80007e0:	40010400 	.word	0x40010400

080007e4 <LL_EXTI_EnableRisingTrig_0_31>:
 80007e4:	b580      	push	{r7, lr}
 80007e6:	b082      	sub	sp, #8
 80007e8:	af00      	add	r7, sp, #0
 80007ea:	6078      	str	r0, [r7, #4]
 80007ec:	4b04      	ldr	r3, [pc, #16]	; (8000800 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 80007ee:	6899      	ldr	r1, [r3, #8]
 80007f0:	4b03      	ldr	r3, [pc, #12]	; (8000800 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 80007f2:	687a      	ldr	r2, [r7, #4]
 80007f4:	430a      	orrs	r2, r1
 80007f6:	609a      	str	r2, [r3, #8]
 80007f8:	46c0      	nop			; (mov r8, r8)
 80007fa:	46bd      	mov	sp, r7
 80007fc:	b002      	add	sp, #8
 80007fe:	bd80      	pop	{r7, pc}
 8000800:	40010400 	.word	0x40010400

08000804 <LL_EXTI_EnableFallingTrig_0_31>:
 8000804:	b580      	push	{r7, lr}
 8000806:	b082      	sub	sp, #8
 8000808:	af00      	add	r7, sp, #0
 800080a:	6078      	str	r0, [r7, #4]
 800080c:	4b04      	ldr	r3, [pc, #16]	; (8000820 <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 800080e:	68d9      	ldr	r1, [r3, #12]
 8000810:	4b03      	ldr	r3, [pc, #12]	; (8000820 <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 8000812:	687a      	ldr	r2, [r7, #4]
 8000814:	430a      	orrs	r2, r1
 8000816:	60da      	str	r2, [r3, #12]
 8000818:	46c0      	nop			; (mov r8, r8)
 800081a:	46bd      	mov	sp, r7
 800081c:	b002      	add	sp, #8
 800081e:	bd80      	pop	{r7, pc}
 8000820:	40010400 	.word	0x40010400

08000824 <LL_EXTI_IsActiveFlag_0_31>:
 8000824:	b580      	push	{r7, lr}
 8000826:	b082      	sub	sp, #8
 8000828:	af00      	add	r7, sp, #0
 800082a:	6078      	str	r0, [r7, #4]
 800082c:	4b06      	ldr	r3, [pc, #24]	; (8000848 <LL_EXTI_IsActiveFlag_0_31+0x24>)
 800082e:	695b      	ldr	r3, [r3, #20]
 8000830:	687a      	ldr	r2, [r7, #4]
 8000832:	4013      	ands	r3, r2
 8000834:	687a      	ldr	r2, [r7, #4]
 8000836:	1ad3      	subs	r3, r2, r3
 8000838:	425a      	negs	r2, r3
 800083a:	4153      	adcs	r3, r2
 800083c:	b2db      	uxtb	r3, r3
 800083e:	0018      	movs	r0, r3
 8000840:	46bd      	mov	sp, r7
 8000842:	b002      	add	sp, #8
 8000844:	bd80      	pop	{r7, pc}
 8000846:	46c0      	nop			; (mov r8, r8)
 8000848:	40010400 	.word	0x40010400

0800084c <LL_EXTI_ClearFlag_0_31>:
 800084c:	b580      	push	{r7, lr}
 800084e:	b082      	sub	sp, #8
 8000850:	af00      	add	r7, sp, #0
 8000852:	6078      	str	r0, [r7, #4]
 8000854:	4b03      	ldr	r3, [pc, #12]	; (8000864 <LL_EXTI_ClearFlag_0_31+0x18>)
 8000856:	687a      	ldr	r2, [r7, #4]
 8000858:	615a      	str	r2, [r3, #20]
 800085a:	46c0      	nop			; (mov r8, r8)
 800085c:	46bd      	mov	sp, r7
 800085e:	b002      	add	sp, #8
 8000860:	bd80      	pop	{r7, pc}
 8000862:	46c0      	nop			; (mov r8, r8)
 8000864:	40010400 	.word	0x40010400

08000868 <UserButton_Init>:
 8000868:	b580      	push	{r7, lr}
 800086a:	af00      	add	r7, sp, #0
 800086c:	2380      	movs	r3, #128	; 0x80
 800086e:	029b      	lsls	r3, r3, #10
 8000870:	0018      	movs	r0, r3
 8000872:	f7ff fe29 	bl	80004c8 <LL_AHB1_GRP1_EnableClock>
 8000876:	2390      	movs	r3, #144	; 0x90
 8000878:	05db      	lsls	r3, r3, #23
 800087a:	2200      	movs	r2, #0
 800087c:	2101      	movs	r1, #1
 800087e:	0018      	movs	r0, r3
 8000880:	f7ff fe4e 	bl	8000520 <LL_GPIO_SetPinMode>
 8000884:	2390      	movs	r3, #144	; 0x90
 8000886:	05db      	lsls	r3, r3, #23
 8000888:	2200      	movs	r2, #0
 800088a:	2101      	movs	r1, #1
 800088c:	0018      	movs	r0, r3
 800088e:	f7ff fe64 	bl	800055a <LL_GPIO_SetPinPull>
 8000892:	2001      	movs	r0, #1
 8000894:	f7ff fe2e 	bl	80004f4 <LL_APB1_GRP2_EnableClock>
 8000898:	2100      	movs	r1, #0
 800089a:	2000      	movs	r0, #0
 800089c:	f7ff ff58 	bl	8000750 <LL_SYSCFG_SetEXTISource>
 80008a0:	2001      	movs	r0, #1
 80008a2:	f7ff ff8f 	bl	80007c4 <LL_EXTI_EnableIT_0_31>
 80008a6:	2001      	movs	r0, #1
 80008a8:	f7ff ff9c 	bl	80007e4 <LL_EXTI_EnableRisingTrig_0_31>
 80008ac:	2001      	movs	r0, #1
 80008ae:	f7ff ffa9 	bl	8000804 <LL_EXTI_EnableFallingTrig_0_31>
 80008b2:	2005      	movs	r0, #5
 80008b4:	f7ff fd60 	bl	8000378 <NVIC_EnableIRQ>
 80008b8:	2100      	movs	r1, #0
 80008ba:	2005      	movs	r0, #5
 80008bc:	f7ff fd72 	bl	80003a4 <NVIC_SetPriority>
 80008c0:	46c0      	nop			; (mov r8, r8)
 80008c2:	46bd      	mov	sp, r7
 80008c4:	bd80      	pop	{r7, pc}
	...

080008c8 <FirstButton_Init>:
 80008c8:	b580      	push	{r7, lr}
 80008ca:	af00      	add	r7, sp, #0
 80008cc:	2380      	movs	r3, #128	; 0x80
 80008ce:	019b      	lsls	r3, r3, #6
 80008d0:	4816      	ldr	r0, [pc, #88]	; (800092c <FirstButton_Init+0x64>)
 80008d2:	2200      	movs	r2, #0
 80008d4:	0019      	movs	r1, r3
 80008d6:	f7ff fe23 	bl	8000520 <LL_GPIO_SetPinMode>
 80008da:	2380      	movs	r3, #128	; 0x80
 80008dc:	019b      	lsls	r3, r3, #6
 80008de:	4813      	ldr	r0, [pc, #76]	; (800092c <FirstButton_Init+0x64>)
 80008e0:	2202      	movs	r2, #2
 80008e2:	0019      	movs	r1, r3
 80008e4:	f7ff fe39 	bl	800055a <LL_GPIO_SetPinPull>
 80008e8:	2001      	movs	r0, #1
 80008ea:	f7ff fe03 	bl	80004f4 <LL_APB1_GRP2_EnableClock>
 80008ee:	4b10      	ldr	r3, [pc, #64]	; (8000930 <FirstButton_Init+0x68>)
 80008f0:	0019      	movs	r1, r3
 80008f2:	2002      	movs	r0, #2
 80008f4:	f7ff ff2c 	bl	8000750 <LL_SYSCFG_SetEXTISource>
 80008f8:	2380      	movs	r3, #128	; 0x80
 80008fa:	019b      	lsls	r3, r3, #6
 80008fc:	0018      	movs	r0, r3
 80008fe:	f7ff ff61 	bl	80007c4 <LL_EXTI_EnableIT_0_31>
 8000902:	2380      	movs	r3, #128	; 0x80
 8000904:	019b      	lsls	r3, r3, #6
 8000906:	0018      	movs	r0, r3
 8000908:	f7ff ff6c 	bl	80007e4 <LL_EXTI_EnableRisingTrig_0_31>
 800090c:	2380      	movs	r3, #128	; 0x80
 800090e:	019b      	lsls	r3, r3, #6
 8000910:	0018      	movs	r0, r3
 8000912:	f7ff ff77 	bl	8000804 <LL_EXTI_EnableFallingTrig_0_31>
 8000916:	2100      	movs	r1, #0
 8000918:	2007      	movs	r0, #7
 800091a:	f7ff fd43 	bl	80003a4 <NVIC_SetPriority>
 800091e:	2007      	movs	r0, #7
 8000920:	f7ff fd2a 	bl	8000378 <NVIC_EnableIRQ>
 8000924:	46c0      	nop			; (mov r8, r8)
 8000926:	46bd      	mov	sp, r7
 8000928:	bd80      	pop	{r7, pc}
 800092a:	46c0      	nop			; (mov r8, r8)
 800092c:	48000800 	.word	0x48000800
 8000930:	00040003 	.word	0x00040003

08000934 <SecondButton_Init>:
 8000934:	b580      	push	{r7, lr}
 8000936:	af00      	add	r7, sp, #0
 8000938:	2380      	movs	r3, #128	; 0x80
 800093a:	01db      	lsls	r3, r3, #7
 800093c:	4816      	ldr	r0, [pc, #88]	; (8000998 <SecondButton_Init+0x64>)
 800093e:	2200      	movs	r2, #0
 8000940:	0019      	movs	r1, r3
 8000942:	f7ff fded 	bl	8000520 <LL_GPIO_SetPinMode>
 8000946:	2380      	movs	r3, #128	; 0x80
 8000948:	01db      	lsls	r3, r3, #7
 800094a:	4813      	ldr	r0, [pc, #76]	; (8000998 <SecondButton_Init+0x64>)
 800094c:	2202      	movs	r2, #2
 800094e:	0019      	movs	r1, r3
 8000950:	f7ff fe03 	bl	800055a <LL_GPIO_SetPinPull>
 8000954:	2001      	movs	r0, #1
 8000956:	f7ff fdcd 	bl	80004f4 <LL_APB1_GRP2_EnableClock>
 800095a:	4b10      	ldr	r3, [pc, #64]	; (800099c <SecondButton_Init+0x68>)
 800095c:	0019      	movs	r1, r3
 800095e:	2002      	movs	r0, #2
 8000960:	f7ff fef6 	bl	8000750 <LL_SYSCFG_SetEXTISource>
 8000964:	2380      	movs	r3, #128	; 0x80
 8000966:	01db      	lsls	r3, r3, #7
 8000968:	0018      	movs	r0, r3
 800096a:	f7ff ff2b 	bl	80007c4 <LL_EXTI_EnableIT_0_31>
 800096e:	2380      	movs	r3, #128	; 0x80
 8000970:	01db      	lsls	r3, r3, #7
 8000972:	0018      	movs	r0, r3
 8000974:	f7ff ff36 	bl	80007e4 <LL_EXTI_EnableRisingTrig_0_31>
 8000978:	2380      	movs	r3, #128	; 0x80
 800097a:	01db      	lsls	r3, r3, #7
 800097c:	0018      	movs	r0, r3
 800097e:	f7ff ff41 	bl	8000804 <LL_EXTI_EnableFallingTrig_0_31>
 8000982:	2100      	movs	r1, #0
 8000984:	2007      	movs	r0, #7
 8000986:	f7ff fd0d 	bl	80003a4 <NVIC_SetPriority>
 800098a:	2007      	movs	r0, #7
 800098c:	f7ff fcf4 	bl	8000378 <NVIC_EnableIRQ>
 8000990:	46c0      	nop			; (mov r8, r8)
 8000992:	46bd      	mov	sp, r7
 8000994:	bd80      	pop	{r7, pc}
 8000996:	46c0      	nop			; (mov r8, r8)
 8000998:	48000800 	.word	0x48000800
 800099c:	00080003 	.word	0x00080003

080009a0 <EXTI0_1_IRQHandler>:
 80009a0:	b580      	push	{r7, lr}
 80009a2:	af00      	add	r7, sp, #0
 80009a4:	2390      	movs	r3, #144	; 0x90
 80009a6:	05db      	lsls	r3, r3, #23
 80009a8:	2101      	movs	r1, #1
 80009aa:	0018      	movs	r0, r3
 80009ac:	f7ff fdf2 	bl	8000594 <LL_GPIO_IsInputPinSet>
 80009b0:	0003      	movs	r3, r0
 80009b2:	b2db      	uxtb	r3, r3
 80009b4:	2100      	movs	r1, #0
 80009b6:	0018      	movs	r0, r3
 80009b8:	f000 f840 	bl	8000a3c <exti_finite_state_machine>
 80009bc:	2001      	movs	r0, #1
 80009be:	f7ff ff45 	bl	800084c <LL_EXTI_ClearFlag_0_31>
 80009c2:	46c0      	nop			; (mov r8, r8)
 80009c4:	46bd      	mov	sp, r7
 80009c6:	bd80      	pop	{r7, pc}

080009c8 <EXTI4_15_IRQHandler>:
 80009c8:	b580      	push	{r7, lr}
 80009ca:	af00      	add	r7, sp, #0
 80009cc:	2380      	movs	r3, #128	; 0x80
 80009ce:	019b      	lsls	r3, r3, #6
 80009d0:	0018      	movs	r0, r3
 80009d2:	f7ff ff27 	bl	8000824 <LL_EXTI_IsActiveFlag_0_31>
 80009d6:	1e03      	subs	r3, r0, #0
 80009d8:	d011      	beq.n	80009fe <EXTI4_15_IRQHandler+0x36>
 80009da:	2380      	movs	r3, #128	; 0x80
 80009dc:	019b      	lsls	r3, r3, #6
 80009de:	4a16      	ldr	r2, [pc, #88]	; (8000a38 <EXTI4_15_IRQHandler+0x70>)
 80009e0:	0019      	movs	r1, r3
 80009e2:	0010      	movs	r0, r2
 80009e4:	f7ff fdd6 	bl	8000594 <LL_GPIO_IsInputPinSet>
 80009e8:	0003      	movs	r3, r0
 80009ea:	b2db      	uxtb	r3, r3
 80009ec:	2101      	movs	r1, #1
 80009ee:	0018      	movs	r0, r3
 80009f0:	f000 f824 	bl	8000a3c <exti_finite_state_machine>
 80009f4:	2380      	movs	r3, #128	; 0x80
 80009f6:	019b      	lsls	r3, r3, #6
 80009f8:	0018      	movs	r0, r3
 80009fa:	f7ff ff27 	bl	800084c <LL_EXTI_ClearFlag_0_31>
 80009fe:	2380      	movs	r3, #128	; 0x80
 8000a00:	01db      	lsls	r3, r3, #7
 8000a02:	0018      	movs	r0, r3
 8000a04:	f7ff ff0e 	bl	8000824 <LL_EXTI_IsActiveFlag_0_31>
 8000a08:	1e03      	subs	r3, r0, #0
 8000a0a:	d011      	beq.n	8000a30 <EXTI4_15_IRQHandler+0x68>
 8000a0c:	2380      	movs	r3, #128	; 0x80
 8000a0e:	01db      	lsls	r3, r3, #7
 8000a10:	4a09      	ldr	r2, [pc, #36]	; (8000a38 <EXTI4_15_IRQHandler+0x70>)
 8000a12:	0019      	movs	r1, r3
 8000a14:	0010      	movs	r0, r2
 8000a16:	f7ff fdbd 	bl	8000594 <LL_GPIO_IsInputPinSet>
 8000a1a:	0003      	movs	r3, r0
 8000a1c:	b2db      	uxtb	r3, r3
 8000a1e:	2102      	movs	r1, #2
 8000a20:	0018      	movs	r0, r3
 8000a22:	f000 f80b 	bl	8000a3c <exti_finite_state_machine>
 8000a26:	2380      	movs	r3, #128	; 0x80
 8000a28:	01db      	lsls	r3, r3, #7
 8000a2a:	0018      	movs	r0, r3
 8000a2c:	f7ff ff0e 	bl	800084c <LL_EXTI_ClearFlag_0_31>
 8000a30:	46c0      	nop			; (mov r8, r8)
 8000a32:	46bd      	mov	sp, r7
 8000a34:	bd80      	pop	{r7, pc}
 8000a36:	46c0      	nop			; (mov r8, r8)
 8000a38:	48000800 	.word	0x48000800

08000a3c <exti_finite_state_machine>:
 8000a3c:	b590      	push	{r4, r7, lr}
 8000a3e:	b083      	sub	sp, #12
 8000a40:	af00      	add	r7, sp, #0
 8000a42:	0002      	movs	r2, r0
 8000a44:	1dfb      	adds	r3, r7, #7
 8000a46:	701a      	strb	r2, [r3, #0]
 8000a48:	1dbb      	adds	r3, r7, #6
 8000a4a:	1c0a      	adds	r2, r1, #0
 8000a4c:	701a      	strb	r2, [r3, #0]
 8000a4e:	1dbb      	adds	r3, r7, #6
 8000a50:	781b      	ldrb	r3, [r3, #0]
 8000a52:	2b01      	cmp	r3, #1
 8000a54:	d100      	bne.n	8000a58 <exti_finite_state_machine+0x1c>
 8000a56:	e06c      	b.n	8000b32 <exti_finite_state_machine+0xf6>
 8000a58:	2b02      	cmp	r3, #2
 8000a5a:	d100      	bne.n	8000a5e <exti_finite_state_machine+0x22>
 8000a5c:	e0d0      	b.n	8000c00 <exti_finite_state_machine+0x1c4>
 8000a5e:	2b00      	cmp	r3, #0
 8000a60:	d000      	beq.n	8000a64 <exti_finite_state_machine+0x28>
 8000a62:	e134      	b.n	8000cce <exti_finite_state_machine+0x292>
 8000a64:	4b9c      	ldr	r3, [pc, #624]	; (8000cd8 <exti_finite_state_machine+0x29c>)
 8000a66:	781b      	ldrb	r3, [r3, #0]
 8000a68:	2b00      	cmp	r3, #0
 8000a6a:	d002      	beq.n	8000a72 <exti_finite_state_machine+0x36>
 8000a6c:	2b01      	cmp	r3, #1
 8000a6e:	d023      	beq.n	8000ab8 <exti_finite_state_machine+0x7c>
 8000a70:	e05a      	b.n	8000b28 <exti_finite_state_machine+0xec>
 8000a72:	1dfb      	adds	r3, r7, #7
 8000a74:	781b      	ldrb	r3, [r3, #0]
 8000a76:	2b01      	cmp	r3, #1
 8000a78:	d157      	bne.n	8000b2a <exti_finite_state_machine+0xee>
 8000a7a:	4b98      	ldr	r3, [pc, #608]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000a7c:	6819      	ldr	r1, [r3, #0]
 8000a7e:	685a      	ldr	r2, [r3, #4]
 8000a80:	4b97      	ldr	r3, [pc, #604]	; (8000ce0 <exti_finite_state_machine+0x2a4>)
 8000a82:	685c      	ldr	r4, [r3, #4]
 8000a84:	681b      	ldr	r3, [r3, #0]
 8000a86:	1ac9      	subs	r1, r1, r3
 8000a88:	41a2      	sbcs	r2, r4
 8000a8a:	000b      	movs	r3, r1
 8000a8c:	0014      	movs	r4, r2
 8000a8e:	17da      	asrs	r2, r3, #31
 8000a90:	189b      	adds	r3, r3, r2
 8000a92:	4053      	eors	r3, r2
 8000a94:	2b32      	cmp	r3, #50	; 0x32
 8000a96:	dd48      	ble.n	8000b2a <exti_finite_state_machine+0xee>
 8000a98:	4b8f      	ldr	r3, [pc, #572]	; (8000cd8 <exti_finite_state_machine+0x29c>)
 8000a9a:	2201      	movs	r2, #1
 8000a9c:	701a      	strb	r2, [r3, #0]
 8000a9e:	4b8f      	ldr	r3, [pc, #572]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000aa0:	685c      	ldr	r4, [r3, #4]
 8000aa2:	681b      	ldr	r3, [r3, #0]
 8000aa4:	4a8e      	ldr	r2, [pc, #568]	; (8000ce0 <exti_finite_state_machine+0x2a4>)
 8000aa6:	6013      	str	r3, [r2, #0]
 8000aa8:	6054      	str	r4, [r2, #4]
 8000aaa:	4b8c      	ldr	r3, [pc, #560]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000aac:	685c      	ldr	r4, [r3, #4]
 8000aae:	681b      	ldr	r3, [r3, #0]
 8000ab0:	4a8c      	ldr	r2, [pc, #560]	; (8000ce4 <exti_finite_state_machine+0x2a8>)
 8000ab2:	6013      	str	r3, [r2, #0]
 8000ab4:	6054      	str	r4, [r2, #4]
 8000ab6:	e038      	b.n	8000b2a <exti_finite_state_machine+0xee>
 8000ab8:	1dfb      	adds	r3, r7, #7
 8000aba:	781b      	ldrb	r3, [r3, #0]
 8000abc:	2b00      	cmp	r3, #0
 8000abe:	d136      	bne.n	8000b2e <exti_finite_state_machine+0xf2>
 8000ac0:	4b86      	ldr	r3, [pc, #536]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000ac2:	6819      	ldr	r1, [r3, #0]
 8000ac4:	685a      	ldr	r2, [r3, #4]
 8000ac6:	4b86      	ldr	r3, [pc, #536]	; (8000ce0 <exti_finite_state_machine+0x2a4>)
 8000ac8:	685c      	ldr	r4, [r3, #4]
 8000aca:	681b      	ldr	r3, [r3, #0]
 8000acc:	1ac9      	subs	r1, r1, r3
 8000ace:	41a2      	sbcs	r2, r4
 8000ad0:	000b      	movs	r3, r1
 8000ad2:	0014      	movs	r4, r2
 8000ad4:	17da      	asrs	r2, r3, #31
 8000ad6:	189b      	adds	r3, r3, r2
 8000ad8:	4053      	eors	r3, r2
 8000ada:	2b32      	cmp	r3, #50	; 0x32
 8000adc:	dd27      	ble.n	8000b2e <exti_finite_state_machine+0xf2>
 8000ade:	4b7f      	ldr	r3, [pc, #508]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000ae0:	6819      	ldr	r1, [r3, #0]
 8000ae2:	685a      	ldr	r2, [r3, #4]
 8000ae4:	4b7f      	ldr	r3, [pc, #508]	; (8000ce4 <exti_finite_state_machine+0x2a8>)
 8000ae6:	685c      	ldr	r4, [r3, #4]
 8000ae8:	681b      	ldr	r3, [r3, #0]
 8000aea:	1ac9      	subs	r1, r1, r3
 8000aec:	41a2      	sbcs	r2, r4
 8000aee:	000b      	movs	r3, r1
 8000af0:	0014      	movs	r4, r2
 8000af2:	17da      	asrs	r2, r3, #31
 8000af4:	189b      	adds	r3, r3, r2
 8000af6:	4053      	eors	r3, r2
 8000af8:	2bfa      	cmp	r3, #250	; 0xfa
 8000afa:	dd03      	ble.n	8000b04 <exti_finite_state_machine+0xc8>
 8000afc:	2002      	movs	r0, #2
 8000afe:	f000 f8ff 	bl	8000d00 <alarm_finite_state_machine>
 8000b02:	e002      	b.n	8000b0a <exti_finite_state_machine+0xce>
 8000b04:	2001      	movs	r0, #1
 8000b06:	f000 f8fb 	bl	8000d00 <alarm_finite_state_machine>
 8000b0a:	4b73      	ldr	r3, [pc, #460]	; (8000cd8 <exti_finite_state_machine+0x29c>)
 8000b0c:	2200      	movs	r2, #0
 8000b0e:	701a      	strb	r2, [r3, #0]
 8000b10:	4b72      	ldr	r3, [pc, #456]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000b12:	685c      	ldr	r4, [r3, #4]
 8000b14:	681b      	ldr	r3, [r3, #0]
 8000b16:	4a72      	ldr	r2, [pc, #456]	; (8000ce0 <exti_finite_state_machine+0x2a4>)
 8000b18:	6013      	str	r3, [r2, #0]
 8000b1a:	6054      	str	r4, [r2, #4]
 8000b1c:	4a71      	ldr	r2, [pc, #452]	; (8000ce4 <exti_finite_state_machine+0x2a8>)
 8000b1e:	2300      	movs	r3, #0
 8000b20:	2400      	movs	r4, #0
 8000b22:	6013      	str	r3, [r2, #0]
 8000b24:	6054      	str	r4, [r2, #4]
 8000b26:	e002      	b.n	8000b2e <exti_finite_state_machine+0xf2>
 8000b28:	e7fe      	b.n	8000b28 <exti_finite_state_machine+0xec>
 8000b2a:	46c0      	nop			; (mov r8, r8)
 8000b2c:	e0d0      	b.n	8000cd0 <exti_finite_state_machine+0x294>
 8000b2e:	46c0      	nop			; (mov r8, r8)
 8000b30:	e0ce      	b.n	8000cd0 <exti_finite_state_machine+0x294>
 8000b32:	4b6d      	ldr	r3, [pc, #436]	; (8000ce8 <exti_finite_state_machine+0x2ac>)
 8000b34:	781b      	ldrb	r3, [r3, #0]
 8000b36:	2b03      	cmp	r3, #3
 8000b38:	d002      	beq.n	8000b40 <exti_finite_state_machine+0x104>
 8000b3a:	2b04      	cmp	r3, #4
 8000b3c:	d023      	beq.n	8000b86 <exti_finite_state_machine+0x14a>
 8000b3e:	e05a      	b.n	8000bf6 <exti_finite_state_machine+0x1ba>
 8000b40:	1dfb      	adds	r3, r7, #7
 8000b42:	781b      	ldrb	r3, [r3, #0]
 8000b44:	2b01      	cmp	r3, #1
 8000b46:	d157      	bne.n	8000bf8 <exti_finite_state_machine+0x1bc>
 8000b48:	4b64      	ldr	r3, [pc, #400]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000b4a:	6819      	ldr	r1, [r3, #0]
 8000b4c:	685a      	ldr	r2, [r3, #4]
 8000b4e:	4b67      	ldr	r3, [pc, #412]	; (8000cec <exti_finite_state_machine+0x2b0>)
 8000b50:	685c      	ldr	r4, [r3, #4]
 8000b52:	681b      	ldr	r3, [r3, #0]
 8000b54:	1ac9      	subs	r1, r1, r3
 8000b56:	41a2      	sbcs	r2, r4
 8000b58:	000b      	movs	r3, r1
 8000b5a:	0014      	movs	r4, r2
 8000b5c:	17da      	asrs	r2, r3, #31
 8000b5e:	189b      	adds	r3, r3, r2
 8000b60:	4053      	eors	r3, r2
 8000b62:	2b32      	cmp	r3, #50	; 0x32
 8000b64:	dd48      	ble.n	8000bf8 <exti_finite_state_machine+0x1bc>
 8000b66:	4b60      	ldr	r3, [pc, #384]	; (8000ce8 <exti_finite_state_machine+0x2ac>)
 8000b68:	2204      	movs	r2, #4
 8000b6a:	701a      	strb	r2, [r3, #0]
 8000b6c:	4b5b      	ldr	r3, [pc, #364]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000b6e:	685c      	ldr	r4, [r3, #4]
 8000b70:	681b      	ldr	r3, [r3, #0]
 8000b72:	4a5e      	ldr	r2, [pc, #376]	; (8000cec <exti_finite_state_machine+0x2b0>)
 8000b74:	6013      	str	r3, [r2, #0]
 8000b76:	6054      	str	r4, [r2, #4]
 8000b78:	4b58      	ldr	r3, [pc, #352]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000b7a:	685c      	ldr	r4, [r3, #4]
 8000b7c:	681b      	ldr	r3, [r3, #0]
 8000b7e:	4a5c      	ldr	r2, [pc, #368]	; (8000cf0 <exti_finite_state_machine+0x2b4>)
 8000b80:	6013      	str	r3, [r2, #0]
 8000b82:	6054      	str	r4, [r2, #4]
 8000b84:	e038      	b.n	8000bf8 <exti_finite_state_machine+0x1bc>
 8000b86:	1dfb      	adds	r3, r7, #7
 8000b88:	781b      	ldrb	r3, [r3, #0]
 8000b8a:	2b00      	cmp	r3, #0
 8000b8c:	d136      	bne.n	8000bfc <exti_finite_state_machine+0x1c0>
 8000b8e:	4b53      	ldr	r3, [pc, #332]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000b90:	6819      	ldr	r1, [r3, #0]
 8000b92:	685a      	ldr	r2, [r3, #4]
 8000b94:	4b55      	ldr	r3, [pc, #340]	; (8000cec <exti_finite_state_machine+0x2b0>)
 8000b96:	685c      	ldr	r4, [r3, #4]
 8000b98:	681b      	ldr	r3, [r3, #0]
 8000b9a:	1ac9      	subs	r1, r1, r3
 8000b9c:	41a2      	sbcs	r2, r4
 8000b9e:	000b      	movs	r3, r1
 8000ba0:	0014      	movs	r4, r2
 8000ba2:	17da      	asrs	r2, r3, #31
 8000ba4:	189b      	adds	r3, r3, r2
 8000ba6:	4053      	eors	r3, r2
 8000ba8:	2b32      	cmp	r3, #50	; 0x32
 8000baa:	dd27      	ble.n	8000bfc <exti_finite_state_machine+0x1c0>
 8000bac:	4b4b      	ldr	r3, [pc, #300]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000bae:	6819      	ldr	r1, [r3, #0]
 8000bb0:	685a      	ldr	r2, [r3, #4]
 8000bb2:	4b4f      	ldr	r3, [pc, #316]	; (8000cf0 <exti_finite_state_machine+0x2b4>)
 8000bb4:	685c      	ldr	r4, [r3, #4]
 8000bb6:	681b      	ldr	r3, [r3, #0]
 8000bb8:	1ac9      	subs	r1, r1, r3
 8000bba:	41a2      	sbcs	r2, r4
 8000bbc:	000b      	movs	r3, r1
 8000bbe:	0014      	movs	r4, r2
 8000bc0:	17da      	asrs	r2, r3, #31
 8000bc2:	189b      	adds	r3, r3, r2
 8000bc4:	4053      	eors	r3, r2
 8000bc6:	2bfa      	cmp	r3, #250	; 0xfa
 8000bc8:	dd03      	ble.n	8000bd2 <exti_finite_state_machine+0x196>
 8000bca:	2005      	movs	r0, #5
 8000bcc:	f000 f898 	bl	8000d00 <alarm_finite_state_machine>
 8000bd0:	e002      	b.n	8000bd8 <exti_finite_state_machine+0x19c>
 8000bd2:	2004      	movs	r0, #4
 8000bd4:	f000 f894 	bl	8000d00 <alarm_finite_state_machine>
 8000bd8:	4b43      	ldr	r3, [pc, #268]	; (8000ce8 <exti_finite_state_machine+0x2ac>)
 8000bda:	2203      	movs	r2, #3
 8000bdc:	701a      	strb	r2, [r3, #0]
 8000bde:	4b3f      	ldr	r3, [pc, #252]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000be0:	685c      	ldr	r4, [r3, #4]
 8000be2:	681b      	ldr	r3, [r3, #0]
 8000be4:	4a41      	ldr	r2, [pc, #260]	; (8000cec <exti_finite_state_machine+0x2b0>)
 8000be6:	6013      	str	r3, [r2, #0]
 8000be8:	6054      	str	r4, [r2, #4]
 8000bea:	4a41      	ldr	r2, [pc, #260]	; (8000cf0 <exti_finite_state_machine+0x2b4>)
 8000bec:	2300      	movs	r3, #0
 8000bee:	2400      	movs	r4, #0
 8000bf0:	6013      	str	r3, [r2, #0]
 8000bf2:	6054      	str	r4, [r2, #4]
 8000bf4:	e002      	b.n	8000bfc <exti_finite_state_machine+0x1c0>
 8000bf6:	e7fe      	b.n	8000bf6 <exti_finite_state_machine+0x1ba>
 8000bf8:	46c0      	nop			; (mov r8, r8)
 8000bfa:	e069      	b.n	8000cd0 <exti_finite_state_machine+0x294>
 8000bfc:	46c0      	nop			; (mov r8, r8)
 8000bfe:	e067      	b.n	8000cd0 <exti_finite_state_machine+0x294>
 8000c00:	4b3c      	ldr	r3, [pc, #240]	; (8000cf4 <exti_finite_state_machine+0x2b8>)
 8000c02:	781b      	ldrb	r3, [r3, #0]
 8000c04:	2b06      	cmp	r3, #6
 8000c06:	d002      	beq.n	8000c0e <exti_finite_state_machine+0x1d2>
 8000c08:	2b07      	cmp	r3, #7
 8000c0a:	d023      	beq.n	8000c54 <exti_finite_state_machine+0x218>
 8000c0c:	e05a      	b.n	8000cc4 <exti_finite_state_machine+0x288>
 8000c0e:	1dfb      	adds	r3, r7, #7
 8000c10:	781b      	ldrb	r3, [r3, #0]
 8000c12:	2b01      	cmp	r3, #1
 8000c14:	d157      	bne.n	8000cc6 <exti_finite_state_machine+0x28a>
 8000c16:	4b31      	ldr	r3, [pc, #196]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000c18:	6819      	ldr	r1, [r3, #0]
 8000c1a:	685a      	ldr	r2, [r3, #4]
 8000c1c:	4b36      	ldr	r3, [pc, #216]	; (8000cf8 <exti_finite_state_machine+0x2bc>)
 8000c1e:	685c      	ldr	r4, [r3, #4]
 8000c20:	681b      	ldr	r3, [r3, #0]
 8000c22:	1ac9      	subs	r1, r1, r3
 8000c24:	41a2      	sbcs	r2, r4
 8000c26:	000b      	movs	r3, r1
 8000c28:	0014      	movs	r4, r2
 8000c2a:	17da      	asrs	r2, r3, #31
 8000c2c:	189b      	adds	r3, r3, r2
 8000c2e:	4053      	eors	r3, r2
 8000c30:	2b32      	cmp	r3, #50	; 0x32
 8000c32:	dd48      	ble.n	8000cc6 <exti_finite_state_machine+0x28a>
 8000c34:	4b2f      	ldr	r3, [pc, #188]	; (8000cf4 <exti_finite_state_machine+0x2b8>)
 8000c36:	2207      	movs	r2, #7
 8000c38:	701a      	strb	r2, [r3, #0]
 8000c3a:	4b28      	ldr	r3, [pc, #160]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000c3c:	685c      	ldr	r4, [r3, #4]
 8000c3e:	681b      	ldr	r3, [r3, #0]
 8000c40:	4a2d      	ldr	r2, [pc, #180]	; (8000cf8 <exti_finite_state_machine+0x2bc>)
 8000c42:	6013      	str	r3, [r2, #0]
 8000c44:	6054      	str	r4, [r2, #4]
 8000c46:	4b25      	ldr	r3, [pc, #148]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000c48:	685c      	ldr	r4, [r3, #4]
 8000c4a:	681b      	ldr	r3, [r3, #0]
 8000c4c:	4a2b      	ldr	r2, [pc, #172]	; (8000cfc <exti_finite_state_machine+0x2c0>)
 8000c4e:	6013      	str	r3, [r2, #0]
 8000c50:	6054      	str	r4, [r2, #4]
 8000c52:	e038      	b.n	8000cc6 <exti_finite_state_machine+0x28a>
 8000c54:	1dfb      	adds	r3, r7, #7
 8000c56:	781b      	ldrb	r3, [r3, #0]
 8000c58:	2b00      	cmp	r3, #0
 8000c5a:	d136      	bne.n	8000cca <exti_finite_state_machine+0x28e>
 8000c5c:	4b1f      	ldr	r3, [pc, #124]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000c5e:	6819      	ldr	r1, [r3, #0]
 8000c60:	685a      	ldr	r2, [r3, #4]
 8000c62:	4b25      	ldr	r3, [pc, #148]	; (8000cf8 <exti_finite_state_machine+0x2bc>)
 8000c64:	685c      	ldr	r4, [r3, #4]
 8000c66:	681b      	ldr	r3, [r3, #0]
 8000c68:	1ac9      	subs	r1, r1, r3
 8000c6a:	41a2      	sbcs	r2, r4
 8000c6c:	000b      	movs	r3, r1
 8000c6e:	0014      	movs	r4, r2
 8000c70:	17da      	asrs	r2, r3, #31
 8000c72:	189b      	adds	r3, r3, r2
 8000c74:	4053      	eors	r3, r2
 8000c76:	2b32      	cmp	r3, #50	; 0x32
 8000c78:	dd27      	ble.n	8000cca <exti_finite_state_machine+0x28e>
 8000c7a:	4b18      	ldr	r3, [pc, #96]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000c7c:	6819      	ldr	r1, [r3, #0]
 8000c7e:	685a      	ldr	r2, [r3, #4]
 8000c80:	4b1e      	ldr	r3, [pc, #120]	; (8000cfc <exti_finite_state_machine+0x2c0>)
 8000c82:	685c      	ldr	r4, [r3, #4]
 8000c84:	681b      	ldr	r3, [r3, #0]
 8000c86:	1ac9      	subs	r1, r1, r3
 8000c88:	41a2      	sbcs	r2, r4
 8000c8a:	000b      	movs	r3, r1
 8000c8c:	0014      	movs	r4, r2
 8000c8e:	17da      	asrs	r2, r3, #31
 8000c90:	189b      	adds	r3, r3, r2
 8000c92:	4053      	eors	r3, r2
 8000c94:	2bfa      	cmp	r3, #250	; 0xfa
 8000c96:	dd03      	ble.n	8000ca0 <exti_finite_state_machine+0x264>
 8000c98:	2008      	movs	r0, #8
 8000c9a:	f000 f831 	bl	8000d00 <alarm_finite_state_machine>
 8000c9e:	e002      	b.n	8000ca6 <exti_finite_state_machine+0x26a>
 8000ca0:	2007      	movs	r0, #7
 8000ca2:	f000 f82d 	bl	8000d00 <alarm_finite_state_machine>
 8000ca6:	4b13      	ldr	r3, [pc, #76]	; (8000cf4 <exti_finite_state_machine+0x2b8>)
 8000ca8:	2206      	movs	r2, #6
 8000caa:	701a      	strb	r2, [r3, #0]
 8000cac:	4b0b      	ldr	r3, [pc, #44]	; (8000cdc <exti_finite_state_machine+0x2a0>)
 8000cae:	685c      	ldr	r4, [r3, #4]
 8000cb0:	681b      	ldr	r3, [r3, #0]
 8000cb2:	4a11      	ldr	r2, [pc, #68]	; (8000cf8 <exti_finite_state_machine+0x2bc>)
 8000cb4:	6013      	str	r3, [r2, #0]
 8000cb6:	6054      	str	r4, [r2, #4]
 8000cb8:	4a10      	ldr	r2, [pc, #64]	; (8000cfc <exti_finite_state_machine+0x2c0>)
 8000cba:	2300      	movs	r3, #0
 8000cbc:	2400      	movs	r4, #0
 8000cbe:	6013      	str	r3, [r2, #0]
 8000cc0:	6054      	str	r4, [r2, #4]
 8000cc2:	e002      	b.n	8000cca <exti_finite_state_machine+0x28e>
 8000cc4:	e7fe      	b.n	8000cc4 <exti_finite_state_machine+0x288>
 8000cc6:	46c0      	nop			; (mov r8, r8)
 8000cc8:	e002      	b.n	8000cd0 <exti_finite_state_machine+0x294>
 8000cca:	46c0      	nop			; (mov r8, r8)
 8000ccc:	e000      	b.n	8000cd0 <exti_finite_state_machine+0x294>
 8000cce:	e7fe      	b.n	8000cce <exti_finite_state_machine+0x292>
 8000cd0:	46c0      	nop			; (mov r8, r8)
 8000cd2:	46bd      	mov	sp, r7
 8000cd4:	b003      	add	sp, #12
 8000cd6:	bd90      	pop	{r4, r7, pc}
 8000cd8:	200004b8 	.word	0x200004b8
 8000cdc:	20000000 	.word	0x20000000
 8000ce0:	200004c0 	.word	0x200004c0
 8000ce4:	200004c8 	.word	0x200004c8
 8000ce8:	20000058 	.word	0x20000058
 8000cec:	200004d0 	.word	0x200004d0
 8000cf0:	200004d8 	.word	0x200004d8
 8000cf4:	20000059 	.word	0x20000059
 8000cf8:	200004e0 	.word	0x200004e0
 8000cfc:	200004e8 	.word	0x200004e8

08000d00 <alarm_finite_state_machine>:
 8000d00:	b590      	push	{r4, r7, lr}
 8000d02:	b083      	sub	sp, #12
 8000d04:	af00      	add	r7, sp, #0
 8000d06:	0002      	movs	r2, r0
 8000d08:	1dfb      	adds	r3, r7, #7
 8000d0a:	701a      	strb	r2, [r3, #0]
 8000d0c:	4b2d      	ldr	r3, [pc, #180]	; (8000dc4 <alarm_finite_state_machine+0xc4>)
 8000d0e:	781a      	ldrb	r2, [r3, #0]
 8000d10:	4b2d      	ldr	r3, [pc, #180]	; (8000dc8 <alarm_finite_state_machine+0xc8>)
 8000d12:	701a      	strb	r2, [r3, #0]
 8000d14:	4b2b      	ldr	r3, [pc, #172]	; (8000dc4 <alarm_finite_state_machine+0xc4>)
 8000d16:	781b      	ldrb	r3, [r3, #0]
 8000d18:	2b01      	cmp	r3, #1
 8000d1a:	d011      	beq.n	8000d40 <alarm_finite_state_machine+0x40>
 8000d1c:	2b02      	cmp	r3, #2
 8000d1e:	d01d      	beq.n	8000d5c <alarm_finite_state_machine+0x5c>
 8000d20:	2b00      	cmp	r3, #0
 8000d22:	d000      	beq.n	8000d26 <alarm_finite_state_machine+0x26>
 8000d24:	e041      	b.n	8000daa <alarm_finite_state_machine+0xaa>
 8000d26:	1dfb      	adds	r3, r7, #7
 8000d28:	781b      	ldrb	r3, [r3, #0]
 8000d2a:	2b02      	cmp	r3, #2
 8000d2c:	d13e      	bne.n	8000dac <alarm_finite_state_machine+0xac>
 8000d2e:	4a27      	ldr	r2, [pc, #156]	; (8000dcc <alarm_finite_state_machine+0xcc>)
 8000d30:	2300      	movs	r3, #0
 8000d32:	2400      	movs	r4, #0
 8000d34:	6013      	str	r3, [r2, #0]
 8000d36:	6054      	str	r4, [r2, #4]
 8000d38:	4b22      	ldr	r3, [pc, #136]	; (8000dc4 <alarm_finite_state_machine+0xc4>)
 8000d3a:	2201      	movs	r2, #1
 8000d3c:	701a      	strb	r2, [r3, #0]
 8000d3e:	e035      	b.n	8000dac <alarm_finite_state_machine+0xac>
 8000d40:	1dfb      	adds	r3, r7, #7
 8000d42:	781b      	ldrb	r3, [r3, #0]
 8000d44:	2b02      	cmp	r3, #2
 8000d46:	d103      	bne.n	8000d50 <alarm_finite_state_machine+0x50>
 8000d48:	4b1e      	ldr	r3, [pc, #120]	; (8000dc4 <alarm_finite_state_machine+0xc4>)
 8000d4a:	2200      	movs	r2, #0
 8000d4c:	701a      	strb	r2, [r3, #0]
 8000d4e:	e030      	b.n	8000db2 <alarm_finite_state_machine+0xb2>
 8000d50:	1dfb      	adds	r3, r7, #7
 8000d52:	781b      	ldrb	r3, [r3, #0]
 8000d54:	0018      	movs	r0, r3
 8000d56:	f000 f83f 	bl	8000dd8 <tune_finite_state_machine>
 8000d5a:	e02a      	b.n	8000db2 <alarm_finite_state_machine+0xb2>
 8000d5c:	1dfb      	adds	r3, r7, #7
 8000d5e:	781b      	ldrb	r3, [r3, #0]
 8000d60:	2b01      	cmp	r3, #1
 8000d62:	d102      	bne.n	8000d6a <alarm_finite_state_machine+0x6a>
 8000d64:	4b17      	ldr	r3, [pc, #92]	; (8000dc4 <alarm_finite_state_machine+0xc4>)
 8000d66:	2200      	movs	r2, #0
 8000d68:	701a      	strb	r2, [r3, #0]
 8000d6a:	1dfb      	adds	r3, r7, #7
 8000d6c:	781b      	ldrb	r3, [r3, #0]
 8000d6e:	2b07      	cmp	r3, #7
 8000d70:	d10c      	bne.n	8000d8c <alarm_finite_state_machine+0x8c>
 8000d72:	4b16      	ldr	r3, [pc, #88]	; (8000dcc <alarm_finite_state_machine+0xcc>)
 8000d74:	685c      	ldr	r4, [r3, #4]
 8000d76:	681b      	ldr	r3, [r3, #0]
 8000d78:	4915      	ldr	r1, [pc, #84]	; (8000dd0 <alarm_finite_state_machine+0xd0>)
 8000d7a:	2200      	movs	r2, #0
 8000d7c:	185b      	adds	r3, r3, r1
 8000d7e:	4154      	adcs	r4, r2
 8000d80:	4a12      	ldr	r2, [pc, #72]	; (8000dcc <alarm_finite_state_machine+0xcc>)
 8000d82:	6013      	str	r3, [r2, #0]
 8000d84:	6054      	str	r4, [r2, #4]
 8000d86:	4b0f      	ldr	r3, [pc, #60]	; (8000dc4 <alarm_finite_state_machine+0xc4>)
 8000d88:	2200      	movs	r2, #0
 8000d8a:	701a      	strb	r2, [r3, #0]
 8000d8c:	1dfb      	adds	r3, r7, #7
 8000d8e:	781b      	ldrb	r3, [r3, #0]
 8000d90:	2b04      	cmp	r3, #4
 8000d92:	d10d      	bne.n	8000db0 <alarm_finite_state_machine+0xb0>
 8000d94:	4b0d      	ldr	r3, [pc, #52]	; (8000dcc <alarm_finite_state_machine+0xcc>)
 8000d96:	685c      	ldr	r4, [r3, #4]
 8000d98:	681b      	ldr	r3, [r3, #0]
 8000d9a:	490e      	ldr	r1, [pc, #56]	; (8000dd4 <alarm_finite_state_machine+0xd4>)
 8000d9c:	2200      	movs	r2, #0
 8000d9e:	185b      	adds	r3, r3, r1
 8000da0:	4154      	adcs	r4, r2
 8000da2:	4a0a      	ldr	r2, [pc, #40]	; (8000dcc <alarm_finite_state_machine+0xcc>)
 8000da4:	6013      	str	r3, [r2, #0]
 8000da6:	6054      	str	r4, [r2, #4]
 8000da8:	e002      	b.n	8000db0 <alarm_finite_state_machine+0xb0>
 8000daa:	e7fe      	b.n	8000daa <alarm_finite_state_machine+0xaa>
 8000dac:	46c0      	nop			; (mov r8, r8)
 8000dae:	e000      	b.n	8000db2 <alarm_finite_state_machine+0xb2>
 8000db0:	46c0      	nop			; (mov r8, r8)
 8000db2:	4b04      	ldr	r3, [pc, #16]	; (8000dc4 <alarm_finite_state_machine+0xc4>)
 8000db4:	781a      	ldrb	r2, [r3, #0]
 8000db6:	4b04      	ldr	r3, [pc, #16]	; (8000dc8 <alarm_finite_state_machine+0xc8>)
 8000db8:	701a      	strb	r2, [r3, #0]
 8000dba:	46c0      	nop			; (mov r8, r8)
 8000dbc:	46bd      	mov	sp, r7
 8000dbe:	b003      	add	sp, #12
 8000dc0:	bd90      	pop	{r4, r7, pc}
 8000dc2:	46c0      	nop			; (mov r8, r8)
 8000dc4:	200004f0 	.word	0x200004f0
 8000dc8:	200004ac 	.word	0x200004ac
 8000dcc:	20000008 	.word	0x20000008
 8000dd0:	000927c0 	.word	0x000927c0
 8000dd4:	000493e0 	.word	0x000493e0

08000dd8 <tune_finite_state_machine>:
 8000dd8:	b590      	push	{r4, r7, lr}
 8000dda:	b083      	sub	sp, #12
 8000ddc:	af00      	add	r7, sp, #0
 8000dde:	0002      	movs	r2, r0
 8000de0:	1dfb      	adds	r3, r7, #7
 8000de2:	701a      	strb	r2, [r3, #0]
 8000de4:	4b2e      	ldr	r3, [pc, #184]	; (8000ea0 <tune_finite_state_machine+0xc8>)
 8000de6:	781b      	ldrb	r3, [r3, #0]
 8000de8:	2b00      	cmp	r3, #0
 8000dea:	d029      	beq.n	8000e40 <tune_finite_state_machine+0x68>
 8000dec:	2b01      	cmp	r3, #1
 8000dee:	d000      	beq.n	8000df2 <tune_finite_state_machine+0x1a>
 8000df0:	e04d      	b.n	8000e8e <tune_finite_state_machine+0xb6>
 8000df2:	1dfb      	adds	r3, r7, #7
 8000df4:	781b      	ldrb	r3, [r3, #0]
 8000df6:	2b05      	cmp	r3, #5
 8000df8:	d103      	bne.n	8000e02 <tune_finite_state_machine+0x2a>
 8000dfa:	4b29      	ldr	r3, [pc, #164]	; (8000ea0 <tune_finite_state_machine+0xc8>)
 8000dfc:	2200      	movs	r2, #0
 8000dfe:	701a      	strb	r2, [r3, #0]
 8000e00:	e046      	b.n	8000e90 <tune_finite_state_machine+0xb8>
 8000e02:	1dfb      	adds	r3, r7, #7
 8000e04:	781b      	ldrb	r3, [r3, #0]
 8000e06:	2b04      	cmp	r3, #4
 8000e08:	d10b      	bne.n	8000e22 <tune_finite_state_machine+0x4a>
 8000e0a:	4b26      	ldr	r3, [pc, #152]	; (8000ea4 <tune_finite_state_machine+0xcc>)
 8000e0c:	685c      	ldr	r4, [r3, #4]
 8000e0e:	681b      	ldr	r3, [r3, #0]
 8000e10:	4925      	ldr	r1, [pc, #148]	; (8000ea8 <tune_finite_state_machine+0xd0>)
 8000e12:	2201      	movs	r2, #1
 8000e14:	4252      	negs	r2, r2
 8000e16:	185b      	adds	r3, r3, r1
 8000e18:	4154      	adcs	r4, r2
 8000e1a:	4a22      	ldr	r2, [pc, #136]	; (8000ea4 <tune_finite_state_machine+0xcc>)
 8000e1c:	6013      	str	r3, [r2, #0]
 8000e1e:	6054      	str	r4, [r2, #4]
 8000e20:	e036      	b.n	8000e90 <tune_finite_state_machine+0xb8>
 8000e22:	1dfb      	adds	r3, r7, #7
 8000e24:	781b      	ldrb	r3, [r3, #0]
 8000e26:	2b07      	cmp	r3, #7
 8000e28:	d132      	bne.n	8000e90 <tune_finite_state_machine+0xb8>
 8000e2a:	4b1e      	ldr	r3, [pc, #120]	; (8000ea4 <tune_finite_state_machine+0xcc>)
 8000e2c:	685c      	ldr	r4, [r3, #4]
 8000e2e:	681b      	ldr	r3, [r3, #0]
 8000e30:	491e      	ldr	r1, [pc, #120]	; (8000eac <tune_finite_state_machine+0xd4>)
 8000e32:	2200      	movs	r2, #0
 8000e34:	185b      	adds	r3, r3, r1
 8000e36:	4154      	adcs	r4, r2
 8000e38:	4a1a      	ldr	r2, [pc, #104]	; (8000ea4 <tune_finite_state_machine+0xcc>)
 8000e3a:	6013      	str	r3, [r2, #0]
 8000e3c:	6054      	str	r4, [r2, #4]
 8000e3e:	e027      	b.n	8000e90 <tune_finite_state_machine+0xb8>
 8000e40:	1dfb      	adds	r3, r7, #7
 8000e42:	781b      	ldrb	r3, [r3, #0]
 8000e44:	2b08      	cmp	r3, #8
 8000e46:	d103      	bne.n	8000e50 <tune_finite_state_machine+0x78>
 8000e48:	4b15      	ldr	r3, [pc, #84]	; (8000ea0 <tune_finite_state_machine+0xc8>)
 8000e4a:	2201      	movs	r2, #1
 8000e4c:	701a      	strb	r2, [r3, #0]
 8000e4e:	e021      	b.n	8000e94 <tune_finite_state_machine+0xbc>
 8000e50:	1dfb      	adds	r3, r7, #7
 8000e52:	781b      	ldrb	r3, [r3, #0]
 8000e54:	2b04      	cmp	r3, #4
 8000e56:	d10b      	bne.n	8000e70 <tune_finite_state_machine+0x98>
 8000e58:	4b12      	ldr	r3, [pc, #72]	; (8000ea4 <tune_finite_state_machine+0xcc>)
 8000e5a:	685c      	ldr	r4, [r3, #4]
 8000e5c:	681b      	ldr	r3, [r3, #0]
 8000e5e:	4914      	ldr	r1, [pc, #80]	; (8000eb0 <tune_finite_state_machine+0xd8>)
 8000e60:	2201      	movs	r2, #1
 8000e62:	4252      	negs	r2, r2
 8000e64:	185b      	adds	r3, r3, r1
 8000e66:	4154      	adcs	r4, r2
 8000e68:	4a0e      	ldr	r2, [pc, #56]	; (8000ea4 <tune_finite_state_machine+0xcc>)
 8000e6a:	6013      	str	r3, [r2, #0]
 8000e6c:	6054      	str	r4, [r2, #4]
 8000e6e:	e011      	b.n	8000e94 <tune_finite_state_machine+0xbc>
 8000e70:	1dfb      	adds	r3, r7, #7
 8000e72:	781b      	ldrb	r3, [r3, #0]
 8000e74:	2b07      	cmp	r3, #7
 8000e76:	d10d      	bne.n	8000e94 <tune_finite_state_machine+0xbc>
 8000e78:	4b0a      	ldr	r3, [pc, #40]	; (8000ea4 <tune_finite_state_machine+0xcc>)
 8000e7a:	685c      	ldr	r4, [r3, #4]
 8000e7c:	681b      	ldr	r3, [r3, #0]
 8000e7e:	490d      	ldr	r1, [pc, #52]	; (8000eb4 <tune_finite_state_machine+0xdc>)
 8000e80:	2200      	movs	r2, #0
 8000e82:	185b      	adds	r3, r3, r1
 8000e84:	4154      	adcs	r4, r2
 8000e86:	4a07      	ldr	r2, [pc, #28]	; (8000ea4 <tune_finite_state_machine+0xcc>)
 8000e88:	6013      	str	r3, [r2, #0]
 8000e8a:	6054      	str	r4, [r2, #4]
 8000e8c:	e002      	b.n	8000e94 <tune_finite_state_machine+0xbc>
 8000e8e:	e7fe      	b.n	8000e8e <tune_finite_state_machine+0xb6>
 8000e90:	46c0      	nop			; (mov r8, r8)
 8000e92:	e000      	b.n	8000e96 <tune_finite_state_machine+0xbe>
 8000e94:	46c0      	nop			; (mov r8, r8)
 8000e96:	46c0      	nop			; (mov r8, r8)
 8000e98:	46bd      	mov	sp, r7
 8000e9a:	b003      	add	sp, #12
 8000e9c:	bd90      	pop	{r4, r7, pc}
 8000e9e:	46c0      	nop			; (mov r8, r8)
 8000ea0:	2000005a 	.word	0x2000005a
 8000ea4:	20000008 	.word	0x20000008
 8000ea8:	ffff15a0 	.word	0xffff15a0
 8000eac:	0000ea60 	.word	0x0000ea60
 8000eb0:	ffc91180 	.word	0xffc91180
 8000eb4:	0036ee80 	.word	0x0036ee80

08000eb8 <gpio_config>:
 8000eb8:	b580      	push	{r7, lr}
 8000eba:	af00      	add	r7, sp, #0
 8000ebc:	2380      	movs	r3, #128	; 0x80
 8000ebe:	031b      	lsls	r3, r3, #12
 8000ec0:	0018      	movs	r0, r3
 8000ec2:	f7ff fb01 	bl	80004c8 <LL_AHB1_GRP1_EnableClock>
 8000ec6:	4b2b      	ldr	r3, [pc, #172]	; (8000f74 <gpio_config+0xbc>)
 8000ec8:	2201      	movs	r2, #1
 8000eca:	2101      	movs	r1, #1
 8000ecc:	0018      	movs	r0, r3
 8000ece:	f7ff fb27 	bl	8000520 <LL_GPIO_SetPinMode>
 8000ed2:	4b28      	ldr	r3, [pc, #160]	; (8000f74 <gpio_config+0xbc>)
 8000ed4:	2201      	movs	r2, #1
 8000ed6:	2102      	movs	r1, #2
 8000ed8:	0018      	movs	r0, r3
 8000eda:	f7ff fb21 	bl	8000520 <LL_GPIO_SetPinMode>
 8000ede:	4b25      	ldr	r3, [pc, #148]	; (8000f74 <gpio_config+0xbc>)
 8000ee0:	2201      	movs	r2, #1
 8000ee2:	2104      	movs	r1, #4
 8000ee4:	0018      	movs	r0, r3
 8000ee6:	f7ff fb1b 	bl	8000520 <LL_GPIO_SetPinMode>
 8000eea:	4b22      	ldr	r3, [pc, #136]	; (8000f74 <gpio_config+0xbc>)
 8000eec:	2201      	movs	r2, #1
 8000eee:	2108      	movs	r1, #8
 8000ef0:	0018      	movs	r0, r3
 8000ef2:	f7ff fb15 	bl	8000520 <LL_GPIO_SetPinMode>
 8000ef6:	4b1f      	ldr	r3, [pc, #124]	; (8000f74 <gpio_config+0xbc>)
 8000ef8:	2201      	movs	r2, #1
 8000efa:	2110      	movs	r1, #16
 8000efc:	0018      	movs	r0, r3
 8000efe:	f7ff fb0f 	bl	8000520 <LL_GPIO_SetPinMode>
 8000f02:	4b1c      	ldr	r3, [pc, #112]	; (8000f74 <gpio_config+0xbc>)
 8000f04:	2201      	movs	r2, #1
 8000f06:	2120      	movs	r1, #32
 8000f08:	0018      	movs	r0, r3
 8000f0a:	f7ff fb09 	bl	8000520 <LL_GPIO_SetPinMode>
 8000f0e:	4b19      	ldr	r3, [pc, #100]	; (8000f74 <gpio_config+0xbc>)
 8000f10:	2201      	movs	r2, #1
 8000f12:	2140      	movs	r1, #64	; 0x40
 8000f14:	0018      	movs	r0, r3
 8000f16:	f7ff fb03 	bl	8000520 <LL_GPIO_SetPinMode>
 8000f1a:	4b16      	ldr	r3, [pc, #88]	; (8000f74 <gpio_config+0xbc>)
 8000f1c:	2201      	movs	r2, #1
 8000f1e:	2180      	movs	r1, #128	; 0x80
 8000f20:	0018      	movs	r0, r3
 8000f22:	f7ff fafd 	bl	8000520 <LL_GPIO_SetPinMode>
 8000f26:	2380      	movs	r3, #128	; 0x80
 8000f28:	005b      	lsls	r3, r3, #1
 8000f2a:	4812      	ldr	r0, [pc, #72]	; (8000f74 <gpio_config+0xbc>)
 8000f2c:	2201      	movs	r2, #1
 8000f2e:	0019      	movs	r1, r3
 8000f30:	f7ff faf6 	bl	8000520 <LL_GPIO_SetPinMode>
 8000f34:	2380      	movs	r3, #128	; 0x80
 8000f36:	009b      	lsls	r3, r3, #2
 8000f38:	480e      	ldr	r0, [pc, #56]	; (8000f74 <gpio_config+0xbc>)
 8000f3a:	2201      	movs	r2, #1
 8000f3c:	0019      	movs	r1, r3
 8000f3e:	f7ff faef 	bl	8000520 <LL_GPIO_SetPinMode>
 8000f42:	2380      	movs	r3, #128	; 0x80
 8000f44:	00db      	lsls	r3, r3, #3
 8000f46:	480b      	ldr	r0, [pc, #44]	; (8000f74 <gpio_config+0xbc>)
 8000f48:	2201      	movs	r2, #1
 8000f4a:	0019      	movs	r1, r3
 8000f4c:	f7ff fae8 	bl	8000520 <LL_GPIO_SetPinMode>
 8000f50:	2380      	movs	r3, #128	; 0x80
 8000f52:	011b      	lsls	r3, r3, #4
 8000f54:	4807      	ldr	r0, [pc, #28]	; (8000f74 <gpio_config+0xbc>)
 8000f56:	2201      	movs	r2, #1
 8000f58:	0019      	movs	r1, r3
 8000f5a:	f7ff fae1 	bl	8000520 <LL_GPIO_SetPinMode>
 8000f5e:	2380      	movs	r3, #128	; 0x80
 8000f60:	015b      	lsls	r3, r3, #5
 8000f62:	4804      	ldr	r0, [pc, #16]	; (8000f74 <gpio_config+0xbc>)
 8000f64:	2201      	movs	r2, #1
 8000f66:	0019      	movs	r1, r3
 8000f68:	f7ff fada 	bl	8000520 <LL_GPIO_SetPinMode>
 8000f6c:	46c0      	nop			; (mov r8, r8)
 8000f6e:	46bd      	mov	sp, r7
 8000f70:	bd80      	pop	{r7, pc}
 8000f72:	46c0      	nop			; (mov r8, r8)
 8000f74:	48000800 	.word	0x48000800

08000f78 <main>:
 8000f78:	b580      	push	{r7, lr}
 8000f7a:	af00      	add	r7, sp, #0
 8000f7c:	f000 f84e 	bl	800101c <SystemClock_Config>
 8000f80:	f7ff ff9a 	bl	8000eb8 <gpio_config>
 8000f84:	f7ff fc70 	bl	8000868 <UserButton_Init>
 8000f88:	f7ff fc9e 	bl	80008c8 <FirstButton_Init>
 8000f8c:	f7ff fcd2 	bl	8000934 <SecondButton_Init>
 8000f90:	4b1e      	ldr	r3, [pc, #120]	; (800100c <main+0x94>)
 8000f92:	881b      	ldrh	r3, [r3, #0]
 8000f94:	001a      	movs	r2, r3
 8000f96:	4b1e      	ldr	r3, [pc, #120]	; (8001010 <main+0x98>)
 8000f98:	78db      	ldrb	r3, [r3, #3]
 8000f9a:	0019      	movs	r1, r3
 8000f9c:	4b1d      	ldr	r3, [pc, #116]	; (8001014 <main+0x9c>)
 8000f9e:	5c5b      	ldrb	r3, [r3, r1]
 8000fa0:	4313      	orrs	r3, r2
 8000fa2:	001a      	movs	r2, r3
 8000fa4:	4b1c      	ldr	r3, [pc, #112]	; (8001018 <main+0xa0>)
 8000fa6:	0011      	movs	r1, r2
 8000fa8:	0018      	movs	r0, r3
 8000faa:	f7ff fb05 	bl	80005b8 <LL_GPIO_WriteOutputPort>
 8000fae:	4b17      	ldr	r3, [pc, #92]	; (800100c <main+0x94>)
 8000fb0:	885b      	ldrh	r3, [r3, #2]
 8000fb2:	001a      	movs	r2, r3
 8000fb4:	4b16      	ldr	r3, [pc, #88]	; (8001010 <main+0x98>)
 8000fb6:	789b      	ldrb	r3, [r3, #2]
 8000fb8:	0019      	movs	r1, r3
 8000fba:	4b16      	ldr	r3, [pc, #88]	; (8001014 <main+0x9c>)
 8000fbc:	5c5b      	ldrb	r3, [r3, r1]
 8000fbe:	4313      	orrs	r3, r2
 8000fc0:	001a      	movs	r2, r3
 8000fc2:	4b15      	ldr	r3, [pc, #84]	; (8001018 <main+0xa0>)
 8000fc4:	0011      	movs	r1, r2
 8000fc6:	0018      	movs	r0, r3
 8000fc8:	f7ff faf6 	bl	80005b8 <LL_GPIO_WriteOutputPort>
 8000fcc:	4b0f      	ldr	r3, [pc, #60]	; (800100c <main+0x94>)
 8000fce:	889b      	ldrh	r3, [r3, #4]
 8000fd0:	001a      	movs	r2, r3
 8000fd2:	4b0f      	ldr	r3, [pc, #60]	; (8001010 <main+0x98>)
 8000fd4:	785b      	ldrb	r3, [r3, #1]
 8000fd6:	0019      	movs	r1, r3
 8000fd8:	4b0e      	ldr	r3, [pc, #56]	; (8001014 <main+0x9c>)
 8000fda:	5c5b      	ldrb	r3, [r3, r1]
 8000fdc:	4313      	orrs	r3, r2
 8000fde:	001a      	movs	r2, r3
 8000fe0:	4b0d      	ldr	r3, [pc, #52]	; (8001018 <main+0xa0>)
 8000fe2:	0011      	movs	r1, r2
 8000fe4:	0018      	movs	r0, r3
 8000fe6:	f7ff fae7 	bl	80005b8 <LL_GPIO_WriteOutputPort>
 8000fea:	4b08      	ldr	r3, [pc, #32]	; (800100c <main+0x94>)
 8000fec:	88db      	ldrh	r3, [r3, #6]
 8000fee:	001a      	movs	r2, r3
 8000ff0:	4b07      	ldr	r3, [pc, #28]	; (8001010 <main+0x98>)
 8000ff2:	781b      	ldrb	r3, [r3, #0]
 8000ff4:	0019      	movs	r1, r3
 8000ff6:	4b07      	ldr	r3, [pc, #28]	; (8001014 <main+0x9c>)
 8000ff8:	5c5b      	ldrb	r3, [r3, r1]
 8000ffa:	4313      	orrs	r3, r2
 8000ffc:	001a      	movs	r2, r3
 8000ffe:	4b06      	ldr	r3, [pc, #24]	; (8001018 <main+0xa0>)
 8001000:	0011      	movs	r1, r2
 8001002:	0018      	movs	r0, r3
 8001004:	f7ff fad8 	bl	80005b8 <LL_GPIO_WriteOutputPort>
 8001008:	e7c2      	b.n	8000f90 <main+0x18>
 800100a:	46c0      	nop			; (mov r8, r8)
 800100c:	2000001c 	.word	0x2000001c
 8001010:	200004f4 	.word	0x200004f4
 8001014:	20000010 	.word	0x20000010
 8001018:	48000800 	.word	0x48000800

0800101c <SystemClock_Config>:
 800101c:	b580      	push	{r7, lr}
 800101e:	af00      	add	r7, sp, #0
 8001020:	2001      	movs	r0, #1
 8001022:	f7ff fbbb 	bl	800079c <LL_FLASH_SetLatency>
 8001026:	f7ff fae3 	bl	80005f0 <LL_RCC_HSI_Enable>
 800102a:	46c0      	nop			; (mov r8, r8)
 800102c:	f7ff faee 	bl	800060c <LL_RCC_HSI_IsReady>
 8001030:	0003      	movs	r3, r0
 8001032:	2b01      	cmp	r3, #1
 8001034:	d1fa      	bne.n	800102c <SystemClock_Config+0x10>
 8001036:	23a0      	movs	r3, #160	; 0xa0
 8001038:	039b      	lsls	r3, r3, #14
 800103a:	0019      	movs	r1, r3
 800103c:	2000      	movs	r0, #0
 800103e:	f7ff fb61 	bl	8000704 <LL_RCC_PLL_ConfigDomain_SYS>
 8001042:	f7ff fb3d 	bl	80006c0 <LL_RCC_PLL_Enable>
 8001046:	46c0      	nop			; (mov r8, r8)
 8001048:	f7ff fb48 	bl	80006dc <LL_RCC_PLL_IsReady>
 800104c:	0003      	movs	r3, r0
 800104e:	2b01      	cmp	r3, #1
 8001050:	d1fa      	bne.n	8001048 <SystemClock_Config+0x2c>
 8001052:	2000      	movs	r0, #0
 8001054:	f7ff fb0a 	bl	800066c <LL_RCC_SetAHBPrescaler>
 8001058:	2002      	movs	r0, #2
 800105a:	f7ff fae7 	bl	800062c <LL_RCC_SetSysClkSource>
 800105e:	46c0      	nop			; (mov r8, r8)
 8001060:	f7ff faf8 	bl	8000654 <LL_RCC_GetSysClkSource>
 8001064:	0003      	movs	r3, r0
 8001066:	2b08      	cmp	r3, #8
 8001068:	d1fa      	bne.n	8001060 <SystemClock_Config+0x44>
 800106a:	2000      	movs	r0, #0
 800106c:	f7ff fb12 	bl	8000694 <LL_RCC_SetAPB1Prescaler>
 8001070:	4b04      	ldr	r3, [pc, #16]	; (8001084 <SystemClock_Config+0x68>)
 8001072:	0018      	movs	r0, r3
 8001074:	f7ff fa04 	bl	8000480 <SysTick_Config>
 8001078:	4b03      	ldr	r3, [pc, #12]	; (8001088 <SystemClock_Config+0x6c>)
 800107a:	4a04      	ldr	r2, [pc, #16]	; (800108c <SystemClock_Config+0x70>)
 800107c:	601a      	str	r2, [r3, #0]
 800107e:	46c0      	nop			; (mov r8, r8)
 8001080:	46bd      	mov	sp, r7
 8001082:	bd80      	pop	{r7, pc}
 8001084:	0000bb80 	.word	0x0000bb80
 8001088:	2000005c 	.word	0x2000005c
 800108c:	0a037a00 	.word	0x0a037a00

08001090 <SysTick_Handler>:
 8001090:	b5b0      	push	{r4, r5, r7, lr}
 8001092:	b082      	sub	sp, #8
 8001094:	af00      	add	r7, sp, #0
 8001096:	4b7b      	ldr	r3, [pc, #492]	; (8001284 <SysTick_Handler+0x1f4>)
 8001098:	685c      	ldr	r4, [r3, #4]
 800109a:	681b      	ldr	r3, [r3, #0]
 800109c:	2101      	movs	r1, #1
 800109e:	2200      	movs	r2, #0
 80010a0:	185b      	adds	r3, r3, r1
 80010a2:	4154      	adcs	r4, r2
 80010a4:	4a77      	ldr	r2, [pc, #476]	; (8001284 <SysTick_Handler+0x1f4>)
 80010a6:	6013      	str	r3, [r2, #0]
 80010a8:	6054      	str	r4, [r2, #4]
 80010aa:	4b77      	ldr	r3, [pc, #476]	; (8001288 <SysTick_Handler+0x1f8>)
 80010ac:	781b      	ldrb	r3, [r3, #0]
 80010ae:	2b01      	cmp	r3, #1
 80010b0:	d106      	bne.n	80010c0 <SysTick_Handler+0x30>
 80010b2:	4b76      	ldr	r3, [pc, #472]	; (800128c <SysTick_Handler+0x1fc>)
 80010b4:	685c      	ldr	r4, [r3, #4]
 80010b6:	681b      	ldr	r3, [r3, #0]
 80010b8:	4a75      	ldr	r2, [pc, #468]	; (8001290 <SysTick_Handler+0x200>)
 80010ba:	6013      	str	r3, [r2, #0]
 80010bc:	6054      	str	r4, [r2, #4]
 80010be:	e005      	b.n	80010cc <SysTick_Handler+0x3c>
 80010c0:	4b70      	ldr	r3, [pc, #448]	; (8001284 <SysTick_Handler+0x1f4>)
 80010c2:	685c      	ldr	r4, [r3, #4]
 80010c4:	681b      	ldr	r3, [r3, #0]
 80010c6:	4a72      	ldr	r2, [pc, #456]	; (8001290 <SysTick_Handler+0x200>)
 80010c8:	6013      	str	r3, [r2, #0]
 80010ca:	6054      	str	r4, [r2, #4]
 80010cc:	4b6d      	ldr	r3, [pc, #436]	; (8001284 <SysTick_Handler+0x1f4>)
 80010ce:	6819      	ldr	r1, [r3, #0]
 80010d0:	685a      	ldr	r2, [r3, #4]
 80010d2:	4b6e      	ldr	r3, [pc, #440]	; (800128c <SysTick_Handler+0x1fc>)
 80010d4:	685c      	ldr	r4, [r3, #4]
 80010d6:	681b      	ldr	r3, [r3, #0]
 80010d8:	4299      	cmp	r1, r3
 80010da:	d108      	bne.n	80010ee <SysTick_Handler+0x5e>
 80010dc:	42a2      	cmp	r2, r4
 80010de:	d106      	bne.n	80010ee <SysTick_Handler+0x5e>
 80010e0:	4b69      	ldr	r3, [pc, #420]	; (8001288 <SysTick_Handler+0x1f8>)
 80010e2:	781b      	ldrb	r3, [r3, #0]
 80010e4:	2b00      	cmp	r3, #0
 80010e6:	d102      	bne.n	80010ee <SysTick_Handler+0x5e>
 80010e8:	4b67      	ldr	r3, [pc, #412]	; (8001288 <SysTick_Handler+0x1f8>)
 80010ea:	2202      	movs	r2, #2
 80010ec:	701a      	strb	r2, [r3, #0]
 80010ee:	4b68      	ldr	r3, [pc, #416]	; (8001290 <SysTick_Handler+0x200>)
 80010f0:	681c      	ldr	r4, [r3, #0]
 80010f2:	685d      	ldr	r5, [r3, #4]
 80010f4:	4b66      	ldr	r3, [pc, #408]	; (8001290 <SysTick_Handler+0x200>)
 80010f6:	6818      	ldr	r0, [r3, #0]
 80010f8:	6859      	ldr	r1, [r3, #4]
 80010fa:	227d      	movs	r2, #125	; 0x7d
 80010fc:	2300      	movs	r3, #0
 80010fe:	f7ff f805 	bl	800010c <__aeabi_uldivmod>
 8001102:	0010      	movs	r0, r2
 8001104:	0019      	movs	r1, r3
 8001106:	221a      	movs	r2, #26
 8001108:	2300      	movs	r3, #0
 800110a:	f7fe ffff 	bl	800010c <__aeabi_uldivmod>
 800110e:	0011      	movs	r1, r2
 8001110:	001a      	movs	r2, r3
 8001112:	4b60      	ldr	r3, [pc, #384]	; (8001294 <SysTick_Handler+0x204>)
 8001114:	000a      	movs	r2, r1
 8001116:	0052      	lsls	r2, r2, #1
 8001118:	5ad3      	ldrh	r3, [r2, r3]
 800111a:	603b      	str	r3, [r7, #0]
 800111c:	2300      	movs	r3, #0
 800111e:	607b      	str	r3, [r7, #4]
 8001120:	683a      	ldr	r2, [r7, #0]
 8001122:	687b      	ldr	r3, [r7, #4]
 8001124:	0020      	movs	r0, r4
 8001126:	0029      	movs	r1, r5
 8001128:	f7fe fff0 	bl	800010c <__aeabi_uldivmod>
 800112c:	001c      	movs	r4, r3
 800112e:	0013      	movs	r3, r2
 8001130:	0019      	movs	r1, r3
 8001132:	0022      	movs	r2, r4
 8001134:	000b      	movs	r3, r1
 8001136:	4313      	orrs	r3, r2
 8001138:	d10a      	bne.n	8001150 <SysTick_Handler+0xc0>
 800113a:	4b53      	ldr	r3, [pc, #332]	; (8001288 <SysTick_Handler+0x1f8>)
 800113c:	781b      	ldrb	r3, [r3, #0]
 800113e:	2b02      	cmp	r3, #2
 8001140:	d106      	bne.n	8001150 <SysTick_Handler+0xc0>
 8001142:	2380      	movs	r3, #128	; 0x80
 8001144:	015b      	lsls	r3, r3, #5
 8001146:	4a54      	ldr	r2, [pc, #336]	; (8001298 <SysTick_Handler+0x208>)
 8001148:	0019      	movs	r1, r3
 800114a:	0010      	movs	r0, r2
 800114c:	f7ff fa40 	bl	80005d0 <LL_GPIO_TogglePin>
 8001150:	4b4f      	ldr	r3, [pc, #316]	; (8001290 <SysTick_Handler+0x200>)
 8001152:	6818      	ldr	r0, [r3, #0]
 8001154:	6859      	ldr	r1, [r3, #4]
 8001156:	22fa      	movs	r2, #250	; 0xfa
 8001158:	0052      	lsls	r2, r2, #1
 800115a:	2300      	movs	r3, #0
 800115c:	f7fe ffd6 	bl	800010c <__aeabi_uldivmod>
 8001160:	001c      	movs	r4, r3
 8001162:	0013      	movs	r3, r2
 8001164:	0019      	movs	r1, r3
 8001166:	0022      	movs	r2, r4
 8001168:	000b      	movs	r3, r1
 800116a:	4313      	orrs	r3, r2
 800116c:	d107      	bne.n	800117e <SysTick_Handler+0xee>
 800116e:	4b4b      	ldr	r3, [pc, #300]	; (800129c <SysTick_Handler+0x20c>)
 8001170:	885b      	ldrh	r3, [r3, #2]
 8001172:	2280      	movs	r2, #128	; 0x80
 8001174:	0112      	lsls	r2, r2, #4
 8001176:	4053      	eors	r3, r2
 8001178:	b29a      	uxth	r2, r3
 800117a:	4b48      	ldr	r3, [pc, #288]	; (800129c <SysTick_Handler+0x20c>)
 800117c:	805a      	strh	r2, [r3, #2]
 800117e:	4b44      	ldr	r3, [pc, #272]	; (8001290 <SysTick_Handler+0x200>)
 8001180:	6818      	ldr	r0, [r3, #0]
 8001182:	6859      	ldr	r1, [r3, #4]
 8001184:	220a      	movs	r2, #10
 8001186:	2300      	movs	r3, #0
 8001188:	f7fe ffc0 	bl	800010c <__aeabi_uldivmod>
 800118c:	001c      	movs	r4, r3
 800118e:	0013      	movs	r3, r2
 8001190:	0019      	movs	r1, r3
 8001192:	0022      	movs	r2, r4
 8001194:	000b      	movs	r3, r1
 8001196:	4313      	orrs	r3, r2
 8001198:	d16f      	bne.n	800127a <SysTick_Handler+0x1ea>
 800119a:	4b3d      	ldr	r3, [pc, #244]	; (8001290 <SysTick_Handler+0x200>)
 800119c:	6818      	ldr	r0, [r3, #0]
 800119e:	6859      	ldr	r1, [r3, #4]
 80011a0:	4a3f      	ldr	r2, [pc, #252]	; (80012a0 <SysTick_Handler+0x210>)
 80011a2:	2300      	movs	r3, #0
 80011a4:	f7fe ffb2 	bl	800010c <__aeabi_uldivmod>
 80011a8:	0003      	movs	r3, r0
 80011aa:	000c      	movs	r4, r1
 80011ac:	0018      	movs	r0, r3
 80011ae:	0021      	movs	r1, r4
 80011b0:	223c      	movs	r2, #60	; 0x3c
 80011b2:	2300      	movs	r3, #0
 80011b4:	f7fe ffaa 	bl	800010c <__aeabi_uldivmod>
 80011b8:	001c      	movs	r4, r3
 80011ba:	0013      	movs	r3, r2
 80011bc:	0018      	movs	r0, r3
 80011be:	0021      	movs	r1, r4
 80011c0:	220a      	movs	r2, #10
 80011c2:	2300      	movs	r3, #0
 80011c4:	f7fe ffa2 	bl	800010c <__aeabi_uldivmod>
 80011c8:	001c      	movs	r4, r3
 80011ca:	0013      	movs	r3, r2
 80011cc:	b2da      	uxtb	r2, r3
 80011ce:	4b35      	ldr	r3, [pc, #212]	; (80012a4 <SysTick_Handler+0x214>)
 80011d0:	701a      	strb	r2, [r3, #0]
 80011d2:	4b2f      	ldr	r3, [pc, #188]	; (8001290 <SysTick_Handler+0x200>)
 80011d4:	6818      	ldr	r0, [r3, #0]
 80011d6:	6859      	ldr	r1, [r3, #4]
 80011d8:	4a31      	ldr	r2, [pc, #196]	; (80012a0 <SysTick_Handler+0x210>)
 80011da:	2300      	movs	r3, #0
 80011dc:	f7fe ff96 	bl	800010c <__aeabi_uldivmod>
 80011e0:	0003      	movs	r3, r0
 80011e2:	000c      	movs	r4, r1
 80011e4:	0018      	movs	r0, r3
 80011e6:	0021      	movs	r1, r4
 80011e8:	223c      	movs	r2, #60	; 0x3c
 80011ea:	2300      	movs	r3, #0
 80011ec:	f7fe ff8e 	bl	800010c <__aeabi_uldivmod>
 80011f0:	001c      	movs	r4, r3
 80011f2:	0013      	movs	r3, r2
 80011f4:	0018      	movs	r0, r3
 80011f6:	0021      	movs	r1, r4
 80011f8:	220a      	movs	r2, #10
 80011fa:	2300      	movs	r3, #0
 80011fc:	f7fe ff86 	bl	800010c <__aeabi_uldivmod>
 8001200:	0003      	movs	r3, r0
 8001202:	000c      	movs	r4, r1
 8001204:	b2da      	uxtb	r2, r3
 8001206:	4b27      	ldr	r3, [pc, #156]	; (80012a4 <SysTick_Handler+0x214>)
 8001208:	705a      	strb	r2, [r3, #1]
 800120a:	4b21      	ldr	r3, [pc, #132]	; (8001290 <SysTick_Handler+0x200>)
 800120c:	6818      	ldr	r0, [r3, #0]
 800120e:	6859      	ldr	r1, [r3, #4]
 8001210:	4a25      	ldr	r2, [pc, #148]	; (80012a8 <SysTick_Handler+0x218>)
 8001212:	2300      	movs	r3, #0
 8001214:	f7fe ff7a 	bl	800010c <__aeabi_uldivmod>
 8001218:	0003      	movs	r3, r0
 800121a:	000c      	movs	r4, r1
 800121c:	0018      	movs	r0, r3
 800121e:	0021      	movs	r1, r4
 8001220:	2218      	movs	r2, #24
 8001222:	2300      	movs	r3, #0
 8001224:	f7fe ff72 	bl	800010c <__aeabi_uldivmod>
 8001228:	001c      	movs	r4, r3
 800122a:	0013      	movs	r3, r2
 800122c:	0018      	movs	r0, r3
 800122e:	0021      	movs	r1, r4
 8001230:	220a      	movs	r2, #10
 8001232:	2300      	movs	r3, #0
 8001234:	f7fe ff6a 	bl	800010c <__aeabi_uldivmod>
 8001238:	001c      	movs	r4, r3
 800123a:	0013      	movs	r3, r2
 800123c:	b2da      	uxtb	r2, r3
 800123e:	4b19      	ldr	r3, [pc, #100]	; (80012a4 <SysTick_Handler+0x214>)
 8001240:	709a      	strb	r2, [r3, #2]
 8001242:	4b13      	ldr	r3, [pc, #76]	; (8001290 <SysTick_Handler+0x200>)
 8001244:	6818      	ldr	r0, [r3, #0]
 8001246:	6859      	ldr	r1, [r3, #4]
 8001248:	4a17      	ldr	r2, [pc, #92]	; (80012a8 <SysTick_Handler+0x218>)
 800124a:	2300      	movs	r3, #0
 800124c:	f7fe ff5e 	bl	800010c <__aeabi_uldivmod>
 8001250:	0003      	movs	r3, r0
 8001252:	000c      	movs	r4, r1
 8001254:	0018      	movs	r0, r3
 8001256:	0021      	movs	r1, r4
 8001258:	2218      	movs	r2, #24
 800125a:	2300      	movs	r3, #0
 800125c:	f7fe ff56 	bl	800010c <__aeabi_uldivmod>
 8001260:	001c      	movs	r4, r3
 8001262:	0013      	movs	r3, r2
 8001264:	0018      	movs	r0, r3
 8001266:	0021      	movs	r1, r4
 8001268:	220a      	movs	r2, #10
 800126a:	2300      	movs	r3, #0
 800126c:	f7fe ff4e 	bl	800010c <__aeabi_uldivmod>
 8001270:	0003      	movs	r3, r0
 8001272:	000c      	movs	r4, r1
 8001274:	b2da      	uxtb	r2, r3
 8001276:	4b0b      	ldr	r3, [pc, #44]	; (80012a4 <SysTick_Handler+0x214>)
 8001278:	70da      	strb	r2, [r3, #3]
 800127a:	46c0      	nop			; (mov r8, r8)
 800127c:	46bd      	mov	sp, r7
 800127e:	b002      	add	sp, #8
 8001280:	bdb0      	pop	{r4, r5, r7, pc}
 8001282:	46c0      	nop			; (mov r8, r8)
 8001284:	20000000 	.word	0x20000000
 8001288:	200004ac 	.word	0x200004ac
 800128c:	20000008 	.word	0x20000008
 8001290:	200004b0 	.word	0x200004b0
 8001294:	20000024 	.word	0x20000024
 8001298:	48000800 	.word	0x48000800
 800129c:	2000001c 	.word	0x2000001c
 80012a0:	0000ea60 	.word	0x0000ea60
 80012a4:	200004f4 	.word	0x200004f4
 80012a8:	0036ee80 	.word	0x0036ee80

080012ac <SystemInit>:
 80012ac:	b580      	push	{r7, lr}
 80012ae:	af00      	add	r7, sp, #0
 80012b0:	4b1a      	ldr	r3, [pc, #104]	; (800131c <SystemInit+0x70>)
 80012b2:	681a      	ldr	r2, [r3, #0]
 80012b4:	4b19      	ldr	r3, [pc, #100]	; (800131c <SystemInit+0x70>)
 80012b6:	2101      	movs	r1, #1
 80012b8:	430a      	orrs	r2, r1
 80012ba:	601a      	str	r2, [r3, #0]
 80012bc:	4b17      	ldr	r3, [pc, #92]	; (800131c <SystemInit+0x70>)
 80012be:	685a      	ldr	r2, [r3, #4]
 80012c0:	4b16      	ldr	r3, [pc, #88]	; (800131c <SystemInit+0x70>)
 80012c2:	4917      	ldr	r1, [pc, #92]	; (8001320 <SystemInit+0x74>)
 80012c4:	400a      	ands	r2, r1
 80012c6:	605a      	str	r2, [r3, #4]
 80012c8:	4b14      	ldr	r3, [pc, #80]	; (800131c <SystemInit+0x70>)
 80012ca:	681a      	ldr	r2, [r3, #0]
 80012cc:	4b13      	ldr	r3, [pc, #76]	; (800131c <SystemInit+0x70>)
 80012ce:	4915      	ldr	r1, [pc, #84]	; (8001324 <SystemInit+0x78>)
 80012d0:	400a      	ands	r2, r1
 80012d2:	601a      	str	r2, [r3, #0]
 80012d4:	4b11      	ldr	r3, [pc, #68]	; (800131c <SystemInit+0x70>)
 80012d6:	681a      	ldr	r2, [r3, #0]
 80012d8:	4b10      	ldr	r3, [pc, #64]	; (800131c <SystemInit+0x70>)
 80012da:	4913      	ldr	r1, [pc, #76]	; (8001328 <SystemInit+0x7c>)
 80012dc:	400a      	ands	r2, r1
 80012de:	601a      	str	r2, [r3, #0]
 80012e0:	4b0e      	ldr	r3, [pc, #56]	; (800131c <SystemInit+0x70>)
 80012e2:	685a      	ldr	r2, [r3, #4]
 80012e4:	4b0d      	ldr	r3, [pc, #52]	; (800131c <SystemInit+0x70>)
 80012e6:	4911      	ldr	r1, [pc, #68]	; (800132c <SystemInit+0x80>)
 80012e8:	400a      	ands	r2, r1
 80012ea:	605a      	str	r2, [r3, #4]
 80012ec:	4b0b      	ldr	r3, [pc, #44]	; (800131c <SystemInit+0x70>)
 80012ee:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80012f0:	4b0a      	ldr	r3, [pc, #40]	; (800131c <SystemInit+0x70>)
 80012f2:	210f      	movs	r1, #15
 80012f4:	438a      	bics	r2, r1
 80012f6:	62da      	str	r2, [r3, #44]	; 0x2c
 80012f8:	4b08      	ldr	r3, [pc, #32]	; (800131c <SystemInit+0x70>)
 80012fa:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80012fc:	4b07      	ldr	r3, [pc, #28]	; (800131c <SystemInit+0x70>)
 80012fe:	490c      	ldr	r1, [pc, #48]	; (8001330 <SystemInit+0x84>)
 8001300:	400a      	ands	r2, r1
 8001302:	631a      	str	r2, [r3, #48]	; 0x30
 8001304:	4b05      	ldr	r3, [pc, #20]	; (800131c <SystemInit+0x70>)
 8001306:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8001308:	4b04      	ldr	r3, [pc, #16]	; (800131c <SystemInit+0x70>)
 800130a:	2101      	movs	r1, #1
 800130c:	438a      	bics	r2, r1
 800130e:	635a      	str	r2, [r3, #52]	; 0x34
 8001310:	4b02      	ldr	r3, [pc, #8]	; (800131c <SystemInit+0x70>)
 8001312:	2200      	movs	r2, #0
 8001314:	609a      	str	r2, [r3, #8]
 8001316:	46c0      	nop			; (mov r8, r8)
 8001318:	46bd      	mov	sp, r7
 800131a:	bd80      	pop	{r7, pc}
 800131c:	40021000 	.word	0x40021000
 8001320:	f8ffb80c 	.word	0xf8ffb80c
 8001324:	fef6ffff 	.word	0xfef6ffff
 8001328:	fffbffff 	.word	0xfffbffff
 800132c:	ffc0ffff 	.word	0xffc0ffff
 8001330:	fffffeac 	.word	0xfffffeac

08001334 <NMI_Handler>:
 8001334:	b580      	push	{r7, lr}
 8001336:	af00      	add	r7, sp, #0
 8001338:	46c0      	nop			; (mov r8, r8)
 800133a:	46bd      	mov	sp, r7
 800133c:	bd80      	pop	{r7, pc}

0800133e <HardFault_Handler>:
 800133e:	b580      	push	{r7, lr}
 8001340:	af00      	add	r7, sp, #0
 8001342:	e7fe      	b.n	8001342 <HardFault_Handler+0x4>

08001344 <SVC_Handler>:
 8001344:	b580      	push	{r7, lr}
 8001346:	af00      	add	r7, sp, #0
 8001348:	46c0      	nop			; (mov r8, r8)
 800134a:	46bd      	mov	sp, r7
 800134c:	bd80      	pop	{r7, pc}

0800134e <PendSV_Handler>:
 800134e:	b580      	push	{r7, lr}
 8001350:	af00      	add	r7, sp, #0
 8001352:	46c0      	nop			; (mov r8, r8)
 8001354:	46bd      	mov	sp, r7
 8001356:	bd80      	pop	{r7, pc}

08001358 <__libc_init_array>:
 8001358:	b570      	push	{r4, r5, r6, lr}
 800135a:	4e0d      	ldr	r6, [pc, #52]	; (8001390 <__libc_init_array+0x38>)
 800135c:	4d0d      	ldr	r5, [pc, #52]	; (8001394 <__libc_init_array+0x3c>)
 800135e:	1bad      	subs	r5, r5, r6
 8001360:	10ad      	asrs	r5, r5, #2
 8001362:	d006      	beq.n	8001372 <__libc_init_array+0x1a>
 8001364:	2400      	movs	r4, #0
 8001366:	00a3      	lsls	r3, r4, #2
 8001368:	58f3      	ldr	r3, [r6, r3]
 800136a:	3401      	adds	r4, #1
 800136c:	4798      	blx	r3
 800136e:	42a5      	cmp	r5, r4
 8001370:	d1f9      	bne.n	8001366 <__libc_init_array+0xe>
 8001372:	f000 f8c1 	bl	80014f8 <_init>
 8001376:	4e08      	ldr	r6, [pc, #32]	; (8001398 <__libc_init_array+0x40>)
 8001378:	4d08      	ldr	r5, [pc, #32]	; (800139c <__libc_init_array+0x44>)
 800137a:	1bad      	subs	r5, r5, r6
 800137c:	10ad      	asrs	r5, r5, #2
 800137e:	d006      	beq.n	800138e <__libc_init_array+0x36>
 8001380:	2400      	movs	r4, #0
 8001382:	00a3      	lsls	r3, r4, #2
 8001384:	58f3      	ldr	r3, [r6, r3]
 8001386:	3401      	adds	r4, #1
 8001388:	4798      	blx	r3
 800138a:	42a5      	cmp	r5, r4
 800138c:	d1f9      	bne.n	8001382 <__libc_init_array+0x2a>
 800138e:	bd70      	pop	{r4, r5, r6, pc}
 8001390:	0800151c 	.word	0x0800151c
 8001394:	0800151c 	.word	0x0800151c
 8001398:	0800151c 	.word	0x0800151c
 800139c:	08001524 	.word	0x08001524

080013a0 <register_fini>:
 80013a0:	4b03      	ldr	r3, [pc, #12]	; (80013b0 <register_fini+0x10>)
 80013a2:	b510      	push	{r4, lr}
 80013a4:	2b00      	cmp	r3, #0
 80013a6:	d002      	beq.n	80013ae <register_fini+0xe>
 80013a8:	4802      	ldr	r0, [pc, #8]	; (80013b4 <register_fini+0x14>)
 80013aa:	f000 f805 	bl	80013b8 <atexit>
 80013ae:	bd10      	pop	{r4, pc}
 80013b0:	00000000 	.word	0x00000000
 80013b4:	080013c9 	.word	0x080013c9

080013b8 <atexit>:
 80013b8:	b510      	push	{r4, lr}
 80013ba:	0001      	movs	r1, r0
 80013bc:	2300      	movs	r3, #0
 80013be:	2200      	movs	r2, #0
 80013c0:	2000      	movs	r0, #0
 80013c2:	f000 f81f 	bl	8001404 <__register_exitproc>
 80013c6:	bd10      	pop	{r4, pc}

080013c8 <__libc_fini_array>:
 80013c8:	b570      	push	{r4, r5, r6, lr}
 80013ca:	4b09      	ldr	r3, [pc, #36]	; (80013f0 <__libc_fini_array+0x28>)
 80013cc:	4c09      	ldr	r4, [pc, #36]	; (80013f4 <__libc_fini_array+0x2c>)
 80013ce:	1ae4      	subs	r4, r4, r3
 80013d0:	10a4      	asrs	r4, r4, #2
 80013d2:	d009      	beq.n	80013e8 <__libc_fini_array+0x20>
 80013d4:	4a08      	ldr	r2, [pc, #32]	; (80013f8 <__libc_fini_array+0x30>)
 80013d6:	18a5      	adds	r5, r4, r2
 80013d8:	00ad      	lsls	r5, r5, #2
 80013da:	18ed      	adds	r5, r5, r3
 80013dc:	682b      	ldr	r3, [r5, #0]
 80013de:	3c01      	subs	r4, #1
 80013e0:	4798      	blx	r3
 80013e2:	3d04      	subs	r5, #4
 80013e4:	2c00      	cmp	r4, #0
 80013e6:	d1f9      	bne.n	80013dc <__libc_fini_array+0x14>
 80013e8:	f000 f88c 	bl	8001504 <_fini>
 80013ec:	bd70      	pop	{r4, r5, r6, pc}
 80013ee:	46c0      	nop			; (mov r8, r8)
 80013f0:	08001524 	.word	0x08001524
 80013f4:	08001528 	.word	0x08001528
 80013f8:	3fffffff 	.word	0x3fffffff

080013fc <__retarget_lock_acquire_recursive>:
 80013fc:	4770      	bx	lr
 80013fe:	46c0      	nop			; (mov r8, r8)

08001400 <__retarget_lock_release_recursive>:
 8001400:	4770      	bx	lr
 8001402:	46c0      	nop			; (mov r8, r8)

08001404 <__register_exitproc>:
 8001404:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001406:	464e      	mov	r6, r9
 8001408:	4645      	mov	r5, r8
 800140a:	46de      	mov	lr, fp
 800140c:	4657      	mov	r7, sl
 800140e:	b5e0      	push	{r5, r6, r7, lr}
 8001410:	4d36      	ldr	r5, [pc, #216]	; (80014ec <__register_exitproc+0xe8>)
 8001412:	b083      	sub	sp, #12
 8001414:	0006      	movs	r6, r0
 8001416:	6828      	ldr	r0, [r5, #0]
 8001418:	4698      	mov	r8, r3
 800141a:	000f      	movs	r7, r1
 800141c:	4691      	mov	r9, r2
 800141e:	f7ff ffed 	bl	80013fc <__retarget_lock_acquire_recursive>
 8001422:	4b33      	ldr	r3, [pc, #204]	; (80014f0 <__register_exitproc+0xec>)
 8001424:	681c      	ldr	r4, [r3, #0]
 8001426:	23a4      	movs	r3, #164	; 0xa4
 8001428:	005b      	lsls	r3, r3, #1
 800142a:	58e0      	ldr	r0, [r4, r3]
 800142c:	2800      	cmp	r0, #0
 800142e:	d052      	beq.n	80014d6 <__register_exitproc+0xd2>
 8001430:	6843      	ldr	r3, [r0, #4]
 8001432:	2b1f      	cmp	r3, #31
 8001434:	dc13      	bgt.n	800145e <__register_exitproc+0x5a>
 8001436:	1c5a      	adds	r2, r3, #1
 8001438:	9201      	str	r2, [sp, #4]
 800143a:	2e00      	cmp	r6, #0
 800143c:	d128      	bne.n	8001490 <__register_exitproc+0x8c>
 800143e:	9a01      	ldr	r2, [sp, #4]
 8001440:	3302      	adds	r3, #2
 8001442:	009b      	lsls	r3, r3, #2
 8001444:	6042      	str	r2, [r0, #4]
 8001446:	501f      	str	r7, [r3, r0]
 8001448:	6828      	ldr	r0, [r5, #0]
 800144a:	f7ff ffd9 	bl	8001400 <__retarget_lock_release_recursive>
 800144e:	2000      	movs	r0, #0
 8001450:	b003      	add	sp, #12
 8001452:	bc3c      	pop	{r2, r3, r4, r5}
 8001454:	4690      	mov	r8, r2
 8001456:	4699      	mov	r9, r3
 8001458:	46a2      	mov	sl, r4
 800145a:	46ab      	mov	fp, r5
 800145c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800145e:	4b25      	ldr	r3, [pc, #148]	; (80014f4 <__register_exitproc+0xf0>)
 8001460:	2b00      	cmp	r3, #0
 8001462:	d03d      	beq.n	80014e0 <__register_exitproc+0xdc>
 8001464:	20c8      	movs	r0, #200	; 0xc8
 8001466:	0040      	lsls	r0, r0, #1
 8001468:	e000      	b.n	800146c <__register_exitproc+0x68>
 800146a:	bf00      	nop
 800146c:	2800      	cmp	r0, #0
 800146e:	d037      	beq.n	80014e0 <__register_exitproc+0xdc>
 8001470:	22a4      	movs	r2, #164	; 0xa4
 8001472:	2300      	movs	r3, #0
 8001474:	0052      	lsls	r2, r2, #1
 8001476:	58a1      	ldr	r1, [r4, r2]
 8001478:	6043      	str	r3, [r0, #4]
 800147a:	6001      	str	r1, [r0, #0]
 800147c:	50a0      	str	r0, [r4, r2]
 800147e:	3240      	adds	r2, #64	; 0x40
 8001480:	5083      	str	r3, [r0, r2]
 8001482:	3204      	adds	r2, #4
 8001484:	5083      	str	r3, [r0, r2]
 8001486:	3301      	adds	r3, #1
 8001488:	9301      	str	r3, [sp, #4]
 800148a:	2300      	movs	r3, #0
 800148c:	2e00      	cmp	r6, #0
 800148e:	d0d6      	beq.n	800143e <__register_exitproc+0x3a>
 8001490:	009a      	lsls	r2, r3, #2
 8001492:	4692      	mov	sl, r2
 8001494:	4482      	add	sl, r0
 8001496:	464a      	mov	r2, r9
 8001498:	2188      	movs	r1, #136	; 0x88
 800149a:	4654      	mov	r4, sl
 800149c:	5062      	str	r2, [r4, r1]
 800149e:	22c4      	movs	r2, #196	; 0xc4
 80014a0:	0052      	lsls	r2, r2, #1
 80014a2:	4691      	mov	r9, r2
 80014a4:	4481      	add	r9, r0
 80014a6:	464a      	mov	r2, r9
 80014a8:	3987      	subs	r1, #135	; 0x87
 80014aa:	4099      	lsls	r1, r3
 80014ac:	6812      	ldr	r2, [r2, #0]
 80014ae:	468b      	mov	fp, r1
 80014b0:	430a      	orrs	r2, r1
 80014b2:	4694      	mov	ip, r2
 80014b4:	464a      	mov	r2, r9
 80014b6:	4661      	mov	r1, ip
 80014b8:	6011      	str	r1, [r2, #0]
 80014ba:	2284      	movs	r2, #132	; 0x84
 80014bc:	4641      	mov	r1, r8
 80014be:	0052      	lsls	r2, r2, #1
 80014c0:	50a1      	str	r1, [r4, r2]
 80014c2:	2e02      	cmp	r6, #2
 80014c4:	d1bb      	bne.n	800143e <__register_exitproc+0x3a>
 80014c6:	0002      	movs	r2, r0
 80014c8:	465c      	mov	r4, fp
 80014ca:	328d      	adds	r2, #141	; 0x8d
 80014cc:	32ff      	adds	r2, #255	; 0xff
 80014ce:	6811      	ldr	r1, [r2, #0]
 80014d0:	430c      	orrs	r4, r1
 80014d2:	6014      	str	r4, [r2, #0]
 80014d4:	e7b3      	b.n	800143e <__register_exitproc+0x3a>
 80014d6:	0020      	movs	r0, r4
 80014d8:	304d      	adds	r0, #77	; 0x4d
 80014da:	30ff      	adds	r0, #255	; 0xff
 80014dc:	50e0      	str	r0, [r4, r3]
 80014de:	e7a7      	b.n	8001430 <__register_exitproc+0x2c>
 80014e0:	6828      	ldr	r0, [r5, #0]
 80014e2:	f7ff ff8d 	bl	8001400 <__retarget_lock_release_recursive>
 80014e6:	2001      	movs	r0, #1
 80014e8:	4240      	negs	r0, r0
 80014ea:	e7b1      	b.n	8001450 <__register_exitproc+0x4c>
 80014ec:	20000488 	.word	0x20000488
 80014f0:	08001510 	.word	0x08001510
 80014f4:	00000000 	.word	0x00000000

080014f8 <_init>:
 80014f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80014fa:	46c0      	nop			; (mov r8, r8)
 80014fc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80014fe:	bc08      	pop	{r3}
 8001500:	469e      	mov	lr, r3
 8001502:	4770      	bx	lr

08001504 <_fini>:
 8001504:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001506:	46c0      	nop			; (mov r8, r8)
 8001508:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800150a:	bc08      	pop	{r3}
 800150c:	469e      	mov	lr, r3
 800150e:	4770      	bx	lr
