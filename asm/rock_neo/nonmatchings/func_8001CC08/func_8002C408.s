.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002C408
    /* 1CC08 8002C408 18007625 */  addiu      $s6, $t3, 0x18
    /* 1CC0C 8002C40C 1800B6AF */  sw         $s6, 0x18($sp)
    /* 1CC10 8002C410 801F133C */  lui        $s3, (0x1F800070 >> 16)
    /* 1CC14 8002C414 70007336 */  ori        $s3, $s3, (0x1F800070 & 0xFFFF)
    /* 1CC18 8002C418 801F1E3C */  lui        $fp, (0x1F80003C >> 16)
    /* 1CC1C 8002C41C 3C00DE37 */  ori        $fp, $fp, (0x1F80003C & 0xFFFF)
    /* 1CC20 8002C420 FF000D3C */  lui        $t5, (0xFF0000 >> 16)
    /* 1CC24 8002C424 FFFF023C */  lui        $v0, (0xFFFF0000 >> 16)
    /* 1CC28 8002C428 24B88202 */  and        $s7, $s4, $v0
    /* 1CC2C 8002C42C 0600CA25 */  addiu      $t2, $t6, 0x6
    /* 1CC30 8002C430 0C004C26 */  addiu      $t4, $s2, 0xC
    /* 1CC34 8002C434 02004291 */  lbu        $v0, 0x2($t2)
    /* 1CC38 8002C438 03004891 */  lbu        $t0, 0x3($t2)
    /* 1CC3C 8002C43C 04004991 */  lbu        $t1, 0x4($t2)
    /* 1CC40 8002C440 05004391 */  lbu        $v1, 0x5($t2)
    /* 1CC44 8002C444 C0100200 */  sll        $v0, $v0, 3
    /* 1CC48 8002C448 21105800 */  addu       $v0, $v0, $t8
    /* 1CC4C 8002C44C 03004488 */  lwl        $a0, 0x3($v0)
    /* 1CC50 8002C450 00004498 */  lwr        $a0, 0x0($v0)
    /* 1CC54 8002C454 07004588 */  lwl        $a1, 0x7($v0)
    /* 1CC58 8002C458 04004598 */  lwr        $a1, 0x4($v0)
    /* 1CC5C 8002C45C 030064A9 */  swl        $a0, 0x3($t3)
    /* 1CC60 8002C460 000064B9 */  swr        $a0, 0x0($t3)
    /* 1CC64 8002C464 070065A9 */  swl        $a1, 0x7($t3)
    /* 1CC68 8002C468 040065B9 */  swr        $a1, 0x4($t3)
    /* 1CC6C 8002C46C C0100800 */  sll        $v0, $t0, 3
    /* 1CC70 8002C470 21105800 */  addu       $v0, $v0, $t8
    /* 1CC74 8002C474 03004488 */  lwl        $a0, 0x3($v0)
    /* 1CC78 8002C478 00004498 */  lwr        $a0, 0x0($v0)
.size func_8002C408, . - func_8002C408
