.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800510D0
    /* 418D0 800510D0 0F002732 */  andi       $a3, $s1, 0xF
    /* 418D4 800510D4 33450108 */  j          .L800514CC
    /* 418D8 800510D8 21384700 */   addu      $a3, $v0, $a3
  glabel .L800510DC
    /* 418DC 800510DC 5C46010C */  jal        func_80051970
    /* 418E0 800510E0 2120A000 */   addu      $a0, $a1, $zero
    /* 418E4 800510E4 FB004010 */  beqz       $v0, .L800514D4
    /* 418E8 800510E8 21200000 */   addu      $a0, $zero, $zero
    /* 418EC 800510EC 10000524 */  addiu      $a1, $zero, 0x10
    /* 418F0 800510F0 21300000 */  addu       $a2, $zero, $zero
    /* 418F4 800510F4 0980013C */  lui        $at, %hi(D_8008AA58)
    /* 418F8 800510F8 21083400 */  addu       $at, $at, $s4
    /* 418FC 800510FC 58AA2290 */  lbu        $v0, %lo(D_8008AA58)($at)
    /* 41900 80051100 0F002732 */  andi       $a3, $s1, 0xF
    /* 41904 80051104 33450108 */  j          .L800514CC
    /* 41908 80051108 21384700 */   addu      $a3, $v0, $a3
  glabel .L8005110C
    /* 4190C 8005110C 5C46010C */  jal        func_80051970
    /* 41910 80051110 2120A000 */   addu      $a0, $a1, $zero
    /* 41914 80051114 EF004010 */  beqz       $v0, .L800514D4
    /* 41918 80051118 21200000 */   addu      $a0, $zero, $zero
    /* 4191C 8005111C 0F002232 */  andi       $v0, $s1, 0xF
    /* 41920 80051120 0980013C */  lui        $at, %hi(D_8008AA6C)
    /* 41924 80051124 21082200 */  addu       $at, $at, $v0
    /* 41928 80051128 6CAA2790 */  lbu        $a3, %lo(D_8008AA6C)($at)
    /* 4192C 8005112C 32450108 */  j          .L800514C8
    /* 41930 80051130 21280000 */   addu      $a1, $zero, $zero
  glabel .L80051134
    /* 41934 80051134 5C46010C */  jal        func_80051970
    /* 41938 80051138 2120A000 */   addu      $a0, $a1, $zero
.size func_800510D0, . - func_800510D0
