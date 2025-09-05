.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057BD8
    /* 483D8 80057BD8 6C00038E */  lw         $v1, 0x6C($s0)
    /* 483DC 80057BDC 01000224 */  addiu      $v0, $zero, 0x1
    /* 483E0 80057BE0 01006324 */  addiu      $v1, $v1, 0x1
    /* 483E4 80057BE4 6C0003AE */  sw         $v1, 0x6C($s0)
    /* 483E8 80057BE8 1400BF8F */  lw         $ra, 0x14($sp)
.size func_80057BD8, . - func_80057BD8
