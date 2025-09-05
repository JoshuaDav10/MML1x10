.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058D30
    /* 49530 80058D30 21082200 */  addu       $at, $at, $v0
    /* 49534 80058D34 A4BA228C */  lw         $v0, -0x455C($at)
    /* 49538 80058D38 54630108 */  j          .L80058D50
    /* 4953C 80058D3C 140002AE */   sw        $v0, 0x14($s0)
  .L80058D40:
    /* 49540 80058D40 0980023C */  lui        $v0, %hi(D_8008CE58)
    /* 49544 80058D44 58CE428C */  lw         $v0, %lo(D_8008CE58)($v0)
    /* 49548 80058D48 00000000 */  nop
    /* 4954C 80058D4C 140002AE */  sw         $v0, 0x14($s0)
  .L80058D50:
    /* 49550 80058D50 1400BF8F */  lw         $ra, 0x14($sp)
    /* 49554 80058D54 1000B08F */  lw         $s0, 0x10($sp)
    /* 49558 80058D58 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4955C 80058D5C 0800E003 */  jr         $ra
.size func_80058D30, . - func_80058D30
