; Power on JMP vector

0000 c3c901    jp      01c9h
0003 00        nop     
0004 00        nop     
0005 00        nop     
0006 00        nop     
0007 00        nop     
0008 00        nop     
0009 00        nop     
000a 00        nop     
000b 00        nop     
000c 00        nop     
000d 00        nop     
000e 00        nop     
000f 00        nop     
0010 00        nop     
0011 00        nop     
0012 00        nop     
0013 00        nop     
0014 00        nop     
0015 00        nop     
0016 00        nop     
0017 00        nop     
0018 00        nop     
0019 00        nop     
001a 00        nop     
001b 00        nop     
001c 00        nop     
001d 00        nop     
001e 00        nop     
001f 00        nop     
0020 00        nop     
0021 00        nop     
0022 00        nop     
0023 00        nop     
0024 00        nop     
0025 00        nop     
0026 00        nop     
0027 00        nop     
0028 00        nop     
0029 00        nop     
002a 00        nop     
002b 00        nop     
002c 00        nop     
002d 00        nop     
002e 00        nop     
002f 00        nop     
0030 00        nop     
0031 00        nop     
0032 00        nop     
0033 00        nop     
0034 00        nop     
0035 00        nop     
0036 00        nop     
0037 00        nop  

; appears that INT is not used
   
0038 00        nop     
0039 00        nop     
003a 00        nop     
003b 00        nop     
003c 00        nop     
003d 00        nop     
003e 00        nop     
003f 00        nop     
0040 00        nop     
0041 00        nop     
0042 00        nop     
0043 00        nop     
0044 00        nop     
0045 00        nop     
0046 00        nop     
0047 00        nop     
0048 00        nop     
0049 00        nop     
004a 00        nop     
004b 00        nop     
004c 00        nop     
004d 00        nop     
004e 00        nop     
004f 00        nop     
0050 00        nop     
0051 00        nop     
0052 00        nop     
0053 00        nop     
0054 00        nop     
0055 00        nop     
0056 00        nop     
0057 00        nop     
0058 00        nop     
0059 00        nop     
005a 00        nop     
005b 00        nop     
005c 00        nop     
005d 00        nop     
005e 00        nop     
005f 00        nop     
0060 07        rlca    
0061 010000    ld      bc,0000h
0064 00        nop     
0065 00        nop     

; NMI vector
0066 00        nop     
0067 08        ex      af,af'
0068 d9        exx     
0069 3a3770    ld      a,(7037h)
006c fe00      cp      00h
006e ca0201    jp      z,0102h
0071 dd214670  ld      ix,7046h
0075 21000e    ld      hl,0e00h
0078 11000f    ld      de,0f00h
007b dd7e03    ld      a,(ix+03h)
007e 6f        ld      l,a
007f 3e01      ld      a,01h
0081 86        add     a,(hl)
0082 fe19      cp      19h
0084 2e00      ld      l,00h
0086 46        ld      b,(hl)
0087 3803      jr      c,008ch
0089 04        inc     b
008a d619      sub     19h
008c 5f        ld      e,a
008d 1a        ld      a,(de)
008e dd7703    ld      (ix+03h),a
0091 dd6e02    ld      l,(ix+02h)
0094 7e        ld      a,(hl)
0095 80        add     a,b
0096 fe3c      cp      3ch
0098 2e00      ld      l,00h
009a 46        ld      b,(hl)
009b 3803      jr      c,00a0h
009d 04        inc     b
009e d63c      sub     3ch
00a0 5f        ld      e,a
00a1 1a        ld      a,(de)
00a2 dd7702    ld      (ix+02h),a
00a5 dd6e01    ld      l,(ix+01h)
00a8 7e        ld      a,(hl)
00a9 80        add     a,b
00aa fe3c      cp      3ch
00ac 2e00      ld      l,00h
00ae 46        ld      b,(hl)
00af 3803      jr      c,00b4h
00b1 04        inc     b
00b2 d63c      sub     3ch
00b4 5f        ld      e,a
00b5 1a        ld      a,(de)
00b6 dd7701    ld      (ix+01h),a
00b9 dd6e00    ld      l,(ix+00h)
00bc 7e        ld      a,(hl)
00bd 80        add     a,b
00be fe18      cp      18h
00c0 5f        ld      e,a
00c1 1a        ld      a,(de)
00c2 dd7700    ld      (ix+00h),a
00c5 cd9701    call    0197h
00c8 dd214670  ld      ix,7046h
00cc 3a3770    ld      a,(7037h)
00cf fe01      cp      01h
00d1 ca0201    jp      z,0102h
00d4 fd213870  ld      iy,7038h
00d8 dd7e00    ld      a,(ix+00h)
00db fdbe00    cp      (iy+00h)
00de c20201    jp      nz,0102h
00e1 dd7e01    ld      a,(ix+01h)
00e4 fdbe01    cp      (iy+01h)
00e7 c20201    jp      nz,0102h
00ea dd7e02    ld      a,(ix+02h)
00ed fdbe02    cp      (iy+02h)
00f0 c20201    jp      nz,0102h
00f3 dd7e03    ld      a,(ix+03h)
00f6 fdbe03    cp      (iy+03h)
00f9 c20201    jp      nz,0102h
00fc 2a3070    ld      hl,(7030h)
00ff 222470    ld      (7024h),hl
0102 d9        exx     
0103 08        ex      af,af'
0104 fb        ei      
0105 ed45      retn    

; 
0107 f3        di      
0108 08        ex      af,af'
0109 d9        exx     
010a ed3841    in0     a,(41h)          ; Z180 instruction
010d 323270    ld      (7032h),a
0110 3a2170    ld      a,(7021h)
0113 fe00      cp      00h
0115 c27301    jp      nz,0173h
0118 2a2270    ld      hl,(7022h)
011b ed5b2470  ld      de,(7024h)
011f af        xor     a
0120 ed52      sbc     hl,de
0122 da5801    jp      c,0158h
0125 222270    ld      (7022h),hl
0128 cb3c      srl     h
012a cb1d      rr      l
012c cb3c      srl     h
012e cb1d      rr      l
0130 cb3c      srl     h
0132 cb1d      rr      l
0134 cb3c      srl     h
0136 cb1d      rr      l
0138 cb3c      srl     h
013a cb1d      rr      l
013c cb3c      srl     h
013e cb1d      rr      l
0140 cb3c      srl     h
0142 cb1d      rr      l
0144 7d        ld      a,l
0145 0e04      ld      c,04h
0147 ed0941    out0    (41h),c          ; Z180 instruction
014a ed3940    out0    (40h),a          ; Z180 instruction
014d 3a3270    ld      a,(7032h)
0150 ed3941    out0    (41h),a          ; Z180 instruction
0153 d9        exx     
0154 08        ex      af,af'
0155 fb        ei      
0156 ed4d      reti    

;
0158 cdee04    call    04eeh
015b 210000    ld      hl,0000h
015e 222470    ld      (7024h),hl
0161 c32501    jp      0125h
0164 cde304    call    04e3h
0167 210000    ld      hl,0000h
016a 222470    ld      (7024h),hl
016d 21807f    ld      hl,7f80h
0170 c32501    jp      0125h
0173 af        xor     a
0174 2a2270    ld      hl,(7022h)
0177 ed5b2470  ld      de,(7024h)
017b 19        add     hl,de
017c 7d        ld      a,l
017d fe00      cp      00h
017f da2501    jp      c,0125h
0182 7c        ld      a,h
0183 fe80      cp      80h
0185 da2501    jp      c,0125h
0188 cde304    call    04e3h
018b 210000    ld      hl,0000h
018e 222470    ld      (7024h),hl
0191 21807f    ld      hl,7f80h
0194 c32501    jp      0125h
0197 fd212c70  ld      iy,702ch
019b dd7e02    ld      a,(ix+02h)
019e e6f0      and     0f0h
01a0 0f        rrca    
01a1 0f        rrca    
01a2 0f        rrca    
01a3 0f        rrca    
01a4 f630      or      30h
01a6 fd7700    ld      (iy+00h),a
01a9 dd7e02    ld      a,(ix+02h)
01ac e60f      and     0fh
01ae f630      or      30h
01b0 fd7701    ld      (iy+01h),a
01b3 dd7e03    ld      a,(ix+03h)
01b6 e6f0      and     0f0h
01b8 0f        rrca    
01b9 0f        rrca    
01ba 0f        rrca    
01bb 0f        rrca    
01bc f630      or      30h
01be fd7702    ld      (iy+02h),a
01c1 dd212a70  ld      ix,702ah
01c5 cda704    call    04a7h
01c8 c9        ret     


; boot jumps here. power on/reset init

; setup MMU
01c9 f3        di      
01ca 3ee6      ld      a,0e6h
01cc ed393a    out0    (3ah),a          ; Z180 instruction
01cf 3e12      ld      a,12h
01d1 ed3938    out0    (38h),a          ; Z180 instruction
01d4 3e0a      ld      a,0ah
01d6 ed3939    out0    (39h),a          ; Z180 instruction
; set Stack Pointer in RAM
01d9 f3        di      
01da 317961    ld      sp,6179h
; setup ASCI
01dd 3e66      ld      a,66h
01df ed3900    out0    (00h),a          ; Z180 instruction
01e2 3e10      ld      a,10h
01e4 ed3902    out0    (02h),a          ; Z180 instruction
01e7 3e64      ld      a,64h
01e9 ed3901    out0    (01h),a          ; Z180 instruction
01ec 3e02      ld      a,02h
01ee ed3903    out0    (03h),a          ; Z180 instruction
; ?? setup variables
01f1 3eed      ld      a,0edh
01f3 321c70    ld      (701ch),a
01f6 3e39      ld      a,39h
01f8 321d70    ld      (701dh),a
01fb 3ec9      ld      a,0c9h
01fd 321f70    ld      (701fh),a
0200 cd4905    call    0549h		; ??
0203 3e00      ld      a,00h
0205 322170    ld      (7021h),a
0208 210000    ld      hl,0000h
020b 222470    ld      (7024h),hl
; do a loop 0ah times - initializing something ?
020e fb        ei      
020f 060a      ld      b,0ah
0211 210000    ld      hl,0000h
0214 222270    ld      (7022h),hl
0217 cdee04    call    04eeh
021a cd0205    call    delay
021d 21807f    ld      hl,7f80h
0220 222270    ld      (7022h),hl
0223 cde304    call    04e3h
0226 cd0205    call    delay
0229 10e6      djnz    0211h
; 
022b f3        di      
022c 3e00      ld      a,00h
022e 323770    ld      (7037h),a
0231 211e00    ld      hl,001eh
0234 dd212a70  ld      ix,702ah
0238 cd1505    call    0515h
023b cda704    call    04a7h
023e cd0205    call    delay
0241 f3        di      
0242 323670    ld      (7036h),a
0245 212202    ld      hl,0222h
0248 223070    ld      (7030h),hl
024b 0e02      ld      c,02h
024d ed0941    out0    (41h),c          ; Z180 instruction
0250 ed3840    in0     a,(40h)          ; Z180 instruction
0253 fe00      cp      00h
0255 c2aa03    jp      nz,03aah
0258 110c70    ld      de,700ch
025b cd8c05    call    RXByteCh0
025e fe02      cp      02h
0260 c25b02    jp      nz,025bh
0263 210071    ld      hl,7100h
0266 cd8c05    call    RXByteCh0
0269 12        ld      (de),a
026a 320a70    ld      (700ah),a
026d 77        ld      (hl),a
026e 23        inc     hl
026f cd8c05    call    RXByteCh0
0272 77        ld      (hl),a
0273 1a        ld      a,(de)
0274 86        add     a,(hl)
0275 12        ld      (de),a
0276 23        inc     hl
0277 3a0a70    ld      a,(700ah)
027a 3d        dec     a
027b 320a70    ld      (700ah),a
027e fe00      cp      00h
0280 c26f02    jp      nz,026fh
0283 cd8c05    call    RXByteCh0
0286 77        ld      (hl),a
0287 1a        ld      a,(de)
0288 eeff      xor     0ffh
028a c601      add     a,01h
028c be        cp      (hl)
028d c24b02    jp      nz,024bh
0290 dd210071  ld      ix,7100h
0294 dd7e01    ld      a,(ix+01h)
0297 2600      ld      h,00h
0299 6f        ld      l,a
029a fe01      cp      01h
029c ca5503    jp      z,0355h
029f fe02      cp      02h
02a1 ca5503    jp      z,0355h
02a4 fe03      cp      03h
02a6 ca6603    jp      z,0366h
02a9 fe22      cp      22h
02ab ca0703    jp      z,0307h
02ae fe05      cp      05h
02b0 ca0703    jp      z,0307h
02b3 fe07      cp      07h
02b5 cac402    jp      z,02c4h
02b8 c34b02    jp      024bh
02bb 3eff      ld      a,0ffh
02bd 3d        dec     a
02be c2bd02    jp      nz,02bdh
02c1 c35503    jp      0355h
02c4 fd214670  ld      iy,7046h
02c8 dd7e02    ld      a,(ix+02h)
02cb fd7700    ld      (iy+00h),a
02ce dd7e03    ld      a,(ix+03h)
02d1 fd7701    ld      (iy+01h),a
02d4 dd7e04    ld      a,(ix+04h)
02d7 fd7702    ld      (iy+02h),a
02da dd7e05    ld      a,(ix+05h)
02dd fd7703    ld      (iy+03h),a
02e0 3e01      ld      a,01h
02e2 323770    ld      (7037h),a
02e5 c35503    jp      0355h
02e8 214670    ld      hl,7046h
02eb 3600      ld      (hl),00h
02ed 23        inc     hl
02ee 3600      ld      (hl),00h
02f0 23        inc     hl
02f1 3600      ld      (hl),00h
02f3 23        inc     hl
02f4 3600      ld      (hl),00h
02f6 3e00      ld      a,00h
02f8 323770    ld      (7037h),a
02fb 2a3c70    ld      hl,(703ch)
02fe cd1505    call    0515h
0301 cda704    call    04a7h
0304 c35503    jp      0355h
0307 fb        ei      
0308 dd7e0c    ld      a,(ix+0ch)
030b fe06      cp      06h
030d cae802    jp      z,02e8h
0310 dd7e07    ld      a,(ix+07h)
0313 fe02      cp      02h
0315 ca2003    jp      z,0320h
0318 fe03      cp      03h
031a ca2903    jp      z,0329h
031d c35503    jp      0355h
0320 dd7e08    ld      a,(ix+08h)
0323 321270    ld      (7012h),a
0326 c35503    jp      0355h
0329 dd4608    ld      b,(ix+08h)
032c 3a1270    ld      a,(7012h)
032f b8        cp      b
0330 da4403    jp      c,0344h
0333 cdee04    call    04eeh
0336 210000    ld      hl,0000h
0339 222270    ld      (7022h),hl
033c 3e01      ld      a,01h
033e 322170    ld      (7021h),a
0341 c35503    jp      0355h
0344 cde304    call    04e3h
0347 21807f    ld      hl,7f80h
034a 222270    ld      (7022h),hl
034d 3e00      ld      a,00h
034f 322170    ld      (7021h),a
0352 c35503    jp      0355h
; major jmp target
0355 21b005    ld      hl,05b0h
0358 7e        ld      a,(hl)
0359 feff      cp      0ffh
035b ca4b02    jp      z,024bh
035e 4f        ld      c,a
035f cd7405    call    TXByteCh0
0362 23        inc     hl
0363 c35803    jp      0358h
;
0366 dd7e0d    ld      a,(ix+0dh)
0369 fe07      cp      07h
036b c25503    jp      nz,0355h
036e fd213870  ld      iy,7038h
0372 dd7e02    ld      a,(ix+02h)
0375 fd7700    ld      (iy+00h),a
0378 dd7e03    ld      a,(ix+03h)
037b fd7701    ld      (iy+01h),a
037e dd7e04    ld      a,(ix+04h)
0381 fd7702    ld      (iy+02h),a
0384 dd7e05    ld      a,(ix+05h)
0387 fd7703    ld      (iy+03h),a
038a dd6612    ld      h,(ix+12h)
038d dd6e13    ld      l,(ix+13h)
0390 223c70    ld      (703ch),hl
0393 29        add     hl,hl
0394 110010    ld      de,1000h
0397 19        add     hl,de
0398 5e        ld      e,(hl)
0399 23        inc     hl
039a 56        ld      d,(hl)
039b ed533070  ld      (7030h),de
039f 3eff      ld      a,0ffh
03a1 323770    ld      (7037h),a
03a4 c35503    jp      0355h
03a7 c3aa03    jp      03aah
; jmp target .....
; get a status byte (?)
03aa 0e02      ld      c,02h
03ac ed0941    out0    (41h),c          ; Z180 instruction
03af ed3840    in0     a,(40h)          ; Z180 instruction
03b2 fe08      cp      08h
03b4 ca1f04    jp      z,041fh
03b7 f5        push    af
03b8 3e00      ld      a,00h
03ba 323670    ld      (7036h),a
03bd f1        pop     af
03be fe01      cp      01h
03c0 ca4c04    jp      z,044ch
03c3 fe02      cp      02h
03c5 ca4604    jp      z,0446h
03c8 fe04      cp      04h
03ca ca4004    jp      z,0440h
03cd fe03      cp      03h
03cf cac901    jp      z,01c9h
03d2 fe09      cp      09h
03d4 cada03    jp      z,03dah
03d7 c3a703    jp      03a7h
03da 210000    ld      hl,0000h
03dd 222270    ld      (7022h),hl
03e0 cdee04    call    04eeh
03e3 3eff      ld      a,0ffh
03e5 322170    ld      (7021h),a
03e8 2a3070    ld      hl,(7030h)
03eb 222470    ld      (7024h),hl
03ee cd0205    call    delay
03f1 cd0205    call    delay
; jmp target ??
; get a status byte (?)
03f4 0e02      ld      c,02h
03f6 ed0941    out0    (41h),c          ; Z180 instruction
03f9 ed3840    in0     a,(40h)          ; Z180 instruction
03fc fe02      cp      02h
03fe c2aa03    jp      nz,03aah
0401 2a2470    ld      hl,(7024h)
0404 7c        ld      a,h
0405 fe00      cp      00h
0407 c2f403    jp      nz,03f4h
040a 7d        ld      a,l
040b c2f403    jp      nz,03f4h
040e 3a2170    ld      a,(7021h)
0411 eeff      xor     0ffh
0413 322170    ld      (7021h),a
0416 2a3070    ld      hl,(7030h)
0419 222470    ld      (7024h),hl
041c c3f403    jp      03f4h
; jmp target ??
041f 3a3670    ld      a,(7036h)
0422 fe00      cp      00h
0424 c2a703    jp      nz,03a7h
0427 3e01      ld      a,01h
0429 323670    ld      (7036h),a
042c 3a2170    ld      a,(7021h)
042f eeff      xor     0ffh
0431 322170    ld      (7021h),a
0434 2a3070    ld      hl,(7030h)
0437 222470    ld      (7024h),hl
043a cd0205    call    delay
043d c3a703    jp      03a7h
0440 212e70    ld      hl,702eh
0443 c34f04    jp      044fh
0446 212d70    ld      hl,702dh
0449 c34f04    jp      044fh
044c 212c70    ld      hl,702ch
044f cd9c04    call    049ch
0452 dd212a70  ld      ix,702ah
0456 dd360030  ld      (ix+00h),30h
045a dd360130  ld      (ix+01h),30h
045e cd8304    call    0483h
0461 223c70    ld      (703ch),hl
0464 dd212a70  ld      ix,702ah
0468 cd1505    call    0515h
046b cda704    call    04a7h
046e 2a3c70    ld      hl,(703ch)
0471 110010    ld      de,1000h
0474 29        add     hl,hl
0475 19        add     hl,de
0476 5e        ld      e,(hl)
0477 23        inc     hl
0478 56        ld      d,(hl)
0479 ed533070  ld      (7030h),de
047d cd0205    call    delay
0480 c3a703    jp      03a7h

