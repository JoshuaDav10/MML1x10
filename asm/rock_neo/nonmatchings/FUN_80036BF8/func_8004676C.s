.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004676C
    /* 36F6C 8004676C D8FF0224 */  addiu      $v0, $zero, -0x28
    /* 36F70 80046770 2E0082A4 */  sh         $v0, 0x2E($a0)
    /* 36F74 80046774 08008290 */  lbu        $v0, 0x8($a0)
    /* 36F78 80046778 05000324 */  addiu      $v1, $zero, 0x5
    /* 36F7C 8004677C 340083A4 */  sh         $v1, 0x34($a0)
    /* 36F80 80046780 01004224 */  addiu      $v0, $v0, 0x1
    /* 36F84 80046784 0800E003 */  jr         $ra
    /* 36F88 80046788 080082A0 */   sb        $v0, 0x8($a0)
.size func_8004676C, . - func_8004676C
