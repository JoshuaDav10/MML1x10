.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800546B0
    /* 44EB0 800546B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 44EB4 800546B4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 44EB8 800546B8 21808000 */  addu       $s0, $a0, $zero
    /* 44EBC 800546BC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 44EC0 800546C0 6C00048E */  lw         $a0, 0x6C($s0)
    /* 44EC4 800546C4 0451010C */  jal        func_80054410
    /* 44EC8 800546C8 01008424 */   addiu     $a0, $a0, 0x1
    /* 44ECC 800546CC 21184000 */  addu       $v1, $v0, $zero
    /* 44ED0 800546D0 6C00048E */  lw         $a0, 0x6C($s0)
    /* 44ED4 800546D4 01000224 */  addiu      $v0, $zero, 0x1
    /* 44ED8 800546D8 3F0003A2 */  sb         $v1, 0x3F($s0)
    /* 44EDC 800546DC FF006330 */  andi       $v1, $v1, 0xFF
    /* 44EE0 800546E0 040003A6 */  sh         $v1, 0x4($s0)
    /* 44EE4 800546E4 03008424 */  addiu      $a0, $a0, 0x3
    /* 44EE8 800546E8 6C0004AE */  sw         $a0, 0x6C($s0)
    /* 44EEC 800546EC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 44EF0 800546F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 44EF4 800546F4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 44EF8 800546F8 0800E003 */  jr         $ra
    /* 44EFC 800546FC 00000000 */   nop
.size func_800546B0, . - func_800546B0