; ???
0483 0605      ld      b,05h
0485 210000    ld      hl,0000h
0488 29        add     hl,hl
0489 e5        push    hl
048a 29        add     hl,hl
048b 29        add     hl,hl
048c d1        pop     de
048d 19        add     hl,de
048e dd7e00    ld      a,(ix+00h)
0491 de30      sbc     a,30h
0493 5f        ld      e,a
0494 1600      ld      d,00h
0496 19        add     hl,de
0497 dd23      inc     ix
0499 10ed      djnz    0488h
049b c9        ret     

; increment memory location with wrap around
; 30h->39h == valid values
049c 7e        ld      a,(hl)
049d 3c        inc     a
049e fe3a      cp      3ah
04a0 c2a504    jp      nz,04a5h
04a3 3e30      ld      a,30h
04a5 77        ld      (hl),a
04a6 c9        ret     

; read original value, save. output various values from (ix+n) , then restore original state. 7034h = place to store value
; ?? updating 7 segs ??
04a7 cdf904    call    04f9h
04aa 323470    ld      (7034h),a
04ad dd7e02    ld      a,(ix+02h)
04b0 e60f      and     0fh
04b2 f610      or      10h
04b4 cdf004    call    04f0h
04b7 e60f      and     0fh
04b9 cdf004    call    04f0h
04bc 23        inc     hl
04bd dd7e03    ld      a,(ix+03h)
04c0 e60f      and     0fh
04c2 f620      or      20h
04c4 cdf004    call    04f0h
04c7 e60f      and     0fh
04c9 cdf004    call    04f0h
04cc 23        inc     hl
04cd dd7e04    ld      a,(ix+04h)
04d0 e60f      and     0fh
04d2 f630      or      30h
04d4 cdf004    call    04f0h
04d7 e60f      and     0fh
04d9 cdf004    call    04f0h
04dc 3a3470    ld      a,(7034h)
04df cdf004    call    04f0h
04e2 c9        ret     

; do IO out 50h to port 40h
04e3 3e50      ld      a,50h
04e5 0e00      ld      c,00h
04e7 ed0941    out0    (41h),c          ; Z180 instruction
04ea ed3940    out0    (40h),a          ; Z180 instruction
04ed c9        ret     

; do IO out 40h to port 40h
04ee 3e40      ld      a,40h
; also called here, therefore assume a provided by caller
04f0 0e00      ld      c,00h
04f2 ed0941    out0    (41h),c          ; Z180 instruction
04f5 ed3940    out0    (40h),a          ; Z180 instruction
04f8 c9        ret     

; do IO in from port 40h; return result in register a
04f9 0e00      ld      c,00h
04fb ed0941    out0    (41h),c          ; Z180 instruction
04fe ed3840    in0     a,(40h)          ; Z180 instruction
0501 c9        ret     

; delay loop
delay:
0502 f5        push    af
0503 d5        push    de
0504 110050    ld      de,5000h
0507 1b        dec     de
0508 7b        ld      a,e
0509 fe00      cp      00h
050b 20fa      jr      nz,0507h
050d 7a        ld      a,d
050e fe00      cp      00h
0510 20f5      jr      nz,0507h
0512 d1        pop     de
0513 f1        pop     af
0514 c9        ret     

; 
0515 e5        push    hl
0516 dde5      push    ix
0518 fde5      push    iy
051a c5        push    bc
051b d5        push    de
051c fd21c005  ld      iy,05c0h			; list of words to divide
0520 af        xor     a			; a = 0
0521 fd5e00    ld      e,(iy+00h)
0524 fd5601    ld      d,(iy+01h)
0527 b7        or      a			; clear Carry flag but don't alter a
0528 ed52      sbc     hl,de			; subtraction HL minus DE
052a 3804      jr      c,0530h			; Carry set if <0
052c 3c        inc     a 
052d c32705    jp      0527h
0530 19        add     hl,de			; hl holds remainder of subtraction; a holds # of divides
0531 c630      add     a,30h
0533 dd7700    ld      (ix+00h),a		; save how many divides there were
0536 dd23      inc     ix			; next store location
0538 fd23      inc     iy			; next word to check
053a fd23      inc     iy
053c 3e01      ld      a,01h			; end of list yet?
053e bb        cp      e
053f 20df      jr      nz,0520h
0541 f1        pop     af
0542 d1        pop     de
0543 fde1      pop     iy
0545 dde1      pop     ix
0547 e1        pop     hl
0548 c9        ret   
  
; ??
0549 3e60      ld      a,60h
054b 320270    ld      (7002h),a
054e 3e0a      ld      a,0ah
0550 321070    ld      (7010h),a
0553 3eaa      ld      a,0aah
; setup timer
0555 ed3916    out0    (16h),a          ; Z180 instruction
0558 ed3917    out0    (17h),a          ; Z180 instruction
055b 3e00      ld      a,00h
055d 321470    ld      (7014h),a
0560 320870    ld      (7008h),a
0563 3e99      ld      a,99h
0565 320670    ld      (7006h),a
0568 3e60      ld      a,60h
; setup interrupt vectors
056a ed3933    out0    (33h),a          ; Z180 instruction
056d 3e02      ld      a,02h
056f ed3934    out0    (34h),a          ; Z180 instruction
0572 fb        ei      
0573 c9        ret     

; wait for a status bit TxReg Empty, then write byte in c to Tx register Ch.0
TXByteCh0:
0574 ed3804    in0     a,(04h)          ; Z180 instruction
0577 e602      and     02h
0579 28f9      jr      z,0574h
057b 79        ld      a,c
057c ed3906    out0    (06h),a          ; Z180 instruction
057f c9        ret     

; wait for a status bit TxReg Empty, then write byte in c to Tx register Ch.1
TXByteCh1:
0580 ed3805    in0     a,(05h)          ; Z180 instruction
0583 e602      and     02h
0585 28f9      jr      z,0580h
0587 79        ld      a,c
0588 ed3907    out0    (07h),a          ; Z180 instruction
058b c9        ret     


; get a byte from Ch0
RXByteCh0:
058c cd9505    call    0595h
058f 28fb      jr      z,058ch
0591 ed3808    in0     a,(08h)          ; Z180 instruction
0594 c9        ret     

; read Ch0 Status; return 0 if no byte received; ffh if a byte is ready to read.
0595 ed3804    in0     a,(04h)          ; Z180 instruction
0598 e680      and     80h
059a c8        ret     z
059b 3eff      ld      a,0ffh
059d c9        ret     


; get a byte from Ch1
RXByteCh1:
059e cda705    call    05a7h
05a1 28fb      jr      z,059eh
05a3 ed3809    in0     a,(09h)          ; Z180 instruction
05a6 c9        ret     

; read Ch1 Status; return 0 if no byte received; ffh if a byte is ready to read.
05a7 ed3805    in0     a,(05h)          ; Z180 instruction
05aa e680      and     80h
05ac c8        ret     z
05ad 3eff      ld      a,0ffh
05af c9        ret     


; data ??
05b0 02        ld      (bc),a
05b1 0c        inc     c
05b2 010000    ld      bc,0000h
05b5 00        nop     
05b6 00        nop     
05b7 00        nop     
05b8 00        nop     
05b9 02        ld      (bc),a
05ba 02        ld      (bc),a
05bb 00        nop     
05bc 0100ee    ld      bc,0ee00h
05bf ff        rst     38h

