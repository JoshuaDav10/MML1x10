.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80012F78
    /* 3778 80012F78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 377C 80012F7C 01000224 */  addiu      $v0, $zero, 0x1
    /* 3780 80012F80 F40884AF */  sw         $a0, %gp_rel(D_80098158)($gp)
    /* 3784 80012F84 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3788 80012F88 740182AF */  sw         $v0, %gp_rel(D_800979D8)($gp)
    /* 378C 80012F8C CCFF010C */  jal        ChangeTh
    /* 3790 80012F90 00FF043C */   lui       $a0, (0xFF000000 >> 16)
    /* 3794 80012F94 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3798 80012F98 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 379C 80012F9C 0800E003 */  jr         $ra
    /* 37A0 80012FA0 00000000 */   nop
.size func_80012F78, . - func_80012F78
