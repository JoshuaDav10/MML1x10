.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005EF1C
    /* 4F71C 8005EF1C 107C0108 */  j          .L8005F040
    /* 4F720 8005EF20 00000000 */   nop
  .L8005EF24:
    /* 4F724 8005EF24 5776010C */  jal        func_8005D95C
    /* 4F728 8005EF28 00000000 */   nop
    /* 4F72C 8005EF2C 08004014 */  bnez       $v0, .L8005EF50
    /* 4F730 8005EF30 21200000 */   addu      $a0, $zero, $zero
    /* 4F734 8005EF34 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F738 8005EF38 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F73C 8005EF3C 58000624 */  addiu      $a2, $zero, 0x58
  .L8005EF40:
    /* 4F740 8005EF40 0B4E010C */  jal        MojiTaskExec
    /* 4F744 8005EF44 00000000 */   nop
    /* 4F748 8005EF48 587C0108 */  j          .L8005F160
    /* 4F74C 8005EF4C 00000000 */   nop
  .L8005EF50:
    /* 4F750 8005EF50 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F754 8005EF54 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F758 8005EF58 0B4E010C */  jal        MojiTaskExec
    /* 4F75C 8005EF5C 50000624 */   addiu     $a2, $zero, 0x50
    /* 4F760 8005EF60 5D7C0108 */  j          .L8005F174
    /* 4F764 8005EF64 00000000 */   nop
  .L8005EF68:
    /* 4F768 8005EF68 7201C580 */  lb         $a1, 0x172($a2)
    /* 4F76C 8005EF6C 00000000 */  nop
    /* 4F770 8005EF70 40100500 */  sll        $v0, $a1, 1
    /* 4F774 8005EF74 0980013C */  lui        $at, %hi(D_8008DB08)
    /* 4F778 8005EF78 21082200 */  addu       $at, $at, $v0
    /* 4F77C 8005EF7C 08DB2394 */  lhu        $v1, %lo(D_8008DB08)($at)
    /* 4F780 8005EF80 00000000 */  nop
    /* 4F784 8005EF84 80100300 */  sll        $v0, $v1, 2
    /* 4F788 8005EF88 21104300 */  addu       $v0, $v0, $v1
    /* 4F78C 8005EF8C 80100200 */  sll        $v0, $v0, 2
    /* 4F790 8005EF90 C0180500 */  sll        $v1, $a1, 3
    /* 4F794 8005EF94 2188C300 */  addu       $s1, $a2, $v1
    /* 4F798 8005EF98 0980033C */  lui        $v1, %hi(D_8008D7EC)
    /* 4F79C 8005EF9C ECD76324 */  addiu      $v1, $v1, %lo(D_8008D7EC)
    /* 4F7A0 8005EFA0 F5042482 */  lb         $a0, 0x4F5($s1)
    /* 4F7A4 8005EFA4 21104300 */  addu       $v0, $v0, $v1
    /* 4F7A8 8005EFA8 21104400 */  addu       $v0, $v0, $a0
    /* 4F7AC 8005EFAC 00004390 */  lbu        $v1, 0x0($v0)
    /* 4F7B0 8005EFB0 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 4F7B4 8005EFB4 05006214 */  bne        $v1, $v0, .L8005EFCC
    /* 4F7B8 8005EFB8 21200000 */   addu      $a0, $zero, $zero
    /* 4F7BC 8005EFBC 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F7C0 8005EFC0 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F7C4 8005EFC4 D07B0108 */  j          .L8005EF40
    /* 4F7C8 8005EFC8 3B000624 */   addiu     $a2, $zero, 0x3B
  .L8005EFCC:
    /* 4F7CC 8005EFCC 81DD000C */  jal        func_80037604
    /* 4F7D0 8005EFD0 2120C000 */   addu      $a0, $a2, $zero
    /* 4F7D4 8005EFD4 FA042386 */  lh         $v1, 0x4FA($s1)
    /* 4F7D8 8005EFD8 00000000 */  nop
    /* 4F7DC 8005EFDC 05004314 */  bne        $v0, $v1, .L8005EFF4
    /* 4F7E0 8005EFE0 21200000 */   addu      $a0, $zero, $zero
    /* 4F7E4 8005EFE4 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F7E8 8005EFE8 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F7EC 8005EFEC D07B0108 */  j          .L8005EF40
    /* 4F7F0 8005EFF0 3A000624 */   addiu     $a2, $zero, 0x3A
  .L8005EFF4:
    /* 4F7F4 8005EFF4 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F7F8 8005EFF8 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F7FC 8005EFFC 0B4E010C */  jal        MojiTaskExec
    /* 4F800 8005F000 52000624 */   addiu     $a2, $zero, 0x52
    /* 4F804 8005F004 5D7C0108 */  j          .L8005F174
    /* 4F808 8005F008 00000000 */   nop
  .L8005F00C:
    /* 4F80C 8005F00C 21200000 */  addu       $a0, $zero, $zero
    /* 4F810 8005F010 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F814 8005F014 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F818 8005F018 0B4E010C */  jal        MojiTaskExec
    /* 4F81C 8005F01C 54000624 */   addiu     $a2, $zero, 0x54
    /* 4F820 8005F020 5D7C0108 */  j          .L8005F174
    /* 4F824 8005F024 00000000 */   nop
  .L8005F028:
    /* 4F828 8005F028 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F82C 8005F02C 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F830 8005F030 0B4E010C */  jal        MojiTaskExec
    /* 4F834 8005F034 56000624 */   addiu     $a2, $zero, 0x56
    /* 4F838 8005F038 5D7C0108 */  j          .L8005F174
    /* 4F83C 8005F03C 00000000 */   nop
  .L8005F040:
    /* 4F840 8005F040 04000292 */  lbu        $v0, 0x4($s0)
    /* 4F844 8005F044 00000000 */  nop
    /* 4F848 8005F048 5800422C */  sltiu      $v0, $v0, 0x58
    /* 4F84C 8005F04C 05004010 */  beqz       $v0, .L8005F064
    /* 4F850 8005F050 21200000 */   addu      $a0, $zero, $zero
    /* 4F854 8005F054 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F858 8005F058 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F85C 8005F05C D07B0108 */  j          .L8005EF40
    /* 4F860 8005F060 5A000624 */   addiu     $a2, $zero, 0x5A
  .L8005F064:
    /* 4F864 8005F064 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4F868 8005F068 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4F86C 8005F06C D07B0108 */  j          .L8005EF40
    /* 4F870 8005F070 5B000624 */   addiu     $a2, $zero, 0x5B
  glabel .L8005F074
    /* 4F874 8005F074 0A80033C */  lui        $v1, %hi(Moji_flag)
    /* 4F878 8005F078 588A638C */  lw         $v1, %lo(Moji_flag)($v1)
    /* 4F87C 8005F07C 0040023C */  lui        $v0, (0x40000000 >> 16)
    /* 4F880 8005F080 24106200 */  and        $v0, $v1, $v0
    /* 4F884 8005F084 5B004010 */  beqz       $v0, .L8005F1F4
    /* 4F888 8005F088 FF006230 */   andi      $v0, $v1, 0xFF
    /* 4F88C 8005F08C 39004014 */  bnez       $v0, .L8005F174
    /* 4F890 8005F090 42000224 */   addiu     $v0, $zero, 0x42
    /* 4F894 8005F094 04000392 */  lbu        $v1, 0x4($s0)
    /* 4F898 8005F098 00000000 */  nop
    /* 4F89C 8005F09C 1F006210 */  beq        $v1, $v0, .L8005F11C
    /* 4F8A0 8005F0A0 43006228 */   slti      $v0, $v1, 0x43
    /* 4F8A4 8005F0A4 07004010 */  beqz       $v0, .L8005F0C4
    /* 4F8A8 8005F0A8 40000224 */   addiu     $v0, $zero, 0x40
.size func_8005EF1C, . - func_8005EF1C
