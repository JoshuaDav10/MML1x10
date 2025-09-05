.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059744
    /* 49F44 80059744 09004014 */  bnez       $v0, .L8005976C
    /* 49F48 80059748 FFFF033C */   lui       $v1, (0xFFFF7FFF >> 16)
    /* 49F4C 8005974C FF7F6334 */  ori        $v1, $v1, (0xFFFF7FFF & 0xFFFF)
    /* 49F50 80059750 25108500 */  or         $v0, $a0, $a1
    /* 49F54 80059754 24104300 */  and        $v0, $v0, $v1
    /* 49F58 80059758 79000392 */  lbu        $v1, 0x79($s0)
    /* 49F5C 8005975C 000002AE */  sw         $v0, 0x0($s0)
    /* 49F60 80059760 05000224 */  addiu      $v0, $zero, 0x5
    /* 49F64 80059764 040002A6 */  sh         $v0, 0x4($s0)
    /* 49F68 80059768 710003A2 */  sb         $v1, 0x71($s0)
  .L8005976C:
    /* 49F6C 8005976C BFFF043C */  lui        $a0, (0xFFBFFFFF >> 16)
    /* 49F70 80059770 FFFF8434 */  ori        $a0, $a0, (0xFFBFFFFF & 0xFFFF)
    /* 49F74 80059774 0000028E */  lw         $v0, 0x0($s0)
    /* 49F78 80059778 80000324 */  addiu      $v1, $zero, 0x80
    /* 49F7C 8005977C 780003A2 */  sb         $v1, 0x78($s0)
    /* 49F80 80059780 24104400 */  and        $v0, $v0, $a0
    /* 49F84 80059784 000002AE */  sw         $v0, 0x0($s0)
    /* 49F88 80059788 0C80023C */  lui        $v0, %hi(Moji_work + 0x135)
    /* 49F8C 8005978C EDB74280 */  lb         $v0, %lo(Moji_work + 0x135)($v0)
    /* 49F90 80059790 0C80043C */  lui        $a0, %hi(Moji_work + 0x201)
    /* 49F94 80059794 B9B88490 */  lbu        $a0, %lo(Moji_work + 0x201)($a0)
    /* 49F98 80059798 0B80013C */  lui        $at, %hi(Player_work + 0x450)
    /* 49F9C 8005979C 21082200 */  addu       $at, $at, $v0
    /* 49FA0 800597A0 00562390 */  lbu        $v1, %lo(Player_work + 0x450)($at)
    /* 49FA4 800597A4 38118293 */  lbu        $v0, %gp_rel(D_8009899C)($gp)
    /* 49FA8 800597A8 00000000 */  nop
    /* 49FAC 800597AC 21104400 */  addu       $v0, $v0, $a0
    /* 49FB0 800597B0 CC1283AF */  sw         $v1, %gp_rel(Moji_flag3)($gp)
    /* 49FB4 800597B4 0B80013C */  lui        $at, %hi(Player_work + 0x454)
    /* 49FB8 800597B8 21082200 */  addu       $at, $at, $v0
    /* 49FBC 800597BC 04562290 */  lbu        $v0, %lo(Player_work + 0x454)($at)
    /* 49FC0 800597C0 04000486 */  lh         $a0, 0x4($s0)
    /* 49FC4 800597C4 00120200 */  sll        $v0, $v0, 8
    /* 49FC8 800597C8 25186200 */  or         $v1, $v1, $v0
    /* 49FCC 800597CC 0100023C */  lui        $v0, (0x10000 >> 16)
    /* 49FD0 800597D0 25186200 */  or         $v1, $v1, $v0
    /* 49FD4 800597D4 CC1283AF */  sw         $v1, %gp_rel(Moji_flag3)($gp)
    /* 49FD8 800597D8 3300801C */  bgtz       $a0, .L800598A8
    /* 49FDC 800597DC 21108000 */   addu      $v0, $a0, $zero
    /* 49FE0 800597E0 B800028E */  lw         $v0, 0xB8($s0)
    /* 49FE4 800597E4 0810033C */  lui        $v1, (0x10080000 >> 16)
    /* 49FE8 800597E8 24104300 */  and        $v0, $v0, $v1
    /* 49FEC 800597EC 13004010 */  beqz       $v0, .L8005983C
    /* 49FF0 800597F0 83000424 */   addiu     $a0, $zero, 0x83
    /* 49FF4 800597F4 01000524 */  addiu      $a1, $zero, 0x1
    /* 49FF8 800597F8 0268000C */  jal        Sound_call
    /* 49FFC 800597FC 21300000 */   addu      $a2, $zero, $zero
.size func_80059744, . - func_80059744
