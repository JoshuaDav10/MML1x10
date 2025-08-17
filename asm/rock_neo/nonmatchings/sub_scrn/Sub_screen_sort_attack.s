.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sub_screen_sort_attack
    /* 51784 80060F84 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 51788 80060F88 2400B3AF */  sw         $s3, 0x24($sp)
    /* 5178C 80060F8C 0B80133C */  lui        $s3, %hi(Player_work)
    /* 51790 80060F90 B0517326 */  addiu      $s3, $s3, %lo(Player_work)
    /* 51794 80060F94 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 51798 80060F98 21880000 */  addu       $s1, $zero, $zero
    /* 5179C 80060F9C 2800BFAF */  sw         $ra, 0x28($sp)
    /* 517A0 80060FA0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 517A4 80060FA4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 517A8 80060FA8 1F000224 */  addiu      $v0, $zero, 0x1F
  .L80060FAC:
    /* 517AC 80060FAC 23105100 */  subu       $v0, $v0, $s1
    /* 517B0 80060FB0 20004018 */  blez       $v0, .L80061034
    /* 517B4 80060FB4 21800000 */   addu      $s0, $zero, $zero
    /* 517B8 80060FB8 21904000 */  addu       $s2, $v0, $zero
    /* 517BC 80060FBC 21187002 */  addu       $v1, $s3, $s0
  .L80060FC0:
    /* 517C0 80060FC0 55046290 */  lbu        $v0, 0x455($v1)
    /* 517C4 80060FC4 00000000 */  nop
    /* 517C8 80060FC8 16004010 */  beqz       $v0, .L80061024
    /* 517CC 80060FCC 00000000 */   nop
    /* 517D0 80060FD0 54046390 */  lbu        $v1, 0x454($v1)
    /* 517D4 80060FD4 00000000 */  nop
    /* 517D8 80060FD8 0E006010 */  beqz       $v1, .L80061014
    /* 517DC 80060FDC FFFF6324 */   addiu     $v1, $v1, -0x1
    /* 517E0 80060FE0 C0180300 */  sll        $v1, $v1, 3
    /* 517E4 80060FE4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 517E8 80060FE8 C0100200 */  sll        $v0, $v0, 3
    /* 517EC 80060FEC 0980013C */  lui        $at, %hi(Rock_buster_parts_tbl)
    /* 517F0 80060FF0 21082300 */  addu       $at, $at, $v1
    /* 517F4 80060FF4 64FE2380 */  lb         $v1, %lo(Rock_buster_parts_tbl)($at)
    /* 517F8 80060FF8 0980013C */  lui        $at, %hi(Rock_buster_parts_tbl)
    /* 517FC 80060FFC 21082200 */  addu       $at, $at, $v0
    /* 51800 80061000 64FE2280 */  lb         $v0, %lo(Rock_buster_parts_tbl)($at)
    /* 51804 80061004 00000000 */  nop
    /* 51808 80061008 2A186200 */  slt        $v1, $v1, $v0
    /* 5180C 8006100C 05006010 */  beqz       $v1, .L80061024
    /* 51810 80061010 00000000 */   nop
  .L80061014:
    /* 51814 80061014 21206002 */  addu       $a0, $s3, $zero
    /* 51818 80061018 21280002 */  addu       $a1, $s0, $zero
    /* 5181C 8006101C C184010C */  jal        Sub_screen_sort_sub
    /* 51820 80061020 01000626 */   addiu     $a2, $s0, 0x1
  .L80061024:
    /* 51824 80061024 01001026 */  addiu      $s0, $s0, 0x1
    /* 51828 80061028 2A101202 */  slt        $v0, $s0, $s2
    /* 5182C 8006102C E4FF4014 */  bnez       $v0, .L80060FC0
    /* 51830 80061030 21187002 */   addu      $v1, $s3, $s0
  .L80061034:
    /* 51834 80061034 01003126 */  addiu      $s1, $s1, 0x1
    /* 51838 80061038 1F00222A */  slti       $v0, $s1, 0x1F
    /* 5183C 8006103C DBFF4014 */  bnez       $v0, .L80060FAC
    /* 51840 80061040 1F000224 */   addiu     $v0, $zero, 0x1F
    /* 51844 80061044 2800BF8F */  lw         $ra, 0x28($sp)
    /* 51848 80061048 2400B38F */  lw         $s3, 0x24($sp)
    /* 5184C 8006104C 2000B28F */  lw         $s2, 0x20($sp)
    /* 51850 80061050 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 51854 80061054 1800B08F */  lw         $s0, 0x18($sp)
    /* 51858 80061058 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 5185C 8006105C 0800E003 */  jr         $ra
    /* 51860 80061060 00000000 */   nop
.size Sub_screen_sort_attack, . - Sub_screen_sort_attack
