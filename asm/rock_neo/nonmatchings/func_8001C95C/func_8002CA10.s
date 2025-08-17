.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002CA10
    /* 1D210 8002CA10 0A80033C */  lui        $v1, %hi(D_800987D8)
    /* 1D214 8002CA14 D887638C */  lw         $v1, %lo(D_800987D8)($v1)
    /* 1D218 8002CA18 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1D21C 8002CA1C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1D220 8002CA20 21888000 */  addu       $s1, $a0, $zero
    /* 1D224 8002CA24 2000B4AF */  sw         $s4, 0x20($sp)
    /* 1D228 8002CA28 21A0A000 */  addu       $s4, $a1, $zero
    /* 1D22C 8002CA2C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1D230 8002CA30 2198C000 */  addu       $s3, $a2, $zero
    /* 1D234 8002CA34 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1D238 8002CA38 2190E000 */  addu       $s2, $a3, $zero
    /* 1D23C 8002CA3C 2400BFAF */  sw         $ra, 0x24($sp)
    /* 1D240 8002CA40 4000622C */  sltiu      $v0, $v1, 0x40
    /* 1D244 8002CA44 2B004010 */  beqz       $v0, .L8002CAF4
    /* 1D248 8002CA48 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1D24C 8002CA4C 40800300 */  sll        $s0, $v1, 1
    /* 1D250 8002CA50 21800302 */  addu       $s0, $s0, $v1
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
    /* 1D2B4 8002CAB4 00000000 */  nop
    /* 1D2B8 8002CAB8 801B0300 */  sll        $v1, $v1, 14
    /* 1D2BC 8002CABC 25188302 */  or         $v1, $s4, $v1
    /* 1D2C0 8002CAC0 0B80013C */  lui        $at, %hi(D_800ACE08)
    /* 1D2C4 8002CAC4 21083000 */  addu       $at, $at, $s0
    /* 1D2C8 8002CAC8 08CE23A4 */  sh         $v1, %lo(D_800ACE08)($at)
    /* 1D2CC 8002CACC 0A80033C */  lui        $v1, %hi(D_800987D8)
    /* 1D2D0 8002CAD0 D887638C */  lw         $v1, %lo(D_800987D8)($v1)
    /* 1D2D4 8002CAD4 02002496 */  lhu        $a0, 0x2($s1)
    /* 1D2D8 8002CAD8 01006324 */  addiu      $v1, $v1, 0x1
    /* 1D2DC 8002CADC 23104400 */  subu       $v0, $v0, $a0
    /* 1D2E0 8002CAE0 0A80013C */  lui        $at, %hi(D_800987D8)
    /* 1D2E4 8002CAE4 D88723AC */  sw         $v1, %lo(D_800987D8)($at)
    /* 1D2E8 8002CAE8 0B80013C */  lui        $at, %hi(D_800ACE0A)
    /* 1D2EC 8002CAEC 21083000 */  addu       $at, $at, $s0
    /* 1D2F0 8002CAF0 0ACE22A4 */  sh         $v0, %lo(D_800ACE0A)($at)
  .L8002CAF4:
    /* 1D2F4 8002CAF4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 1D2F8 8002CAF8 2000B48F */  lw         $s4, 0x20($sp)
    /* 1D2FC 8002CAFC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1D300 8002CB00 1800B28F */  lw         $s2, 0x18($sp)
    /* 1D304 8002CB04 1400B18F */  lw         $s1, 0x14($sp)
    /* 1D308 8002CB08 1000B08F */  lw         $s0, 0x10($sp)
    /* 1D30C 8002CB0C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1D310 8002CB10 0800E003 */  jr         $ra
    /* 1D314 8002CB14 00000000 */   nop
.size func_8002CA10, . - func_8002CA10
