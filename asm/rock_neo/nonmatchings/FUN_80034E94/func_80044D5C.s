.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80044D5C
    /* 3555C 80044D5C 21308000 */  addu       $a2, $a0, $zero
    /* 35560 80044D60 0300C390 */  lbu        $v1, 0x3($a2)
    /* 35564 80044D64 01000224 */  addiu      $v0, $zero, 0x1
    /* 35568 80044D68 11006210 */  beq        $v1, $v0, .L80044DB0
    /* 3556C 80044D6C 02006228 */   slti      $v0, $v1, 0x2
    /* 35570 80044D70 18004010 */  beqz       $v0, .L80044DD4
    /* 35574 80044D74 00000000 */   nop
    /* 35578 80044D78 17006014 */  bnez       $v1, .L80044DD8
    /* 3557C 80044D7C 0400043C */   lui       $a0, (0x40404 >> 16)
    /* 35580 80044D80 FBFF053C */  lui        $a1, (0xFFFBFBFC >> 16)
    /* 35584 80044D84 FCFBA534 */  ori        $a1, $a1, (0xFFFBFBFC & 0xFFFF)
    /* 35588 80044D88 1E00C494 */  lhu        $a0, 0x1E($a2)
    /* 3558C 80044D8C 2400C294 */  lhu        $v0, 0x24($a2)
    /* 35590 80044D90 1800C38C */  lw         $v1, 0x18($a2)
    /* 35594 80044D94 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 35598 80044D98 01004224 */  addiu      $v0, $v0, 0x1
    /* 3559C 80044D9C 21186500 */  addu       $v1, $v1, $a1
    /* 355A0 80044DA0 1E00C4A4 */  sh         $a0, 0x1E($a2)
    /* 355A4 80044DA4 2400C2A4 */  sh         $v0, 0x24($a2)
    /* 355A8 80044DA8 80130108 */  j          .L80044E00
    /* 355AC 80044DAC 1800C3AC */   sw        $v1, 0x18($a2)
  .L80044DB0:
    /* 355B0 80044DB0 FBFF023C */  lui        $v0, (0xFFFBFBFC >> 16)
    /* 355B4 80044DB4 FCFB4234 */  ori        $v0, $v0, (0xFFFBFBFC & 0xFFFF)
    /* 355B8 80044DB8 2400C394 */  lhu        $v1, 0x24($a2)
    /* 355BC 80044DBC 1800C48C */  lw         $a0, 0x18($a2)
    /* 355C0 80044DC0 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 355C4 80044DC4 21208200 */  addu       $a0, $a0, $v0
    /* 355C8 80044DC8 2400C3A4 */  sh         $v1, 0x24($a2)
    /* 355CC 80044DCC 80130108 */  j          .L80044E00
    /* 355D0 80044DD0 1800C4AC */   sw        $a0, 0x18($a2)
  .L80044DD4:
    /* 355D4 80044DD4 0400043C */  lui        $a0, (0x40404 >> 16)
  .L80044DD8:
    /* 355D8 80044DD8 04048434 */  ori        $a0, $a0, (0x40404 & 0xFFFF)
    /* 355DC 80044DDC 1E00C294 */  lhu        $v0, 0x1E($a2)
    /* 355E0 80044DE0 1800C38C */  lw         $v1, 0x18($a2)
    /* 355E4 80044DE4 FBFF4224 */  addiu      $v0, $v0, -0x5
    /* 355E8 80044DE8 1E00C2A4 */  sh         $v0, 0x1E($a2)
    /* 355EC 80044DEC 2400C294 */  lhu        $v0, 0x24($a2)
    /* 355F0 80044DF0 21186400 */  addu       $v1, $v1, $a0
    /* 355F4 80044DF4 1800C3AC */  sw         $v1, 0x18($a2)
    /* 355F8 80044DF8 06004224 */  addiu      $v0, $v0, 0x6
    /* 355FC 80044DFC 2400C2A4 */  sh         $v0, 0x24($a2)
.size func_80044D5C, . - func_80044D5C
