.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005B280
    /* 4BA80 8005B280 3489088D */  lw         $t0, -0x76CC($t0)
    /* 4BA84 8005B284 80100200 */  sll        $v0, $v0, 2
    /* 4BA88 8005B288 21104800 */  addu       $v0, $v0, $t0
    /* 4BA8C 8005B28C 7000428C */  lw         $v0, 0x70($v0)
    /* 4BA90 8005B290 24187300 */  and        $v1, $v1, $s3
    /* 4BA94 8005B294 24105200 */  and        $v0, $v0, $s2
    /* 4BA98 8005B298 25186200 */  or         $v1, $v1, $v0
    /* 4BA9C 8005B29C 000023AE */  sw         $v1, 0x0($s1)
    /* 4BAA0 8005B2A0 3D000382 */  lb         $v1, 0x3D($s0)
    /* 4BAA4 8005B2A4 02000524 */  addiu      $a1, $zero, 0x2
    /* 4BAA8 8005B2A8 80180300 */  sll        $v1, $v1, 2
    /* 4BAAC 8005B2AC 21186800 */  addu       $v1, $v1, $t0
    /* 4BAB0 8005B2B0 7000628C */  lw         $v0, 0x70($v1)
    /* 4BAB4 8005B2B4 24883202 */  and        $s1, $s1, $s2
    /* 4BAB8 8005B2B8 24105300 */  and        $v0, $v0, $s3
    /* 4BABC 8005B2BC 25105100 */  or         $v0, $v0, $s1
    /* 4BAC0 8005B2C0 700062AC */  sw         $v0, 0x70($v1)
    /* 4BAC4 8005B2C4 08000296 */  lhu        $v0, 0x8($s0)
    /* 4BAC8 8005B2C8 88000396 */  lhu        $v1, 0x88($s0)
    /* 4BACC 8005B2CC 9C00068E */  lw         $a2, 0x9C($s0)
    /* 4BAD0 8005B2D0 21104300 */  addu       $v0, $v0, $v1
    /* 4BAD4 8005B2D4 0800C2A4 */  sh         $v0, 0x8($a2)
    /* 4BAD8 8005B2D8 0A000296 */  lhu        $v0, 0xA($s0)
    /* 4BADC 8005B2DC 8A000396 */  lhu        $v1, 0x8A($s0)
    /* 4BAE0 8005B2E0 9C00068E */  lw         $a2, 0x9C($s0)
    /* 4BAE4 8005B2E4 21104300 */  addu       $v0, $v0, $v1
    /* 4BAE8 8005B2E8 0A00C2A4 */  sh         $v0, 0xA($a2)
    /* 4BAEC 8005B2EC 08000296 */  lhu        $v0, 0x8($s0)
    /* 4BAF0 8005B2F0 8C000396 */  lhu        $v1, 0x8C($s0)
    /* 4BAF4 8005B2F4 9C00068E */  lw         $a2, 0x9C($s0)
    /* 4BAF8 8005B2F8 21104300 */  addu       $v0, $v0, $v1
    /* 4BAFC 8005B2FC 0C00C2A4 */  sh         $v0, 0xC($a2)
.size func_8005B280, . - func_8005B280
