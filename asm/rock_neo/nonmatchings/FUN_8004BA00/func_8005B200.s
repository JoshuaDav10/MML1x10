.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005B200
    /* 4BA00 8005B200 21104800 */  addu       $v0, $v0, $t0
    /* 4BA04 8005B204 0000C38C */  lw         $v1, 0x0($a2)
    /* 4BA08 8005B208 7000428C */  lw         $v0, 0x70($v0)
    /* 4BA0C 8005B20C 24187300 */  and        $v1, $v1, $s3
    /* 4BA10 8005B210 24105200 */  and        $v0, $v0, $s2
    /* 4BA14 8005B214 25186200 */  or         $v1, $v1, $v0
    /* 4BA18 8005B218 0000C3AC */  sw         $v1, 0x0($a2)
    /* 4BA1C 8005B21C C0030624 */  addiu      $a2, $zero, 0x3C0
    /* 4BA20 8005B220 3D000782 */  lb         $a3, 0x3D($s0)
    /* 4BA24 8005B224 9800028E */  lw         $v0, 0x98($s0)
    /* 4BA28 8005B228 80380700 */  sll        $a3, $a3, 2
    /* 4BA2C 8005B22C 2138E800 */  addu       $a3, $a3, $t0
    /* 4BA30 8005B230 7000E38C */  lw         $v1, 0x70($a3)
    /* 4BA34 8005B234 24105200 */  and        $v0, $v0, $s2
    /* 4BA38 8005B238 24187300 */  and        $v1, $v1, $s3
    /* 4BA3C 8005B23C 25186200 */  or         $v1, $v1, $v0
    /* 4BA40 8005B240 7000E3AC */  sw         $v1, 0x70($a3)
    /* 4BA44 8005B244 0000918E */  lw         $s1, 0x0($s4)
    /* 4BA48 8005B248 00010724 */  addiu      $a3, $zero, 0x100
    /* 4BA4C 8005B24C 0C002226 */  addiu      $v0, $s1, 0xC
    /* 4BA50 8005B250 1EF1010C */  jal        GetTPage
    /* 4BA54 8005B254 000082AE */   sw        $v0, 0x0($s4)
    /* 4BA58 8005B258 21202002 */  addu       $a0, $s1, $zero
    /* 4BA5C 8005B25C 21280000 */  addu       $a1, $zero, $zero
    /* 4BA60 8005B260 21300000 */  addu       $a2, $zero, $zero
    /* 4BA64 8005B264 FFFF4730 */  andi       $a3, $v0, 0xFFFF
    /* 4BA68 8005B268 CEF7010C */  jal        SetDrawMode
    /* 4BA6C 8005B26C 1000A0AF */   sw        $zero, 0x10($sp)
    /* 4BA70 8005B270 21200000 */  addu       $a0, $zero, $zero
    /* 4BA74 8005B274 0000238E */  lw         $v1, 0x0($s1)
    /* 4BA78 8005B278 3D000282 */  lb         $v0, 0x3D($s0)
    /* 4BA7C 8005B27C 0A80083C */  lui        $t0, (0x800A0000 >> 16)
.size func_8005B200, . - func_8005B200