; data ??
05c0 1027      djnz    05e9h
05c2 e8        ret     pe
05c3 03        inc     bc
05c4 64        ld      h,h
05c5 00        nop     
05c6 0a        ld      a,(bc)
05c7 00        nop     
05c8 010050    ld      bc,5000h
05cb 47        ld      b,a
05cc 4d        ld      c,l
05cd 2045      jr      nz,0614h
05cf 4e        ld      c,(hl)
05d0 44        ld      b,h
05d1 00        nop     
05d2 00        nop     
05d3 00        nop     
05d4 00        nop     
05d5 00        nop     
05d6 00        nop     
05d7 00        nop     
05d8 00        nop     
05d9 00        nop     
05da 00        nop     
05db 00        nop     
05dc 00        nop     
05dd 00        nop     
05de 00        nop     
05df 00        nop     
05e0 00        nop     
05e1 00        nop     
05e2 00        nop     
05e3 00        nop     
05e4 00        nop     
05e5 00        nop     
05e6 00        nop     
05e7 00        nop     
05e8 00        nop     
05e9 00        nop     
05ea 00        nop     
05eb 00        nop     
05ec 00        nop     
05ed 00        nop     
05ee 00        nop     
05ef 00        nop     
05f0 00        nop     
05f1 00        nop     
05f2 00        nop     
05f3 00        nop     
05f4 00        nop     
05f5 00        nop     
05f6 00        nop     
05f7 00        nop     
05f8 00        nop     
05f9 00        nop     
05fa 00        nop     
05fb 00        nop     
05fc 00        nop     
05fd 00        nop     
05fe 00        nop     
05ff 00        nop     
0600 00        nop     
0601 00        nop     
0602 00        nop     
0603 00        nop     
0604 00        nop     
0605 00        nop     
0606 00        nop     
0607 00        nop     
0608 00        nop     
0609 00        nop     
060a 00        nop     
060b 00        nop     
060c 00        nop     
060d 00        nop     
060e 00        nop     
060f 00        nop     
0610 00        nop     
0611 00        nop     
0612 00        nop     
0613 00        nop     
0614 00        nop     
0615 00        nop     
0616 00        nop     
0617 00        nop     
0618 00        nop     
0619 00        nop     
061a 00        nop     
061b 00        nop     
061c 00        nop     
061d 00        nop     
061e 00        nop     
061f 00        nop     
0620 00        nop     
0621 00        nop     
0622 00        nop     
0623 00        nop     
0624 00        nop     
0625 00        nop     
0626 00        nop     
0627 00        nop     
0628 00        nop     
0629 00        nop     
062a 00        nop     
062b 00        nop     
062c 00        nop     
062d 00        nop     
062e 00        nop     
062f 00        nop     
0630 00        nop     
0631 00        nop     
0632 00        nop     
0633 00        nop     
0634 00        nop     
0635 00        nop     
0636 00        nop     
0637 00        nop     
0638 00        nop     
0639 00        nop     
063a 00        nop     
063b 00        nop     
063c 00        nop     
063d 00        nop     
063e 00        nop     
063f 00        nop     
0640 00        nop     
0641 00        nop     
0642 00        nop     
0643 00        nop     
0644 00        nop     
0645 00        nop     
0646 00        nop     
0647 00        nop     
0648 00        nop     
0649 00        nop     
064a 00        nop     
064b 00        nop     
064c 00        nop     
064d 00        nop     
064e 00        nop     
064f 00        nop     
0650 00        nop     
0651 00        nop     
0652 00        nop     
0653 00        nop     
0654 00        nop     
0655 00        nop     
0656 00        nop     
0657 00        nop     
0658 00        nop     
0659 00        nop     
065a 00        nop     
065b 00        nop     
065c 00        nop     
065d 00        nop     
065e 00        nop     
065f 00        nop     
0660 00        nop     
0661 00        nop     
0662 00        nop     
0663 00        nop     
0664 00        nop     
0665 00        nop     
0666 00        nop     
0667 00        nop     
0668 00        nop     
0669 00        nop     
066a 00        nop     
066b 00        nop     
066c 00        nop     
066d 00        nop     
066e 00        nop     
066f 00        nop     
0670 00        nop     
0671 00        nop     
0672 00        nop     
0673 00        nop     
0674 00        nop     
0675 00        nop     
0676 00        nop     
0677 00        nop     
0678 00        nop     
0679 00        nop     
067a 00        nop     
067b 00        nop     
067c 00        nop     
067d 00        nop     
067e 00        nop     
067f 00        nop     
0680 00        nop     
0681 00        nop     
0682 00        nop     
0683 00        nop     
0684 00        nop     
0685 00        nop     
0686 00        nop     
0687 00        nop     
0688 00        nop     
0689 00        nop     
068a 00        nop     
068b 00        nop     
068c 00        nop     
068d 00        nop     
068e 00        nop     
068f 00        nop     
0690 00        nop     
0691 00        nop     
0692 00        nop     
0693 00        nop     
0694 00        nop     
0695 00        nop     
0696 00        nop     
0697 00        nop     
0698 00        nop     
0699 00        nop     
069a 00        nop     
069b 00        nop     
069c 00        nop     
069d 00        nop     
069e 00        nop     
069f 00        nop     
06a0 00        nop     
06a1 00        nop     
06a2 00        nop     
06a3 00        nop     
06a4 00        nop     
06a5 00        nop     
06a6 00        nop     
06a7 00        nop     
06a8 00        nop     
06a9 00        nop     
06aa 00        nop     
06ab 00        nop     
06ac 00        nop     
06ad 00        nop     
06ae 00        nop     
06af 00        nop     
06b0 00        nop     
06b1 00        nop     
06b2 00        nop     
06b3 00        nop     
06b4 00        nop     
06b5 00        nop     
06b6 00        nop     
06b7 00        nop     
06b8 00        nop     
06b9 00        nop     
06ba 00        nop     
06bb 00        nop     
06bc 00        nop     
06bd 00        nop     
06be 00        nop     
06bf 00        nop     
06c0 00        nop     
06c1 00        nop     
06c2 00        nop     
06c3 00        nop     
06c4 00        nop     
06c5 00        nop     
06c6 00        nop     
06c7 00        nop     
06c8 00        nop     
06c9 00        nop     
06ca 00        nop     
06cb 00        nop     
06cc 00        nop     
06cd 00        nop     
06ce 00        nop     
06cf 00        nop     
06d0 00        nop     
06d1 00        nop     
06d2 00        nop     
06d3 00        nop     
06d4 00        nop     
06d5 00        nop     
06d6 00        nop     
06d7 00        nop     
06d8 00        nop     
06d9 00        nop     
06da 00        nop     
06db 00        nop     
06dc 00        nop     
06dd 00        nop     
06de 00        nop     
06df 00        nop     
06e0 00        nop     
06e1 00        nop     
06e2 00        nop     
06e3 00        nop     
06e4 00        nop     
06e5 00        nop     
06e6 00        nop     
06e7 00        nop     
06e8 00        nop     
06e9 00        nop     
06ea 00        nop     
06eb 00        nop     
06ec 00        nop     
06ed 00        nop     
06ee 00        nop     
06ef 00        nop     
06f0 00        nop     
06f1 00        nop     
06f2 00        nop     
06f3 00        nop     
06f4 00        nop     
06f5 00        nop     
06f6 00        nop     
06f7 00        nop     
06f8 00        nop     
06f9 00        nop     
06fa 00        nop     
06fb 00        nop     
06fc 00        nop     
06fd 00        nop     
06fe 00        nop     
06ff 00        nop     
0700 00        nop     
0701 00        nop     
0702 00        nop     
0703 00        nop     
0704 00        nop     
0705 00        nop     
0706 00        nop     
0707 00        nop     
0708 00        nop     
0709 00        nop     
070a 00        nop     
070b 00        nop     
070c 00        nop     
070d 00        nop     
070e 00        nop     
070f 00        nop     
0710 00        nop     
0711 00        nop     
0712 00        nop     
0713 00        nop     
0714 00        nop     
0715 00        nop     
0716 00        nop     
0717 00        nop     
0718 00        nop     
0719 00        nop     
071a 00        nop     
071b 00        nop     
071c 00        nop     
071d 00        nop     
071e 00        nop     
071f 00        nop     
0720 00        nop     
0721 00        nop     
0722 00        nop     
0723 00        nop     
0724 00        nop     
0725 00        nop     
0726 00        nop     
0727 00        nop     
0728 00        nop     
0729 00        nop     
072a 00        nop     
072b 00        nop     
072c 00        nop     
072d 00        nop     
072e 00        nop     
072f 00        nop     
0730 00        nop     
0731 00        nop     
0732 00        nop     
0733 00        nop     
0734 00        nop     
0735 00        nop     
0736 00        nop     
0737 00        nop     
0738 00        nop     
0739 00        nop     
073a 00        nop     
073b 00        nop     
073c 00        nop     
073d 00        nop     
073e 00        nop     
073f 00        nop     
0740 00        nop     
0741 00        nop     
0742 00        nop     
0743 00        nop     
0744 00        nop     
0745 00        nop     
0746 00        nop     
0747 00        nop     
0748 00        nop     
0749 00        nop     
074a 00        nop     
074b 00        nop     
074c 00        nop     
074d 00        nop     
074e 00        nop     
074f 00        nop     
0750 00        nop     
0751 00        nop     
0752 00        nop     
0753 00        nop     
0754 00        nop     
0755 00        nop     
0756 00        nop     
0757 00        nop     
0758 00        nop     
0759 00        nop     
075a 00        nop     
075b 00        nop     
075c 00        nop     
075d 00        nop     
075e 00        nop     
075f 00        nop     
0760 00        nop     
0761 00        nop     
0762 00        nop     
0763 00        nop     
0764 00        nop     
0765 00        nop     
0766 00        nop     
0767 00        nop     
0768 00        nop     
0769 00        nop     
076a 00        nop     
076b 00        nop     
076c 00        nop     
076d 00        nop     
076e 00        nop     
076f 00        nop     
0770 00        nop     
0771 00        nop     
0772 00        nop     
0773 00        nop     
0774 00        nop     
0775 00        nop     
0776 00        nop     
0777 00        nop     
0778 00        nop     
0779 00        nop     
077a 00        nop     
077b 00        nop     
077c 00        nop     
077d 00        nop     
077e 00        nop     
077f 00        nop     
0780 00        nop     
0781 00        nop     
0782 00        nop     
0783 00        nop     
0784 00        nop     
0785 00        nop     
0786 00        nop     
0787 00        nop     
0788 00        nop     
0789 00        nop     
078a 00        nop     
078b 00        nop     
078c 00        nop     
078d 00        nop     
078e 00        nop     
078f 00        nop     
0790 00        nop     
0791 00        nop     
0792 00        nop     
0793 00        nop     
0794 00        nop     
0795 00        nop     
0796 00        nop     
0797 00        nop     
0798 00        nop     
0799 00        nop     
079a 00        nop     
079b 00        nop     
079c 00        nop     
079d 00        nop     
079e 00        nop     
079f 00        nop     
07a0 00        nop     
07a1 00        nop     
07a2 00        nop     
07a3 00        nop     
07a4 00        nop     
07a5 00        nop     
07a6 00        nop     
07a7 00        nop     
07a8 00        nop     
07a9 00        nop     
07aa 00        nop     
07ab 00        nop     
07ac 00        nop     
07ad 00        nop     
07ae 00        nop     
07af 00        nop     
07b0 00        nop     
07b1 00        nop     
07b2 00        nop     
07b3 00        nop     
07b4 00        nop     
07b5 00        nop     
07b6 00        nop     
07b7 00        nop     
07b8 00        nop     
07b9 00        nop     
07ba 00        nop     
07bb 00        nop     
07bc 00        nop     
07bd 00        nop     
07be 00        nop     
07bf 00        nop     
07c0 00        nop     
07c1 00        nop     
07c2 00        nop     
07c3 00        nop     
07c4 00        nop     
07c5 00        nop     
07c6 00        nop     
07c7 00        nop     
07c8 00        nop     
07c9 00        nop     
07ca 00        nop     
07cb 00        nop     
07cc 00        nop     
07cd 00        nop     
07ce 00        nop     
07cf 00        nop     
07d0 00        nop     
07d1 00        nop     
07d2 00        nop     
07d3 00        nop     
07d4 00        nop     
07d5 00        nop     
07d6 00        nop     
07d7 00        nop     
07d8 00        nop     
07d9 00        nop     
07da 00        nop     
07db 00        nop     
07dc 00        nop     
07dd 00        nop     
07de 00        nop     
07df 00        nop     
07e0 00        nop     
07e1 00        nop     
07e2 00        nop     
07e3 00        nop     
07e4 00        nop     
07e5 00        nop     
07e6 00        nop     
07e7 00        nop     
07e8 00        nop     
07e9 00        nop     
07ea 00        nop     
07eb 00        nop     
07ec 00        nop     
07ed 00        nop     
07ee 00        nop     
07ef 00        nop     
07f0 00        nop     
07f1 00        nop     
07f2 00        nop     
07f3 00        nop     
07f4 00        nop     
07f5 00        nop     
07f6 00        nop     
07f7 00        nop     
07f8 00        nop     
07f9 00        nop     
07fa 00        nop     
07fb 00        nop     
07fc 00        nop     
07fd 00        nop     
07fe 00        nop     
07ff 00        nop     
0800 00        nop     
0801 00        nop     
0802 00        nop     
0803 00        nop     
0804 00        nop     
0805 00        nop     
0806 00        nop     
0807 00        nop     
0808 00        nop     
0809 00        nop     
080a 00        nop     
080b 00        nop     
080c 00        nop     
080d 00        nop     
080e 00        nop     
080f 00        nop     
0810 00        nop     
0811 00        nop     
0812 00        nop     
0813 00        nop     
0814 00        nop     
0815 00        nop     
0816 00        nop     
0817 00        nop     
0818 00        nop     
0819 00        nop     
081a 00        nop     
081b 00        nop     
081c 00        nop     
081d 00        nop     
081e 00        nop     
081f 00        nop     
0820 00        nop     
0821 00        nop     
0822 00        nop     
0823 00        nop     
0824 00        nop     
0825 00        nop     
0826 00        nop     
0827 00        nop     
0828 00        nop     
0829 00        nop     
082a 00        nop     
082b 00        nop     
082c 00        nop     
082d 00        nop     
082e 00        nop     
082f 00        nop     
0830 00        nop     
0831 00        nop     
0832 00        nop     
0833 00        nop     
0834 00        nop     
0835 00        nop     
0836 00        nop     
0837 00        nop     
0838 00        nop     
0839 00        nop     
083a 00        nop     
083b 00        nop     
083c 00        nop     
083d 00        nop     
083e 00        nop     
083f 00        nop     
0840 00        nop     
0841 00        nop     
0842 00        nop     
0843 00        nop     
0844 00        nop     
0845 00        nop     
0846 00        nop     
0847 00        nop     
0848 00        nop     
0849 00        nop     
084a 00        nop     
084b 00        nop     
084c 00        nop     
084d 00        nop     
084e 00        nop     
084f 00        nop     
0850 00        nop     
0851 00        nop     
0852 00        nop     
0853 00        nop     
0854 00        nop     
0855 00        nop     
0856 00        nop     
0857 00        nop     
0858 00        nop     
0859 00        nop     
085a 00        nop     
085b 00        nop     
085c 00        nop     
085d 00        nop     
085e 00        nop     
085f 00        nop     
0860 00        nop     
0861 00        nop     
0862 00        nop     
0863 00        nop     
0864 00        nop     
0865 00        nop     
0866 00        nop     
0867 00        nop     
0868 00        nop     
0869 00        nop     
086a 00        nop     
086b 00        nop     
086c 00        nop     
086d 00        nop     
086e 00        nop     
086f 00        nop     
0870 00        nop     
0871 00        nop     
0872 00        nop     
0873 00        nop     
0874 00        nop     
0875 00        nop     
0876 00        nop     
0877 00        nop     
0878 00        nop     
0879 00        nop     
087a 00        nop     
087b 00        nop     
087c 00        nop     
087d 00        nop     
087e 00        nop     
087f 00        nop     
0880 00        nop     
0881 00        nop     
0882 00        nop     
0883 00        nop     
0884 00        nop     
0885 00        nop     
0886 00        nop     
0887 00        nop     
0888 00        nop     
0889 00        nop     
088a 00        nop     
088b 00        nop     
088c 00        nop     
088d 00        nop     
088e 00        nop     
088f 00        nop     
0890 00        nop     
0891 00        nop     
0892 00        nop     
0893 00        nop     
0894 00        nop     
0895 00        nop     
0896 00        nop     
0897 00        nop     
0898 00        nop     
0899 00        nop     
089a 00        nop     
089b 00        nop     
089c 00        nop     
089d 00        nop     
089e 00        nop     
089f 00        nop     
08a0 00        nop     
08a1 00        nop     
08a2 00        nop     
08a3 00        nop     
08a4 00        nop     
08a5 00        nop     
08a6 00        nop     
08a7 00        nop     
08a8 00        nop     
08a9 00        nop     
08aa 00        nop     
08ab 00        nop     
08ac 00        nop     
08ad 00        nop     
08ae 00        nop     
08af 00        nop     
08b0 00        nop     
08b1 00        nop     
08b2 00        nop     
08b3 00        nop     
08b4 00        nop     
08b5 00        nop     
08b6 00        nop     
08b7 00        nop     
08b8 00        nop     
08b9 00        nop     
08ba 00        nop     
08bb 00        nop     
08bc 00        nop     
08bd 00        nop     
08be 00        nop     
08bf 00        nop     
08c0 00        nop     
08c1 00        nop     
08c2 00        nop     
08c3 00        nop     
08c4 00        nop     
08c5 00        nop     
08c6 00        nop     
08c7 00        nop     
08c8 00        nop     
08c9 00        nop     
08ca 00        nop     
08cb 00        nop     
08cc 00        nop     
08cd 00        nop     
08ce 00        nop     
08cf 00        nop     
08d0 00        nop     
08d1 00        nop     
08d2 00        nop     
08d3 00        nop     
08d4 00        nop     
08d5 00        nop     
08d6 00        nop     
08d7 00        nop     
08d8 00        nop     
08d9 00        nop     
08da 00        nop     
08db 00        nop     
08dc 00        nop     
08dd 00        nop     
08de 00        nop     
08df 00        nop     
08e0 00        nop     
08e1 00        nop     
08e2 00        nop     
08e3 00        nop     
08e4 00        nop     
08e5 00        nop     
08e6 00        nop     
08e7 00        nop     
08e8 00        nop     
08e9 00        nop     
08ea 00        nop     
08eb 00        nop     
08ec 00        nop     
08ed 00        nop     
08ee 00        nop     
08ef 00        nop     
08f0 00        nop     
08f1 00        nop     
08f2 00        nop     
08f3 00        nop     
08f4 00        nop     
08f5 00        nop     
08f6 00        nop     
08f7 00        nop     
08f8 00        nop     
08f9 00        nop     
08fa 00        nop     
08fb 00        nop     
08fc 00        nop     
08fd 00        nop     
08fe 00        nop     
08ff 00        nop     
0900 00        nop     
0901 00        nop     
0902 00        nop     
0903 00        nop     
0904 00        nop     
0905 00        nop     
0906 00        nop     
0907 00        nop     
0908 00        nop     
0909 00        nop     
090a 00        nop     
090b 00        nop     
090c 00        nop     
090d 00        nop     
090e 00        nop     
090f 00        nop     
0910 00        nop     
0911 00        nop     
0912 00        nop     
0913 00        nop     
0914 00        nop     
0915 00        nop     
0916 00        nop     
0917 00        nop     
0918 00        nop     
0919 00        nop     
091a 00        nop     
091b 00        nop     
091c 00        nop     
091d 00        nop     
091e 00        nop     
091f 00        nop     
0920 00        nop     
0921 00        nop     
0922 00        nop     
0923 00        nop     
0924 00        nop     
0925 00        nop     
0926 00        nop     
0927 00        nop     
0928 00        nop     
0929 00        nop     
092a 00        nop     
092b 00        nop     
092c 00        nop     
092d 00        nop     
092e 00        nop     
092f 00        nop     
0930 00        nop     
0931 00        nop     
0932 00        nop     
0933 00        nop     
0934 00        nop     
0935 00        nop     
0936 00        nop     
0937 00        nop     
0938 00        nop     
0939 00        nop     
093a 00        nop     
093b 00        nop     
093c 00        nop     
093d 00        nop     
093e 00        nop     
093f 00        nop     
0940 00        nop     
0941 00        nop     
0942 00        nop     
0943 00        nop     
0944 00        nop     
0945 00        nop     
0946 00        nop     
0947 00        nop     
0948 00        nop     
0949 00        nop     
094a 00        nop     
094b 00        nop     
094c 00        nop     
094d 00        nop     
094e 00        nop     
094f 00        nop     
0950 00        nop     
0951 00        nop     
0952 00        nop     
0953 00        nop     
0954 00        nop     
0955 00        nop     
0956 00        nop     
0957 00        nop     
0958 00        nop     
0959 00        nop     
095a 00        nop     
095b 00        nop     
095c 00        nop     
095d 00        nop     
095e 00        nop     
095f 00        nop     
0960 00        nop     
0961 00        nop     
0962 00        nop     
0963 00        nop     
0964 00        nop     
0965 00        nop     
0966 00        nop     
0967 00        nop     
0968 00        nop     
0969 00        nop     
096a 00        nop     
096b 00        nop     
096c 00        nop     
096d 00        nop     
096e 00        nop     
096f 00        nop     
0970 00        nop     
0971 00        nop     
0972 00        nop     
0973 00        nop     
0974 00        nop     
0975 00        nop     
0976 00        nop     
0977 00        nop     
0978 00        nop     
0979 00        nop     
097a 00        nop     
097b 00        nop     
097c 00        nop     
097d 00        nop     
097e 00        nop     
097f 00        nop     
0980 00        nop     
0981 00        nop     
0982 00        nop     
0983 00        nop     
0984 00        nop     
0985 00        nop     
0986 00        nop     
0987 00        nop     
0988 00        nop     
0989 00        nop     
098a 00        nop     
098b 00        nop     
098c 00        nop     
098d 00        nop     
098e 00        nop     
098f 00        nop     
0990 00        nop     
0991 00        nop     
0992 00        nop     
0993 00        nop     
0994 00        nop     
0995 00        nop     
0996 00        nop     
0997 00        nop     
0998 00        nop     
0999 00        nop     
099a 00        nop     
099b 00        nop     
099c 00        nop     
099d 00        nop     
099e 00        nop     
099f 00        nop     
09a0 00        nop     
09a1 00        nop     
09a2 00        nop     
09a3 00        nop     
09a4 00        nop     
09a5 00        nop     
09a6 00        nop     
09a7 00        nop     
09a8 00        nop     
09a9 00        nop     
09aa 00        nop     
09ab 00        nop     
09ac 00        nop     
09ad 00        nop     
09ae 00        nop     
09af 00        nop     
09b0 00        nop     
09b1 00        nop     
09b2 00        nop     
09b3 00        nop     
09b4 00        nop     
09b5 00        nop     
09b6 00        nop     
09b7 00        nop     
09b8 00        nop     
09b9 00        nop     
09ba 00        nop     
09bb 00        nop     
09bc 00        nop     
09bd 00        nop     
09be 00        nop     
09bf 00        nop     
09c0 00        nop     
09c1 00        nop     
09c2 00        nop     
09c3 00        nop     
09c4 00        nop     
09c5 00        nop     
09c6 00        nop     
09c7 00        nop     
09c8 00        nop     
09c9 00        nop     
09ca 00        nop     
09cb 00        nop     
09cc 00        nop     
09cd 00        nop     
09ce 00        nop     
09cf 00        nop     
09d0 00        nop     
09d1 00        nop     
09d2 00        nop     
09d3 00        nop     
09d4 00        nop     
09d5 00        nop     
09d6 00        nop     
09d7 00        nop     
09d8 00        nop     
09d9 00        nop     
09da 00        nop     
09db 00        nop     
09dc 00        nop     
09dd 00        nop     
09de 00        nop     
09df 00        nop     
09e0 00        nop     
09e1 00        nop     
09e2 00        nop     
09e3 00        nop     
09e4 00        nop     
09e5 00        nop     
09e6 00        nop     
09e7 00        nop     
09e8 00        nop     
09e9 00        nop     
09ea 00        nop     
09eb 00        nop     
09ec 00        nop     
09ed 00        nop     
09ee 00        nop     
09ef 00        nop     
09f0 00        nop     
09f1 00        nop     
09f2 00        nop     
09f3 00        nop     
09f4 00        nop     
09f5 00        nop     
09f6 00        nop     
09f7 00        nop     
09f8 00        nop     
09f9 00        nop     
09fa 00        nop     
09fb 00        nop     
09fc 00        nop     
09fd 00        nop     
09fe 00        nop     
09ff 00        nop     
0a00 00        nop     
0a01 00        nop     
0a02 00        nop     
0a03 00        nop     
0a04 00        nop     
0a05 00        nop     
0a06 00        nop     
0a07 00        nop     
0a08 00        nop     
0a09 00        nop     
0a0a 00        nop     
0a0b 00        nop     
0a0c 00        nop     
0a0d 00        nop     
0a0e 00        nop     
0a0f 00        nop     
0a10 00        nop     
0a11 00        nop     
0a12 00        nop     
0a13 00        nop     
0a14 00        nop     
0a15 00        nop     
0a16 00        nop     
0a17 00        nop     
0a18 00        nop     
0a19 00        nop     
0a1a 00        nop     
0a1b 00        nop     
0a1c 00        nop     
0a1d 00        nop     
0a1e 00        nop     
0a1f 00        nop     
0a20 00        nop     
0a21 00        nop     
0a22 00        nop     
0a23 00        nop     
0a24 00        nop     
0a25 00        nop     
0a26 00        nop     
0a27 00        nop     
0a28 00        nop     
0a29 00        nop     
0a2a 00        nop     
0a2b 00        nop     
0a2c 00        nop     
0a2d 00        nop     
0a2e 00        nop     
0a2f 00        nop     
0a30 00        nop     
0a31 00        nop     
0a32 00        nop     
0a33 00        nop     
0a34 00        nop     
0a35 00        nop     
0a36 00        nop     
0a37 00        nop     
0a38 00        nop     
0a39 00        nop     
0a3a 00        nop     
0a3b 00        nop     
0a3c 00        nop     
0a3d 00        nop     
0a3e 00        nop     
0a3f 00        nop     
0a40 00        nop     
0a41 00        nop     
0a42 00        nop     
0a43 00        nop     
0a44 00        nop     
0a45 00        nop     
0a46 00        nop     
0a47 00        nop     
0a48 00        nop     
0a49 00        nop     
0a4a 00        nop     
0a4b 00        nop     
0a4c 00        nop     
0a4d 00        nop     
0a4e 00        nop     
0a4f 00        nop     
0a50 00        nop     
0a51 00        nop     
0a52 00        nop     
0a53 00        nop     
0a54 00        nop     
0a55 00        nop     
0a56 00        nop     
0a57 00        nop     
0a58 00        nop     
0a59 00        nop     
0a5a 00        nop     
0a5b 00        nop     
0a5c 00        nop     
0a5d 00        nop     
0a5e 00        nop     
0a5f 00        nop     
0a60 00        nop     
0a61 00        nop     
0a62 00        nop     
0a63 00        nop     
0a64 00        nop     
0a65 00        nop     
0a66 00        nop     
0a67 00        nop     
0a68 00        nop     
0a69 00        nop     
0a6a 00        nop     
0a6b 00        nop     
0a6c 00        nop     
0a6d 00        nop     
0a6e 00        nop     
0a6f 00        nop     
0a70 00        nop     
0a71 00        nop     
0a72 00        nop     
0a73 00        nop     
0a74 00        nop     
0a75 00        nop     
0a76 00        nop     
0a77 00        nop     
0a78 00        nop     
0a79 00        nop     
0a7a 00        nop     
0a7b 00        nop     
0a7c 00        nop     
0a7d 00        nop     
0a7e 00        nop     
0a7f 00        nop     
0a80 00        nop     
0a81 00        nop     
0a82 00        nop     
0a83 00        nop     
0a84 00        nop     
0a85 00        nop     
0a86 00        nop     
0a87 00        nop     
0a88 00        nop     
0a89 00        nop     
0a8a 00        nop     
0a8b 00        nop     
0a8c 00        nop     
0a8d 00        nop     
0a8e 00        nop     
0a8f 00        nop     
0a90 00        nop     
0a91 00        nop     
0a92 00        nop     
0a93 00        nop     
0a94 00        nop     
0a95 00        nop     
0a96 00        nop     
0a97 00        nop     
0a98 00        nop     
0a99 00        nop     
0a9a 00        nop     
0a9b 00        nop     
0a9c 00        nop     
0a9d 00        nop     
0a9e 00        nop     
0a9f 00        nop     
0aa0 00        nop     
0aa1 00        nop     
0aa2 00        nop     
0aa3 00        nop     
0aa4 00        nop     
0aa5 00        nop     
0aa6 00        nop     
0aa7 00        nop     
0aa8 00        nop     
0aa9 00        nop     
0aaa 00        nop     
0aab 00        nop     
0aac 00        nop     
0aad 00        nop     
0aae 00        nop     
0aaf 00        nop     
0ab0 00        nop     
0ab1 00        nop     
0ab2 00        nop     
0ab3 00        nop     
0ab4 00        nop     
0ab5 00        nop     
0ab6 00        nop     
0ab7 00        nop     
0ab8 00        nop     
0ab9 00        nop     
0aba 00        nop     
0abb 00        nop     
0abc 00        nop     
0abd 00        nop     
0abe 00        nop     
0abf 00        nop     
0ac0 00        nop     
0ac1 00        nop     
0ac2 00        nop     
0ac3 00        nop     
0ac4 00        nop     
0ac5 00        nop     
0ac6 00        nop     
0ac7 00        nop     
0ac8 00        nop     
0ac9 00        nop     
0aca 00        nop     
0acb 00        nop     
0acc 00        nop     
0acd 00        nop     
0ace 00        nop     
0acf 00        nop     
0ad0 00        nop     
0ad1 00        nop     
0ad2 00        nop     
0ad3 00        nop     
0ad4 00        nop     
0ad5 00        nop     
0ad6 00        nop     
0ad7 00        nop     
0ad8 00        nop     
0ad9 00        nop     
0ada 00        nop     
0adb 00        nop     
0adc 00        nop     
0add 00        nop     
0ade 00        nop     
0adf 00        nop     
0ae0 00        nop     
0ae1 00        nop     
0ae2 00        nop     
0ae3 00        nop     
0ae4 00        nop     
0ae5 00        nop     
0ae6 00        nop     
0ae7 00        nop     
0ae8 00        nop     
0ae9 00        nop     
0aea 00        nop     
0aeb 00        nop     
0aec 00        nop     
0aed 00        nop     
0aee 00        nop     
0aef 00        nop     
0af0 00        nop     
0af1 00        nop     
0af2 00        nop     
0af3 00        nop     
0af4 00        nop     
0af5 00        nop     
0af6 00        nop     
0af7 00        nop     
0af8 00        nop     
0af9 00        nop     
0afa 00        nop     
0afb 00        nop     
0afc 00        nop     
0afd 00        nop     
0afe 00        nop     
0aff 00        nop     
0b00 00        nop     
0b01 00        nop     
0b02 00        nop     
0b03 00        nop     
0b04 00        nop     
0b05 00        nop     
0b06 00        nop     
0b07 00        nop     
0b08 00        nop     
0b09 00        nop     
0b0a 00        nop     
0b0b 00        nop     
0b0c 00        nop     
0b0d 00        nop     
0b0e 00        nop     
0b0f 00        nop     
0b10 00        nop     
0b11 00        nop     
0b12 00        nop     
0b13 00        nop     
0b14 00        nop     
0b15 00        nop     
0b16 00        nop     
0b17 00        nop     
0b18 00        nop     
0b19 00        nop     
0b1a 00        nop     
0b1b 00        nop     
0b1c 00        nop     
0b1d 00        nop     
0b1e 00        nop     
0b1f 00        nop     
0b20 00        nop     
0b21 00        nop     
0b22 00        nop     
0b23 00        nop     
0b24 00        nop     
0b25 00        nop     
0b26 00        nop     
0b27 00        nop     
0b28 00        nop     
0b29 00        nop     
0b2a 00        nop     
0b2b 00        nop     
0b2c 00        nop     
0b2d 00        nop     
0b2e 00        nop     
0b2f 00        nop     
0b30 00        nop     
0b31 00        nop     
0b32 00        nop     
0b33 00        nop     
0b34 00        nop     
0b35 00        nop     
0b36 00        nop     
0b37 00        nop     
0b38 00        nop     
0b39 00        nop     
0b3a 00        nop     
0b3b 00        nop     
0b3c 00        nop     
0b3d 00        nop     
0b3e 00        nop     
0b3f 00        nop     
0b40 00        nop     
0b41 00        nop     
0b42 00        nop     
0b43 00        nop     
0b44 00        nop     
0b45 00        nop     
0b46 00        nop     
0b47 00        nop     
0b48 00        nop     
0b49 00        nop     
0b4a 00        nop     
0b4b 00        nop     
0b4c 00        nop     
0b4d 00        nop     
0b4e 00        nop     
0b4f 00        nop     
0b50 00        nop     
0b51 00        nop     
0b52 00        nop     
0b53 00        nop     
0b54 00        nop     
0b55 00        nop     
0b56 00        nop     
0b57 00        nop     
0b58 00        nop     
0b59 00        nop     
0b5a 00        nop     
0b5b 00        nop     
0b5c 00        nop     
0b5d 00        nop     
0b5e 00        nop     
0b5f 00        nop     
0b60 00        nop     
0b61 00        nop     
0b62 00        nop     
0b63 00        nop     
0b64 00        nop     
0b65 00        nop     
0b66 00        nop     
0b67 00        nop     
0b68 00        nop     
0b69 00        nop     
0b6a 00        nop     
0b6b 00        nop     
0b6c 00        nop     
0b6d 00        nop     
0b6e 00        nop     
0b6f 00        nop     
0b70 00        nop     
0b71 00        nop     
0b72 00        nop     
0b73 00        nop     
0b74 00        nop     
0b75 00        nop     
0b76 00        nop     
0b77 00        nop     
0b78 00        nop     
0b79 00        nop     
0b7a 00        nop     
0b7b 00        nop     
0b7c 00        nop     
0b7d 00        nop     
0b7e 00        nop     
0b7f 00        nop     
0b80 00        nop     
0b81 00        nop     
0b82 00        nop     
0b83 00        nop     
0b84 00        nop     
0b85 00        nop     
0b86 00        nop     
0b87 00        nop     
0b88 00        nop     
0b89 00        nop     
0b8a 00        nop     
0b8b 00        nop     
0b8c 00        nop     
0b8d 00        nop     
0b8e 00        nop     
0b8f 00        nop     
0b90 00        nop     
0b91 00        nop     
0b92 00        nop     
0b93 00        nop     
0b94 00        nop     
0b95 00        nop     
0b96 00        nop     
0b97 00        nop     
0b98 00        nop     
0b99 00        nop     
0b9a 00        nop     
0b9b 00        nop     
0b9c 00        nop     
0b9d 00        nop     
0b9e 00        nop     
0b9f 00        nop     
0ba0 00        nop     
0ba1 00        nop     
0ba2 00        nop     
0ba3 00        nop     
0ba4 00        nop     
0ba5 00        nop     
0ba6 00        nop     
0ba7 00        nop     
0ba8 00        nop     
0ba9 00        nop     
0baa 00        nop     
0bab 00        nop     
0bac 00        nop     
0bad 00        nop     
0bae 00        nop     
0baf 00        nop     
0bb0 00        nop     
0bb1 00        nop     
0bb2 00        nop     
0bb3 00        nop     
0bb4 00        nop     
0bb5 00        nop     
0bb6 00        nop     
0bb7 00        nop     
0bb8 00        nop     
0bb9 00        nop     
0bba 00        nop     
0bbb 00        nop     
0bbc 00        nop     
0bbd 00        nop     
0bbe 00        nop     
0bbf 00        nop     
0bc0 00        nop     
0bc1 00        nop     
0bc2 00        nop     
0bc3 00        nop     
0bc4 00        nop     
0bc5 00        nop     
0bc6 00        nop     
0bc7 00        nop     
0bc8 00        nop     
0bc9 00        nop     
0bca 00        nop     
0bcb 00        nop     
0bcc 00        nop     
0bcd 00        nop     
0bce 00        nop     
0bcf 00        nop     
0bd0 00        nop     
0bd1 00        nop     
0bd2 00        nop     
0bd3 00        nop     
0bd4 00        nop     
0bd5 00        nop     
0bd6 00        nop     
0bd7 00        nop     
0bd8 00        nop     
0bd9 00        nop     
0bda 00        nop     
0bdb 00        nop     
0bdc 00        nop     
0bdd 00        nop     
0bde 00        nop     
0bdf 00        nop     
0be0 00        nop     
0be1 00        nop     
0be2 00        nop     
0be3 00        nop     
0be4 00        nop     
0be5 00        nop     
0be6 00        nop     
0be7 00        nop     
0be8 00        nop     
0be9 00        nop     
0bea 00        nop     
0beb 00        nop     
0bec 00        nop     
0bed 00        nop     
0bee 00        nop     
0bef 00        nop     
0bf0 00        nop     
0bf1 00        nop     
0bf2 00        nop     
0bf3 00        nop     
0bf4 00        nop     
0bf5 00        nop     
0bf6 00        nop     
0bf7 00        nop     
0bf8 00        nop     
0bf9 00        nop     
0bfa 00        nop     
0bfb 00        nop     
0bfc 00        nop     
0bfd 00        nop     
0bfe 00        nop     
0bff 00        nop     
0c00 00        nop     
0c01 00        nop     
0c02 00        nop     
0c03 00        nop     
0c04 00        nop     
0c05 00        nop     
0c06 00        nop     
0c07 00        nop     
0c08 00        nop     
0c09 00        nop     
0c0a 00        nop     
0c0b 00        nop     
0c0c 00        nop     
0c0d 00        nop     
0c0e 00        nop     
0c0f 00        nop     
0c10 00        nop     
0c11 00        nop     
0c12 00        nop     
0c13 00        nop     
0c14 00        nop     
0c15 00        nop     
0c16 00        nop     
0c17 00        nop     
0c18 00        nop     
0c19 00        nop     
0c1a 00        nop     
0c1b 00        nop     
0c1c 00        nop     
0c1d 00        nop     
0c1e 00        nop     
0c1f 00        nop     
0c20 00        nop     
0c21 00        nop     
0c22 00        nop     
0c23 00        nop     
0c24 00        nop     
0c25 00        nop     
0c26 00        nop     
0c27 00        nop     
0c28 00        nop     
0c29 00        nop     
0c2a 00        nop     
0c2b 00        nop     
0c2c 00        nop     
0c2d 00        nop     
0c2e 00        nop     
0c2f 00        nop     
0c30 00        nop     
0c31 00        nop     
0c32 00        nop     
0c33 00        nop     
0c34 00        nop     
0c35 00        nop     
0c36 00        nop     
0c37 00        nop     
0c38 00        nop     
0c39 00        nop     
0c3a 00        nop     
0c3b 00        nop     
0c3c 00        nop     
0c3d 00        nop     
0c3e 00        nop     
0c3f 00        nop     
0c40 00        nop     
0c41 00        nop     
0c42 00        nop     
0c43 00        nop     
0c44 00        nop     
0c45 00        nop     
0c46 00        nop     
0c47 00        nop     
0c48 00        nop     
0c49 00        nop     
0c4a 00        nop     
0c4b 00        nop     
0c4c 00        nop     
0c4d 00        nop     
0c4e 00        nop     
0c4f 00        nop     
0c50 00        nop     
0c51 00        nop     
0c52 00        nop     
0c53 00        nop     
0c54 00        nop     
0c55 00        nop     
0c56 00        nop     
0c57 00        nop     
0c58 00        nop     
0c59 00        nop     
0c5a 00        nop     
0c5b 00        nop     
0c5c 00        nop     
0c5d 00        nop     
0c5e 00        nop     
0c5f 00        nop     
0c60 00        nop     
0c61 00        nop     
0c62 00        nop     
0c63 00        nop     
0c64 00        nop     
0c65 00        nop     
0c66 00        nop     
0c67 00        nop     
0c68 00        nop     
0c69 00        nop     
0c6a 00        nop     
0c6b 00        nop     
0c6c 00        nop     
0c6d 00        nop     
0c6e 00        nop     
0c6f 00        nop     
0c70 00        nop     
0c71 00        nop     
0c72 00        nop     
0c73 00        nop     
0c74 00        nop     
0c75 00        nop     
0c76 00        nop     
0c77 00        nop     
0c78 00        nop     
0c79 00        nop     
0c7a 00        nop     
0c7b 00        nop     
0c7c 00        nop     
0c7d 00        nop     
0c7e 00        nop     
0c7f 00        nop     
0c80 00        nop     
0c81 00        nop     
0c82 00        nop     
0c83 00        nop     
0c84 00        nop     
0c85 00        nop     
0c86 00        nop     
0c87 00        nop     
0c88 00        nop     
0c89 00        nop     
0c8a 00        nop     
0c8b 00        nop     
0c8c 00        nop     
0c8d 00        nop     
0c8e 00        nop     
0c8f 00        nop     
0c90 00        nop     
0c91 00        nop     
0c92 00        nop     
0c93 00        nop     
0c94 00        nop     
0c95 00        nop     
0c96 00        nop     
0c97 00        nop     
0c98 00        nop     
0c99 00        nop     
0c9a 00        nop     
0c9b 00        nop     
0c9c 00        nop     
0c9d 00        nop     
0c9e 00        nop     
0c9f 00        nop     
0ca0 00        nop     
0ca1 00        nop     
0ca2 00        nop     
0ca3 00        nop     
0ca4 00        nop     
0ca5 00        nop     
0ca6 00        nop     
0ca7 00        nop     
0ca8 00        nop     
0ca9 00        nop     
0caa 00        nop     
0cab 00        nop     
0cac 00        nop     
0cad 00        nop     
0cae 00        nop     
0caf 00        nop     
0cb0 00        nop     
0cb1 00        nop     
0cb2 00        nop     
0cb3 00        nop     
0cb4 00        nop     
0cb5 00        nop     
0cb6 00        nop     
0cb7 00        nop     
0cb8 00        nop     
0cb9 00        nop     
0cba 00        nop     
0cbb 00        nop     
0cbc 00        nop     
0cbd 00        nop     
0cbe 00        nop     
0cbf 00        nop     
0cc0 00        nop     
0cc1 00        nop     
0cc2 00        nop     
0cc3 00        nop     
0cc4 00        nop     
0cc5 00        nop     
0cc6 00        nop     
0cc7 00        nop     
0cc8 00        nop     
0cc9 00        nop     
0cca 00        nop     
0ccb 00        nop     
0ccc 00        nop     
0ccd 00        nop     
0cce 00        nop     
0ccf 00        nop     
0cd0 00        nop     
0cd1 00        nop     
0cd2 00        nop     
0cd3 00        nop     
0cd4 00        nop     
0cd5 00        nop     
0cd6 00        nop     
0cd7 00        nop     
0cd8 00        nop     
0cd9 00        nop     
0cda 00        nop     
0cdb 00        nop     
0cdc 00        nop     
0cdd 00        nop     
0cde 00        nop     
0cdf 00        nop     
0ce0 00        nop     
0ce1 00        nop     
0ce2 00        nop     
0ce3 00        nop     
0ce4 00        nop     
0ce5 00        nop     
0ce6 00        nop     
0ce7 00        nop     
0ce8 00        nop     
0ce9 00        nop     
0cea 00        nop     
0ceb 00        nop     
0cec 00        nop     
0ced 00        nop     
0cee 00        nop     
0cef 00        nop     
0cf0 00        nop     
0cf1 00        nop     
0cf2 00        nop     
0cf3 00        nop     
0cf4 00        nop     
0cf5 00        nop     
0cf6 00        nop     
0cf7 00        nop     
0cf8 00        nop     
0cf9 00        nop     
0cfa 00        nop     
0cfb 00        nop     
0cfc 00        nop     
0cfd 00        nop     
0cfe 00        nop     
0cff 00        nop     
0d00 00        nop     
0d01 00        nop     
0d02 00        nop     
0d03 00        nop     
0d04 00        nop     
0d05 00        nop     
0d06 00        nop     
0d07 00        nop     
0d08 00        nop     
0d09 00        nop     
0d0a 00        nop     
0d0b 00        nop     
0d0c 00        nop     
0d0d 00        nop     
0d0e 00        nop     
0d0f 00        nop     
0d10 00        nop     
0d11 00        nop     
0d12 00        nop     
0d13 00        nop     
0d14 00        nop     
0d15 00        nop     
0d16 00        nop     
0d17 00        nop     
0d18 00        nop     
0d19 00        nop     
0d1a 00        nop     
0d1b 00        nop     
0d1c 00        nop     
0d1d 00        nop     
0d1e 00        nop     
0d1f 00        nop     
0d20 00        nop     
0d21 00        nop     
0d22 00        nop     
0d23 00        nop     
0d24 00        nop     
0d25 00        nop     
0d26 00        nop     
0d27 00        nop     
0d28 00        nop     
0d29 00        nop     
0d2a 00        nop     
0d2b 00        nop     
0d2c 00        nop     
0d2d 00        nop     
0d2e 00        nop     
0d2f 00        nop     
0d30 00        nop     
0d31 00        nop     
0d32 00        nop     
0d33 00        nop     
0d34 00        nop     
0d35 00        nop     
0d36 00        nop     
0d37 00        nop     
0d38 00        nop     
0d39 00        nop     
0d3a 00        nop     
0d3b 00        nop     
0d3c 00        nop     
0d3d 00        nop     
0d3e 00        nop     
0d3f 00        nop     
0d40 00        nop     
0d41 00        nop     
0d42 00        nop     
0d43 00        nop     
0d44 00        nop     
0d45 00        nop     
0d46 00        nop     
0d47 00        nop     
0d48 00        nop     
0d49 00        nop     
0d4a 00        nop     
0d4b 00        nop     
0d4c 00        nop     
0d4d 00        nop     
0d4e 00        nop     
0d4f 00        nop     
0d50 00        nop     
0d51 00        nop     
0d52 00        nop     
0d53 00        nop     
0d54 00        nop     
0d55 00        nop     
0d56 00        nop     
0d57 00        nop     
0d58 00        nop     
0d59 00        nop     
0d5a 00        nop     
0d5b 00        nop     
0d5c 00        nop     
0d5d 00        nop     
0d5e 00        nop     
0d5f 00        nop     
0d60 00        nop     
0d61 00        nop     
0d62 00        nop     
0d63 00        nop     
0d64 00        nop     
0d65 00        nop     
0d66 00        nop     
0d67 00        nop     
0d68 00        nop     
0d69 00        nop     
0d6a 00        nop     
0d6b 00        nop     
0d6c 00        nop     
0d6d 00        nop     
0d6e 00        nop     
0d6f 00        nop     
0d70 00        nop     
0d71 00        nop     
0d72 00        nop     
0d73 00        nop     
0d74 00        nop     
0d75 00        nop     
0d76 00        nop     
0d77 00        nop     
0d78 00        nop     
0d79 00        nop     
0d7a 00        nop     
0d7b 00        nop     
0d7c 00        nop     
0d7d 00        nop     
0d7e 00        nop     
0d7f 00        nop     
0d80 00        nop     
0d81 00        nop     
0d82 00        nop     
0d83 00        nop     
0d84 00        nop     
0d85 00        nop     
0d86 00        nop     
0d87 00        nop     
0d88 00        nop     
0d89 00        nop     
0d8a 00        nop     
0d8b 00        nop     
0d8c 00        nop     
0d8d 00        nop     
0d8e 00        nop     
0d8f 00        nop     
0d90 00        nop     
0d91 00        nop     
0d92 00        nop     
0d93 00        nop     
0d94 00        nop     
0d95 00        nop     
0d96 00        nop     
0d97 00        nop     
0d98 00        nop     
0d99 00        nop     
0d9a 00        nop     
0d9b 00        nop     
0d9c 00        nop     
0d9d 00        nop     
0d9e 00        nop     
0d9f 00        nop     
0da0 00        nop     
0da1 00        nop     
0da2 00        nop     
0da3 00        nop     
0da4 00        nop     
0da5 00        nop     
0da6 00        nop     
0da7 00        nop     
0da8 00        nop     
0da9 00        nop     
0daa 00        nop     
0dab 00        nop     
0dac 00        nop     
0dad 00        nop     
0dae 00        nop     
0daf 00        nop     
0db0 00        nop     
0db1 00        nop     
0db2 00        nop     
0db3 00        nop     
0db4 00        nop     
0db5 00        nop     
0db6 00        nop     
0db7 00        nop     
0db8 00        nop     
0db9 00        nop     
0dba 00        nop     
0dbb 00        nop     
0dbc 00        nop     
0dbd 00        nop     
0dbe 00        nop     
0dbf 00        nop     
0dc0 00        nop     
0dc1 00        nop     
0dc2 00        nop     
0dc3 00        nop     
0dc4 00        nop     
0dc5 00        nop     
0dc6 00        nop     
0dc7 00        nop     
0dc8 00        nop     
0dc9 00        nop     
0dca 00        nop     
0dcb 00        nop     
0dcc 00        nop     
0dcd 00        nop     
0dce 00        nop     
0dcf 00        nop     
0dd0 00        nop     
0dd1 00        nop     
0dd2 00        nop     
0dd3 00        nop     
0dd4 00        nop     
0dd5 00        nop     
0dd6 00        nop     
0dd7 00        nop     
0dd8 00        nop     
0dd9 00        nop     
0dda 00        nop     
0ddb 00        nop     
0ddc 00        nop     
0ddd 00        nop     
0dde 00        nop     
0ddf 00        nop     
0de0 00        nop     
0de1 00        nop     
0de2 00        nop     
0de3 00        nop     
0de4 00        nop     
0de5 00        nop     
0de6 00        nop     
0de7 00        nop     
0de8 00        nop     
0de9 00        nop     
0dea 00        nop     
0deb 00        nop     
0dec 00        nop     
0ded 00        nop     
0dee 00        nop     
0def 00        nop     
0df0 00        nop     
0df1 00        nop     
0df2 00        nop     
0df3 00        nop     
0df4 00        nop     
0df5 00        nop     
0df6 00        nop     
0df7 00        nop     
0df8 00        nop     
0df9 00        nop     
0dfa 00        nop     
0dfb 00        nop     
0dfc 00        nop     
0dfd 00        nop     
0dfe 00        nop     
0dff 00        nop  

