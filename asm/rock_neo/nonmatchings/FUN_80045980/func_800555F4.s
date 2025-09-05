.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800555F4
    /* 45DF4 800555F4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 45DF8 800555F8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 45DFC 800555FC 21808000 */  addu       $s0, $a0, $zero
    /* 45E00 80055600 1400BFAF */  sw         $ra, 0x14($sp)
    /* 45E04 80055604 1400048E */  lw         $a0, 0x14($s0)
    /* 45E08 80055608 0451010C */  jal        func_80054410
    /* 45E0C 8005560C 01008424 */   addiu     $a0, $a0, 0x1
    /* 45E10 80055610 10000396 */  lhu        $v1, 0x10($s0)
    /* 45E14 80055614 1400048E */  lw         $a0, 0x14($s0)
    /* 45E18 80055618 21186200 */  addu       $v1, $v1, $v0
    /* 45E1C 8005561C 03008424 */  addiu      $a0, $a0, 0x3
    /* 45E20 80055620 100003A6 */  sh         $v1, 0x10($s0)
    /* 45E24 80055624 140004AE */  sw         $a0, 0x14($s0)
    /* 45E28 80055628 1400BF8F */  lw         $ra, 0x14($sp)
    /* 45E2C 8005562C 1000B08F */  lw         $s0, 0x10($sp)
    /* 45E30 80055630 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 45E34 80055634 0800E003 */  jr         $ra
    /* 45E38 80055638 00000000 */   nop
.size func_800555F4, . - func_800555F4
