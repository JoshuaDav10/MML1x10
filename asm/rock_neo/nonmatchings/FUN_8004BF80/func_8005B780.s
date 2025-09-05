.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005B780
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
.size func_8005B780, . - func_8005B780
