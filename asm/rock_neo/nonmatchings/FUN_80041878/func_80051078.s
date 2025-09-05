.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80051078
    /* 41878 80051078 9676000C */  jal        Sce_flag_test
    /* 4187C 8005107C 0F060424 */   addiu     $a0, $zero, 0x60F
    /* 41880 80051080 14014010 */  beqz       $v0, .L800514D4
    /* 41884 80051084 0800033C */   lui       $v1, (0x80000 >> 16)
    /* 41888 80051088 14000296 */  lhu        $v0, 0x14($s0)
    /* 4188C 8005108C 00000000 */  nop
    /* 41890 80051090 08004224 */  addiu      $v0, $v0, 0x8
    /* 41894 80051094 140002A6 */  sh         $v0, 0x14($s0)
    /* 41898 80051098 1C00028E */  lw         $v0, 0x1C($s0)
    /* 4189C 8005109C 00000000 */  nop
    /* 418A0 800510A0 21104300 */  addu       $v0, $v0, $v1
    /* 418A4 800510A4 35450108 */  j          .L800514D4
    /* 418A8 800510A8 1C0002AE */   sw        $v0, 0x1C($s0)
  glabel .L800510AC
    /* 418AC 800510AC 5C46010C */  jal        func_80051970
    /* 418B0 800510B0 2120A000 */   addu      $a0, $a1, $zero
    /* 418B4 800510B4 07014010 */  beqz       $v0, .L800514D4
    /* 418B8 800510B8 21200000 */   addu      $a0, $zero, $zero
    /* 418BC 800510BC 21280000 */  addu       $a1, $zero, $zero
    /* 418C0 800510C0 21300000 */  addu       $a2, $zero, $zero
    /* 418C4 800510C4 0980013C */  lui        $at, %hi(D_8008AA58)
    /* 418C8 800510C8 21083400 */  addu       $at, $at, $s4
    /* 418CC 800510CC 58AA2290 */  lbu        $v0, %lo(D_8008AA58)($at)
.size func_80051078, . - func_80051078
