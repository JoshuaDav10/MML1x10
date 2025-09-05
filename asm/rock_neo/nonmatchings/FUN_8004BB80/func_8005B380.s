.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005B380
    /* 4BB80 8005B380 24105200 */  and        $v0, $v0, $s2
    /* 4BB84 8005B384 25186200 */  or         $v1, $v1, $v0
    /* 4BB88 8005B388 0000C3AC */  sw         $v1, 0x0($a2)
    /* 4BB8C 8005B38C C0030624 */  addiu      $a2, $zero, 0x3C0
    /* 4BB90 8005B390 3D000782 */  lb         $a3, 0x3D($s0)
    /* 4BB94 8005B394 9C00028E */  lw         $v0, 0x9C($s0)
    /* 4BB98 8005B398 80380700 */  sll        $a3, $a3, 2
    /* 4BB9C 8005B39C 2138E800 */  addu       $a3, $a3, $t0
    /* 4BBA0 8005B3A0 7000E38C */  lw         $v1, 0x70($a3)
    /* 4BBA4 8005B3A4 24105200 */  and        $v0, $v0, $s2
    /* 4BBA8 8005B3A8 24187300 */  and        $v1, $v1, $s3
    /* 4BBAC 8005B3AC 25186200 */  or         $v1, $v1, $v0
    /* 4BBB0 8005B3B0 7000E3AC */  sw         $v1, 0x70($a3)
    /* 4BBB4 8005B3B4 0000918E */  lw         $s1, 0x0($s4)
    /* 4BBB8 8005B3B8 00010724 */  addiu      $a3, $zero, 0x100
    /* 4BBBC 8005B3BC 0C002226 */  addiu      $v0, $s1, 0xC
    /* 4BBC0 8005B3C0 1EF1010C */  jal        GetTPage
    /* 4BBC4 8005B3C4 000082AE */   sw        $v0, 0x0($s4)
    /* 4BBC8 8005B3C8 21202002 */  addu       $a0, $s1, $zero
    /* 4BBCC 8005B3CC 21280000 */  addu       $a1, $zero, $zero
    /* 4BBD0 8005B3D0 21300000 */  addu       $a2, $zero, $zero
    /* 4BBD4 8005B3D4 FFFF4730 */  andi       $a3, $v0, 0xFFFF
    /* 4BBD8 8005B3D8 CEF7010C */  jal        SetDrawMode
    /* 4BBDC 8005B3DC 1000A0AF */   sw        $zero, 0x10($sp)
    /* 4BBE0 8005B3E0 0000238E */  lw         $v1, 0x0($s1)
    /* 4BBE4 8005B3E4 3D000282 */  lb         $v0, 0x3D($s0)
    /* 4BBE8 8005B3E8 0A80043C */  lui        $a0, %hi(D_80098934)
    /* 4BBEC 8005B3EC 3489848C */  lw         $a0, %lo(D_80098934)($a0)
    /* 4BBF0 8005B3F0 80100200 */  sll        $v0, $v0, 2
    /* 4BBF4 8005B3F4 21104400 */  addu       $v0, $v0, $a0
    /* 4BBF8 8005B3F8 7000428C */  lw         $v0, 0x70($v0)
    /* 4BBFC 8005B3FC 24187300 */  and        $v1, $v1, $s3
.size func_8005B380, . - func_8005B380
