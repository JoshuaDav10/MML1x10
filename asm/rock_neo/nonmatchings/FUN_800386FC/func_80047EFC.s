.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80047EFC
    /* 386FC 80047EFC 28004726 */  addiu      $a3, $s2, 0x28
    /* 38700 80047F00 FF004230 */  andi       $v0, $v0, 0xFF
    /* 38704 80047F04 CB004014 */  bnez       $v0, .L80048234
    /* 38708 80047F08 2800A7AF */   sw        $a3, 0x28($sp)
    /* 3870C 80047F0C 03004292 */  lbu        $v0, 0x3($s2)
    /* 38710 80047F10 00000000 */  nop
    /* 38714 80047F14 0D004010 */  beqz       $v0, .L80047F4C
    /* 38718 80047F18 00000000 */   nop
    /* 3871C 80047F1C 0B80023C */  lui        $v0, %hi(Player_work + 0x400)
    /* 38720 80047F20 B0554294 */  lhu        $v0, %lo(Player_work + 0x400)($v0)
    /* 38724 80047F24 00000000 */  nop
    /* 38728 80047F28 1C0042A6 */  sh         $v0, 0x1C($s2)
    /* 3872C 80047F2C 0B80023C */  lui        $v0, %hi(Player_work + 0x402)
    /* 38730 80047F30 B2554294 */  lhu        $v0, %lo(Player_work + 0x402)($v0)
    /* 38734 80047F34 00000000 */  nop
    /* 38738 80047F38 1E0042A6 */  sh         $v0, 0x1E($s2)
    /* 3873C 80047F3C 0B80023C */  lui        $v0, %hi(Player_work + 0x404)
    /* 38740 80047F40 B4554294 */  lhu        $v0, %lo(Player_work + 0x404)($v0)
    /* 38744 80047F44 DF1F0108 */  j          .L80047F7C
    /* 38748 80047F48 200042A6 */   sh        $v0, 0x20($s2)
  .L80047F4C:
    /* 3874C 80047F4C 0B80023C */  lui        $v0, %hi(Player_work + 0x418)
    /* 38750 80047F50 C8554294 */  lhu        $v0, %lo(Player_work + 0x418)($v0)
    /* 38754 80047F54 00000000 */  nop
    /* 38758 80047F58 1C0042A6 */  sh         $v0, 0x1C($s2)
    /* 3875C 80047F5C 0B80023C */  lui        $v0, %hi(Player_work + 0x41A)
    /* 38760 80047F60 CA554294 */  lhu        $v0, %lo(Player_work + 0x41A)($v0)
    /* 38764 80047F64 00000000 */  nop
    /* 38768 80047F68 1E0042A6 */  sh         $v0, 0x1E($s2)
    /* 3876C 80047F6C 0B80023C */  lui        $v0, %hi(Player_work + 0x41C)
    /* 38770 80047F70 CC554294 */  lhu        $v0, %lo(Player_work + 0x41C)($v0)
    /* 38774 80047F74 00000000 */  nop
    /* 38778 80047F78 200042A6 */  sh         $v0, 0x20($s2)
  .L80047F7C:
    /* 3877C 80047F7C 21A80000 */  addu       $s5, $zero, $zero
  .L80047F80:
    /* 38780 80047F80 21B80000 */  addu       $s7, $zero, $zero
    /* 38784 80047F84 05001424 */  addiu      $s4, $zero, 0x5
    /* 38788 80047F88 94FF010C */  jal        rand
    /* 3878C 80047F8C 21B00000 */   addu      $s6, $zero, $zero
    /* 38790 80047F90 07004230 */  andi       $v0, $v0, 0x7
    /* 38794 80047F94 10004234 */  ori        $v0, $v0, 0x10
    /* 38798 80047F98 94FF010C */  jal        rand
    /* 3879C 80047F9C 2000A2A7 */   sh        $v0, 0x20($sp)
    /* 387A0 80047FA0 3F004230 */  andi       $v0, $v0, 0x3F
    /* 387A4 80047FA4 FF00A332 */  andi       $v1, $s5, 0xFF
    /* 387A8 80047FA8 2800A78F */  lw         $a3, 0x28($sp)
    /* 387AC 80047FAC 40180300 */  sll        $v1, $v1, 1
    /* 387B0 80047FB0 21806700 */  addu       $s0, $v1, $a3
    /* 387B4 80047FB4 10000396 */  lhu        $v1, 0x10($s0)
    /* 387B8 80047FB8 00000000 */  nop
    /* 387BC 80047FBC 01006324 */  addiu      $v1, $v1, 0x1
    /* 387C0 80047FC0 100003A6 */  sh         $v1, 0x10($s0)
    /* 387C4 80047FC4 001C0300 */  sll        $v1, $v1, 16
    /* 387C8 80047FC8 031C0300 */  sra        $v1, $v1, 16
    /* 387CC 80047FCC 08006328 */  slti       $v1, $v1, 0x8
    /* 387D0 80047FD0 02006014 */  bnez       $v1, .L80047FDC
    /* 387D4 80047FD4 28005E24 */   addiu     $fp, $v0, 0x28
    /* 387D8 80047FD8 100000A6 */  sh         $zero, 0x10($s0)
  .L80047FDC:
    /* 387DC 80047FDC 03004292 */  lbu        $v0, 0x3($s2)
    /* 387E0 80047FE0 00000000 */  nop
    /* 387E4 80047FE4 08004010 */  beqz       $v0, .L80048008
    /* 387E8 80047FE8 00000000 */   nop
.size func_80047EFC, . - func_80047EFC
