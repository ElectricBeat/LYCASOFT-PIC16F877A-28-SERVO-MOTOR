opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 4 "E:\02-CODING\05-LYCASOFT CODING\02-CODING\27-SERVO MOTOR\CODE\SERVO MOTOR.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "E:\02-CODING\05-LYCASOFT CODING\02-CODING\27-SERVO MOTOR\CODE\SERVO MOTOR.c"
	dw 0X3F3A ;#
	FNCALL	_main,_Rotation0
	FNCALL	_main,_Rotation90
	FNCALL	_main,_Rotation180
	FNROOT	_main
	global	_PORTB
psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:
_PORTB	set	6
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_TRISB
_TRISB	set	134
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	file	"SERVO MOTOR.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Rotation0
?_Rotation0:	; 0 bytes @ 0x0
	global	??_Rotation0
??_Rotation0:	; 0 bytes @ 0x0
	global	?_Rotation90
?_Rotation90:	; 0 bytes @ 0x0
	global	??_Rotation90
??_Rotation90:	; 0 bytes @ 0x0
	global	?_Rotation180
?_Rotation180:	; 0 bytes @ 0x0
	global	??_Rotation180
??_Rotation180:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	2
	global	Rotation0@i
Rotation0@i:	; 2 bytes @ 0x2
	global	Rotation90@i
Rotation90@i:	; 2 bytes @ 0x2
	global	Rotation180@i
Rotation180@i:	; 2 bytes @ 0x2
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x4
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       7
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Rotation0
;;   _main->_Rotation90
;;   _main->_Rotation180
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0      90
;;                                              4 COMMON     3     3      0
;;                          _Rotation0
;;                         _Rotation90
;;                        _Rotation180
;; ---------------------------------------------------------------------------------
;; (1) _Rotation180                                          4     4      0      30
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (1) _Rotation90                                           4     4      0      30
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; (1) _Rotation0                                            4     4      0      30
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Rotation0
;;   _Rotation90
;;   _Rotation180
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      7       7       1       50.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 42 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\27-SERVO MOTOR\CODE\SERVO MOTOR.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Rotation0
;;		_Rotation90
;;		_Rotation180
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\27-SERVO MOTOR\CODE\SERVO MOTOR.c"
	line	42
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	43
	
l2658:	
;SERVO MOTOR.c: 43: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	44
;SERVO MOTOR.c: 44: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	goto	l2660
	line	45
;SERVO MOTOR.c: 45: while(1)
	
l702:	
	line	47
	