; data ??   
0e00 00        nop     
0e01 010203    ld      bc,0302h
0e04 04        inc     b
0e05 05        dec     b
0e06 0607      ld      b,07h
0e08 08        ex      af,af'
0e09 09        add     hl,bc
0e0a 00        nop     
0e0b 00        nop     
0e0c 00        nop     
0e0d 00        nop     
0e0e 00        nop     
0e0f 00        nop     
0e10 0a        ld      a,(bc)
0e11 0b        dec     bc
0e12 0c        inc     c
0e13 0d        dec     c
0e14 0e0f      ld      c,0fh
0e16 1011      djnz    0e29h
0e18 12        ld      (de),a
0e19 13        inc     de
0e1a 00        nop     
0e1b 00        nop     
0e1c 00        nop     
0e1d 00        nop     
0e1e 00        nop     
0e1f 00        nop     
0e20 14        inc     d
0e21 15        dec     d
0e22 1617      ld      d,17h
0e24 1819      jr      0e3fh
0e26 1a        ld      a,(de)
0e27 1b        dec     de
0e28 1c        inc     e
0e29 1d        dec     e
0e2a 00        nop     
0e2b 00        nop     
0e2c 00        nop     
0e2d 00        nop     
0e2e 00        nop     
0e2f 00        nop     
0e30 1e1f      ld      e,1fh
0e32 2021      jr      nz,0e55h
0e34 222324    ld      (2423h),hl
0e37 25        dec     h
0e38 2627      ld      h,27h
0e3a 00        nop     
0e3b 00        nop     
0e3c 00        nop     
0e3d 00        nop     
0e3e 00        nop     
0e3f 00        nop     
0e40 2829      jr      z,0e6bh
0e42 2a2b2c    ld      hl,(2c2bh)
0e45 2d        dec     l
0e46 2e2f      ld      l,2fh
0e48 3031      jr      nc,0e7bh
0e4a 00        nop     
0e4b 00        nop     
0e4c 00        nop     
0e4d 00        nop     
0e4e 00        nop     
0e4f 00        nop     
0e50 323334    ld      (3433h),a
0e53 35        dec     (hl)
0e54 3637      ld      (hl),37h
0e56 3839      jr      c,0e91h
0e58 3a3b00    ld      a,(003bh)
0e5b 00        nop     
0e5c 00        nop     
0e5d 00        nop     
0e5e 00        nop     
0e5f 00        nop     
0e60 3c        inc     a
0e61 3d        dec     a
0e62 3e3f      ld      a,3fh
0e64 40        ld      b,b
0e65 41        ld      b,c
0e66 42        ld      b,d
0e67 43        ld      b,e
0e68 44        ld      b,h
0e69 45        ld      b,l
0e6a 00        nop     
0e6b 00        nop     
0e6c 00        nop     
0e6d 00        nop     
0e6e 00        nop     
0e6f 00        nop     
0e70 00        nop     
0e71 00        nop     
0e72 00        nop     
0e73 00        nop     
0e74 00        nop     
0e75 00        nop     
0e76 00        nop     
0e77 00        nop     
0e78 00        nop     
0e79 00        nop     
0e7a 00        nop     
0e7b 00        nop     
0e7c 00        nop     
0e7d 00        nop     
0e7e 00        nop     
0e7f 00        nop     
0e80 00        nop     
0e81 00        nop     
0e82 00        nop     
0e83 00        nop     
0e84 00        nop     
0e85 00        nop     
0e86 00        nop     
0e87 00        nop     
0e88 00        nop     
0e89 00        nop     
0e8a 00        nop     
0e8b 00        nop     
0e8c 00        nop     
0e8d 00        nop     
0e8e 00        nop     
0e8f 00        nop     
0e90 00        nop     
0e91 00        nop     
0e92 00        nop     
0e93 00        nop     
0e94 00        nop     
0e95 00        nop     
0e96 00        nop     
0e97 00        nop     
0e98 00        nop     
0e99 00        nop     
0e9a 00        nop     
0e9b 00        nop     
0e9c 00        nop     
0e9d 00        nop     
0e9e 00        nop     
0e9f 00        nop     
0ea0 00        nop     
0ea1 00        nop     
0ea2 00        nop     
0ea3 00        nop     
0ea4 00        nop     
0ea5 00        nop     
0ea6 00        nop     
0ea7 00        nop     
0ea8 00        nop     
0ea9 00        nop     
0eaa 00        nop     
0eab 00        nop     
0eac 00        nop     
0ead 00        nop     
0eae 00        nop     
0eaf 00        nop     
0eb0 00        nop     
0eb1 00        nop     
0eb2 00        nop     
0eb3 00        nop     
0eb4 00        nop     
0eb5 00        nop     
0eb6 00        nop     
0eb7 00        nop     
0eb8 00        nop     
0eb9 00        nop     
0eba 00        nop     
0ebb 00        nop     
0ebc 00        nop     
0ebd 00        nop     
0ebe 00        nop     
0ebf 00        nop     
0ec0 00        nop     
0ec1 00        nop     
0ec2 00        nop     
0ec3 00        nop     
0ec4 00        nop     
0ec5 00        nop     
0ec6 00        nop     
0ec7 00        nop     
0ec8 00        nop     
0ec9 00        nop     
0eca 00        nop     
0ecb 00        nop     
0ecc 00        nop     
0ecd 00        nop     
0ece 00        nop     
0ecf 00        nop     
0ed0 00        nop     
0ed1 00        nop     
0ed2 00        nop     
0ed3 00        nop     
0ed4 00        nop     
0ed5 00        nop     
0ed6 00        nop     
0ed7 00        nop     
0ed8 00        nop     
0ed9 00        nop     
0eda 00        nop     
0edb 00        nop     
0edc 00        nop     
0edd 00        nop     
0ede 00        nop     
0edf 00        nop     
0ee0 00        nop     
0ee1 00        nop     
0ee2 00        nop     
0ee3 00        nop     
0ee4 00        nop     
0ee5 00        nop     
0ee6 00        nop     
0ee7 00        nop     
0ee8 00        nop     
0ee9 00        nop     
0eea 00        nop     
0eeb 00        nop     
0eec 00        nop     
0eed 00        nop     
0eee 00        nop     
0eef 00        nop     
0ef0 00        nop     
0ef1 00        nop     
0ef2 00        nop     
0ef3 00        nop     
0ef4 00        nop     
0ef5 00        nop     
0ef6 00        nop     
0ef7 00        nop     
0ef8 00        nop     
0ef9 00        nop     
0efa 00        nop     
0efb 00        nop     
0efc 00        nop     
0efd 00        nop     
0efe 00        nop     
0eff 00        nop  
; data ??   
0f00 00        nop     
0f01 010203    ld      bc,0302h
0f04 04        inc     b
0f05 05        dec     b
0f06 0607      ld      b,07h
0f08 08        ex      af,af'
0f09 09        add     hl,bc
0f0a 1011      djnz    0f1dh
0f0c 12        ld      (de),a
0f0d 13        inc     de
0f0e 14        inc     d
0f0f 15        dec     d
0f10 1617      ld      d,17h
0f12 1819      jr      0f2dh
0f14 2021      jr      nz,0f37h
0f16 222324    ld      (2423h),hl
0f19 25        dec     h
0f1a 2627      ld      h,27h
0f1c 2829      jr      z,0f47h
0f1e 3031      jr      nc,0f51h
0f20 323334    ld      (3433h),a
0f23 35        dec     (hl)
0f24 3637      ld      (hl),37h
0f26 3839      jr      c,0f61h
0f28 40        ld      b,b
0f29 41        ld      b,c
0f2a 42        ld      b,d
0f2b 43        ld      b,e
0f2c 44        ld      b,h
0f2d 45        ld      b,l
0f2e 46        ld      b,(hl)
0f2f 47        ld      b,a
0f30 48        ld      c,b
0f31 49        ld      c,c
0f32 50        ld      d,b
0f33 51        ld      d,c
0f34 52        ld      d,d
0f35 53        ld      d,e
0f36 54        ld      d,h
0f37 55        ld      d,l
0f38 56        ld      d,(hl)
0f39 57        ld      d,a
0f3a 58        ld      e,b
0f3b 59        ld      e,c
0f3c 60        ld      h,b
0f3d 61        ld      h,c
0f3e 62        ld      h,d
0f3f 63        ld      h,e
0f40 64        ld      h,h
0f41 65        ld      h,l
0f42 66        ld      h,(hl)
0f43 67        ld      h,a
0f44 68        ld      l,b
0f45 69        ld      l,c
0f46 70        ld      (hl),b
0f47 00        nop     
0f48 00        nop     
0f49 00        nop     
0f4a 00        nop     
0f4b 00        nop     
0f4c 00        nop     
0f4d 00        nop     
0f4e 00        nop     
0f4f 00        nop     
0f50 00        nop     
0f51 00        nop     
0f52 00        nop     
0f53 00        nop     
0f54 00        nop     
0f55 00        nop     
0f56 00        nop     
0f57 00        nop     
0f58 00        nop     
0f59 00        nop     
0f5a 00        nop     
0f5b 00        nop     
0f5c 00        nop     
0f5d 00        nop     
0f5e 00        nop     
0f5f 00        nop     
0f60 00        nop     
0f61 00        nop     
0f62 00        nop     
0f63 00        nop     
0f64 00        nop     
0f65 00        nop     
0f66 00        nop     
0f67 00        nop     
0f68 00        nop     
0f69 00        nop     
0f6a 00        nop     
0f6b 00        nop     
0f6c 00        nop     
0f6d 00        nop     
0f6e 00        nop     
0f6f 00        nop     
0f70 00        nop     
0f71 00        nop     
0f72 00        nop     
0f73 00        nop     
0f74 00        nop     
0f75 00        nop     
0f76 00        nop     
0f77 00        nop     
0f78 00        nop     
0f79 00        nop     
0f7a 00        nop     
0f7b 00        nop     
0f7c 00        nop     
0f7d 00        nop     
0f7e 00        nop     
0f7f 00        nop     
0f80 00        nop     
0f81 00        nop     
0f82 00        nop     
0f83 00        nop     
0f84 00        nop     
0f85 00        nop     
0f86 00        nop     
0f87 00        nop     
0f88 00        nop     
0f89 00        nop     
0f8a 00        nop     
0f8b 00        nop     
0f8c 00        nop     
0f8d 00        nop     
0f8e 00        nop     
0f8f 00        nop     
0f90 00        nop     
0f91 00        nop     
0f92 00        nop     
0f93 00        nop     
0f94 00        nop     
0f95 00        nop     
0f96 00        nop     
0f97 00        nop     
0f98 00        nop     
0f99 00        nop     
0f9a 00        nop     
0f9b 00        nop     
0f9c 00        nop     
0f9d 00        nop     
0f9e 00        nop     
0f9f 00        nop     
0fa0 00        nop     
0fa1 00        nop     
0fa2 00        nop     
0fa3 00        nop     
0fa4 00        nop     
0fa5 00        nop     
0fa6 00        nop     
0fa7 00        nop     
0fa8 00        nop     
0fa9 00        nop     
0faa 00        nop     
0fab 00        nop     
0fac 00        nop     
0fad 00        nop     
0fae 00        nop     
0faf 00        nop     
0fb0 00        nop     
0fb1 00        nop     
0fb2 00        nop     
0fb3 00        nop     
0fb4 00        nop     
0fb5 00        nop     
0fb6 00        nop     
0fb7 00        nop     
0fb8 00        nop     
0fb9 00        nop     
0fba 00        nop     
0fbb 00        nop     
0fbc 00        nop     
0fbd 00        nop     
0fbe 00        nop     
0fbf 00        nop     
0fc0 00        nop     
0fc1 00        nop     
0fc2 00        nop     
0fc3 00        nop     
0fc4 00        nop     
0fc5 00        nop     
0fc6 00        nop     
0fc7 00        nop     
0fc8 00        nop     
0fc9 00        nop     
0fca 00        nop     
0fcb 00        nop     
0fcc 00        nop     
0fcd 00        nop     
0fce 00        nop     
0fcf 00        nop     
0fd0 00        nop     
0fd1 00        nop     
0fd2 00        nop     
0fd3 00        nop     
0fd4 00        nop     
0fd5 00        nop     
0fd6 00        nop     
0fd7 00        nop     
0fd8 00        nop     
0fd9 00        nop     
0fda 00        nop     
0fdb 00        nop     
0fdc 00        nop     
0fdd 00        nop     
0fde 00        nop     
0fdf 00        nop     
0fe0 00        nop     
0fe1 00        nop     
0fe2 00        nop     
0fe3 00        nop     
0fe4 00        nop     
0fe5 00        nop     
0fe6 00        nop     
0fe7 00        nop     
0fe8 00        nop     
0fe9 00        nop     
0fea 00        nop     
0feb 00        nop     
0fec 00        nop     
0fed 00        nop     
0fee 00        nop     
0fef 00        nop     
0ff0 00        nop     
0ff1 00        nop     
0ff2 00        nop     
0ff3 00        nop     
0ff4 00        nop     
0ff5 00        nop     
0ff6 00        nop     
0ff7 00        nop     
0ff8 00        nop     
0ff9 00        nop     
0ffa 00        nop     
0ffb 00        nop     
0ffc 00        nop     
0ffd 00        nop     
0ffe 00        nop     
0fff 00        nop     
1000 00        nop     
1001 00        nop     
1002 00        nop     
1003 40        ld      b,b
1004 00        nop     
1005 2055      jr      nz,105ch
1007 15        dec     d
1008 00        nop     
1009 10cd      djnz    0fd8h
100b 0c        inc     c
100c ab        xor     e
100d 0a        ld      a,(bc)
100e 25        dec     h
100f 09        add     hl,bc
1010 00        nop     
1011 08        ex      af,af'
1012 1c        inc     e
1013 07        rlca    
1014 66        ld      h,(hl)
1015 06d1      ld      b,0d1h
1017 05        dec     b
1018 55        ld      d,l
1019 05        dec     b
101a ec0492    call    pe,9204h
101d 04        inc     b
101e 44        ld      b,h
101f 04        inc     b
1020 00        nop     
1021 04        inc     b
1022 c4038e    call    nz,8e03h
1025 03        inc     bc
1026 5e        ld      e,(hl)
1027 03        inc     bc
1028 33        inc     sp
1029 03        inc     bc
102a 0c        inc     c
102b 03        inc     bc
102c e9        jp      (hl)
102d 02        ld      (bc),a
102e c8        ret     z

