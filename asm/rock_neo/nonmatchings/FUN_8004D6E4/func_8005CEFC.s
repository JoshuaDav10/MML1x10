.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005CEFC
    /* 4D6FC 8005CEFC B412828F */  lw         $v0, %gp_rel(D_80098B18)($gp)
    /* 4D700 8005CF00 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 4D704 8005CF04 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4D708 8005CF08 21908000 */  addu       $s2, $a0, $zero
    /* 4D70C 8005CF0C 3800BFAF */  sw         $ra, 0x38($sp)
    /* 4D710 8005CF10 3400B7AF */  sw         $s7, 0x34($sp)
    /* 4D714 8005CF14 3000B6AF */  sw         $s6, 0x30($sp)
    /* 4D718 8005CF18 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 4D71C 8005CF1C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 4D720 8005CF20 2400B3AF */  sw         $s3, 0x24($sp)
    /* 4D724 8005CF24 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4D728 8005CF28 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4D72C 8005CF2C 2000438E */  lw         $v1, 0x20($s2)
    /* 4D730 8005CF30 04004234 */  ori        $v0, $v0, 0x4
    /* 4D734 8005CF34 B41282AF */  sw         $v0, %gp_rel(D_80098B18)($gp)
    /* 4D738 8005CF38 0C004292 */  lbu        $v0, 0xC($s2)
    /* 4D73C 8005CF3C 6E006384 */  lh         $v1, 0x6E($v1)
    /* 4D740 8005CF40 02210200 */  srl        $a0, $v0, 4
    /* 4D744 8005CF44 01000224 */  addiu      $v0, $zero, 0x1
    /* 4D748 8005CF48 04108200 */  sllv       $v0, $v0, $a0
    /* 4D74C 8005CF4C 04006018 */  blez       $v1, .L8005CF60
    /* 4D750 8005CF50 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 4D754 8005CF54 21106200 */  addu       $v0, $v1, $v0
    /* 4D758 8005CF58 D9730108 */  j          .L8005CF64
    /* 4D75C 8005CF5C 06A08200 */   srlv      $s4, $v0, $a0
  .L8005CF60:
    /* 4D760 8005CF60 21A00000 */  addu       $s4, $zero, $zero
  .L8005CF64:
    /* 4D764 8005CF64 2000428E */  lw         $v0, 0x20($s2)
    /* 4D768 8005CF68 00000000 */  nop
    /* 4D76C 8005CF6C B0004284 */  lh         $v0, 0xB0($v0)
    /* 4D770 8005CF70 00000000 */  nop
    /* 4D774 8005CF74 07B88200 */  srav       $s7, $v0, $a0
    /* 4D778 8005CF78 0C004292 */  lbu        $v0, 0xC($s2)
    /* 4D77C 8005CF7C 0E004392 */  lbu        $v1, 0xE($s2)
    /* 4D780 8005CF80 00000000 */  nop
    /* 4D784 8005CF84 05006010 */  beqz       $v1, .L8005CF9C
    /* 4D788 8005CF88 0F004430 */   andi      $a0, $v0, 0xF
    /* 4D78C 8005CF8C 14005086 */  lh         $s0, 0x14($s2)
    /* 4D790 8005CF90 16004686 */  lh         $a2, 0x16($s2)
    /* 4D794 8005CF94 E9730108 */  j          .L8005CFA4
    /* 4D798 8005CF98 00000000 */   nop
  .L8005CF9C:
    /* 4D79C 8005CF9C 20011024 */  addiu      $s0, $zero, 0x120
    /* 4D7A0 8005CFA0 10000624 */  addiu      $a2, $zero, 0x10
.size func_8005CEFC, . - func_8005CEFC
