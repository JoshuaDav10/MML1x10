.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004B5CC
    /* 3BDCC 8004B5CC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3BDD0 8004B5D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3BDD4 8004B5D4 21888000 */  addu       $s1, $a0, $zero
    /* 3BDD8 8004B5D8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3BDDC 8004B5DC 2190A000 */  addu       $s2, $a1, $zero
    /* 3BDE0 8004B5E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3BDE4 8004B5E4 2180C000 */  addu       $s0, $a2, $zero
    /* 3BDE8 8004B5E8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3BDEC 8004B5EC F02C010C */  jal        func_8004B3C0
    /* 3BDF0 8004B5F0 2120E000 */   addu      $a0, $a3, $zero
    /* 3BDF4 8004B5F4 21202002 */  addu       $a0, $s1, $zero
    /* 3BDF8 8004B5F8 21284002 */  addu       $a1, $s2, $zero
    /* 3BDFC 8004B5FC 21300002 */  addu       $a2, $s0, $zero
    /* 3BE00 8004B600 AB2D010C */  jal        func_8004B6AC
    /* 3BE04 8004B604 21380000 */   addu      $a3, $zero, $zero
    /* 3BE08 8004B608 21304000 */  addu       $a2, $v0, $zero
    /* 3BE0C 8004B60C 1F00C010 */  beqz       $a2, .L8004B68C
    /* 3BE10 8004B610 00000000 */   nop
    /* 3BE14 8004B614 1500C018 */  blez       $a2, .L8004B66C
    /* 3BE18 8004B618 0003C230 */   andi      $v0, $a2, 0x300
    /* 3BE1C 8004B61C 06004010 */  beqz       $v0, .L8004B638
    /* 3BE20 8004B620 000CC230 */   andi      $v0, $a2, 0xC00
    /* 3BE24 8004B624 801F023C */  lui        $v0, (0x1F8000C0 >> 16)
    /* 3BE28 8004B628 C0004294 */  lhu        $v0, (0x1F8000C0 & 0xFFFF)($v0)
    /* 3BE2C 8004B62C 00000000 */  nop
    /* 3BE30 8004B630 000022A6 */  sh         $v0, 0x0($s1)
    /* 3BE34 8004B634 000CC230 */  andi       $v0, $a2, 0xC00
  .L8004B638:
    /* 3BE38 8004B638 06004010 */  beqz       $v0, .L8004B654
    /* 3BE3C 8004B63C 0030C230 */   andi      $v0, $a2, 0x3000
    /* 3BE40 8004B640 801F023C */  lui        $v0, (0x1F8000C4 >> 16)
    /* 3BE44 8004B644 C4004294 */  lhu        $v0, (0x1F8000C4 & 0xFFFF)($v0)
    /* 3BE48 8004B648 00000000 */  nop
    /* 3BE4C 8004B64C 040022A6 */  sh         $v0, 0x4($s1)
    /* 3BE50 8004B650 0030C230 */  andi       $v0, $a2, 0x3000
  .L8004B654:
    /* 3BE54 8004B654 0E004010 */  beqz       $v0, .L8004B690
    /* 3BE58 8004B658 2110C000 */   addu      $v0, $a2, $zero
    /* 3BE5C 8004B65C 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3BE60 8004B660 C2004294 */  lhu        $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3BE64 8004B664 A32D0108 */  j          .L8004B68C
    /* 3BE68 8004B668 020022A6 */   sh        $v0, 0x2($s1)
  .L8004B66C:
    /* 3BE6C 8004B66C 0300428A */  lwl        $v0, 0x3($s2)
    /* 3BE70 8004B670 0000429A */  lwr        $v0, 0x0($s2)
    /* 3BE74 8004B674 0700438A */  lwl        $v1, 0x7($s2)
    /* 3BE78 8004B678 0400439A */  lwr        $v1, 0x4($s2)
    /* 3BE7C 8004B67C 030022AA */  swl        $v0, 0x3($s1)
    /* 3BE80 8004B680 000022BA */  swr        $v0, 0x0($s1)
    /* 3BE84 8004B684 070023AA */  swl        $v1, 0x7($s1)
    /* 3BE88 8004B688 040023BA */  swr        $v1, 0x4($s1)
  .L8004B68C:
    /* 3BE8C 8004B68C 2110C000 */  addu       $v0, $a2, $zero
  .L8004B690:
    /* 3BE90 8004B690 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3BE94 8004B694 1800B28F */  lw         $s2, 0x18($sp)
    /* 3BE98 8004B698 1400B18F */  lw         $s1, 0x14($sp)
    /* 3BE9C 8004B69C 1000B08F */  lw         $s0, 0x10($sp)
    /* 3BEA0 8004B6A0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3BEA4 8004B6A4 0800E003 */  jr         $ra
    /* 3BEA8 8004B6A8 00000000 */   nop
.size func_8004B5CC, . - func_8004B5CC
