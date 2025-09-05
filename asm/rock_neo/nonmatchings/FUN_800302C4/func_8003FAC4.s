.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003FAC4
    /* 302C4 8003FAC4 24102202 */  and        $v0, $s1, $v0
    /* 302C8 8003FAC8 AB004010 */  beqz       $v0, .L8003FD78
    /* 302CC 8003FACC 24102602 */   and       $v0, $s1, $a2
    /* 302D0 8003FAD0 A9004610 */  beq        $v0, $a2, .L8003FD78
    /* 302D4 8003FAD4 00000000 */   nop
    /* 302D8 8003FAD8 1104010C */  jal        func_80041044
    /* 302DC 8003FADC 21200002 */   addu      $a0, $s0, $zero
    /* 302E0 8003FAE0 A5004014 */  bnez       $v0, .L8003FD78
    /* 302E4 8003FAE4 21200002 */   addu      $a0, $s0, $zero
    /* 302E8 8003FAE8 DA02010C */  jal        func_80040B68
    /* 302EC 8003FAEC 01000524 */   addiu     $a1, $zero, 0x1
.size func_8003FAC4, . - func_8003FAC4
