.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005B600
    /* 4BE00 8005B600 21808000 */  addu       $s0, $a0, $zero
    /* 4BE04 8005B604 18006224 */  addiu      $v0, $v1, 0x18
    /* 4BE08 8005B608 000082AE */  sw         $v0, 0x0($s4)
    /* 4BE0C 8005B60C 05000224 */  addiu      $v0, $zero, 0x5
    /* 4BE10 8005B610 980003AE */  sw         $v1, 0x98($s0)
    /* 4BE14 8005B614 030062A0 */  sb         $v0, 0x3($v1)
    /* 4BE18 8005B618 9800038E */  lw         $v1, 0x98($s0)
    /* 4BE1C 8005B61C 28000224 */  addiu      $v0, $zero, 0x28
    /* 4BE20 8005B620 070062A0 */  sb         $v0, 0x7($v1)
    /* 4BE24 8005B624 9800038E */  lw         $v1, 0x98($s0)
    /* 4BE28 8005B628 21200000 */  addu       $a0, $zero, $zero
    /* 4BE2C 8005B62C 07006290 */  lbu        $v0, 0x7($v1)
    /* 4BE30 8005B630 21280000 */  addu       $a1, $zero, $zero
    /* 4BE34 8005B634 02004234 */  ori        $v0, $v0, 0x2
    /* 4BE38 8005B638 070062A0 */  sb         $v0, 0x7($v1)
    /* 4BE3C 8005B63C 9800038E */  lw         $v1, 0x98($s0)
    /* 4BE40 8005B640 B0000292 */  lbu        $v0, 0xB0($s0)
    /* 4BE44 8005B644 C0030624 */  addiu      $a2, $zero, 0x3C0
    /* 4BE48 8005B648 040062A0 */  sb         $v0, 0x4($v1)
    /* 4BE4C 8005B64C 9800038E */  lw         $v1, 0x98($s0)
    /* 4BE50 8005B650 B1000292 */  lbu        $v0, 0xB1($s0)
    /* 4BE54 8005B654 00010724 */  addiu      $a3, $zero, 0x100
    /* 4BE58 8005B658 050062A0 */  sb         $v0, 0x5($v1)
    /* 4BE5C 8005B65C 9800038E */  lw         $v1, 0x98($s0)
    /* 4BE60 8005B660 B2000292 */  lbu        $v0, 0xB2($s0)
    /* 4BE64 8005B664 FF00123C */  lui        $s2, (0xFFFFFF >> 16)
    /* 4BE68 8005B668 060062A0 */  sb         $v0, 0x6($v1)
    /* 4BE6C 8005B66C 0000918E */  lw         $s1, 0x0($s4)
    /* 4BE70 8005B670 FFFF5236 */  ori        $s2, $s2, (0xFFFFFF & 0xFFFF)
    /* 4BE74 8005B674 0C002226 */  addiu      $v0, $s1, 0xC
    /* 4BE78 8005B678 1EF1010C */  jal        GetTPage
    /* 4BE7C 8005B67C 000082AE */   sw        $v0, 0x0($s4)
.size func_8005B600, . - func_8005B600
