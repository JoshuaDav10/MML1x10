.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sub_screen_shift_check
    /* 516C0 80060EC0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 516C4 80060EC4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 516C8 80060EC8 0C80113C */  lui        $s1, %hi(D_800C0C2A)
    /* 516CC 80060ECC 2A0C3196 */  lhu        $s1, %lo(D_800C0C2A)($s1)
    /* 516D0 80060ED0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 516D4 80060ED4 21808000 */  addu       $s0, $a0, $zero
    /* 516D8 80060ED8 000C2232 */  andi       $v0, $s1, 0xC00
    /* 516DC 80060EDC 23004010 */  beqz       $v0, .L80060F6C
    /* 516E0 80060EE0 1800BFAF */   sw        $ra, 0x18($sp)
    /* 516E4 80060EE4 82000424 */  addiu      $a0, $zero, 0x82
    /* 516E8 80060EE8 01000524 */  addiu      $a1, $zero, 0x1
    /* 516EC 80060EEC 0268000C */  jal        Sound_call
    /* 516F0 80060EF0 21300000 */   addu      $a2, $zero, $zero
    /* 516F4 80060EF4 8C4E010C */  jal        MojiTaskKill
    /* 516F8 80060EF8 00000000 */   nop
    /* 516FC 80060EFC CA8F010C */  jal        Game_logo_kill
    /* 51700 80060F00 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 51704 80060F04 00042232 */  andi       $v0, $s1, 0x400
    /* 51708 80060F08 0C004010 */  beqz       $v0, .L80060F3C
    /* 5170C 80060F0C 00000000 */   nop
    /* 51710 80060F10 00000292 */  lbu        $v0, 0x0($s0)
    /* 51714 80060F14 00000000 */  nop
    /* 51718 80060F18 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 5171C 80060F1C 000002A2 */  sb         $v0, 0x0($s0)
    /* 51720 80060F20 00160200 */  sll        $v0, $v0, 24
    /* 51724 80060F24 03160200 */  sra        $v0, $v0, 24
    /* 51728 80060F28 02004228 */  slti       $v0, $v0, 0x2
    /* 5172C 80060F2C 0D004010 */  beqz       $v0, .L80060F64
    /* 51730 80060F30 06000224 */   addiu     $v0, $zero, 0x6
    /* 51734 80060F34 D9830108 */  j          .L80060F64
    /* 51738 80060F38 000002A2 */   sb        $v0, 0x0($s0)
  .L80060F3C:
    /* 5173C 80060F3C 00000292 */  lbu        $v0, 0x0($s0)
    /* 51740 80060F40 00000000 */  nop
    /* 51744 80060F44 01004224 */  addiu      $v0, $v0, 0x1
    /* 51748 80060F48 000002A2 */  sb         $v0, 0x0($s0)
    /* 5174C 80060F4C 00160200 */  sll        $v0, $v0, 24
    /* 51750 80060F50 03160200 */  sra        $v0, $v0, 24
    /* 51754 80060F54 07004228 */  slti       $v0, $v0, 0x7
    /* 51758 80060F58 02004014 */  bnez       $v0, .L80060F64
    /* 5175C 80060F5C 02000224 */   addiu     $v0, $zero, 0x2
    /* 51760 80060F60 000002A2 */  sb         $v0, 0x0($s0)
  .L80060F64:
    /* 51764 80060F64 010000A2 */  sb         $zero, 0x1($s0)
    /* 51768 80060F68 020000A6 */  sh         $zero, 0x2($s0)
  .L80060F6C:
    /* 5176C 80060F6C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 51770 80060F70 1400B18F */  lw         $s1, 0x14($sp)
    /* 51774 80060F74 1000B08F */  lw         $s0, 0x10($sp)
    /* 51778 80060F78 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5177C 80060F7C 0800E003 */  jr         $ra
    /* 51780 80060F80 00000000 */   nop
.size Sub_screen_shift_check, . - Sub_screen_shift_check
