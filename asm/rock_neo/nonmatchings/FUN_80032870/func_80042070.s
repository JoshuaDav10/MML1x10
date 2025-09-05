.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80042070
    /* 32870 80042070 5508010C */  jal        func_80042154
    /* 32874 80042074 00000000 */   nop
    /* 32878 80042078 21080108 */  j          .L80042084
    /* 3287C 8004207C 21404000 */   addu      $t0, $v0, $zero
  .L80042080:
    /* 32880 80042080 B40080A4 */  sh         $zero, 0xB4($a0)
  .L80042084:
    /* 32884 80042084 1000BF8F */  lw         $ra, 0x10($sp)
    /* 32888 80042088 21100001 */  addu       $v0, $t0, $zero
    /* 3288C 8004208C 0800E003 */  jr         $ra
    /* 32890 80042090 1800BD27 */   addiu     $sp, $sp, 0x18
.size func_80042070, . - func_80042070
