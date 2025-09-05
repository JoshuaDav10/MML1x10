.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057BC0
    /* 483C0 80057BC0 21280000 */  addu       $a1, $zero, $zero
    /* 483C4 80057BC4 9012848F */  lw         $a0, %gp_rel(D_80098AF4)($gp)
    /* 483C8 80057BC8 21300000 */  addu       $a2, $zero, $zero
    /* 483CC 80057BCC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 483D0 80057BD0 A50C010C */  jal        func_80043294
    /* 483D4 80057BD4 23200400 */   negu      $a0, $a0
.size func_80057BC0, . - func_80057BC0
