.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057B88
    /* 48388 80057B88 A50C010C */  jal        func_80043294
    /* 4838C 80057B8C 21300000 */   addu      $a2, $zero, $zero
    /* 48390 80057B90 6C00038E */  lw         $v1, 0x6C($s0)
    /* 48394 80057B94 01000224 */  addiu      $v0, $zero, 0x1
    /* 48398 80057B98 01006324 */  addiu      $v1, $v1, 0x1
    /* 4839C 80057B9C 6C0003AE */  sw         $v1, 0x6C($s0)
.size func_80057B88, . - func_80057B88