102f 02        ld      (bc),a
1030 ab        xor     e
1031 02        ld      (bc),a
1032 8f        adc     a,a
1033 02        ld      (bc),a
1034 76        halt    
1035 02        ld      (bc),a
1036 5f        ld      e,a
1037 02        ld      (bc),a
1038 49        ld      c,c
1039 02        ld      (bc),a
103a 35        dec     (hl)
103b 02        ld      (bc),a
103c 22020e    ld      (0e02h),hl
103f 02        ld      (bc),a
1040 00        nop     
1041 02        ld      (bc),a
1042 f0        ret     p

1043 01e201    ld      bc,01e2h
1046 d401c7    call    nc,0c701h
1049 01bb01    ld      bc,01bbh
104c af        xor     a
104d 01a401    ld      bc,01a4h
1050 9a        sbc     a,d
1051 019001    ld      bc,0190h
1054 86        add     a,(hl)
1055 017d01    ld      bc,017dh
1058 74        ld      (hl),h
1059 016c01    ld      bc,016ch
105c 64        ld      h,h
105d 015c01    ld      bc,015ch
1060 55        ld      d,l
1061 014e01    ld      bc,014eh
1064 48        ld      c,b
1065 014101    ld      bc,0141h
1068 3b        dec     sp
1069 013501    ld      bc,0135h
106c 2f        cpl     
106d 012a01    ld      bc,012ah
1070 25        dec     h
1071 011f01    ld      bc,011fh
1074 1a        ld      a,(de)
1075 011601    ld      bc,0116h
1078 11010d    ld      de,0d01h
107b 010801    ld      bc,0108h
107e 04        inc     b
107f 010001    ld      bc,0100h
1082 fc00f8    call    m,0f800h
1085 00        nop     
1086 f5        push    af
1087 00        nop     
1088 f1        pop     af
1089 00        nop     
108a ed00ea    in0     b,(0eah)         ; Z180 instruction
108d 00        nop     
108e e7        rst     20h
108f 00        nop     
1090 e400e0    call    po,0e000h
1093 00        nop     
1094 dd00      nop     
1096 da00d8    jp      c,0d800h
1099 00        nop     
109a d5        push    de
109b 00        nop     
109c d200cf    jp      nc,0cf00h
109f 00        nop     
10a0 cd00ca    call    0ca00h
10a3 00        nop     
10a4 c8        ret     z

