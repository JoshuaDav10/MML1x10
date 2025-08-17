.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800122D0
    /* 2AD0 800122D0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2AD4 800122D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2AD8 800122D8 21808000 */  addu       $s0, $a0, $zero
    /* 2ADC 800122DC 10000524 */  addiu      $a1, $zero, 0x10
    /* 2AE0 800122E0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2AE4 800122E4 D448000C */  jal        func_80012350
    /* 2AE8 800122E8 21300000 */   addu      $a2, $zero, $zero
    /* 2AEC 800122EC 21200002 */  addu       $a0, $s0, $zero
    /* 2AF0 800122F0 40000524 */  addiu      $a1, $zero, 0x40
    /* 2AF4 800122F4 D448000C */  jal        func_80012350
    /* 2AF8 800122F8 01000624 */   addiu     $a2, $zero, 0x1
    /* 2AFC 800122FC 21200002 */  addu       $a0, $s0, $zero
    /* 2B00 80012300 80000524 */  addiu      $a1, $zero, 0x80
    /* 2B04 80012304 D448000C */  jal        func_80012350
    /* 2B08 80012308 02000624 */   addiu     $a2, $zero, 0x2
    /* 2B0C 8001230C 21200002 */  addu       $a0, $s0, $zero
    /* 2B10 80012310 20000524 */  addiu      $a1, $zero, 0x20
    /* 2B14 80012314 D448000C */  jal        func_80012350
    /* 2B18 80012318 03000624 */   addiu     $a2, $zero, 0x3
    /* 2B1C 8001231C 21200002 */  addu       $a0, $s0, $zero
    /* 2B20 80012320 00040524 */  addiu      $a1, $zero, 0x400
    /* 2B24 80012324 D448000C */  jal        func_80012350
    /* 2B28 80012328 04000624 */   addiu     $a2, $zero, 0x4
    /* 2B2C 8001232C 21200002 */  addu       $a0, $s0, $zero
    /* 2B30 80012330 00080524 */  addiu      $a1, $zero, 0x800
    /* 2B34 80012334 D448000C */  jal        func_80012350
    /* 2B38 80012338 05000624 */   addiu     $a2, $zero, 0x5
    /* 2B3C 8001233C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2B40 80012340 1000B08F */  lw         $s0, 0x10($sp)
    /* 2B44 80012344 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2B48 80012348 0800E003 */  jr         $ra
    /* 2B4C 8001234C 00000000 */   nop
.size func_800122D0, . - func_800122D0
