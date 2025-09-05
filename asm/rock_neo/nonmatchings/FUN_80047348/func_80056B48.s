.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80056B48
    /* 47348 80056B48 01000524 */  addiu      $a1, $zero, 0x1
    /* 4734C 80056B4C 0268000C */  jal        Sound_call
    /* 47350 80056B50 21300000 */   addu      $a2, $zero, $zero
  .L80056B54:
    /* 47354 80056B54 4411828F */  lw         $v0, %gp_rel(D_800989A8)($gp)
    /* 47358 80056B58 00000000 */  nop
    /* 4735C 80056B5C 0600422C */  sltiu      $v0, $v0, 0x6
    /* 47360 80056B60 22004014 */  bnez       $v0, .L80056BEC
    /* 47364 80056B64 00000000 */   nop
    /* 47368 80056B68 CA8F010C */  jal        Game_logo_kill
    /* 4736C 80056B6C 21200000 */   addu      $a0, $zero, $zero
    /* 47370 80056B70 CA8F010C */  jal        Game_logo_kill
    /* 47374 80056B74 01000424 */   addiu     $a0, $zero, 0x1
    /* 47378 80056B78 1C004016 */  bnez       $s2, .L80056BEC
    /* 4737C 80056B7C 00000000 */   nop
    /* 47380 80056B80 38118393 */  lbu        $v1, %gp_rel(D_8009899C)($gp)
.size func_80056B48, . - func_80056B48
    /* 47384 80056B84 00000000 */  nop
