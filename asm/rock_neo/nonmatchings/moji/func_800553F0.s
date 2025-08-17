.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800553F0
    /* 45BF0 800553F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 45BF4 800553F4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 45BF8 800553F8 21808000 */  addu       $s0, $a0, $zero
    /* 45BFC 800553FC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 45C00 80055400 6C00048E */  lw         $a0, 0x6C($s0)
    /* 45C04 80055404 0451010C */  jal        func_80054410
    /* 45C08 80055408 01008424 */   addiu     $a0, $a0, 0x1
    /* 45C0C 8005540C 3477000C */  jal        Sce_flag_off
    /* 45C10 80055410 FFFF4430 */   andi      $a0, $v0, 0xFFFF
    /* 45C14 80055414 6C00038E */  lw         $v1, 0x6C($s0)
    /* 45C18 80055418 01000224 */  addiu      $v0, $zero, 0x1
    /* 45C1C 8005541C 03006324 */  addiu      $v1, $v1, 0x3
    /* 45C20 80055420 6C0003AE */  sw         $v1, 0x6C($s0)
    /* 45C24 80055424 1400BF8F */  lw         $ra, 0x14($sp)
    /* 45C28 80055428 1000B08F */  lw         $s0, 0x10($sp)
    /* 45C2C 8005542C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 45C30 80055430 0800E003 */  jr         $ra
    /* 45C34 80055434 00000000 */   nop
.size func_800553F0, . - func_800553F0
