.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057B70
    /* 48370 80057B70 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 48374 80057B74 1000B0AF */  sw         $s0, 0x10($sp)
    /* 48378 80057B78 21808000 */  addu       $s0, $a0, $zero
    /* 4837C 80057B7C 21280000 */  addu       $a1, $zero, $zero
    /* 48380 80057B80 9012848F */  lw         $a0, %gp_rel(D_80098AF4)($gp)
    /* 48384 80057B84 1400BFAF */  sw         $ra, 0x14($sp)
    /* 48388 80057B88 A50C010C */  jal        func_80043294
    /* 4838C 80057B8C 21300000 */   addu      $a2, $zero, $zero
    /* 48390 80057B90 6C00038E */  lw         $v1, 0x6C($s0)
    /* 48394 80057B94 01000224 */  addiu      $v0, $zero, 0x1
    /* 48398 80057B98 01006324 */  addiu      $v1, $v1, 0x1
    /* 4839C 80057B9C 6C0003AE */  sw         $v1, 0x6C($s0)
    /* 483A0 80057BA0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 483A4 80057BA4 1000B08F */  lw         $s0, 0x10($sp)
    /* 483A8 80057BA8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 483AC 80057BAC 0800E003 */  jr         $ra
    /* 483B0 80057BB0 00000000 */   nop
.size func_80057B70, . - func_80057B70
