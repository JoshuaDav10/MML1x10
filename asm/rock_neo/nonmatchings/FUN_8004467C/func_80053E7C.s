.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80053E7C
    /* 4467C 80053E7C D7FF038E */  lw         $v1, -0x29($s0)
    /* 44680 80053E80 97FF0496 */  lhu        $a0, -0x69($s0)
    /* 44684 80053E84 80000224 */  addiu      $v0, $zero, 0x80
    /* 44688 80053E88 070002A2 */  sb         $v0, 0x7($s0)
    /* 4468C 80053E8C 99FF0296 */  lhu        $v0, -0x67($s0)
    /* 44690 80053E90 CBFF0592 */  lbu        $a1, -0x35($s0)
    /* 44694 80053E94 A3FF03AE */  sw         $v1, -0x5D($s0)
    /* 44698 80053E98 C7FF0396 */  lhu        $v1, -0x39($s0)
    /* 4469C 80053E9C A3FF068E */  lw         $a2, -0x5D($s0)
    /* 446A0 80053EA0 9FFF04A6 */  sh         $a0, -0x61($s0)
    /* 446A4 80053EA4 FBFF048E */  lw         $a0, -0x5($s0)
    /* 446A8 80053EA8 020000A2 */  sb         $zero, 0x2($s0)
    /* 446AC 80053EAC 4D0000A6 */  sh         $zero, 0x4D($s0)
    /* 446B0 80053EB0 CDFF05A2 */  sb         $a1, -0x33($s0)
    /* 446B4 80053EB4 21104300 */  addu       $v0, $v0, $v1
.size func_80053E7C, . - func_80053E7C
