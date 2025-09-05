.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058BD0
    /* 493D0 80058BD0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 493D4 80058BD4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 493D8 80058BD8 25186200 */  or         $v1, $v1, $v0
    /* 493DC 80058BDC F41183AF */  sw         $v1, %gp_rel(Moji_flag)($gp)
    /* 493E0 80058BE0 FD620108 */  j          .L80058BF4
    /* 493E4 80058BE4 80000224 */   addiu     $v0, $zero, 0x80
  .L80058BE8:
    /* 493E8 80058BE8 FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 493EC 80058BEC 0400A2A4 */  sh         $v0, 0x4($a1)
  .L80058BF0:
    /* 493F0 80058BF0 80000224 */  addiu      $v0, $zero, 0x80
.size func_80058BD0, . - func_80058BD0
