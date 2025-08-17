.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005ECE0
    /* 4F4E0 8005ECE0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4F4E4 8005ECE4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4F4E8 8005ECE8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 4F4EC 8005ECEC 8387010C */  jal        Sub_screen_basic_param_set
    /* 4F4F0 8005ECF0 21808000 */   addu      $s0, $a0, $zero
    /* 4F4F4 8005ECF4 0A80033C */  lui        $v1, %hi(Moji_flag)
    /* 4F4F8 8005ECF8 588A638C */  lw         $v1, %lo(Moji_flag)($v1)
    /* 4F4FC 8005ECFC 0040023C */  lui        $v0, (0x40000000 >> 16)
    /* 4F500 8005ED00 24106200 */  and        $v0, $v1, $v0
    /* 4F504 8005ED04 14004010 */  beqz       $v0, .L8005ED58
    /* 4F508 8005ED08 FF006330 */   andi      $v1, $v1, 0xFF
    /* 4F50C 8005ED0C 0600622C */  sltiu      $v0, $v1, 0x6
    /* 4F510 8005ED10 1C004010 */  beqz       $v0, .L8005ED84
    /* 4F514 8005ED14 80100300 */   sll       $v0, $v1, 2
    /* 4F518 8005ED18 0180013C */  lui        $at, %hi(jtbl_8001124C)
    /* 4F51C 8005ED1C 21082200 */  addu       $at, $at, $v0
    /* 4F520 8005ED20 4C12228C */  lw         $v0, %lo(jtbl_8001124C)($at)
    /* 4F524 8005ED24 00000000 */  nop
    /* 4F528 8005ED28 08004000 */  jr         $v0
    /* 4F52C 8005ED2C 00000000 */   nop
  glabel .L8005ED30
    /* 4F530 8005ED30 607B0108 */  j          .L8005ED80
    /* 4F534 8005ED34 02000224 */   addiu     $v0, $zero, 0x2
  glabel .L8005ED38
    /* 4F538 8005ED38 607B0108 */  j          .L8005ED80
    /* 4F53C 8005ED3C 03000224 */   addiu     $v0, $zero, 0x3
  glabel .L8005ED40
    /* 4F540 8005ED40 607B0108 */  j          .L8005ED80
    /* 4F544 8005ED44 04000224 */   addiu     $v0, $zero, 0x4
  glabel .L8005ED48
    /* 4F548 8005ED48 607B0108 */  j          .L8005ED80
    /* 4F54C 8005ED4C 05000224 */   addiu     $v0, $zero, 0x5
  glabel .L8005ED50
    /* 4F550 8005ED50 607B0108 */  j          .L8005ED80
    /* 4F554 8005ED54 06000224 */   addiu     $v0, $zero, 0x6
  .L8005ED58:
    /* 4F558 8005ED58 0C80033C */  lui        $v1, %hi(D_800C0C2A)
    /* 4F55C 8005ED5C 2A0C6394 */  lhu        $v1, %lo(D_800C0C2A)($v1)
    /* 4F560 8005ED60 00000000 */  nop
    /* 4F564 8005ED64 01006230 */  andi       $v0, $v1, 0x1
    /* 4F568 8005ED68 05004014 */  bnez       $v0, .L8005ED80
    /* 4F56C 8005ED6C 07000224 */   addiu     $v0, $zero, 0x7
    /* 4F570 8005ED70 08006230 */  andi       $v0, $v1, 0x8
    /* 4F574 8005ED74 04004010 */  beqz       $v0, .L8005ED88
    /* 4F578 8005ED78 21100000 */   addu      $v0, $zero, $zero
  glabel .L8005ED7C
    /* 4F57C 8005ED7C 08000224 */  addiu      $v0, $zero, 0x8
  .L8005ED80:
    /* 4F580 8005ED80 000002AE */  sw         $v0, 0x0($s0)
  .L8005ED84:
    /* 4F584 8005ED84 21100000 */  addu       $v0, $zero, $zero
  .L8005ED88:
    /* 4F588 8005ED88 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4F58C 8005ED8C 1000B08F */  lw         $s0, 0x10($sp)
    /* 4F590 8005ED90 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4F594 8005ED94 0800E003 */  jr         $ra
    /* 4F598 8005ED98 00000000 */   nop
.size func_8005ECE0, . - func_8005ECE0
