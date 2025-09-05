.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005B680
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
.size func_8005B680, . - func_8005B680
