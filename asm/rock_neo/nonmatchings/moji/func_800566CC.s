.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800566CC
    /* 46ECC 800566CC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 46ED0 800566D0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 46ED4 800566D4 21808000 */  addu       $s0, $a0, $zero
    /* 46ED8 800566D8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 46EDC 800566DC 4400058E */  lw         $a1, 0x44($s0)
    /* 46EE0 800566E0 00000000 */  nop
    /* 46EE4 800566E4 0C00A010 */  beqz       $a1, .L80056718
    /* 46EE8 800566E8 00000000 */   nop
    /* 46EEC 800566EC 1400038E */  lw         $v1, 0x14($s0)
    /* 46EF0 800566F0 71000282 */  lb         $v0, 0x71($s0)
    /* 46EF4 800566F4 02006690 */  lbu        $a2, 0x2($v1)
    /* 46EF8 800566F8 0B80013C */  lui        $at, %hi(Player_work + 0x450)
    /* 46EFC 800566FC 21082200 */  addu       $at, $at, $v0
    /* 46F00 80056700 00562290 */  lbu        $v0, %lo(Player_work + 0x450)($at)
    /* 46F04 80056704 01006490 */  lbu        $a0, 0x1($v1)
    /* 46F08 80056708 2130C200 */  addu       $a2, $a2, $v0
    /* 46F0C 8005670C FFFFC624 */  addiu      $a2, $a2, -0x1
    /* 46F10 80056710 D3590108 */  j          .L8005674C
    /* 46F14 80056714 FF00C630 */   andi      $a2, $a2, 0xFF
  .L80056718:
    /* 46F18 80056718 1400048E */  lw         $a0, 0x14($s0)
    /* 46F1C 8005671C 71000382 */  lb         $v1, 0x71($s0)
    /* 46F20 80056720 02008290 */  lbu        $v0, 0x2($a0)
    /* 46F24 80056724 0B80013C */  lui        $at, %hi(Player_work + 0x450)
    /* 46F28 80056728 21082300 */  addu       $at, $at, $v1
    /* 46F2C 8005672C 00562390 */  lbu        $v1, %lo(Player_work + 0x450)($at)
    /* 46F30 80056730 01008490 */  lbu        $a0, 0x1($a0)
    /* 46F34 80056734 21104300 */  addu       $v0, $v0, $v1
    /* 46F38 80056738 80100200 */  sll        $v0, $v0, 2
    /* 46F3C 8005673C 0980013C */  lui        $at, %hi(D_8008CAC8)
    /* 46F40 80056740 21082200 */  addu       $at, $at, $v0
    /* 46F44 80056744 C8CA258C */  lw         $a1, %lo(D_8008CAC8)($at)
    /* 46F48 80056748 FF000624 */  addiu      $a2, $zero, 0xFF
  .L8005674C:
    /* 46F4C 8005674C 0B4E010C */  jal        MojiTaskExec
    /* 46F50 80056750 00000000 */   nop
    /* 46F54 80056754 1400028E */  lw         $v0, 0x14($s0)
    /* 46F58 80056758 00000000 */  nop
    /* 46F5C 8005675C 03004224 */  addiu      $v0, $v0, 0x3
    /* 46F60 80056760 140002AE */  sw         $v0, 0x14($s0)
    /* 46F64 80056764 1400BF8F */  lw         $ra, 0x14($sp)
    /* 46F68 80056768 1000B08F */  lw         $s0, 0x10($sp)
    /* 46F6C 8005676C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 46F70 80056770 0800E003 */  jr         $ra
    /* 46F74 80056774 00000000 */   nop
.size func_800566CC, . - func_800566CC
