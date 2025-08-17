.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002CA54
    /* 1D254 8002CA54 80801000 */  sll        $s0, $s0, 2
    /* 1D258 8002CA58 21280000 */  addu       $a1, $zero, $zero
    /* 1D25C 8002CA5C 21300000 */  addu       $a2, $zero, $zero
    /* 1D260 8002CA60 00002296 */  lhu        $v0, 0x0($s1)
    /* 1D264 8002CA64 0B80013C */  lui        $at, %hi(D_800ACE00)
    /* 1D268 8002CA68 21083000 */  addu       $at, $at, $s0
    /* 1D26C 8002CA6C 00CE22A4 */  sh         $v0, %lo(D_800ACE00)($at)
    /* 1D270 8002CA70 A923010C */  jal        func_80048EA4
    /* 1D274 8002CA74 FFFF0734 */   ori       $a3, $zero, 0xFFFF
    /* 1D278 8002CA78 FF0F4432 */  andi       $a0, $s2, 0xFFF
    /* 1D27C 8002CA7C 83191300 */  sra        $v1, $s3, 6
    /* 1D280 8002CA80 001B0300 */  sll        $v1, $v1, 12
    /* 1D284 8002CA84 0B80013C */  lui        $at, %hi(D_800ACE02)
    /* 1D288 8002CA88 21083000 */  addu       $at, $at, $s0
    /* 1D28C 8002CA8C 02CE22A4 */  sh         $v0, %lo(D_800ACE02)($at)
    /* 1D290 8002CA90 04002596 */  lhu        $a1, 0x4($s1)
    /* 1D294 8002CA94 25208300 */  or         $a0, $a0, $v1
    /* 1D298 8002CA98 0B80013C */  lui        $at, %hi(D_800ACE06)
    /* 1D29C 8002CA9C 21083000 */  addu       $at, $at, $s0
    /* 1D2A0 8002CAA0 06CE24A4 */  sh         $a0, %lo(D_800ACE06)($at)
    /* 1D2A4 8002CAA4 0B80013C */  lui        $at, %hi(D_800ACE04)
    /* 1D2A8 8002CAA8 21083000 */  addu       $at, $at, $s0
    /* 1D2AC 8002CAAC 04CE25A4 */  sh         $a1, %lo(D_800ACE04)($at)
    /* 1D2B0 8002CAB0 06002396 */  lhu        $v1, 0x6($s1)
.size func_8002CA54, . - func_8002CA54
    /* 1D2B4 8002CAB4 00000000 */  nop
