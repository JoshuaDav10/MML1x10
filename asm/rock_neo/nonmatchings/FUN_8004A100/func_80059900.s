.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059900
    /* 4A100 80059900 24104300 */  and        $v0, $v0, $v1
    /* 4A104 80059904 79000392 */  lbu        $v1, 0x79($s0)
    /* 4A108 80059908 000002AE */  sw         $v0, 0x0($s0)
    /* 4A10C 8005990C 05000224 */  addiu      $v0, $zero, 0x5
    /* 4A110 80059910 040002A6 */  sh         $v0, 0x4($s0)
    /* 4A114 80059914 710003A2 */  sb         $v1, 0x71($s0)
  .L80059918:
    /* 4A118 80059918 BFFF033C */  lui        $v1, (0xFFBFFFFF >> 16)
    /* 4A11C 8005991C 0000028E */  lw         $v0, 0x0($s0)
    /* 4A120 80059920 FFFF6334 */  ori        $v1, $v1, (0xFFBFFFFF & 0xFFFF)
    /* 4A124 80059924 24104300 */  and        $v0, $v0, $v1
    /* 4A128 80059928 000002AE */  sw         $v0, 0x0($s0)
    /* 4A12C 8005992C 0C80023C */  lui        $v0, %hi(Moji_work + 0x135)
    /* 4A130 80059930 EDB74280 */  lb         $v0, %lo(Moji_work + 0x135)($v0)
    /* 4A134 80059934 0C80043C */  lui        $a0, %hi(Moji_work + 0x1F9)
    /* 4A138 80059938 B1B88480 */  lb         $a0, %lo(Moji_work + 0x1F9)($a0)
    /* 4A13C 8005993C 0B80013C */  lui        $at, %hi(Player_work + 0x450)
    /* 4A140 80059940 21082200 */  addu       $at, $at, $v0
    /* 4A144 80059944 00562390 */  lbu        $v1, %lo(Player_work + 0x450)($at)
    /* 4A148 80059948 38118293 */  lbu        $v0, %gp_rel(D_8009899C)($gp)
    /* 4A14C 8005994C 0B80113C */  lui        $s1, %hi(Player_work + 0x454)
    /* 4A150 80059950 04563126 */  addiu      $s1, $s1, %lo(Player_work + 0x454)
    /* 4A154 80059954 21104400 */  addu       $v0, $v0, $a0
    /* 4A158 80059958 CC1283AF */  sw         $v1, %gp_rel(Moji_flag3)($gp)
    /* 4A15C 8005995C 0B80013C */  lui        $at, %hi(Player_work + 0x454)
    /* 4A160 80059960 21082200 */  addu       $at, $at, $v0
    /* 4A164 80059964 04562290 */  lbu        $v0, %lo(Player_work + 0x454)($at)
    /* 4A168 80059968 00000000 */  nop
    /* 4A16C 8005996C 00120200 */  sll        $v0, $v0, 8
    /* 4A170 80059970 25186200 */  or         $v1, $v1, $v0
    /* 4A174 80059974 04000286 */  lh         $v0, 0x4($s0)
    /* 4A178 80059978 CC1283AF */  sw         $v1, %gp_rel(Moji_flag3)($gp)
    /* 4A17C 8005997C 6600401C */  bgtz       $v0, .L80059B18
.size func_80059900, . - func_80059900