l2660:	
;SERVO MOTOR.c: 46: {
;SERVO MOTOR.c: 47: Rotation0();
	fcall	_Rotation0
	line	48
	
l2662:	
;SERVO MOTOR.c: 48: _delay((unsigned long)((1000)*(29e6/4000.0)));
	opt asmopt_off
movlw  37
movwf	((??_main+0)+0+2),f
movlw	200
movwf	((??_main+0)+0+1),f
	movlw	158
movwf	((??_main+0)+0),f
u2287:
	decfsz	((??_main+0)+0),f
	goto	u2287
	decfsz	((??_main+0)+0+1),f
	goto	u2287
	decfsz	((??_main+0)+0+2),f
	goto	u2287
opt asmopt_on

	line	49
	
l2664:	
;SERVO MOTOR.c: 49: Rotation90();
	fcall	_Rotation90
	line	50
	
l2666:	
;SERVO MOTOR.c: 50: _delay((unsigned long)((1000)*(29e6/4000.0)));
	opt asmopt_off
movlw  37
movwf	((??_main+0)+0+2),f
movlw	200
movwf	((??_main+0)+0+1),f
	movlw	158
movwf	((??_main+0)+0),f
u2297:
	decfsz	((??_main+0)+0),f
	goto	u2297
	decfsz	((??_main+0)+0+1),f
	goto	u2297
	decfsz	((??_main+0)+0+2),f
	goto	u2297
opt asmopt_on

	line	51
	
l2668:	
;SERVO MOTOR.c: 51: Rotation180();
	fcall	_Rotation180
	line	52
	
l2670:	
;SERVO MOTOR.c: 52: _delay((unsigned long)((1000)*(29e6/4000.0)));
	opt asmopt_off
movlw  37
movwf	((??_main+0)+0+2),f
movlw	200
movwf	((??_main+0)+0+1),f
	movlw	158
movwf	((??_main+0)+0),f
u2307:
	decfsz	((??_main+0)+0),f
	goto	u2307
	decfsz	((??_main+0)+0+1),f
	goto	u2307
	decfsz	((??_main+0)+0+2),f
	goto	u2307
opt asmopt_on

	goto	l2660
	line	53
	
l703:	
	line	45
	goto	l2660
	
l704:	
	line	54
	
l705:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Rotation180
psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:

;; *************** function _Rotation180 *****************
;; Defined at:
;;		line 30 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\27-SERVO MOTOR\CODE\SERVO MOTOR.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text101
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\27-SERVO MOTOR\CODE\SERVO MOTOR.c"
	line	30
	global	__size_of_Rotation180
	__size_of_Rotation180	equ	__end_of_Rotation180-_Rotation180
	
_Rotation180:	
	opt	stack 7
; Regs used in _Rotation180: [wreg+status,2]
	line	32
	
l2642:	
;SERVO MOTOR.c: 31: unsigned int i;
;SERVO MOTOR.c: 32: for(i=0;i<50;i++)
	clrf	(Rotation180@i)
	clrf	(Rotation180@i+1)
	
l2644:	
	movlw	high(032h)
	subwf	(Rotation180@i+1),w
	movlw	low(032h)
	skipnz
	subwf	(Rotation180@i),w
	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l2648
u2260:
	goto	l699
	
l2646:	
	goto	l699
	line	33
	
l697:	
	line	34
	
l2648:	
;SERVO MOTOR.c: 33: {
;SERVO MOTOR.c: 34: PORTB = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	35
;SERVO MOTOR.c: 35: _delay((unsigned long)((2200)*(29e6/4000000.0)));
	opt asmopt_off
movlw	21
movwf	((??_Rotation180+0)+0+1),f
	movlw	181
movwf	((??_Rotation180+0)+0),f
u2317:
	decfsz	((??_Rotation180+0)+0),f
	goto	u2317
	decfsz	((??_Rotation180+0)+0+1),f
	goto	u2317
	nop2
opt asmopt_on

	line	36
	
l2650:	
;SERVO MOTOR.c: 36: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	37
	
l2652:	
;SERVO MOTOR.c: 37: _delay((unsigned long)((17800)*(29e6/4000000.0)));
	opt asmopt_off
movlw	168
movwf	((??_Rotation180+0)+0+1),f
	movlw	151
movwf	((??_Rotation180+0)+0),f
u2327:
	decfsz	((??_Rotation180+0)+0),f
	goto	u2327
	decfsz	((??_Rotation180+0)+0+1),f
	goto	u2327
	nop2
opt asmopt_on

	line	32
	
l2654:	
	movlw	low(01h)
	addwf	(Rotation180@i),f
	skipnc
	incf	(Rotation180@i+1),f
	movlw	high(01h)
	addwf	(Rotation180@i+1),f
	
l2656:	
	movlw	high(032h)
	subwf	(Rotation180@i+1),w
	movlw	low(032h)
	skipnz
	subwf	(Rotation180@i),w
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l2648
u2270:
	goto	l699
	
l698:	
	line	39
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_Rotation180
	__end_of_Rotation180:
;; =============== function _Rotation180 ends ============

	signat	_Rotation180,88
	global	_Rotation90
psect	text102,local,class=CODE,delta=2
global __ptext102
__ptext102:

;; *************** function _Rotation90 *****************
;; Defined at:
;;		line 18 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\27-SERVO MOTOR\CODE\SERVO MOTOR.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text102
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\27-SERVO MOTOR\CODE\SERVO MOTOR.c"
	line	18
	global	__size_of_Rotation90
	__size_of_Rotation90	equ	__end_of_Rotation90-_Rotation90
	
_Rotation90:	
	opt	stack 7
; Regs used in _Rotation90: [wreg+status,2]
	line	20
	
l2626:	
;SERVO MOTOR.c: 19: unsigned int i;
;SERVO MOTOR.c: 20: for(i=0;i<50;i++)
	clrf	(Rotation90@i)
	clrf	(Rotation90@i+1)
	
l2628:	
	movlw	high(032h)
	subwf	(Rotation90@i+1),w
	movlw	low(032h)
	skipnz
	subwf	(Rotation90@i),w
	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l2632
u2240:
	goto	l694
	
l2630:	
	goto	l694
	line	21
	
l692:	
	line	22
	
l2632:	
;SERVO MOTOR.c: 21: {
;SERVO MOTOR.c: 22: PORTB = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	23
;SERVO MOTOR.c: 23: _delay((unsigned long)((1500)*(29e6/4000000.0)));
	opt asmopt_off
movlw	15
movwf	((??_Rotation90+0)+0+1),f
	movlw	30
movwf	((??_Rotation90+0)+0),f
u2337:
	decfsz	((??_Rotation90+0)+0),f
	goto	u2337
	decfsz	((??_Rotation90+0)+0+1),f
	goto	u2337
opt asmopt_on

	line	24
	
l2634:	
;SERVO MOTOR.c: 24: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	25
	
l2636:	
;SERVO MOTOR.c: 25: _delay((unsigned long)((18500)*(29e6/4000000.0)));
	opt asmopt_off
movlw	175
movwf	((??_Rotation90+0)+0+1),f
	movlw	46
movwf	((??_Rotation90+0)+0),f
u2347:
	decfsz	((??_Rotation90+0)+0),f
	goto	u2347
	decfsz	((??_Rotation90+0)+0+1),f
	goto	u2347
	nop2
opt asmopt_on

	line	20
	
l2638:	
	movlw	low(01h)
	addwf	(Rotation90@i),f
	skipnc
	incf	(Rotation90@i+1),f
	movlw	high(01h)
	addwf	(Rotation90@i+1),f
	
l2640:	
	movlw	high(032h)
	subwf	(Rotation90@i+1),w
	movlw	low(032h)
	skipnz
	subwf	(Rotation90@i),w
	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l2632
u2250:
	goto	l694
	
l693:	
	line	27
	
l694:	
	return
	opt stack 0
GLOBAL	__end_of_Rotation90
	__end_of_Rotation90:
;; =============== function _Rotation90 ends ============

	signat	_Rotation90,88
	global	_Rotation0
psect	text103,local,class=CODE,delta=2
global __ptext103
__ptext103:

;; *************** function _Rotation0 *****************
;; Defined at:
;;		line 7 in file "E:\02-CODING\05-LYCASOFT CODING\02-CODING\27-SERVO MOTOR\CODE\SERVO MOTOR.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text103
	file	"E:\02-CODING\05-LYCASOFT CODING\02-CODING\27-SERVO MOTOR\CODE\SERVO MOTOR.c"
	line	7
	global	__size_of_Rotation0
	__size_of_Rotation0	equ	__end_of_Rotation0-_Rotation0
	
_Rotation0:	
	opt	stack 7
; Regs used in _Rotation0: [wreg+status,2]
	line	9
	
l2610:	
;SERVO MOTOR.c: 8: unsigned int i;
;SERVO MOTOR.c: 9: for(i=0;i<50;i++)
	clrf	(Rotation0@i)
	clrf	(Rotation0@i+1)
	
l2612:	
	movlw	high(032h)
	subwf	(Rotation0@i+1),w
	movlw	low(032h)
	skipnz
	subwf	(Rotation0@i),w
	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l2616
u2220:
	goto	l689
	
l2614:	
	goto	l689
	line	10
	
l687:	
	line	11
	
l2616:	
;SERVO MOTOR.c: 10: {
;SERVO MOTOR.c: 11: PORTB = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	12
;SERVO MOTOR.c: 12: _delay((unsigned long)((800)*(29e6/4000000.0)));
	opt asmopt_off
movlw	8
movwf	((??_Rotation0+0)+0+1),f
	movlw	135
movwf	((??_Rotation0+0)+0),f
u2357:
	decfsz	((??_Rotation0+0)+0),f
	goto	u2357
	decfsz	((??_Rotation0+0)+0+1),f
	goto	u2357
opt asmopt_on

	line	13
	
l2618:	
;SERVO MOTOR.c: 13: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	14
	
l2620:	
;SERVO MOTOR.c: 14: _delay((unsigned long)((19200)*(29e6/4000000.0)));
	opt asmopt_off
movlw	181
movwf	((??_Rotation0+0)+0+1),f
	movlw	198
movwf	((??_Rotation0+0)+0),f
u2367:
	decfsz	((??_Rotation0+0)+0),f
	goto	u2367
	decfsz	((??_Rotation0+0)+0+1),f
	goto	u2367
	clrwdt
opt asmopt_on

	line	9
	
l2622:	
	movlw	low(01h)
	addwf	(Rotation0@i),f
	skipnc
	incf	(Rotation0@i+1),f
	movlw	high(01h)
	addwf	(Rotation0@i+1),f
	
l2624:	
	movlw	high(032h)
	subwf	(Rotation0@i+1),w
	movlw	low(032h)
	skipnz
	subwf	(Rotation0@i),w
	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l2616
u2230:
	goto	l689
	
l688:	
	line	16
	
l689:	
	return
	opt stack 0
GLOBAL	__end_of_Rotation0
	__end_of_Rotation0:
;; =============== function _Rotation0 ends ============

	signat	_Rotation0,88
psect	text104,local,class=CODE,delta=2
global __ptext104
__ptext104:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
