.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040188
    /* 30988 80040188 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3098C 8004018C 0A002392 */  lbu        $v1, 0xA($s1)
    /* 30990 80040190 01000224 */  addiu      $v0, $zero, 0x1
    /* 30994 80040194 1D006214 */  bne        $v1, $v0, .L8004020C
    /* 30998 80040198 00000000 */   nop
.size func_80040188, . - func_80040188
