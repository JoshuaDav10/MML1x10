.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80053DC0
    /* 445C0 80053DC0 09F84000 */  jalr       $v0
    /* 445C4 80053DC4 21204002 */   addu      $a0, $s2, $zero
    /* 445C8 80053DC8 BEFF4014 */  bnez       $v0, .L80053CC4
    /* 445CC 80053DCC 00000000 */   nop
  .L80053DD0:
    /* 445D0 80053DD0 CEFF0292 */  lbu        $v0, -0x32($s0)
    /* 445D4 80053DD4 00000000 */  nop
    /* 445D8 80053DD8 06004014 */  bnez       $v0, .L80053DF4
    /* 445DC 80053DDC 0010033C */   lui       $v1, (0x10000000 >> 16)
    /* 445E0 80053DE0 0000428E */  lw         $v0, 0x0($s2)
    /* 445E4 80053DE4 00000000 */  nop
    /* 445E8 80053DE8 24104300 */  and        $v0, $v0, $v1
    /* 445EC 80053DEC B5FF4010 */  beqz       $v0, .L80053CC4
    /* 445F0 80053DF0 00000000 */   nop
.size func_80053DC0, . - func_80053DC0
