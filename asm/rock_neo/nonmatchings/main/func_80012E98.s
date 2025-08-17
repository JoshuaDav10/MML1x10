.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80012E98
    /* 3698 80012E98 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 369C 80012E9C 2080033C */  lui        $v1, %hi(D_801F8300)
    /* 36A0 80012EA0 0083638C */  lw         $v1, %lo(D_801F8300)($v1)
    /* 36A4 80012EA4 01000224 */  addiu      $v0, $zero, 0x1
    /* 36A8 80012EA8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 36AC 80012EAC 020064A4 */  sh         $a0, 0x2($v1)
    /* 36B0 80012EB0 00FF043C */  lui        $a0, (0xFF000000 >> 16)
    /* 36B4 80012EB4 CCFF010C */  jal        ChangeTh
    /* 36B8 80012EB8 000062A4 */   sh        $v0, 0x0($v1)
    /* 36BC 80012EBC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 36C0 80012EC0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 36C4 80012EC4 0800E003 */  jr         $ra
    /* 36C8 80012EC8 00000000 */   nop
.size func_80012E98, . - func_80012E98
