.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054A84
    /* 45284 80054A84 C0008294 */  lhu        $v0, 0xC0($a0)
    /* 45288 80054A88 00000000 */  nop
    /* 4528C 80054A8C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 45290 80054A90 C00082A4 */  sh         $v0, 0xC0($a0)
    /* 45294 80054A94 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 45298 80054A98 80100200 */  sll        $v0, $v0, 2
    /* 4529C 80054A9C 21104400 */  addu       $v0, $v0, $a0
    /* 452A0 80054AA0 4C00428C */  lw         $v0, 0x4C($v0)
    /* 452A4 80054AA4 00000000 */  nop
    /* 452A8 80054AA8 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 452AC 80054AAC 0800E003 */  jr         $ra
    /* 452B0 80054AB0 01000224 */   addiu     $v0, $zero, 0x1
.size func_80054A84, . - func_80054A84
