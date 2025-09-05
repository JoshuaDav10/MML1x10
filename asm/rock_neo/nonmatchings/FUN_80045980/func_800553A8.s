.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800553A8
    /* 45BA8 800553A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 45BAC 800553AC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 45BB0 800553B0 21808000 */  addu       $s0, $a0, $zero
    /* 45BB4 800553B4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 45BB8 800553B8 6C00048E */  lw         $a0, 0x6C($s0)
    /* 45BBC 800553BC 0451010C */  jal        func_80054410
    /* 45BC0 800553C0 01008424 */   addiu     $a0, $a0, 0x1
    /* 45BC4 800553C4 A376000C */  jal        Sce_flag_on
    /* 45BC8 800553C8 FFFF4430 */   andi      $a0, $v0, 0xFFFF
    /* 45BCC 800553CC 6C00038E */  lw         $v1, 0x6C($s0)
    /* 45BD0 800553D0 01000224 */  addiu      $v0, $zero, 0x1
    /* 45BD4 800553D4 03006324 */  addiu      $v1, $v1, 0x3
    /* 45BD8 800553D8 6C0003AE */  sw         $v1, 0x6C($s0)
    /* 45BDC 800553DC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 45BE0 800553E0 1000B08F */  lw         $s0, 0x10($sp)
    /* 45BE4 800553E4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 45BE8 800553E8 0800E003 */  jr         $ra
    /* 45BEC 800553EC 00000000 */   nop
.size func_800553A8, . - func_800553A8