10a5 00        nop     
10a6 c5        push    bc
10a7 00        nop     
10a8 c300c1    jp      0c100h
10ab 00        nop     
10ac bf        cp      a
10ad 00        nop     
10ae bc        cp      h
10af 00        nop     
10b0 ba        cp      d
10b1 00        nop     
10b2 b8        cp      b
10b3 00        nop     
10b4 b6        or      (hl)
10b5 00        nop     
10b6 b4        or      h
10b7 00        nop     
10b8 b2        or      d
10b9 00        nop     
10ba b0        or      b
10bb 00        nop     
10bc ae        xor     (hl)
10bd 00        nop     
10be ac        xor     h
10bf 00        nop     
10c0 ab        xor     e
10c1 00        nop     
10c2 a9        xor     c
10c3 00        nop     
10c4 a7        and     a
10c5 00        nop     
10c6 a5        and     l
10c7 00        nop     
10c8 a4        and     h
10c9 00        nop     
10ca a2        and     d
10cb 00        nop     
10cc a1        and     c
10cd 00        nop     
10ce 9f        sbc     a,a
10cf 00        nop     
10d0 9e        sbc     a,(hl)
10d1 00        nop     
10d2 9c        sbc     a,h
10d3 00        nop     
10d4 9b        sbc     a,e
10d5 00        nop     
10d6 99        sbc     a,c
10d7 00        nop     
10d8 98        sbc     a,b
10d9 00        nop     
10da 96        sub     (hl)
10db 00        nop     
10dc 95        sub     l
10dd 00        nop     
10de 94        sub     h
10df 00        nop     
10e0 92        sub     d
10e1 00        nop     
10e2 91        sub     c
10e3 00        nop     
10e4 90        sub     b
10e5 00        nop     
10e6 8e        adc     a,(hl)
10e7 00        nop     
10e8 8d        adc     a,l
10e9 00        nop     
10ea 8c        adc     a,h
10eb 00        nop     
10ec 8b        adc     a,e
10ed 00        nop     
10ee 8a        adc     a,d
10ef 00        nop     
10f0 89        adc     a,c
10f1 00        nop     
10f2 87        add     a,a
10f3 00        nop     
10f4 86        add     a,(hl)
10f5 00        nop     
10f6 85        add     a,l
10f7 00        nop     
10f8 84        add     a,h
10f9 00        nop     
10fa 83        add     a,e
10fb 00        nop     
10fc 82        add     a,d
10fd 00        nop     
10fe 81        add     a,c
10ff 00        nop     
1100 80        add     a,b
1101 00        nop     
1102 7f        ld      a,a
1103 00        nop     
1104 7e        ld      a,(hl)
1105 00        nop     
1106 7d        ld      a,l
1107 00        nop     
1108 7c        ld      a,h
1109 00        nop     
110a 7b        ld      a,e
110b 00        nop     
110c 7a        ld      a,d
110d 00        nop     
110e 79        ld      a,c
110f 00        nop     
1110 78        ld      a,b
1111 00        nop     
1112 78        ld      a,b
1113 00        nop     
1114 77        ld      (hl),a
1115 00        nop     
1116 76        halt    
1117 00        nop     
1118 75        ld      (hl),l
1119 00        nop     
111a 74        ld      (hl),h
111b 00        nop     
111c 73        ld      (hl),e
111d 00        nop     
111e 73        ld      (hl),e
111f 00        nop     
1120 72        ld      (hl),d
1121 00        nop     
1122 71        ld      (hl),c
1123 00        nop     
1124 70        ld      (hl),b
1125 00        nop     
1126 6f        ld      l,a
1127 00        nop     
1128 6f        ld      l,a
1129 00        nop     
112a 6e        ld      l,(hl)
112b 00        nop     
112c 6d        ld      l,l
112d 00        nop     
112e 6d        ld      l,l
112f 00        nop     
1130 6c        ld      l,h
1131 00        nop     
1132 6b        ld      l,e
1133 00        nop     
1134 6a        ld      l,d
1135 00        nop     
1136 6a        ld      l,d
1137 00        nop     
1138 69        ld      l,c
1139 00        nop     
113a 68        ld      l,b
113b 00        nop     
113c 68        ld      l,b
113d 00        nop     
113e 67        ld      h,a
113f 00        nop     
1140 66        ld      h,(hl)
1141 00        nop     
1142 66        ld      h,(hl)
1143 00        nop     
1144 65        ld      h,l
1145 00        nop     
1146 65        ld      h,l
1147 00        nop     
1148 64        ld      h,h
1149 00        nop     
114a 63        ld      h,e
114b 00        nop     
114c 63        ld      h,e
114d 00        nop     
114e 62        ld      h,d
114f 00        nop     
1150 62        ld      h,d
1151 00        nop     
1152 61        ld      h,c
1153 00        nop     
1154 60        ld      h,b
1155 00        nop     
1156 60        ld      h,b
1157 00        nop     
1158 5f        ld      e,a
1159 00        nop     
115a 5f        ld      e,a
115b 00        nop     
115c 5e        ld      e,(hl)
115d 00        nop     
115e 5e        ld      e,(hl)
115f 00        nop     
1160 5d        ld      e,l
1161 00        nop     
1162 5d        ld      e,l
1163 00        nop     
1164 5c        ld      e,h
1165 00        nop     
1166 5c        ld      e,h
1167 00        nop     
1168 5b        ld      e,e
1169 00        nop     
116a 5a        ld      e,d
116b 00        nop     
116c 5a        ld      e,d
116d 00        nop     
116e 5a        ld      e,d
116f 00        nop     
1170 59        ld      e,c
1171 00        nop     
1172 59        ld      e,c
1173 00        nop     
1174 58        ld      e,b
1175 00        nop     
1176 58        ld      e,b
1177 00        nop     
1178 57        ld      d,a
1179 00        nop     
117a 57        ld      d,a
117b 00        nop     
117c 56        ld      d,(hl)
117d 00        nop     
117e 56        ld      d,(hl)
117f 00        nop     
1180 55        ld      d,l
1181 00        nop     
1182 55        ld      d,l
1183 00        nop     
1184 54        ld      d,h
1185 00        nop     
1186 54        ld      d,h
1187 00        nop     
1188 54        ld      d,h
1189 00        nop     
118a 53        ld      d,e
118b 00        nop     
118c 53        ld      d,e
118d 00        nop     
118e 52        ld      d,d
118f 00        nop     
1190 52        ld      d,d
1191 00        nop     
1192 52        ld      d,d
1193 00        nop     
1194 51        ld      d,c
1195 00        nop     
1196 51        ld      d,c
1197 00        nop     
1198 50        ld      d,b
1199 00        nop     
119a 50        ld      d,b
119b 00        nop     
119c 50        ld      d,b
119d 00        nop     
119e 4f        ld      c,a
119f 00        nop     
11a0 4f        ld      c,a
11a1 00        nop     
11a2 4e        ld      c,(hl)
11a3 00        nop     
11a4 4e        ld      c,(hl)
11a5 00        nop     
11a6 4e        ld      c,(hl)
11a7 00        nop     
11a8 4d        ld      c,l
11a9 00        nop     
11aa 4d        ld      c,l
11ab 00        nop     
11ac 4d        ld      c,l
11ad 00        nop     
11ae 4c        ld      c,h
11af 00        nop     
11b0 4c        ld      c,h
11b1 00        nop     
11b2 4c        ld      c,h
11b3 00        nop     
11b4 4b        ld      c,e
11b5 00        nop     
11b6 4b        ld      c,e
11b7 00        nop     
11b8 4a        ld      c,d
11b9 00        nop     
11ba 4a        ld      c,d
11bb 00        nop     
11bc 4a        ld      c,d
11bd 00        nop     
11be 49        ld      c,c
11bf 00        nop     
11c0 49        ld      c,c
11c1 00        nop     
11c2 49        ld      c,c
11c3 00        nop     
11c4 48        ld      c,b
11c5 00        nop     
11c6 48        ld      c,b
11c7 00        nop     
11c8 48        ld      c,b
11c9 00        nop     
11ca 48        ld      c,b
11cb 00        nop     
11cc 47        ld      b,a
11cd 00        nop     
11ce 47        ld      b,a
11cf 00        nop     
11d0 47        ld      b,a
11d1 00        nop     
11d2 46        ld      b,(hl)
11d3 00        nop     
11d4 46        ld      b,(hl)
11d5 00        nop     
11d6 46        ld      b,(hl)
11d7 00        nop     
11d8 46        ld      b,(hl)
11d9 00        nop     
11da 45        ld      b,l
11db 00        nop     
11dc 45        ld      b,l
11dd 00        nop     
11de 45        ld      b,l
11df 00        nop     
11e0 44        ld      b,h
11e1 00        nop     
11e2 44        ld      b,h
11e3 00        nop     
11e4 44        ld      b,h
11e5 00        nop     
11e6 43        ld      b,e
11e7 00        nop     
11e8 43        ld      b,e
11e9 00        nop     
11ea 43        ld      b,e
11eb 00        nop     
11ec 43        ld      b,e
11ed 00        nop     
11ee 42        ld      b,d
11ef 00        nop     
11f0 42        ld      b,d
11f1 00        nop     
11f2 42        ld      b,d
11f3 00        nop     
11f4 42        ld      b,d
11f5 00        nop     
11f6 41        ld      b,c
11f7 00        nop     
11f8 41        ld      b,c
11f9 00        nop     
11fa 41        ld      b,c
11fb 00        nop     
11fc 40        ld      b,b
11fd 00        nop     
11fe 40        ld      b,b
11ff 00        nop     
1200 40        ld      b,b
1201 00        nop     
1202 40        ld      b,b
1203 00        nop     
1204 40        ld      b,b
1205 00        nop     
1206 3f        ccf     
1207 00        nop     
1208 54        ld      d,h
1209 00        nop     
120a 53        ld      d,e
120b 00        nop     
120c 53        ld      d,e
120d 00        nop     
120e 52        ld      d,d
120f 00        nop     
1210 52        ld      d,d
1211 00        nop     
1212 52        ld      d,d
1213 00        nop     
1214 51        ld      d,c
1215 00        nop     
1216 51        ld      d,c
1217 00        nop     
1218 50        ld      d,b
1219 00        nop     
121a 50        ld      d,b
121b 00        nop     
121c 50        ld      d,b
121d 00        nop     
121e 4f        ld      c,a
121f 00        nop     
1220 4f        ld      c,a
1221 00        nop     
1222 4e        ld      c,(hl)
1223 00        nop     
1224 4e        ld      c,(hl)
1225 00        nop     
1226 4e        ld      c,(hl)
1227 00        nop     
1228 4d        ld      c,l
1229 00        nop     
122a 4d        ld      c,l
122b 00        nop     
122c 4d        ld      c,l
122d 00        nop     
122e 4c        ld      c,h
122f 00        nop     
1230 4c        ld      c,h
1231 00        nop     
1232 4c        ld      c,h
1233 00        nop     
1234 4b        ld      c,e
1235 00        nop     
1236 4b        ld      c,e
1237 00        nop     
1238 4a        ld      c,d
1239 00        nop     
123a 4a        ld      c,d
123b 00        nop     
123c 4a        ld      c,d
123d 00        nop     
123e 49        ld      c,c
123f 00        nop     
1240 49        ld      c,c
1241 00        nop     
1242 49        ld      c,c
1243 00        nop     
1244 48        ld      c,b
1245 00        nop     
1246 48        ld      c,b
1247 00        nop     
1248 48        ld      c,b
1249 00        nop     
124a 48        ld      c,b
124b 00        nop     
124c 47        ld      b,a
124d 00        nop     
124e 47        ld      b,a
124f 00        nop     
1250 47        ld      b,a
1251 00        nop     
1252 46        ld      b,(hl)
1253 00        nop     
1254 46        ld      b,(hl)
1255 00        nop     
1256 46        ld      b,(hl)
1257 00        nop     
1258 46        ld      b,(hl)
1259 00        nop     
125a 45        ld      b,l
125b 00        nop     
125c 45        ld      b,l
125d 00        nop     
125e 45        ld      b,l
125f 00        nop     
1260 44        ld      b,h
1261 00        nop     
1262 44        ld      b,h
1263 00        nop     
1264 44        ld      b,h
1265 00        nop     
1266 43        ld      b,e
1267 00        nop     
1268 43        ld      b,e
1269 00        nop     
126a 43        ld      b,e
126b 00        nop     
126c 43        ld      b,e
126d 00        nop     
126e 42        ld      b,d
126f 00        nop     
1270 42        ld      b,d
1271 00        nop     
1272 42        ld      b,d
1273 00        nop     
1274 42        ld      b,d
1275 00        nop     
1276 41        ld      b,c
1277 00        nop     
1278 41        ld      b,c
1279 00        nop     
127a 41        ld      b,c
127b 00        nop     
127c 40        ld      b,b
127d 00        nop     
127e 40        ld      b,b
127f 00        nop     
1280 010101    ld      bc,0101h
1283 010101    ld      bc,0101h
1286 010101    ld      bc,0101h
1289 010101    ld      bc,0101h
128c 010101    ld      bc,0101h
128f 010101    ld      bc,0101h
1292 010101    ld      bc,0101h
1295 010101    ld      bc,0101h
1298 010101    ld      bc,0101h
129b 010101    ld      bc,0101h
129e 010101    ld      bc,0101h
12a1 010101    ld      bc,0101h
12a4 010101    ld      bc,0101h
12a7 010101    ld      bc,0101h
12aa 010101    ld      bc,0101h
12ad 010101    ld      bc,0101h
12b0 010101    ld      bc,0101h
12b3 010101    ld      bc,0101h
12b6 010101    ld      bc,0101h
12b9 010101    ld      bc,0101h
12bc 010101    ld      bc,0101h
12bf 010101    ld      bc,0101h
12c2 010101    ld      bc,0101h
12c5 010101    ld      bc,0101h
12c8 010101    ld      bc,0101h
12cb 010101    ld      bc,0101h
12ce 010101    ld      bc,0101h
12d1 010101    ld      bc,0101h
12d4 010101    ld      bc,0101h
12d7 010101    ld      bc,0101h
12da 010101    ld      bc,0101h
12dd 010101    ld      bc,0101h
12e0 010101    ld      bc,0101h
12e3 010101    ld      bc,0101h
12e6 010101    ld      bc,0101h
12e9 010101    ld      bc,0101h
12ec 010101    ld      bc,0101h
12ef 010101    ld      bc,0101h
12f2 010101    ld      bc,0101h
12f5 010101    ld      bc,0101h
12f8 010101    ld      bc,0101h
12fb 010101    ld      bc,0101h
12fe 010101    ld      bc,0101h
1301 010101    ld      bc,0101h
1304 010101    ld      bc,0101h
1307 010101    ld      bc,0101h
130a 010101    ld      bc,0101h
130d 010101    ld      bc,0101h
1310 010101    ld      bc,0101h
1313 010101    ld      bc,0101h
1316 010101    ld      bc,0101h
1319 010101    ld      bc,0101h
131c 010101    ld      bc,0101h
131f 010101    ld      bc,0101h
1322 010101    ld      bc,0101h
1325 010101    ld      bc,0101h
1328 010101    ld      bc,0101h
132b 010101    ld      bc,0101h
132e 010101    ld      bc,0101h
1331 010101    ld      bc,0101h
1334 010101    ld      bc,0101h
1337 010101    ld      bc,0101h
133a 010101    ld      bc,0101h
133d 010101    ld      bc,0101h
1340 010101    ld      bc,0101h
1343 010101    ld      bc,0101h
1346 010101    ld      bc,0101h
1349 010101    ld      bc,0101h
134c 010101    ld      bc,0101h
134f 010101    ld      bc,0101h
1352 010101    ld      bc,0101h
1355 010101    ld      bc,0101h
1358 010101    ld      bc,0101h
135b 010101    ld      bc,0101h
135e 010101    ld      bc,0101h
1361 010101    ld      bc,0101h
1364 010101    ld      bc,0101h
1367 010101    ld      bc,0101h
136a 010101    ld      bc,0101h
136d 010101    ld      bc,0101h
1370 010101    ld      bc,0101h
1373 010101    ld      bc,0101h
1376 010101    ld      bc,0101h
1379 010101    ld      bc,0101h
137c 010101    ld      bc,0101h
137f 010101    ld      bc,0101h
1382 010101    ld      bc,0101h
1385 010101    ld      bc,0101h
1388 010101    ld      bc,0101h
138b 010101    ld      bc,0101h
138e 010101    ld      bc,0101h
1391 010101    ld      bc,0101h
1394 010101    ld      bc,0101h
1397 010101    ld      bc,0101h
139a 010101    ld      bc,0101h
139d 010101    ld      bc,0101h
13a0 010101    ld      bc,0101h
13a3 010101    ld      bc,0101h
13a6 010101    ld      bc,0101h
13a9 010101    ld      bc,0101h
13ac 010101    ld      bc,0101h
13af 010101    ld      bc,0101h
13b2 010101    ld      bc,0101h
13b5 010101    ld      bc,0101h
13b8 010101    ld      bc,0101h
13bb 010101    ld      bc,0101h
13be 010101    ld      bc,0101h
13c1 010101    ld      bc,0101h
13c4 010101    ld      bc,0101h
13c7 010101    ld      bc,0101h
13ca 010101    ld      bc,0101h
13cd 010101    ld      bc,0101h
13d0 010101    ld      bc,0101h
13d3 010101    ld      bc,0101h
13d6 010101    ld      bc,0101h
13d9 010101    ld      bc,0101h
13dc 010101    ld      bc,0101h
13df 010101    ld      bc,0101h
13e2 010101    ld      bc,0101h
13e5 010101    ld      bc,0101h
13e8 010101    ld      bc,0101h
13eb 010101    ld      bc,0101h
13ee 010101    ld      bc,0101h
13f1 010101    ld      bc,0101h
13f4 010101    ld      bc,0101h
13f7 010101    ld      bc,0101h
13fa 010101    ld      bc,0101h
13fd 010101    ld      bc,0101h
1400 010101    ld      bc,0101h
1403 010101    ld      bc,0101h
1406 010101    ld      bc,0101h
1409 010101    ld      bc,0101h
140c 010101    ld      bc,0101h
140f 010101    ld      bc,0101h
1412 010101    ld      bc,0101h
1415 010101    ld      bc,0101h
1418 010101    ld      bc,0101h
141b 010101    ld      bc,0101h
141e 010101    ld      bc,0101h
1421 010101    ld      bc,0101h
1424 010101    ld      bc,0101h
1427 010101    ld      bc,0101h
142a 010101    ld      bc,0101h
142d 010101    ld      bc,0101h
1430 010101    ld      bc,0101h
1433 010101    ld      bc,0101h
1436 010101    ld      bc,0101h
1439 010101    ld      bc,0101h
143c 010101    ld      bc,0101h
143f 010101    ld      bc,0101h
1442 010101    ld      bc,0101h
1445 010101    ld      bc,0101h
1448 010101    ld      bc,0101h
144b 010101    ld      bc,0101h
144e 010101    ld      bc,0101h
1451 010101    ld      bc,0101h
1454 010101    ld      bc,0101h
1457 010101    ld      bc,0101h
145a 010101    ld      bc,0101h
145d 010101    ld      bc,0101h
1460 010101    ld      bc,0101h
1463 010101    ld      bc,0101h
1466 010101    ld      bc,0101h
1469 010101    ld      bc,0101h
146c 010101    ld      bc,0101h
146f 010101    ld      bc,0101h
1472 010101    ld      bc,0101h
1475 010101    ld      bc,0101h
1478 010101    ld      bc,0101h
147b 010101    ld      bc,0101h
147e 010101    ld      bc,0101h
1481 010101    ld      bc,0101h
1484 010101    ld      bc,0101h
1487 010101    ld      bc,0101h
148a 010101    ld      bc,0101h
148d 010101    ld      bc,0101h
1490 010101    ld      bc,0101h
1493 010101    ld      bc,0101h
1496 010101    ld      bc,0101h
1499 010101    ld      bc,0101h
149c 010101    ld      bc,0101h
149f 010101    ld      bc,0101h
14a2 010101    ld      bc,0101h
14a5 010101    ld      bc,0101h
14a8 010101    ld      bc,0101h
14ab 010101    ld      bc,0101h
14ae 010101    ld      bc,0101h
14b1 010101    ld      bc,0101h
14b4 010101    ld      bc,0101h
14b7 010101    ld      bc,0101h
14ba 010101    ld      bc,0101h
14bd 010101    ld      bc,0101h
14c0 010101    ld      bc,0101h
14c3 010101    ld      bc,0101h
14c6 010101    ld      bc,0101h
14c9 010101    ld      bc,0101h
14cc 010101    ld      bc,0101h
14cf 010101    ld      bc,0101h
14d2 010101    ld      bc,0101h
14d5 010101    ld      bc,0101h
14d8 010101    ld      bc,0101h
14db 010101    ld      bc,0101h
14de 010101    ld      bc,0101h
14e1 010101    ld      bc,0101h
14e4 010101    ld      bc,0101h
14e7 010101    ld      bc,0101h
14ea 010101    ld      bc,0101h
14ed 010101    ld      bc,0101h
14f0 010101    ld      bc,0101h
14f3 010101    ld      bc,0101h
14f6 010101    ld      bc,0101h
14f9 010101    ld      bc,0101h
14fc 010101    ld      bc,0101h
14ff 010101    ld      bc,0101h
1502 010101    ld      bc,0101h
1505 010101    ld      bc,0101h
1508 010101    ld      bc,0101h
150b 010101    ld      bc,0101h
150e 010101    ld      bc,0101h
1511 010101    ld      bc,0101h
1514 010101    ld      bc,0101h
1517 010101    ld      bc,0101h
151a 010101    ld      bc,0101h
151d 010101    ld      bc,0101h
1520 010101    ld      bc,0101h
1523 010101    ld      bc,0101h
1526 010101    ld      bc,0101h
1529 010101    ld      bc,0101h
152c 010101    ld      bc,0101h
152f 010101    ld      bc,0101h
1532 010101    ld      bc,0101h
1535 010101    ld      bc,0101h
1538 010101    ld      bc,0101h
153b 010101    ld      bc,0101h
153e 010101    ld      bc,0101h
1541 010101    ld      bc,0101h
1544 010101    ld      bc,0101h
1547 010101    ld      bc,0101h
154a 010101    ld      bc,0101h
154d 010101    ld      bc,0101h
1550 010101    ld      bc,0101h
1553 010101    ld      bc,0101h
1556 010101    ld      bc,0101h
1559 010101    ld      bc,0101h
155c 010101    ld      bc,0101h
155f 010101    ld      bc,0101h
1562 010101    ld      bc,0101h
1565 010101    ld      bc,0101h
1568 010101    ld      bc,0101h
156b 010101    ld      bc,0101h
156e 010101    ld      bc,0101h
1571 010101    ld      bc,0101h
1574 010101    ld      bc,0101h
1577 010101    ld      bc,0101h
157a 010101    ld      bc,0101h
157d 010101    ld      bc,0101h
1580 010101    ld      bc,0101h
1583 010101    ld      bc,0101h
1586 010101    ld      bc,0101h
1589 010101    ld      bc,0101h
158c 010101    ld      bc,0101h
158f 010101    ld      bc,0101h
1592 010101    ld      bc,0101h
1595 010101    ld      bc,0101h
1598 010101    ld      bc,0101h
159b 010101    ld      bc,0101h
159e 010101    ld      bc,0101h
15a1 010101    ld      bc,0101h
15a4 010101    ld      bc,0101h
15a7 010101    ld      bc,0101h
15aa 010101    ld      bc,0101h
15ad 010101    ld      bc,0101h
15b0 010101    ld      bc,0101h
15b3 010101    ld      bc,0101h
15b6 010101    ld      bc,0101h
15b9 010101    ld      bc,0101h
15bc 010101    ld      bc,0101h
15bf 010101    ld      bc,0101h
15c2 010101    ld      bc,0101h
15c5 010101    ld      bc,0101h
15c8 010101    ld      bc,0101h
15cb 010101    ld      bc,0101h
15ce 010101    ld      bc,0101h
15d1 010101    ld      bc,0101h
15d4 010101    ld      bc,0101h
15d7 010101    ld      bc,0101h
15da 010101    ld      bc,0101h
15dd 010101    ld      bc,0101h
15e0 010101    ld      bc,0101h
15e3 010101    ld      bc,0101h
15e6 010101    ld      bc,0101h
15e9 010101    ld      bc,0101h
15ec 010101    ld      bc,0101h
15ef 010101    ld      bc,0101h
15f2 010101    ld      bc,0101h
15f5 010101    ld      bc,0101h
15f8 010101    ld      bc,0101h
15fb 010101    ld      bc,0101h
15fe 010101    ld      bc,0101h
1601 010101    ld      bc,0101h
1604 010101    ld      bc,0101h
1607 010101    ld      bc,0101h
160a 010101    ld      bc,0101h
160d 010101    ld      bc,0101h
1610 010101    ld      bc,0101h
1613 010101    ld      bc,0101h
1616 010101    ld      bc,0101h
1619 010101    ld      bc,0101h
161c 010101    ld      bc,0101h
161f 010101    ld      bc,0101h
1622 010101    ld      bc,0101h
1625 010101    ld      bc,0101h
1628 010101    ld      bc,0101h
162b 010101    ld      bc,0101h
162e 010101    ld      bc,0101h
1631 010101    ld      bc,0101h
1634 010101    ld      bc,0101h
1637 010101    ld      bc,0101h
163a 010101    ld      bc,0101h
163d 010101    ld      bc,0101h
1640 010101    ld      bc,0101h
1643 010101    ld      bc,0101h
1646 010101    ld      bc,0101h
1649 010101    ld      bc,0101h
164c 010101    ld      bc,0101h
164f 010101    ld      bc,0101h
1652 010101    ld      bc,0101h
1655 010101    ld      bc,0101h
1658 010101    ld      bc,0101h
165b 010101    ld      bc,0101h
165e 010101    ld      bc,0101h
1661 010101    ld      bc,0101h
1664 010101    ld      bc,0101h
1667 010101    ld      bc,0101h
166a 010101    ld      bc,0101h
166d 010101    ld      bc,0101h
1670 010101    ld      bc,0101h
1673 010101    ld      bc,0101h
1676 010101    ld      bc,0101h
1679 010101    ld      bc,0101h
167c 010101    ld      bc,0101h
167f 010101    ld      bc,0101h
1682 010101    ld      bc,0101h
1685 010101    ld      bc,0101h
1688 010101    ld      bc,0101h
168b 010101    ld      bc,0101h
168e 010101    ld      bc,0101h
1691 010101    ld      bc,0101h
1694 010101    ld      bc,0101h
1697 010101    ld      bc,0101h
169a 010101    ld      bc,0101h
169d 010101    ld      bc,0101h
16a0 010101    ld      bc,0101h
16a3 010101    ld      bc,0101h
16a6 010101    ld      bc,0101h
16a9 010101    ld      bc,0101h
16ac 010101    ld      bc,0101h
16af 010101    ld      bc,0101h
16b2 010101    ld      bc,0101h
16b5 010101    ld      bc,0101h
16b8 010101    ld      bc,0101h
16bb 010101    ld      bc,0101h
16be 010101    ld      bc,0101h
16c1 010101    ld      bc,0101h
16c4 010101    ld      bc,0101h
16c7 010101    ld      bc,0101h
16ca 010101    ld      bc,0101h
16cd 010101    ld      bc,0101h
16d0 010101    ld      bc,0101h
16d3 010101    ld      bc,0101h
16d6 010101    ld      bc,0101h
16d9 010101    ld      bc,0101h
16dc 010101    ld      bc,0101h
16df 010101    ld      bc,0101h
16e2 010101    ld      bc,0101h
16e5 010101    ld      bc,0101h
16e8 010101    ld      bc,0101h
16eb 010101    ld      bc,0101h
16ee 010101    ld      bc,0101h
16f1 010101    ld      bc,0101h
16f4 010101    ld      bc,0101h
16f7 010101    ld      bc,0101h
16fa 010101    ld      bc,0101h
16fd 010101    ld      bc,0101h
1700 010101    ld      bc,0101h
1703 010101    ld      bc,0101h
1706 010101    ld      bc,0101h
1709 010101    ld      bc,0101h
170c 010101    ld      bc,0101h
170f 010101    ld      bc,0101h
1712 010101    ld      bc,0101h
1715 010101    ld      bc,0101h
1718 010101    ld      bc,0101h
171b 010101    ld      bc,0101h
171e 010101    ld      bc,0101h
1721 010101    ld      bc,0101h
1724 010101    ld      bc,0101h
1727 010101    ld      bc,0101h
172a 010101    ld      bc,0101h
172d 010101    ld      bc,0101h
1730 010101    ld      bc,0101h
1733 010101    ld      bc,0101h
1736 010101    ld      bc,0101h
1739 010101    ld      bc,0101h
173c 010101    ld      bc,0101h
173f 010101    ld      bc,0101h
1742 010101    ld      bc,0101h
1745 010101    ld      bc,0101h
1748 010101    ld      bc,0101h
174b 010101    ld      bc,0101h
174e 010101    ld      bc,0101h
1751 010101    ld      bc,0101h
1754 010101    ld      bc,0101h
1757 010101    ld      bc,0101h
175a 010101    ld      bc,0101h
175d 010101    ld      bc,0101h
1760 010101    ld      bc,0101h
1763 010101    ld      bc,0101h
1766 010101    ld      bc,0101h
1769 010101    ld      bc,0101h
176c 010101    ld      bc,0101h
176f 010101    ld      bc,0101h
1772 010101    ld      bc,0101h
1775 010101    ld      bc,0101h
1778 010101    ld      bc,0101h
177b 010101    ld      bc,0101h
177e 010101    ld      bc,0101h
1781 010101    ld      bc,0101h
1784 010101    ld      bc,0101h
1787 010101    ld      bc,0101h
178a 010101    ld      bc,0101h
178d 010101    ld      bc,0101h
1790 010101    ld      bc,0101h
1793 010101    ld      bc,0101h
1796 010101    ld      bc,0101h
1799 010101    ld      bc,0101h
179c 010101    ld      bc,0101h
179f 010101    ld      bc,0101h
17a2 010101    ld      bc,0101h
17a5 010101    ld      bc,0101h
17a8 010101    ld      bc,0101h
17ab 010101    ld      bc,0101h
17ae 010101    ld      bc,0101h
17b1 010101    ld      bc,0101h
17b4 010101    ld      bc,0101h
17b7 010101    ld      bc,0101h
17ba 010101    ld      bc,0101h
17bd 010101    ld      bc,0101h
17c0 010101    ld      bc,0101h
17c3 010101    ld      bc,0101h
17c6 010101    ld      bc,0101h
17c9 010101    ld      bc,0101h
17cc 010101    ld      bc,0101h
17cf 010101    ld      bc,0101h
17d2 010101    ld      bc,0101h
17d5 010101    ld      bc,0101h
17d8 010101    ld      bc,0101h
17db 010101    ld      bc,0101h
17de 010101    ld      bc,0101h
17e1 010101    ld      bc,0101h
17e4 010101    ld      bc,0101h
17e7 010101    ld      bc,0101h
17ea 010101    ld      bc,0101h
17ed 010101    ld      bc,0101h
17f0 010101    ld      bc,0101h
17f3 010101    ld      bc,0101h
17f6 010101    ld      bc,0101h
17f9 010101    ld      bc,0101h
17fc 010101    ld      bc,0101h
17ff 010101    ld      bc,0101h
1802 010101    ld      bc,0101h
1805 010101    ld      bc,0101h
1808 010101    ld      bc,0101h
180b 010101    ld      bc,0101h
180e 010101    ld      bc,0101h
1811 010101    ld      bc,0101h
1814 010101    ld      bc,0101h
1817 010101    ld      bc,0101h
181a 010101    ld      bc,0101h
181d 010101    ld      bc,0101h
1820 010101    ld      bc,0101h
1823 010101    ld      bc,0101h
1826 010101    ld      bc,0101h
1829 010101    ld      bc,0101h
182c 010101    ld      bc,0101h
182f 010101    ld      bc,0101h
1832 010101    ld      bc,0101h
1835 010101    ld      bc,0101h
1838 010101    ld      bc,0101h
183b 010101    ld      bc,0101h
183e 010101    ld      bc,0101h
1841 010101    ld      bc,0101h
1844 010101    ld      bc,0101h
1847 010101    ld      bc,0101h
184a 010101    ld      bc,0101h
184d 010101    ld      bc,0101h
1850 010101    ld      bc,0101h
1853 010101    ld      bc,0101h
1856 010101    ld      bc,0101h
1859 010101    ld      bc,0101h
185c 010101    ld      bc,0101h
185f 010101    ld      bc,0101h
1862 010101    ld      bc,0101h
1865 010101    ld      bc,0101h
1868 010101    ld      bc,0101h
186b 010101    ld      bc,0101h
186e 010101    ld      bc,0101h
1871 010101    ld      bc,0101h
1874 010101    ld      bc,0101h
1877 010101    ld      bc,0101h
187a 010101    ld      bc,0101h
187d 010101    ld      bc,0101h
1880 010101    ld      bc,0101h
1883 010101    ld      bc,0101h
1886 010101    ld      bc,0101h
1889 010101    ld      bc,0101h
188c 010101    ld      bc,0101h
188f 010101    ld      bc,0101h
1892 010101    ld      bc,0101h
1895 010101    ld      bc,0101h
1898 010101    ld      bc,0101h
189b 010101    ld      bc,0101h
189e 010101    ld      bc,0101h
18a1 010101    ld      bc,0101h
18a4 010101    ld      bc,0101h
18a7 010101    ld      bc,0101h
18aa 010101    ld      bc,0101h
18ad 010101    ld      bc,0101h
18b0 010101    ld      bc,0101h
18b3 010101    ld      bc,0101h
18b6 010101    ld      bc,0101h
18b9 010101    ld      bc,0101h
18bc 010101    ld      bc,0101h
18bf 010101    ld      bc,0101h
18c2 010101    ld      bc,0101h
18c5 010101    ld      bc,0101h
18c8 010101    ld      bc,0101h
18cb 010101    ld      bc,0101h
18ce 010101    ld      bc,0101h
18d1 010101    ld      bc,0101h
18d4 010101    ld      bc,0101h
18d7 010101    ld      bc,0101h
18da 010101    ld      bc,0101h
18dd 010101    ld      bc,0101h
18e0 010101    ld      bc,0101h
18e3 010101    ld      bc,0101h
18e6 010101    ld      bc,0101h
18e9 010101    ld      bc,0101h
18ec 010101    ld      bc,0101h
18ef 010101    ld      bc,0101h
18f2 010101    ld      bc,0101h
18f5 010101    ld      bc,0101h
18f8 010101    ld      bc,0101h
18fb 010101    ld      bc,0101h
18fe 010101    ld      bc,0101h
1901 010101    ld      bc,0101h
1904 010101    ld      bc,0101h
1907 010101    ld      bc,0101h
190a 010101    ld      bc,0101h
190d 010101    ld      bc,0101h
1910 010101    ld      bc,0101h
1913 010101    ld      bc,0101h
1916 010101    ld      bc,0101h
1919 010101    ld      bc,0101h
191c 010101    ld      bc,0101h
191f 010101    ld      bc,0101h
1922 010101    ld      bc,0101h
1925 010101    ld      bc,0101h
1928 010101    ld      bc,0101h
192b 010101    ld      bc,0101h
192e 010101    ld      bc,0101h
1931 010101    ld      bc,0101h
1934 010101    ld      bc,0101h
1937 010101    ld      bc,0101h
193a 010101    ld      bc,0101h
193d 010101    ld      bc,0101h
1940 010101    ld      bc,0101h
1943 010101    ld      bc,0101h
1946 010101    ld      bc,0101h
1949 010101    ld      bc,0101h
194c 010101    ld      bc,0101h
194f 010101    ld      bc,0101h
1952 010101    ld      bc,0101h
1955 010101    ld      bc,0101h
1958 010101    ld      bc,0101h
195b 010101    ld      bc,0101h
195e 010101    ld      bc,0101h
1961 010101    ld      bc,0101h
1964 010101    ld      bc,0101h
1967 010101    ld      bc,0101h
196a 010101    ld      bc,0101h
196d 010101    ld      bc,0101h
1970 010101    ld      bc,0101h
1973 010101    ld      bc,0101h
1976 010101    ld      bc,0101h
1979 010101    ld      bc,0101h
197c 010101    ld      bc,0101h
197f 010101    ld      bc,0101h
1982 010101    ld      bc,0101h
1985 010101    ld      bc,0101h
1988 010101    ld      bc,0101h
198b 010101    ld      bc,0101h
198e 010101    ld      bc,0101h
1991 010101    ld      bc,0101h
1994 010101    ld      bc,0101h
1997 010101    ld      bc,0101h
199a 010101    ld      bc,0101h
199d 010101    ld      bc,0101h
19a0 010101    ld      bc,0101h
19a3 010101    ld      bc,0101h
19a6 010101    ld      bc,0101h
19a9 010101    ld      bc,0101h
19ac 010101    ld      bc,0101h
19af 010101    ld      bc,0101h
19b2 010101    ld      bc,0101h
19b5 010101    ld      bc,0101h
19b8 010101    ld      bc,0101h
19bb 010101    ld      bc,0101h
19be 010101    ld      bc,0101h
19c1 010101    ld      bc,0101h
19c4 010101    ld      bc,0101h
19c7 010101    ld      bc,0101h
19ca 010101    ld      bc,0101h
19cd 010101    ld      bc,0101h
19d0 010101    ld      bc,0101h
19d3 010101    ld      bc,0101h
19d6 010101    ld      bc,0101h
19d9 010101    ld      bc,0101h
19dc 010101    ld      bc,0101h
19df 010101    ld      bc,0101h
19e2 010101    ld      bc,0101h
19e5 010101    ld      bc,0101h
19e8 010101    ld      bc,0101h
19eb 010101    ld      bc,0101h
19ee 010101    ld      bc,0101h
19f1 010101    ld      bc,0101h
19f4 010101    ld      bc,0101h
19f7 010101    ld      bc,0101h
19fa 010101    ld      bc,0101h
19fd 010101    ld      bc,0101h
1a00 010101    ld      bc,0101h
1a03 010101    ld      bc,0101h
1a06 010101    ld      bc,0101h
1a09 010101    ld      bc,0101h
1a0c 010101    ld      bc,0101h
1a0f 010101    ld      bc,0101h
1a12 010101    ld      bc,0101h
1a15 010101    ld      bc,0101h
1a18 010101    ld      bc,0101h
1a1b 010101    ld      bc,0101h
1a1e 010101    ld      bc,0101h
1a21 010101    ld      bc,0101h
1a24 010101    ld      bc,0101h
1a27 010101    ld      bc,0101h
1a2a 010101    ld      bc,0101h
1a2d 010101    ld      bc,0101h
1a30 010101    ld      bc,0101h
1a33 010101    ld      bc,0101h
1a36 010101    ld      bc,0101h
1a39 010101    ld      bc,0101h
1a3c 010101    ld      bc,0101h
1a3f 010101    ld      bc,0101h
1a42 010101    ld      bc,0101h
1a45 010101    ld      bc,0101h
1a48 010101    ld      bc,0101h
1a4b 010101    ld      bc,0101h
1a4e 010101    ld      bc,0101h
1a51 010101    ld      bc,0101h
1a54 010101    ld      bc,0101h
1a57 010101    ld      bc,0101h
1a5a 010101    ld      bc,0101h
1a5d 010101    ld      bc,0101h
1a60 010101    ld      bc,0101h
1a63 010101    ld      bc,0101h
1a66 010101    ld      bc,0101h
1a69 010101    ld      bc,0101h
1a6c 010101    ld      bc,0101h
1a6f 010101    ld      bc,0101h
1a72 010101    ld      bc,0101h
1a75 010101    ld      bc,0101h
1a78 010101    ld      bc,0101h
1a7b 010101    ld      bc,0101h
1a7e 010101    ld      bc,0101h
1a81 010101    ld      bc,0101h
1a84 010101    ld      bc,0101h
1a87 010101    ld      bc,0101h
1a8a 010101    ld      bc,0101h
1a8d 010101    ld      bc,0101h
1a90 010101    ld      bc,0101h
1a93 010101    ld      bc,0101h
1a96 010101    ld      bc,0101h
1a99 010101    ld      bc,0101h
1a9c 010101    ld      bc,0101h
1a9f 010101    ld      bc,0101h
1aa2 010101    ld      bc,0101h
1aa5 010101    ld      bc,0101h
1aa8 010101    ld      bc,0101h
1aab 010101    ld      bc,0101h
1aae 010101    ld      bc,0101h
1ab1 010101    ld      bc,0101h
1ab4 010101    ld      bc,0101h
1ab7 010101    ld      bc,0101h
1aba 010101    ld      bc,0101h
1abd 010101    ld      bc,0101h
1ac0 010101    ld      bc,0101h
1ac3 010101    ld      bc,0101h
1ac6 010101    ld      bc,0101h
1ac9 010101    ld      bc,0101h
1acc 010101    ld      bc,0101h
1acf 010101    ld      bc,0101h
1ad2 010101    ld      bc,0101h
1ad5 010101    ld      bc,0101h
1ad8 010101    ld      bc,0101h
1adb 010101    ld      bc,0101h
1ade 010101    ld      bc,0101h
1ae1 010101    ld      bc,0101h
1ae4 010101    ld      bc,0101h
1ae7 010101    ld      bc,0101h
1aea 010101    ld      bc,0101h
1aed 010101    ld      bc,0101h
1af0 010101    ld      bc,0101h
1af3 010101    ld      bc,0101h
1af6 010101    ld      bc,0101h
1af9 010101    ld      bc,0101h
1afc 010101    ld      bc,0101h
1aff 010101    ld      bc,0101h
1b02 010101    ld      bc,0101h
1b05 010101    ld      bc,0101h
1b08 010101    ld      bc,0101h
1b0b 010101    ld      bc,0101h
1b0e 010101    ld      bc,0101h
1b11 010101    ld      bc,0101h
1b14 010101    ld      bc,0101h
1b17 010101    ld      bc,0101h
1b1a 010101    ld      bc,0101h
1b1d 010101    ld      bc,0101h
1b20 010101    ld      bc,0101h
1b23 010101    ld      bc,0101h
1b26 010101    ld      bc,0101h
1b29 010101    ld      bc,0101h
1b2c 010101    ld      bc,0101h
1b2f 010101    ld      bc,0101h
1b32 010101    ld      bc,0101h
1b35 010101    ld      bc,0101h
1b38 010101    ld      bc,0101h
1b3b 010101    ld      bc,0101h
1b3e 010101    ld      bc,0101h
1b41 010101    ld      bc,0101h
1b44 010101    ld      bc,0101h
1b47 010101    ld      bc,0101h
1b4a 010101    ld      bc,0101h
1b4d 010101    ld      bc,0101h
1b50 010101    ld      bc,0101h
1b53 010101    ld      bc,0101h
1b56 010101    ld      bc,0101h
1b59 010101    ld      bc,0101h
1b5c 010101    ld      bc,0101h
1b5f 010101    ld      bc,0101h
1b62 010101    ld      bc,0101h
1b65 010101    ld      bc,0101h
1b68 010101    ld      bc,0101h
1b6b 010101    ld      bc,0101h
1b6e 010101    ld      bc,0101h
1b71 010101    ld      bc,0101h
1b74 010101    ld      bc,0101h
1b77 010101    ld      bc,0101h
1b7a 010101    ld      bc,0101h
1b7d 010101    ld      bc,0101h
1b80 010101    ld      bc,0101h
1b83 010101    ld      bc,0101h
1b86 010101    ld      bc,0101h
1b89 010101    ld      bc,0101h
1b8c 010101    ld      bc,0101h
1b8f 010101    ld      bc,0101h
1b92 010101    ld      bc,0101h
1b95 010101    ld      bc,0101h
1b98 010101    ld      bc,0101h
1b9b 010101    ld      bc,0101h
1b9e 010101    ld      bc,0101h
1ba1 010101    ld      bc,0101h
1ba4 010101    ld      bc,0101h
1ba7 010101    ld      bc,0101h
1baa 010101    ld      bc,0101h
1bad 010101    ld      bc,0101h
1bb0 010101    ld      bc,0101h
1bb3 010101    ld      bc,0101h
1bb6 010101    ld      bc,0101h
1bb9 010101    ld      bc,0101h
1bbc 010101    ld      bc,0101h
1bbf 010101    ld      bc,0101h
1bc2 010101    ld      bc,0101h
1bc5 010101    ld      bc,0101h
1bc8 010101    ld      bc,0101h
1bcb 010101    ld      bc,0101h
1bce 010101    ld      bc,0101h
1bd1 010101    ld      bc,0101h
1bd4 010101    ld      bc,0101h
1bd7 010101    ld      bc,0101h
1bda 010101    ld      bc,0101h
1bdd 010101    ld      bc,0101h
1be0 010101    ld      bc,0101h
1be3 010101    ld      bc,0101h
1be6 010101    ld      bc,0101h
1be9 010101    ld      bc,0101h
1bec 010101    ld      bc,0101h
1bef 010101    ld      bc,0101h
1bf2 010101    ld      bc,0101h
1bf5 010101    ld      bc,0101h
1bf8 010101    ld      bc,0101h
1bfb 010101    ld      bc,0101h
1bfe 010101    ld      bc,0101h
1c01 010101    ld      bc,0101h
1c04 010101    ld      bc,0101h
1c07 010101    ld      bc,0101h
1c0a 010101    ld      bc,0101h
1c0d 010101    ld      bc,0101h
1c10 010101    ld      bc,0101h
1c13 010101    ld      bc,0101h
1c16 010101    ld      bc,0101h
1c19 010101    ld      bc,0101h
1c1c 010101    ld      bc,0101h
1c1f 010101    ld      bc,0101h
1c22 010101    ld      bc,0101h
1c25 010101    ld      bc,0101h
1c28 010101    ld      bc,0101h
1c2b 010101    ld      bc,0101h
1c2e 010101    ld      bc,0101h
1c31 010101    ld      bc,0101h
1c34 010101    ld      bc,0101h
1c37 010101    ld      bc,0101h
1c3a 010101    ld      bc,0101h
1c3d 010101    ld      bc,0101h
1c40 010101    ld      bc,0101h
1c43 010101    ld      bc,0101h
1c46 010101    ld      bc,0101h
1c49 010101    ld      bc,0101h
1c4c 010101    ld      bc,0101h
1c4f 010101    ld      bc,0101h
1c52 010101    ld      bc,0101h
1c55 010101    ld      bc,0101h
1c58 010101    ld      bc,0101h
1c5b 010101    ld      bc,0101h
1c5e 010101    ld      bc,0101h
1c61 010101    ld      bc,0101h
1c64 010101    ld      bc,0101h
1c67 010101    ld      bc,0101h
1c6a 010101    ld      bc,0101h
1c6d 010101    ld      bc,0101h
1c70 010101    ld      bc,0101h
1c73 010101    ld      bc,0101h
1c76 010101    ld      bc,0101h
1c79 010101    ld      bc,0101h
1c7c 010101    ld      bc,0101h
1c7f 010101    ld      bc,0101h
1c82 010101    ld      bc,0101h
1c85 010101    ld      bc,0101h
1c88 010101    ld      bc,0101h
1c8b 010101    ld      bc,0101h
1c8e 010101    ld      bc,0101h
1c91 010101    ld      bc,0101h
1c94 010101    ld      bc,0101h
1c97 010101    ld      bc,0101h
1c9a 010101    ld      bc,0101h
1c9d 010101    ld      bc,0101h
1ca0 010101    ld      bc,0101h
1ca3 010101    ld      bc,0101h
1ca6 010101    ld      bc,0101h
1ca9 010101    ld      bc,0101h
1cac 010101    ld      bc,0101h
1caf 010101    ld      bc,0101h
1cb2 010101    ld      bc,0101h
1cb5 010101    ld      bc,0101h
1cb8 010101    ld      bc,0101h
1cbb 010101    ld      bc,0101h
1cbe 010101    ld      bc,0101h
1cc1 010101    ld      bc,0101h
1cc4 010101    ld      bc,0101h
1cc7 010101    ld      bc,0101h
1cca 010101    ld      bc,0101h
1ccd 010101    ld      bc,0101h
1cd0 010101    ld      bc,0101h
1cd3 010101    ld      bc,0101h
1cd6 010101    ld      bc,0101h
1cd9 010101    ld      bc,0101h
1cdc 010101    ld      bc,0101h
1cdf 010101    ld      bc,0101h
1ce2 010101    ld      bc,0101h
1ce5 010101    ld      bc,0101h
1ce8 010101    ld      bc,0101h
1ceb 010101    ld      bc,0101h
1cee 010101    ld      bc,0101h
1cf1 010101    ld      bc,0101h
1cf4 010101    ld      bc,0101h
1cf7 010101    ld      bc,0101h
1cfa 010101    ld      bc,0101h
1cfd 010101    ld      bc,0101h
1d00 010101    ld      bc,0101h
1d03 010101    ld      bc,0101h
1d06 010101    ld      bc,0101h
1d09 010101    ld      bc,0101h
1d0c 010101    ld      bc,0101h
1d0f 010101    ld      bc,0101h
1d12 010101    ld      bc,0101h
1d15 010101    ld      bc,0101h
1d18 010101    ld      bc,0101h
1d1b 010101    ld      bc,0101h
1d1e 010101    ld      bc,0101h
1d21 010101    ld      bc,0101h
1d24 010101    ld      bc,0101h
1d27 010101    ld      bc,0101h
1d2a 010101    ld      bc,0101h
1d2d 010101    ld      bc,0101h
1d30 010101    ld      bc,0101h
1d33 010101    ld      bc,0101h
1d36 010101    ld      bc,0101h
1d39 010101    ld      bc,0101h
1d3c 010101    ld      bc,0101h
1d3f 010101    ld      bc,0101h
1d42 010101    ld      bc,0101h
1d45 010101    ld      bc,0101h
1d48 010101    ld      bc,0101h
1d4b 010101    ld      bc,0101h
1d4e 010101    ld      bc,0101h
1d51 010101    ld      bc,0101h
1d54 010101    ld      bc,0101h
1d57 010101    ld      bc,0101h
1d5a 010101    ld      bc,0101h
1d5d 010101    ld      bc,0101h
1d60 010101    ld      bc,0101h
1d63 010101    ld      bc,0101h
1d66 010101    ld      bc,0101h
1d69 010101    ld      bc,0101h
1d6c 010101    ld      bc,0101h
1d6f 010101    ld      bc,0101h
1d72 010101    ld      bc,0101h
1d75 010101    ld      bc,0101h
1d78 010101    ld      bc,0101h
1d7b 010101    ld      bc,0101h
1d7e 010101    ld      bc,0101h
1d81 010101    ld      bc,0101h
1d84 010101    ld      bc,0101h
1d87 010101    ld      bc,0101h
1d8a 010101    ld      bc,0101h
1d8d 010101    ld      bc,0101h
1d90 010101    ld      bc,0101h
1d93 010101    ld      bc,0101h
1d96 010101    ld      bc,0101h
1d99 010101    ld      bc,0101h
1d9c 010101    ld      bc,0101h
1d9f 010101    ld      bc,0101h
1da2 010101    ld      bc,0101h
1da5 010101    ld      bc,0101h
1da8 010101    ld      bc,0101h
1dab 010101    ld      bc,0101h
1dae 010101    ld      bc,0101h
1db1 010101    ld      bc,0101h
1db4 010101    ld      bc,0101h
1db7 010101    ld      bc,0101h
1dba 010101    ld      bc,0101h
1dbd 010101    ld      bc,0101h
1dc0 010101    ld      bc,0101h
1dc3 010101    ld      bc,0101h
1dc6 010101    ld      bc,0101h
1dc9 010101    ld      bc,0101h
1dcc 010101    ld      bc,0101h
1dcf 010101    ld      bc,0101h
1dd2 010101    ld      bc,0101h
1dd5 010101    ld      bc,0101h
1dd8 010101    ld      bc,0101h
1ddb 010101    ld      bc,0101h
1dde 010101    ld      bc,0101h
1de1 010101    ld      bc,0101h
1de4 010101    ld      bc,0101h
1de7 010101    ld      bc,0101h
1dea 010101    ld      bc,0101h
1ded 010101    ld      bc,0101h
1df0 010101    ld      bc,0101h
1df3 010101    ld      bc,0101h
1df6 010101    ld      bc,0101h
1df9 010101    ld      bc,0101h
1dfc 010101    ld      bc,0101h
1dff 010101    ld      bc,0101h
1e02 010101    ld      bc,0101h
1e05 010101    ld      bc,0101h
1e08 010101    ld      bc,0101h
1e0b 010101    ld      bc,0101h
1e0e 010101    ld      bc,0101h
1e11 010101    ld      bc,0101h
1e14 010101    ld      bc,0101h
1e17 010101    ld      bc,0101h
1e1a 010101    ld      bc,0101h
1e1d 010101    ld      bc,0101h
1e20 010101    ld      bc,0101h
1e23 010101    ld      bc,0101h
1e26 010101    ld      bc,0101h
1e29 010101    ld      bc,0101h
1e2c 010101    ld      bc,0101h
1e2f 010101    ld      bc,0101h
1e32 010101    ld      bc,0101h
1e35 010101    ld      bc,0101h
1e38 010101    ld      bc,0101h
1e3b 010101    ld      bc,0101h
1e3e 010101    ld      bc,0101h
1e41 010101    ld      bc,0101h
1e44 010101    ld      bc,0101h
1e47 010101    ld      bc,0101h
1e4a 010101    ld      bc,0101h
1e4d 010101    ld      bc,0101h
1e50 010101    ld      bc,0101h
1e53 010101    ld      bc,0101h
1e56 010101    ld      bc,0101h
1e59 010101    ld      bc,0101h
1e5c 010101    ld      bc,0101h
1e5f 010101    ld      bc,0101h
1e62 010101    ld      bc,0101h
1e65 010101    ld      bc,0101h
1e68 010101    ld      bc,0101h
1e6b 010101    ld      bc,0101h
1e6e 010101    ld      bc,0101h
1e71 010101    ld      bc,0101h
1e74 010101    ld      bc,0101h
1e77 010101    ld      bc,0101h
1e7a 010101    ld      bc,0101h
1e7d 010101    ld      bc,0101h
1e80 010101    ld      bc,0101h
1e83 010101    ld      bc,0101h
1e86 010101    ld      bc,0101h
1e89 010101    ld      bc,0101h
1e8c 010101    ld      bc,0101h
1e8f 010101    ld      bc,0101h
1e92 010101    ld      bc,0101h
1e95 010101    ld      bc,0101h
1e98 010101    ld      bc,0101h
1e9b 010101    ld      bc,0101h
1e9e 010101    ld      bc,0101h
1ea1 010101    ld      bc,0101h
1ea4 010101    ld      bc,0101h
1ea7 010101    ld      bc,0101h
1eaa 010101    ld      bc,0101h
1ead 010101    ld      bc,0101h
1eb0 010101    ld      bc,0101h
1eb3 010101    ld      bc,0101h
1eb6 010101    ld      bc,0101h
1eb9 010101    ld      bc,0101h
1ebc 010101    ld      bc,0101h
1ebf 010101    ld      bc,0101h
1ec2 010101    ld      bc,0101h
1ec5 010101    ld      bc,0101h
1ec8 010101    ld      bc,0101h
1ecb 010101    ld      bc,0101h
1ece 010101    ld      bc,0101h
1ed1 010101    ld      bc,0101h
1ed4 010101    ld      bc,0101h
1ed7 010101    ld      bc,0101h
1eda 010101    ld      bc,0101h
1edd 010101    ld      bc,0101h
1ee0 010101    ld      bc,0101h
1ee3 010101    ld      bc,0101h
1ee6 010101    ld      bc,0101h
1ee9 010101    ld      bc,0101h
1eec 010101    ld      bc,0101h
1eef 010101    ld      bc,0101h
1ef2 010101    ld      bc,0101h
1ef5 010101    ld      bc,0101h
1ef8 010101    ld      bc,0101h
1efb 010101    ld      bc,0101h
1efe 010101    ld      bc,0101h
1f01 010101    ld      bc,0101h
1f04 010101    ld      bc,0101h
1f07 010101    ld      bc,0101h
1f0a 010101    ld      bc,0101h
1f0d 010101    ld      bc,0101h
1f10 010101    ld      bc,0101h
1f13 010101    ld      bc,0101h
1f16 010101    ld      bc,0101h
1f19 010101    ld      bc,0101h
1f1c 010101    ld      bc,0101h
1f1f 010101    ld      bc,0101h
1f22 010101    ld      bc,0101h
1f25 010101    ld      bc,0101h
1f28 010101    ld      bc,0101h
1f2b 010101    ld      bc,0101h
1f2e 010101    ld      bc,0101h
1f31 010101    ld      bc,0101h
1f34 010101    ld      bc,0101h
1f37 010101    ld      bc,0101h
1f3a 010101    ld      bc,0101h
1f3d 010101    ld      bc,0101h
1f40 010101    ld      bc,0101h
1f43 010101    ld      bc,0101h
1f46 010101    ld      bc,0101h
1f49 010101    ld      bc,0101h
1f4c 010101    ld      bc,0101h
1f4f 010101    ld      bc,0101h
1f52 010101    ld      bc,0101h
1f55 010101    ld      bc,0101h
1f58 010101    ld      bc,0101h
1f5b 010101    ld      bc,0101h
1f5e 010101    ld      bc,0101h
1f61 010101    ld      bc,0101h
1f64 010101    ld      bc,0101h
1f67 010101    ld      bc,0101h
1f6a 010101    ld      bc,0101h
1f6d 010101    ld      bc,0101h
1f70 010101    ld      bc,0101h
1f73 010101    ld      bc,0101h
1f76 010101    ld      bc,0101h
1f79 010101    ld      bc,0101h
1f7c 010101    ld      bc,0101h
1f7f 010101    ld      bc,0101h
1f82 010101    ld      bc,0101h
1f85 010101    ld      bc,0101h
1f88 010101    ld      bc,0101h
1f8b 010101    ld      bc,0101h
1f8e 010101    ld      bc,0101h
1f91 010101    ld      bc,0101h
1f94 010101    ld      bc,0101h
1f97 010101    ld      bc,0101h
1f9a 010101    ld      bc,0101h
1f9d 010101    ld      bc,0101h
1fa0 010101    ld      bc,0101h
1fa3 010101    ld      bc,0101h
1fa6 010101    ld      bc,0101h
1fa9 010101    ld      bc,0101h
1fac 010101    ld      bc,0101h
1faf 010101    ld      bc,0101h
1fb2 010101    ld      bc,0101h
1fb5 010101    ld      bc,0101h
1fb8 010101    ld      bc,0101h
1fbb 010101    ld      bc,0101h
1fbe 010101    ld      bc,0101h
1fc1 010101    ld      bc,0101h
1fc4 010101    ld      bc,0101h
1fc7 010101    ld      bc,0101h
1fca 010101    ld      bc,0101h
1fcd 010101    ld      bc,0101h
1fd0 010101    ld      bc,0101h
1fd3 010101    ld      bc,0101h
1fd6 010101    ld      bc,0101h
1fd9 010101    ld      bc,0101h
1fdc 010101    ld      bc,0101h
1fdf 010101    ld      bc,0101h
1fe2 010101    ld      bc,0101h
1fe5 010101    ld      bc,0101h
1fe8 010101    ld      bc,0101h
1feb 010101    ld      bc,0101h
1fee 010101    ld      bc,0101h
1ff1 010101    ld      bc,0101h
1ff4 010101    ld      bc,0101h
1ff7 010101    ld      bc,0101h
1ffa 010101    ld      bc,0101h
1ffd 010101    ld      bc,0101h
