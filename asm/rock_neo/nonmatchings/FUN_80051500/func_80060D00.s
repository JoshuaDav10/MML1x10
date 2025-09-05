.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060D00
    /* 51500 80060D00 01000292 */  lbu        $v0, 0x1($s0)
    /* 51504 80060D04 00000000 */  nop
    /* 51508 80060D08 01004224 */  addiu      $v0, $v0, 0x1
    /* 5150C 80060D0C 68830108 */  j          .L80060DA0
    /* 51510 80060D10 010002A2 */   sb        $v0, 0x1($s0)
  .L80060D14:
    /* 51514 80060D14 0A80033C */  lui        $v1, (0x800A0000 >> 16)
.size func_80060D00, . - func_80060D00
