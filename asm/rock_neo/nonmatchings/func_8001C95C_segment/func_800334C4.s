.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800334C4
    /* 23CC4 800334C4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 23CC8 800334C8 3000B0AF */  sw         $s0, 0x30($sp)
    /* 23CCC 800334CC 21808000 */  addu       $s0, $a0, $zero
    /* 23CD0 800334D0 54000426 */  addiu      $a0, $s0, 0x54
    /* 23CD4 800334D4 3400BFAF */  sw         $ra, 0x34($sp)
    /* 23CD8 800334D8 0EEE010C */  jal        RotMatrixYXZ
    /* 23CDC 800334DC 1000A527 */   addiu     $a1, $sp, 0x10
    /* 23CE0 800334E0 21200002 */  addu       $a0, $s0, $zero
    /* 23CE4 800334E4 66CD000C */  jal        func_80033598
    /* 23CE8 800334E8 1000A527 */   addiu     $a1, $sp, 0x10
    /* 23CEC 800334EC 3400BF8F */  lw         $ra, 0x34($sp)
    /* 23CF0 800334F0 3000B08F */  lw         $s0, 0x30($sp)
    /* 23CF4 800334F4 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 23CF8 800334F8 0800E003 */  jr         $ra
    /* 23CFC 800334FC 00000000 */   nop
.size func_800334C4, . - func_800334C4
