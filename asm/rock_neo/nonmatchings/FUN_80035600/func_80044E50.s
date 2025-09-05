.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80044E50
    /* 35650 80044E50 21308000 */  addu       $a2, $a0, $zero
    /* 35654 80044E54 0300C390 */  lbu        $v1, 0x3($a2)
    /* 35658 80044E58 01000224 */  addiu      $v0, $zero, 0x1
    /* 3565C 80044E5C 11006210 */  beq        $v1, $v0, .L80044EA4
    /* 35660 80044E60 02006228 */   slti      $v0, $v1, 0x2
    /* 35664 80044E64 18004010 */  beqz       $v0, .L80044EC8
    /* 35668 80044E68 00000000 */   nop
    /* 3566C 80044E6C 17006014 */  bnez       $v1, .L80044ECC
    /* 35670 80044E70 FBFF043C */   lui       $a0, (0xFFFBFBFC >> 16)
    /* 35674 80044E74 FBFF053C */  lui        $a1, (0xFFFBFBFC >> 16)
    /* 35678 80044E78 FCFBA534 */  ori        $a1, $a1, (0xFFFBFBFC & 0xFFFF)
    /* 3567C 80044E7C 1E00C494 */  lhu        $a0, 0x1E($a2)
    /* 35680 80044E80 2400C294 */  lhu        $v0, 0x24($a2)
    /* 35684 80044E84 1800C38C */  lw         $v1, 0x18($a2)
    /* 35688 80044E88 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 3568C 80044E8C 01004224 */  addiu      $v0, $v0, 0x1
    /* 35690 80044E90 21186500 */  addu       $v1, $v1, $a1
    /* 35694 80044E94 1E00C4A4 */  sh         $a0, 0x1E($a2)
    /* 35698 80044E98 2400C2A4 */  sh         $v0, 0x24($a2)
    /* 3569C 80044E9C BD130108 */  j          .L80044EF4
    /* 356A0 80044EA0 1800C3AC */   sw        $v1, 0x18($a2)
  .L80044EA4:
    /* 356A4 80044EA4 FBFF023C */  lui        $v0, (0xFFFBFBFC >> 16)
    /* 356A8 80044EA8 FCFB4234 */  ori        $v0, $v0, (0xFFFBFBFC & 0xFFFF)
    /* 356AC 80044EAC 2400C394 */  lhu        $v1, 0x24($a2)
    /* 356B0 80044EB0 1800C48C */  lw         $a0, 0x18($a2)
    /* 356B4 80044EB4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 356B8 80044EB8 21208200 */  addu       $a0, $a0, $v0
    /* 356BC 80044EBC 2400C3A4 */  sh         $v1, 0x24($a2)
    /* 356C0 80044EC0 BD130108 */  j          .L80044EF4
    /* 356C4 80044EC4 1800C4AC */   sw        $a0, 0x18($a2)
  .L80044EC8:
    /* 356C8 80044EC8 FBFF043C */  lui        $a0, (0xFFFBFBFC >> 16)
  .L80044ECC:
    /* 356CC 80044ECC FCFB8434 */  ori        $a0, $a0, (0xFFFBFBFC & 0xFFFF)
    /* 356D0 80044ED0 1E00C294 */  lhu        $v0, 0x1E($a2)
    /* 356D4 80044ED4 1800C38C */  lw         $v1, 0x18($a2)
    /* 356D8 80044ED8 FBFF4224 */  addiu      $v0, $v0, -0x5
    /* 356DC 80044EDC 1E00C2A4 */  sh         $v0, 0x1E($a2)
    /* 356E0 80044EE0 2400C294 */  lhu        $v0, 0x24($a2)
    /* 356E4 80044EE4 21186400 */  addu       $v1, $v1, $a0
    /* 356E8 80044EE8 1800C3AC */  sw         $v1, 0x18($a2)
    /* 356EC 80044EEC FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 356F0 80044EF0 2400C2A4 */  sh         $v0, 0x24($a2)
  .L80044EF4:
    /* 356F4 80044EF4 0B00C290 */  lbu        $v0, 0xB($a2)
    /* 356F8 80044EF8 00000000 */  nop
    /* 356FC 80044EFC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 35700 80044F00 0B00C2A0 */  sb         $v0, 0xB($a2)
    /* 35704 80044F04 FF004230 */  andi       $v0, $v0, 0xFF
    /* 35708 80044F08 0C004014 */  bnez       $v0, .L80044F3C
    /* 3570C 80044F0C 00000000 */   nop
    /* 35710 80044F10 0300C290 */  lbu        $v0, 0x3($a2)
    /* 35714 80044F14 0800C390 */  lbu        $v1, 0x8($a2)
    /* 35718 80044F18 80100200 */  sll        $v0, $v0, 2
    /* 3571C 80044F1C 01006324 */  addiu      $v1, $v1, 0x1
    /* 35720 80044F20 0980013C */  lui        $at, %hi(D_80097DE6)
    /* 35724 80044F24 21082200 */  addu       $at, $at, $v0
    /* 35728 80044F28 E67D2490 */  lbu        $a0, %lo(D_80097DE6)($at)
    /* 3572C 80044F2C 60000224 */  addiu      $v0, $zero, 0x60
    /* 35730 80044F30 0800C3A0 */  sb         $v1, 0x8($a2)
    /* 35734 80044F34 2200C2A0 */  sb         $v0, 0x22($a2)
    /* 35738 80044F38 0B00C4A0 */  sb         $a0, 0xB($a2)
  .L80044F3C:
    /* 3573C 80044F3C 0800E003 */  jr         $ra
    /* 35740 80044F40 00000000 */   nop
.size func_80044E50, . - func_80044E50
