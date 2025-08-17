.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003A538
    /* 2AD38 8003A538 9C10848F */  lw         $a0, %gp_rel(D_80098900)($gp)
    /* 2AD3C 8003A53C 0A80053C */  lui        $a1, %hi(D_80098904)
    /* 2AD40 8003A540 0489A58C */  lw         $a1, %lo(D_80098904)($a1)
    /* 2AD44 8003A544 0A80063C */  lui        $a2, %hi(D_80098908)
    /* 2AD48 8003A548 0889C68C */  lw         $a2, %lo(D_80098908)($a2)
    /* 2AD4C 8003A54C A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 2AD50 8003A550 5400BFAF */  sw         $ra, 0x54($sp)
    /* 2AD54 8003A554 5000B6AF */  sw         $s6, 0x50($sp)
    /* 2AD58 8003A558 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 2AD5C 8003A55C 4800B4AF */  sw         $s4, 0x48($sp)
    /* 2AD60 8003A560 4400B3AF */  sw         $s3, 0x44($sp)
    /* 2AD64 8003A564 4000B2AF */  sw         $s2, 0x40($sp)
    /* 2AD68 8003A568 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 2AD6C 8003A56C 36EC010C */  jal        SetBackColor
    /* 2AD70 8003A570 3800B0AF */   sw        $s0, 0x38($sp)
    /* 2AD74 8003A574 0C108297 */  lhu        $v0, %gp_rel(D_80098870)($gp)
    /* 2AD78 8003A578 0A80033C */  lui        $v1, %hi(D_80098872)
    /* 2AD7C 8003A57C 72886394 */  lhu        $v1, %lo(D_80098872)($v1)
    /* 2AD80 8003A580 0A80053C */  lui        $a1, %hi(D_80098874)
    /* 2AD84 8003A584 7488A594 */  lhu        $a1, %lo(D_80098874)($a1)
    /* 2AD88 8003A588 0A80063C */  lui        $a2, %hi(D_80098878)
    /* 2AD8C 8003A58C 7888C694 */  lhu        $a2, %lo(D_80098878)($a2)
    /* 2AD90 8003A590 0A80073C */  lui        $a3, %hi(D_8009887A)
    /* 2AD94 8003A594 7A88E794 */  lhu        $a3, %lo(D_8009887A)($a3)
    /* 2AD98 8003A598 0A80083C */  lui        $t0, %hi(D_8009887C)
    /* 2AD9C 8003A59C 7C880895 */  lhu        $t0, %lo(D_8009887C)($t0)
    /* 2ADA0 8003A5A0 0A80093C */  lui        $t1, %hi(D_80098880)
    /* 2ADA4 8003A5A4 80882995 */  lhu        $t1, %lo(D_80098880)($t1)
    /* 2ADA8 8003A5A8 0A800A3C */  lui        $t2, %hi(D_80098882)
    /* 2ADAC 8003A5AC 82884A95 */  lhu        $t2, %lo(D_80098882)($t2)
    /* 2ADB0 8003A5B0 0A800B3C */  lui        $t3, %hi(D_80098884)
    /* 2ADB4 8003A5B4 84886B95 */  lhu        $t3, %lo(D_80098884)($t3)
    /* 2ADB8 8003A5B8 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2ADBC 8003A5BC 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 2ADC0 8003A5C0 1200A3A7 */  sh         $v1, 0x12($sp)
    /* 2ADC4 8003A5C4 1400A5A7 */  sh         $a1, 0x14($sp)
    /* 2ADC8 8003A5C8 1600A6A7 */  sh         $a2, 0x16($sp)
    /* 2ADCC 8003A5CC 1800A7A7 */  sh         $a3, 0x18($sp)
    /* 2ADD0 8003A5D0 1A00A8A7 */  sh         $t0, 0x1A($sp)
    /* 2ADD4 8003A5D4 1C00A9A7 */  sh         $t1, 0x1C($sp)
    /* 2ADD8 8003A5D8 1E00AAA7 */  sh         $t2, 0x1E($sp)
    /* 2ADDC 8003A5DC D2EB010C */  jal        SetLightMatrix
    /* 2ADE0 8003A5E0 2000ABA7 */   sh        $t3, 0x20($sp)
    /* 2ADE4 8003A5E4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2ADE8 8003A5E8 F40F8293 */  lbu        $v0, %gp_rel(D_80098858)($gp)
    /* 2ADEC 8003A5EC 0A80033C */  lui        $v1, %hi(D_8009885A)
    /* 2ADF0 8003A5F0 5A886390 */  lbu        $v1, %lo(D_8009885A)($v1)
    /* 2ADF4 8003A5F4 00110200 */  sll        $v0, $v0, 4
    /* 2ADF8 8003A5F8 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 2ADFC 8003A5FC 0A80023C */  lui        $v0, %hi(D_80098859)
    /* 2AE00 8003A600 59884290 */  lbu        $v0, %lo(D_80098859)($v0)
    /* 2AE04 8003A604 00190300 */  sll        $v1, $v1, 4
    /* 2AE08 8003A608 1C00A3A7 */  sh         $v1, 0x1C($sp)
    /* 2AE0C 8003A60C 0A80033C */  lui        $v1, %hi(D_8009885D)
    /* 2AE10 8003A610 5D886390 */  lbu        $v1, %lo(D_8009885D)($v1)
    /* 2AE14 8003A614 00110200 */  sll        $v0, $v0, 4
    /* 2AE18 8003A618 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 2AE1C 8003A61C 0A80023C */  lui        $v0, %hi(D_8009885C)
    /* 2AE20 8003A620 5C884290 */  lbu        $v0, %lo(D_8009885C)($v0)
    /* 2AE24 8003A624 00190300 */  sll        $v1, $v1, 4
    /* 2AE28 8003A628 1800A3A7 */  sh         $v1, 0x18($sp)
    /* 2AE2C 8003A62C 0A80033C */  lui        $v1, %hi(D_80098860)
    /* 2AE30 8003A630 60886390 */  lbu        $v1, %lo(D_80098860)($v1)
    /* 2AE34 8003A634 00110200 */  sll        $v0, $v0, 4
    /* 2AE38 8003A638 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 2AE3C 8003A63C 0A80023C */  lui        $v0, %hi(D_8009885E)
    /* 2AE40 8003A640 5E884290 */  lbu        $v0, %lo(D_8009885E)($v0)
    /* 2AE44 8003A644 00190300 */  sll        $v1, $v1, 4
    /* 2AE48 8003A648 1400A3A7 */  sh         $v1, 0x14($sp)
    /* 2AE4C 8003A64C 0A80033C */  lui        $v1, %hi(D_80098862)
    /* 2AE50 8003A650 62886390 */  lbu        $v1, %lo(D_80098862)($v1)
    /* 2AE54 8003A654 00110200 */  sll        $v0, $v0, 4
    /* 2AE58 8003A658 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* 2AE5C 8003A65C 0A80023C */  lui        $v0, %hi(D_80098861)
    /* 2AE60 8003A660 61884290 */  lbu        $v0, %lo(D_80098861)($v0)
    /* 2AE64 8003A664 00190300 */  sll        $v1, $v1, 4
    /* 2AE68 8003A668 2000A3A7 */  sh         $v1, 0x20($sp)
    /* 2AE6C 8003A66C 00110200 */  sll        $v0, $v0, 4
    /* 2AE70 8003A670 DEEB010C */  jal        SetColorMatrix
    /* 2AE74 8003A674 1A00A2A7 */   sh        $v0, 0x1A($sp)
    /* 2AE78 8003A678 1480023C */  lui        $v0, %hi(D_8013A004)
    /* 2AE7C 8003A67C 04A0428C */  lw         $v0, %lo(D_8013A004)($v0)
    /* 2AE80 8003A680 00000000 */  nop
    /* 2AE84 8003A684 24004010 */  beqz       $v0, .L8003A718
    /* 2AE88 8003A688 FF00163C */   lui       $s6, (0xFFFFFF >> 16)
    /* 2AE8C 8003A68C FFFFD636 */  ori        $s6, $s6, (0xFFFFFF & 0xFFFF)
    /* 2AE90 8003A690 1380153C */  lui        $s5, (0x8013A004 >> 16)
    /* 2AE94 8003A694 04A0B536 */  ori        $s5, $s5, (0x8013A004 & 0xFFFF)
    /* 2AE98 8003A698 0000A28E */  lw         $v0, 0x0($s5)
    /* 2AE9C 8003A69C 06001424 */  addiu      $s4, $zero, 0x6
  .L8003A6A0:
    /* 2AEA0 8003A6A0 24105600 */  and        $v0, $v0, $s6
    /* 2AEA4 8003A6A4 18005324 */  addiu      $s3, $v0, 0x18
  .L8003A6A8:
    /* 2AEA8 8003A6A8 0000628E */  lw         $v0, 0x0($s3)
    /* 2AEAC 8003A6AC 00000000 */  nop
    /* 2AEB0 8003A6B0 24205600 */  and        $a0, $v0, $s6
    /* 2AEB4 8003A6B4 0000838C */  lw         $v1, 0x0($a0)
    /* 2AEB8 8003A6B8 21880000 */  addu       $s1, $zero, $zero
    /* 2AEBC 8003A6BC FF006230 */  andi       $v0, $v1, 0xFF
    /* 2AEC0 8003A6C0 80100200 */  sll        $v0, $v0, 2
    /* 2AEC4 8003A6C4 04004224 */  addiu      $v0, $v0, 0x4
    /* 2AEC8 8003A6C8 003F6330 */  andi       $v1, $v1, 0x3F00
    /* 2AECC 8003A6CC C2910300 */  srl        $s2, $v1, 7
    /* 2AED0 8003A6D0 08004012 */  beqz       $s2, .L8003A6F4
    /* 2AED4 8003A6D4 21208200 */   addu      $a0, $a0, $v0
    /* 2AED8 8003A6D8 21808000 */  addu       $s0, $a0, $zero
  .L8003A6DC:
    /* 2AEDC 8003A6DC 46EA000C */  jal        func_8003A918
    /* 2AEE0 8003A6E0 21200002 */   addu      $a0, $s0, $zero
    /* 2AEE4 8003A6E4 02003126 */  addiu      $s1, $s1, 0x2
    /* 2AEE8 8003A6E8 2B103202 */  sltu       $v0, $s1, $s2
    /* 2AEEC 8003A6EC FBFF4014 */  bnez       $v0, .L8003A6DC
    /* 2AEF0 8003A6F0 08001026 */   addiu     $s0, $s0, 0x8
  .L8003A6F4:
    /* 2AEF4 8003A6F4 01009426 */  addiu      $s4, $s4, 0x1
    /* 2AEF8 8003A6F8 0C00822E */  sltiu      $v0, $s4, 0xC
    /* 2AEFC 8003A6FC EAFF4014 */  bnez       $v0, .L8003A6A8
    /* 2AF00 8003A700 04007326 */   addiu     $s3, $s3, 0x4
    /* 2AF04 8003A704 0800B526 */  addiu      $s5, $s5, 0x8
    /* 2AF08 8003A708 0000A28E */  lw         $v0, 0x0($s5)
    /* 2AF0C 8003A70C 00000000 */  nop
    /* 2AF10 8003A710 E3FF4014 */  bnez       $v0, .L8003A6A0
    /* 2AF14 8003A714 06001424 */   addiu     $s4, $zero, 0x6
  .L8003A718:
    /* 2AF18 8003A718 5400BF8F */  lw         $ra, 0x54($sp)
    /* 2AF1C 8003A71C 5000B68F */  lw         $s6, 0x50($sp)
    /* 2AF20 8003A720 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 2AF24 8003A724 4800B48F */  lw         $s4, 0x48($sp)
    /* 2AF28 8003A728 4400B38F */  lw         $s3, 0x44($sp)
    /* 2AF2C 8003A72C 4000B28F */  lw         $s2, 0x40($sp)
    /* 2AF30 8003A730 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 2AF34 8003A734 3800B08F */  lw         $s0, 0x38($sp)
    /* 2AF38 8003A738 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 2AF3C 8003A73C 0800E003 */  jr         $ra
    /* 2AF40 8003A740 00000000 */   nop
.size func_8003A538, . - func_8003A538
