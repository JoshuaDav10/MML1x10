.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800570B0
    /* 478B0 800570B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 478B4 800570B4 21288000 */  addu       $a1, $a0, $zero
    /* 478B8 800570B8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 478BC 800570BC 6C00A28C */  lw         $v0, 0x6C($a1)
    /* 478C0 800570C0 F4118393 */  lbu        $v1, %gp_rel(Moji_flag)($gp)
    /* 478C4 800570C4 02004790 */  lbu        $a3, 0x2($v0)
    /* 478C8 800570C8 03004690 */  lbu        $a2, 0x3($v0)
    /* 478CC 800570CC 01004490 */  lbu        $a0, 0x1($v0)
    /* 478D0 800570D0 04004224 */  addiu      $v0, $v0, 0x4
    /* 478D4 800570D4 0F006414 */  bne        $v1, $a0, .L80057114
    /* 478D8 800570D8 6C00A2AC */   sw        $v0, 0x6C($a1)
    /* 478DC 800570DC 4400A58C */  lw         $a1, 0x44($a1)
    /* 478E0 800570E0 00000000 */  nop
    /* 478E4 800570E4 0300A010 */  beqz       $a1, .L800570F4
    /* 478E8 800570E8 00260700 */   sll       $a0, $a3, 24
    /* 478EC 800570EC 435C0108 */  j          .L8005710C
    /* 478F0 800570F0 03260400 */   sra       $a0, $a0, 24
  .L800570F4:
    /* 478F4 800570F4 03260400 */  sra        $a0, $a0, 24
    /* 478F8 800570F8 80100600 */  sll        $v0, $a2, 2
    /* 478FC 800570FC 0980013C */  lui        $at, %hi(D_8008CACC)
    /* 47900 80057100 21082200 */  addu       $at, $at, $v0
    /* 47904 80057104 CCCA258C */  lw         $a1, %lo(D_8008CACC)($at)
    /* 47908 80057108 FF000624 */  addiu      $a2, $zero, 0xFF
  .L8005710C:
    /* 4790C 8005710C 0B4E010C */  jal        MojiTaskExec
    /* 47910 80057110 00000000 */   nop
  .L80057114:
    /* 47914 80057114 1000BF8F */  lw         $ra, 0x10($sp)
    /* 47918 80057118 01000224 */  addiu      $v0, $zero, 0x1
    /* 4791C 8005711C 0800E003 */  jr         $ra
    /* 47920 80057120 1800BD27 */   addiu     $sp, $sp, 0x18
.size func_800570B0, . - func_800570B0
