.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80067350
    /* 57B50 80067350 0101A590 */  lbu        $a1, 0x101($a1)
    /* 57B54 80067354 21104400 */  addu       $v0, $v0, $a0
    /* 57B58 80067358 F3FF6014 */  bnez       $v1, .L80067328
    /* 57B5C 8006735C 000045A0 */   sb        $a1, 0x0($v0)
    /* 57B60 80067360 A0118293 */  lbu        $v0, %gp_rel(D_80098A04)($gp)
    /* 57B64 80067364 0980033C */  lui        $v1, %hi(D_8008D17C)
    /* 57B68 80067368 7CD1638C */  lw         $v1, %lo(D_8008D17C)($v1)
    /* 57B6C 8006736C 0980013C */  lui        $at, %hi(D_8008D029)
    /* 57B70 80067370 21082200 */  addu       $at, $at, $v0
    /* 57B74 80067374 29D02290 */  lbu        $v0, %lo(D_8008D029)($at)
    /* 57B78 80067378 02000424 */  addiu      $a0, $zero, 0x2
    /* 57B7C 8006737C FEFF62A0 */  sb         $v0, -0x2($v1)
.size func_80067350, . - func_80067350
