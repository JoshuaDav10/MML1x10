.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057BB4
    /* 483B4 80057BB4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 483B8 80057BB8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 483BC 80057BBC 21808000 */  addu       $s0, $a0, $zero
    /* 483C0 80057BC0 21280000 */  addu       $a1, $zero, $zero
    /* 483C4 80057BC4 9012848F */  lw         $a0, %gp_rel(D_80098AF4)($gp)
    /* 483C8 80057BC8 21300000 */  addu       $a2, $zero, $zero
    /* 483CC 80057BCC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 483D0 80057BD0 A50C010C */  jal        func_80043294
    /* 483D4 80057BD4 23200400 */   negu      $a0, $a0
    /* 483D8 80057BD8 6C00038E */  lw         $v1, 0x6C($s0)
    /* 483DC 80057BDC 01000224 */  addiu      $v0, $zero, 0x1
    /* 483E0 80057BE0 01006324 */  addiu      $v1, $v1, 0x1
    /* 483E4 80057BE4 6C0003AE */  sw         $v1, 0x6C($s0)
    /* 483E8 80057BE8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 483EC 80057BEC 1000B08F */  lw         $s0, 0x10($sp)
    /* 483F0 80057BF0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 483F4 80057BF4 0800E003 */  jr         $ra
    /* 483F8 80057BF8 00000000 */   nop
.size func_80057BB4, . - func_80057BB4
