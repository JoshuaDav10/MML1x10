.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002C15C
    /* 1C95C 8002C15C 24F08202 */  and        $fp, $s4, $v0
    /* 1C960 8002C160 00BC1400 */  sll        $s7, $s4, 16
    /* 1C964 8002C164 0400C725 */  addiu      $a3, $t6, 0x4
    /* 1C968 8002C168 0800AA24 */  addiu      $t2, $a1, 0x8
  .L8002C16C:
    /* 1C96C 8002C16C 0400E290 */  lbu        $v0, 0x4($a3)
    /* 1C970 8002C170 0500E890 */  lbu        $t0, 0x5($a3)
    /* 1C974 8002C174 0600E990 */  lbu        $t1, 0x6($a3)
    /* 1C978 8002C178 C0100200 */  sll        $v0, $v0, 3
    /* 1C97C 8002C17C 21105800 */  addu       $v0, $v0, $t8
    /* 1C980 8002C180 03004388 */  lwl        $v1, 0x3($v0)
    /* 1C984 8002C184 00004398 */  lwr        $v1, 0x0($v0)
    /* 1C988 8002C188 07004488 */  lwl        $a0, 0x7($v0)
    /* 1C98C 8002C18C 04004498 */  lwr        $a0, 0x4($v0)
    /* 1C990 8002C190 030063A9 */  swl        $v1, 0x3($t3)
    /* 1C994 8002C194 000063B9 */  swr        $v1, 0x0($t3)
    /* 1C998 8002C198 070064A9 */  swl        $a0, 0x7($t3)
    /* 1C99C 8002C19C 040064B9 */  swr        $a0, 0x4($t3)
    /* 1C9A0 8002C1A0 C0100800 */  sll        $v0, $t0, 3
    /* 1C9A4 8002C1A4 21105800 */  addu       $v0, $v0, $t8
.size func_8002C15C, . - func_8002C15C
