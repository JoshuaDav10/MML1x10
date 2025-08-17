.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002AEF8
    /* 1B6F8 8002AEF8 FFFF1837 */  ori        $t8, $t8, 0xFFFF
    /* 1B6FC 8002AEFC 801F083C */  lui        $t0, (0x1F800100 >> 16)
    /* 1B700 8002AF00 00010835 */  ori        $t0, $t0, (0x1F800100 & 0xFFFF)
    /* 1B704 8002AF04 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1B708 8002AF08 0000CA91 */  lbu        $t2, 0x0($t6)
    /* 1B70C 8002AF0C 0400C38D */  lw         $v1, 0x4($t6)
    /* 1B710 8002AF10 0030023C */  lui        $v0, (0x30000000 >> 16)
    /* 1B714 8002AF14 0000A2AF */  sw         $v0, 0x0($sp)
    /* 1B718 8002AF18 1000CB8D */  lw         $t3, 0x10($t6)
    /* 1B71C 8002AF1C 0000A6CB */  lwc2       $6, 0x0($sp)
    /* 1B720 8002AF20 64004011 */  beqz       $t2, .L8002B0B4
    /* 1B724 8002AF24 00000000 */   nop
    /* 1B728 8002AF28 0400B027 */  addiu      $s0, $sp, 0x4
    /* 1B72C 8002AF2C 801F0D3C */  lui        $t5, (0x1F800070 >> 16)
    /* 1B730 8002AF30 7000AD35 */  ori        $t5, $t5, (0x1F800070 & 0xFFFF)
    /* 1B734 8002AF34 801F193C */  lui        $t9, (0x1F80003C >> 16)
    /* 1B738 8002AF38 3C003937 */  ori        $t9, $t9, (0x1F80003C & 0xFFFF)
    /* 1B73C 8002AF3C 0A006724 */  addiu      $a3, $v1, 0xA
    /* 1B740 8002AF40 0800A924 */  addiu      $t1, $a1, 0x8
  .L8002AF44:
    /* 1B744 8002AF44 FEFFE290 */  lbu        $v0, -0x2($a3)
    /* 1B748 8002AF48 00000000 */  nop
    /* 1B74C 8002AF4C C0100200 */  sll        $v0, $v0, 3
    /* 1B750 8002AF50 21104B00 */  addu       $v0, $v0, $t3
    /* 1B754 8002AF54 03004388 */  lwl        $v1, 0x3($v0)
    /* 1B758 8002AF58 00004398 */  lwr        $v1, 0x0($v0)
    /* 1B75C 8002AF5C 07004488 */  lwl        $a0, 0x7($v0)
    /* 1B760 8002AF60 04004498 */  lwr        $a0, 0x4($v0)
    /* 1B764 8002AF64 030003A9 */  swl        $v1, 0x3($t0)
    /* 1B768 8002AF68 000003B9 */  swr        $v1, 0x0($t0)
    /* 1B76C 8002AF6C 070004A9 */  swl        $a0, 0x7($t0)
    /* 1B770 8002AF70 040004B9 */  swr        $a0, 0x4($t0)
    /* 1B774 8002AF74 FFFFE290 */  lbu        $v0, -0x1($a3)
    /* 1B778 8002AF78 00000000 */  nop
    /* 1B77C 8002AF7C C0100200 */  sll        $v0, $v0, 3
    /* 1B780 8002AF80 21104B00 */  addu       $v0, $v0, $t3
    /* 1B784 8002AF84 03004388 */  lwl        $v1, 0x3($v0)
    /* 1B788 8002AF88 00004398 */  lwr        $v1, 0x0($v0)
    /* 1B78C 8002AF8C 07004488 */  lwl        $a0, 0x7($v0)
    /* 1B790 8002AF90 04004498 */  lwr        $a0, 0x4($v0)
    /* 1B794 8002AF94 0B0003A9 */  swl        $v1, 0xB($t0)
    /* 1B798 8002AF98 080003B9 */  swr        $v1, 0x8($t0)
    /* 1B79C 8002AF9C 0F0004A9 */  swl        $a0, 0xF($t0)
    /* 1B7A0 8002AFA0 0C0004B9 */  swr        $a0, 0xC($t0)
    /* 1B7A4 8002AFA4 0000E290 */  lbu        $v0, 0x0($a3)
    /* 1B7A8 8002AFA8 00000000 */  nop
    /* 1B7AC 8002AFAC C0100200 */  sll        $v0, $v0, 3
.size func_8002AEF8, . - func_8002AEF8
