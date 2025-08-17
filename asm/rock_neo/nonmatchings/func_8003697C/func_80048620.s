.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80048620
    /* 38E20 80048620 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 38E24 80048624 1000B0AF */  sw         $s0, 0x10($sp)
    /* 38E28 80048628 21808000 */  addu       $s0, $a0, $zero
    /* 38E2C 8004862C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 38E30 80048630 1400B1AF */  sw         $s1, 0x14($sp)
    /* 38E34 80048634 05000392 */  lbu        $v1, 0x5($s0)
    /* 38E38 80048638 0C80113C */  lui        $s1, %hi(D_800C3558)
    /* 38E3C 8004863C 58353126 */  addiu      $s1, $s1, %lo(D_800C3558)
    /* 38E40 80048640 05006010 */  beqz       $v1, .L80048658
    /* 38E44 80048644 01000224 */   addiu     $v0, $zero, 0x1
    /* 38E48 80048648 10006210 */  beq        $v1, $v0, .L8004868C
    /* 38E4C 8004864C 00000000 */   nop
    /* 38E50 80048650 BB210108 */  j          .L800486EC
    /* 38E54 80048654 00000000 */   nop
  .L80048658:
    /* 38E58 80048658 08000424 */  addiu      $a0, $zero, 0x8
    /* 38E5C 8004865C 0B80023C */  lui        $v0, %hi(Player_work + 0x6)
    /* 38E60 80048660 B6514290 */  lbu        $v0, %lo(Player_work + 0x6)($v0)
    /* 38E64 80048664 00000000 */  nop
    /* 38E68 80048668 03004234 */  ori        $v0, $v0, 0x3
    /* 38E6C 8004866C 0B80013C */  lui        $at, %hi(Player_work + 0x6)
    /* 38E70 80048670 B65122A0 */  sb         $v0, %lo(Player_work + 0x6)($at)
    /* 38E74 80048674 A4BB000C */  jal        Obj_work_flag_change
    /* 38E78 80048678 80000524 */   addiu     $a1, $zero, 0x80
    /* 38E7C 8004867C 05000292 */  lbu        $v0, 0x5($s0)
    /* 38E80 80048680 00000000 */  nop
    /* 38E84 80048684 01004224 */  addiu      $v0, $v0, 0x1
    /* 38E88 80048688 050002A2 */  sb         $v0, 0x5($s0)
  .L8004868C:
    /* 38E8C 8004868C 0B80043C */  lui        $a0, %hi(Player_work)
    /* 38E90 80048690 B0518424 */  addiu      $a0, $a0, %lo(Player_work)
    /* 38E94 80048694 8E08010C */  jal        func_80042238
    /* 38E98 80048698 00000000 */   nop
    /* 38E9C 8004869C 13004010 */  beqz       $v0, .L800486EC
    /* 38EA0 800486A0 00000000 */   nop
    /* 38EA4 800486A4 10002296 */  lhu        $v0, 0x10($s1)
    /* 38EA8 800486A8 00000000 */  nop
    /* 38EAC 800486AC 00140200 */  sll        $v0, $v0, 16
    /* 38EB0 800486B0 83160200 */  sra        $v0, $v0, 26
    /* 38EB4 800486B4 80100200 */  sll        $v0, $v0, 2
    /* 38EB8 800486B8 0980013C */  lui        $at, %hi(D_8008A9D4)
    /* 38EBC 800486BC 21082200 */  addu       $at, $at, $v0
    /* 38EC0 800486C0 D4A9228C */  lw         $v0, %lo(D_8008A9D4)($at)
    /* 38EC4 800486C4 0C80013C */  lui        $at, %hi(D_800BC7F0)
    /* 38EC8 800486C8 F0C722AC */  sw         $v0, %lo(D_800BC7F0)($at)
    /* 38ECC 800486CC 04000392 */  lbu        $v1, 0x4($s0)
    /* 38ED0 800486D0 0980023C */  lui        $v0, %hi(D_8008A9F4)
    /* 38ED4 800486D4 F4A94224 */  addiu      $v0, $v0, %lo(D_8008A9F4)
    /* 38ED8 800486D8 A40002AE */  sw         $v0, 0xA4($s0)
    /* 38EDC 800486DC 0C0000AE */  sw         $zero, 0xC($s0)
    /* 38EE0 800486E0 050000A2 */  sb         $zero, 0x5($s0)
    /* 38EE4 800486E4 01006324 */  addiu      $v1, $v1, 0x1
    /* 38EE8 800486E8 040003A2 */  sb         $v1, 0x4($s0)
  .L800486EC:
    /* 38EEC 800486EC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 38EF0 800486F0 1400B18F */  lw         $s1, 0x14($sp)
    /* 38EF4 800486F4 1000B08F */  lw         $s0, 0x10($sp)
    /* 38EF8 800486F8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 38EFC 800486FC 0800E003 */  jr         $ra
    /* 38F00 80048700 00000000 */   nop
.size func_80048620, . - func_80048620
