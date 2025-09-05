.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80056580
    /* 46D80 80056580 1400048E */  lw         $a0, 0x14($s0)
    /* 46D84 80056584 21104300 */  addu       $v0, $v0, $v1
    /* 46D88 80056588 02008690 */  lbu        $a2, 0x2($a0)
    /* 46D8C 8005658C 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 46D90 80056590 21082200 */  addu       $at, $at, $v0
    /* 46D94 80056594 F8E22290 */  lbu        $v0, %lo(D_800BE2F8)($at)
    /* 46D98 80056598 01008490 */  lbu        $a0, 0x1($a0)
    /* 46D9C 8005659C 2130C200 */  addu       $a2, $a2, $v0
    /* 46DA0 800565A0 79590108 */  j          .L800565E4
    /* 46DA4 800565A4 FF00C630 */   andi      $a2, $a2, 0xFF
  .L800565A8:
    /* 46DA8 800565A8 71000382 */  lb         $v1, 0x71($s0)
    /* 46DAC 800565AC 38118293 */  lbu        $v0, %gp_rel(D_8009899C)($gp)
    /* 46DB0 800565B0 1400048E */  lw         $a0, 0x14($s0)
    /* 46DB4 800565B4 21186200 */  addu       $v1, $v1, $v0
    /* 46DB8 800565B8 02008290 */  lbu        $v0, 0x2($a0)
    /* 46DBC 800565BC 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 46DC0 800565C0 21082300 */  addu       $at, $at, $v1
    /* 46DC4 800565C4 F8E22380 */  lb         $v1, %lo(D_800BE2F8)($at)
    /* 46DC8 800565C8 01008490 */  lbu        $a0, 0x1($a0)
    /* 46DCC 800565CC 21104300 */  addu       $v0, $v0, $v1
    /* 46DD0 800565D0 80100200 */  sll        $v0, $v0, 2
    /* 46DD4 800565D4 0980013C */  lui        $at, %hi(D_8008CACC)
    /* 46DD8 800565D8 21082200 */  addu       $at, $at, $v0
    /* 46DDC 800565DC CCCA258C */  lw         $a1, %lo(D_8008CACC)($at)
    /* 46DE0 800565E0 FF000624 */  addiu      $a2, $zero, 0xFF
  .L800565E4:
    /* 46DE4 800565E4 0B4E010C */  jal        MojiTaskExec
    /* 46DE8 800565E8 00000000 */   nop
    /* 46DEC 800565EC 1400028E */  lw         $v0, 0x14($s0)
    /* 46DF0 800565F0 00000000 */  nop
    /* 46DF4 800565F4 03004224 */  addiu      $v0, $v0, 0x3
    /* 46DF8 800565F8 140002AE */  sw         $v0, 0x14($s0)
    /* 46DFC 800565FC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 46E00 80056600 1000B08F */  lw         $s0, 0x10($sp)
    /* 46E04 80056604 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 46E08 80056608 0800E003 */  jr         $ra
    /* 46E0C 8005660C 00000000 */   nop
.size func_80056580, . - func_80056580
