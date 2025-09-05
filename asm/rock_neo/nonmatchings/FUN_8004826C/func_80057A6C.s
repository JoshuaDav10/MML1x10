.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057A6C
    /* 4826C 80057A6C 0980013C */  lui        $at, %hi(D_8008CBA4)
    /* 48270 80057A70 21082200 */  addu       $at, $at, $v0
    /* 48274 80057A74 A4CB238C */  lw         $v1, %lo(D_8008CBA4)($at)
    /* 48278 80057A78 01000224 */  addiu      $v0, $zero, 0x1
    /* 4827C 80057A7C 6C0003AE */  sw         $v1, 0x6C($s0)
    /* 48280 80057A80 1400BF8F */  lw         $ra, 0x14($sp)
    /* 48284 80057A84 1000B08F */  lw         $s0, 0x10($sp)
    /* 48288 80057A88 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4828C 80057A8C 0800E003 */  jr         $ra
    /* 48290 80057A90 00000000 */   nop
.size func_80057A6C, . - func_80057A6C
