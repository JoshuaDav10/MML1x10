.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001215C
    /* 295C 8001215C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2960 80012160 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2964 80012164 21808000 */  addu       $s0, $a0, $zero
    /* 2968 80012168 70000426 */  addiu      $a0, $s0, 0x70
    /* 296C 8001216C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2970 80012170 4DF5010C */  jal        ClearOTagR
    /* 2974 80012174 08000524 */   addiu     $a1, $zero, 0x8
    /* 2978 80012178 01000224 */  addiu      $v0, $zero, 0x1
    /* 297C 8001217C 0A0000A6 */  sh         $zero, 0xA($s0)
    /* 2980 80012180 2A0000A2 */  sb         $zero, 0x2A($s0)
    /* 2984 80012184 2B0000A2 */  sb         $zero, 0x2B($s0)
    /* 2988 80012188 2C0002A2 */  sb         $v0, 0x2C($s0)
    /* 298C 8001218C 2D0000A2 */  sb         $zero, 0x2D($s0)
    /* 2990 80012190 2E0000A2 */  sb         $zero, 0x2E($s0)
    /* 2994 80012194 2F0000A2 */  sb         $zero, 0x2F($s0)
    /* 2998 80012198 1400BF8F */  lw         $ra, 0x14($sp)
    /* 299C 8001219C 1000B08F */  lw         $s0, 0x10($sp)
    /* 29A0 800121A0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 29A4 800121A4 0800E003 */  jr         $ra
    /* 29A8 800121A8 00000000 */   nop
.size func_8001215C, . - func_8001215C
