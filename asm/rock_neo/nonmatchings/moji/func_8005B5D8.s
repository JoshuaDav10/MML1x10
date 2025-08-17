.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005B5D8
    /* 4BDD8 8005B5D8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 4BDDC 8005B5DC 2800B4AF */  sw         $s4, 0x28($sp)
    /* 4BDE0 8005B5E0 801F143C */  lui        $s4, (0x1F800070 >> 16)
    /* 4BDE4 8005B5E4 70009436 */  ori        $s4, $s4, (0x1F800070 & 0xFFFF)
    /* 4BDE8 8005B5E8 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 4BDEC 8005B5EC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 4BDF0 8005B5F0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4BDF4 8005B5F4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4BDF8 8005B5F8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4BDFC 8005B5FC 0000838E */  lw         $v1, 0x0($s4)
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
    /* 4BE80 8005B680 21202002 */  addu       $a0, $s1, $zero
    /* 4BE84 8005B684 21280000 */  addu       $a1, $zero, $zero
    /* 4BE88 8005B688 21300000 */  addu       $a2, $zero, $zero
    /* 4BE8C 8005B68C FFFF4730 */  andi       $a3, $v0, 0xFFFF
    /* 4BE90 8005B690 CEF7010C */  jal        SetDrawMode
    /* 4BE94 8005B694 1000A0AF */   sw        $zero, 0x10($sp)
    /* 4BE98 8005B698 00FF133C */  lui        $s3, (0xFF000000 >> 16)
    /* 4BE9C 8005B69C 0000238E */  lw         $v1, 0x0($s1)
    /* 4BEA0 8005B6A0 3D000282 */  lb         $v0, 0x3D($s0)
    /* 4BEA4 8005B6A4 0A80083C */  lui        $t0, %hi(D_80098934)
    /* 4BEA8 8005B6A8 3489088D */  lw         $t0, %lo(D_80098934)($t0)
    /* 4BEAC 8005B6AC 80100200 */  sll        $v0, $v0, 2
    /* 4BEB0 8005B6B0 21104800 */  addu       $v0, $v0, $t0
    /* 4BEB4 8005B6B4 7000428C */  lw         $v0, 0x70($v0)
    /* 4BEB8 8005B6B8 24187300 */  and        $v1, $v1, $s3
    /* 4BEBC 8005B6BC 24105200 */  and        $v0, $v0, $s2
    /* 4BEC0 8005B6C0 25186200 */  or         $v1, $v1, $v0
    /* 4BEC4 8005B6C4 000023AE */  sw         $v1, 0x0($s1)
    /* 4BEC8 8005B6C8 3D000382 */  lb         $v1, 0x3D($s0)
    /* 4BECC 8005B6CC 00000000 */  nop
    /* 4BED0 8005B6D0 80180300 */  sll        $v1, $v1, 2
    /* 4BED4 8005B6D4 21186800 */  addu       $v1, $v1, $t0
    /* 4BED8 8005B6D8 7000628C */  lw         $v0, 0x70($v1)
    /* 4BEDC 8005B6DC 24883202 */  and        $s1, $s1, $s2
    /* 4BEE0 8005B6E0 24105300 */  and        $v0, $v0, $s3
    /* 4BEE4 8005B6E4 25105100 */  or         $v0, $v0, $s1
    /* 4BEE8 8005B6E8 700062AC */  sw         $v0, 0x70($v1)
    /* 4BEEC 8005B6EC 9800038E */  lw         $v1, 0x98($s0)
    /* 4BEF0 8005B6F0 88000296 */  lhu        $v0, 0x88($s0)
    /* 4BEF4 8005B6F4 00000000 */  nop
    /* 4BEF8 8005B6F8 080062A4 */  sh         $v0, 0x8($v1)
    /* 4BEFC 8005B6FC 9800038E */  lw         $v1, 0x98($s0)
    /* 4BF00 8005B700 8A000296 */  lhu        $v0, 0x8A($s0)
    /* 4BF04 8005B704 00000000 */  nop
    /* 4BF08 8005B708 0A0062A4 */  sh         $v0, 0xA($v1)
    /* 4BF0C 8005B70C 9800038E */  lw         $v1, 0x98($s0)
    /* 4BF10 8005B710 8C000296 */  lhu        $v0, 0x8C($s0)
    /* 4BF14 8005B714 00000000 */  nop
    /* 4BF18 8005B718 0C0062A4 */  sh         $v0, 0xC($v1)
    /* 4BF1C 8005B71C 9800038E */  lw         $v1, 0x98($s0)
    /* 4BF20 8005B720 8E000296 */  lhu        $v0, 0x8E($s0)
    /* 4BF24 8005B724 00000000 */  nop
    /* 4BF28 8005B728 0E0062A4 */  sh         $v0, 0xE($v1)
    /* 4BF2C 8005B72C 9800038E */  lw         $v1, 0x98($s0)
    /* 4BF30 8005B730 90000296 */  lhu        $v0, 0x90($s0)
    /* 4BF34 8005B734 00000000 */  nop
    /* 4BF38 8005B738 100062A4 */  sh         $v0, 0x10($v1)
    /* 4BF3C 8005B73C 9800038E */  lw         $v1, 0x98($s0)
    /* 4BF40 8005B740 92000296 */  lhu        $v0, 0x92($s0)
    /* 4BF44 8005B744 00000000 */  nop
    /* 4BF48 8005B748 120062A4 */  sh         $v0, 0x12($v1)
    /* 4BF4C 8005B74C 9800038E */  lw         $v1, 0x98($s0)
    /* 4BF50 8005B750 94000296 */  lhu        $v0, 0x94($s0)
    /* 4BF54 8005B754 21200000 */  addu       $a0, $zero, $zero
    /* 4BF58 8005B758 140062A4 */  sh         $v0, 0x14($v1)
    /* 4BF5C 8005B75C 9800038E */  lw         $v1, 0x98($s0)
    /* 4BF60 8005B760 96000296 */  lhu        $v0, 0x96($s0)
    /* 4BF64 8005B764 02000524 */  addiu      $a1, $zero, 0x2
    /* 4BF68 8005B768 160062A4 */  sh         $v0, 0x16($v1)
    /* 4BF6C 8005B76C 3D000282 */  lb         $v0, 0x3D($s0)
    /* 4BF70 8005B770 9800068E */  lw         $a2, 0x98($s0)
    /* 4BF74 8005B774 80100200 */  sll        $v0, $v0, 2
    /* 4BF78 8005B778 21104800 */  addu       $v0, $v0, $t0
    /* 4BF7C 8005B77C 0000C38C */  lw         $v1, 0x0($a2)
    /* 4BF80 8005B780 7000428C */  lw         $v0, 0x70($v0)
    /* 4BF84 8005B784 24187300 */  and        $v1, $v1, $s3
    /* 4BF88 8005B788 24105200 */  and        $v0, $v0, $s2
    /* 4BF8C 8005B78C 25186200 */  or         $v1, $v1, $v0
    /* 4BF90 8005B790 0000C3AC */  sw         $v1, 0x0($a2)
    /* 4BF94 8005B794 C0030624 */  addiu      $a2, $zero, 0x3C0
    /* 4BF98 8005B798 3D000782 */  lb         $a3, 0x3D($s0)
    /* 4BF9C 8005B79C 9800028E */  lw         $v0, 0x98($s0)
    /* 4BFA0 8005B7A0 80380700 */  sll        $a3, $a3, 2
    /* 4BFA4 8005B7A4 2138E800 */  addu       $a3, $a3, $t0
    /* 4BFA8 8005B7A8 7000E38C */  lw         $v1, 0x70($a3)
    /* 4BFAC 8005B7AC 24105200 */  and        $v0, $v0, $s2
    /* 4BFB0 8005B7B0 24187300 */  and        $v1, $v1, $s3
    /* 4BFB4 8005B7B4 25186200 */  or         $v1, $v1, $v0
    /* 4BFB8 8005B7B8 7000E3AC */  sw         $v1, 0x70($a3)
    /* 4BFBC 8005B7BC 0000918E */  lw         $s1, 0x0($s4)
    /* 4BFC0 8005B7C0 00010724 */  addiu      $a3, $zero, 0x100
    /* 4BFC4 8005B7C4 0C002226 */  addiu      $v0, $s1, 0xC
    /* 4BFC8 8005B7C8 1EF1010C */  jal        GetTPage
    /* 4BFCC 8005B7CC 000082AE */   sw        $v0, 0x0($s4)
    /* 4BFD0 8005B7D0 21202002 */  addu       $a0, $s1, $zero
    /* 4BFD4 8005B7D4 21280000 */  addu       $a1, $zero, $zero
    /* 4BFD8 8005B7D8 21300000 */  addu       $a2, $zero, $zero
    /* 4BFDC 8005B7DC FFFF4730 */  andi       $a3, $v0, 0xFFFF
    /* 4BFE0 8005B7E0 CEF7010C */  jal        SetDrawMode
    /* 4BFE4 8005B7E4 1000A0AF */   sw        $zero, 0x10($sp)
    /* 4BFE8 8005B7E8 0000238E */  lw         $v1, 0x0($s1)
    /* 4BFEC 8005B7EC 3D000282 */  lb         $v0, 0x3D($s0)
    /* 4BFF0 8005B7F0 0A80043C */  lui        $a0, %hi(D_80098934)
    /* 4BFF4 8005B7F4 3489848C */  lw         $a0, %lo(D_80098934)($a0)
    /* 4BFF8 8005B7F8 80100200 */  sll        $v0, $v0, 2
    /* 4BFFC 8005B7FC 21104400 */  addu       $v0, $v0, $a0
    /* 4C000 8005B800 7000428C */  lw         $v0, 0x70($v0)
    /* 4C004 8005B804 24187300 */  and        $v1, $v1, $s3
    /* 4C008 8005B808 24105200 */  and        $v0, $v0, $s2
    /* 4C00C 8005B80C 25186200 */  or         $v1, $v1, $v0
    /* 4C010 8005B810 000023AE */  sw         $v1, 0x0($s1)
    /* 4C014 8005B814 3D000382 */  lb         $v1, 0x3D($s0)
    /* 4C018 8005B818 00000000 */  nop
    /* 4C01C 8005B81C 80180300 */  sll        $v1, $v1, 2
    /* 4C020 8005B820 21186400 */  addu       $v1, $v1, $a0
    /* 4C024 8005B824 7000628C */  lw         $v0, 0x70($v1)
    /* 4C028 8005B828 24883202 */  and        $s1, $s1, $s2
    /* 4C02C 8005B82C 24105300 */  and        $v0, $v0, $s3
    /* 4C030 8005B830 25105100 */  or         $v0, $v0, $s1
    /* 4C034 8005B834 700062AC */  sw         $v0, 0x70($v1)
    /* 4C038 8005B838 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 4C03C 8005B83C 2800B48F */  lw         $s4, 0x28($sp)
    /* 4C040 8005B840 2400B38F */  lw         $s3, 0x24($sp)
    /* 4C044 8005B844 2000B28F */  lw         $s2, 0x20($sp)
    /* 4C048 8005B848 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4C04C 8005B84C 1800B08F */  lw         $s0, 0x18($sp)
    /* 4C050 8005B850 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 4C054 8005B854 0800E003 */  jr         $ra
    /* 4C058 8005B858 00000000 */   nop
.size func_8005B5D8, . - func_8005B5D8
