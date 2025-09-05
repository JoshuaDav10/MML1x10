.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80064970
    /* 55170 80064970 03000224 */  addiu      $v0, $zero, 0x3
  .L80064974:
    /* 55174 80064974 1000BF8F */  lw         $ra, 0x10($sp)
    /* 55178 80064978 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 5517C 8006497C 0800E003 */  jr         $ra
.size func_80064970, . - func_80064970
