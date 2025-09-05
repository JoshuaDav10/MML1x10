.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80050FC8
    /* 417C8 80050FC8 1400A387 */  lh         $v1, 0x14($sp)
    /* 417CC 80050FCC 05000286 */  lh         $v0, 0x5($s0)
    /* 417D0 80050FD0 00000000 */  nop
    /* 417D4 80050FD4 1D006214 */  bne        $v1, $v0, .L8005104C
    /* 417D8 80050FD8 00000000 */   nop
    /* 417DC 80050FDC 7946010C */  jal        func_800519E4
    /* 417E0 80050FE0 21202002 */   addu      $a0, $s1, $zero
  .L80050FE4:
    /* 417E4 80050FE4 3C014014 */  bnez       $v0, .L800514D8
    /* 417E8 80050FE8 21108002 */   addu      $v0, $s4, $zero
    /* 417EC 80050FEC 000053A2 */  sb         $s3, 0x0($s2)
    /* 417F0 80050FF0 0C00028A */  lwl        $v0, 0xC($s0)
    /* 417F4 80050FF4 0900029A */  lwr        $v0, 0x9($s0)
    /* 417F8 80050FF8 1000038A */  lwl        $v1, 0x10($s0)
    /* 417FC 80050FFC 0D00039A */  lwr        $v1, 0xD($s0)
    /* 41800 80051000 F7FF42AA */  swl        $v0, -0x9($s2)
    /* 41804 80051004 F4FF42BA */  swr        $v0, -0xC($s2)
    /* 41808 80051008 FBFF43AA */  swl        $v1, -0x5($s2)
    /* 4180C 8005100C F8FF43BA */  swr        $v1, -0x8($s2)
    /* 41810 80051010 0F000296 */  lhu        $v0, 0xF($s0)
    /* 41814 80051014 00000000 */  nop
    /* 41818 80051018 FEFF42A6 */  sh         $v0, -0x2($s2)
    /* 4181C 8005101C FFFF0292 */  lbu        $v0, -0x1($s0)
.size func_80050FC8, . - func_80050FC8
