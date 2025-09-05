.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005113C
    /* 4193C 8005113C E5004010 */  beqz       $v0, .L800514D4
    /* 41940 80051140 21200000 */   addu      $a0, $zero, $zero
    /* 41944 80051144 0F002232 */  andi       $v0, $s1, 0xF
    /* 41948 80051148 0980013C */  lui        $at, %hi(D_8008AA44)
    /* 4194C 8005114C 21082200 */  addu       $at, $at, $v0
    /* 41950 80051150 44AA2790 */  lbu        $a3, %lo(D_8008AA44)($at)
    /* 41954 80051154 32450108 */  j          .L800514C8
    /* 41958 80051158 21280000 */   addu      $a1, $zero, $zero
  glabel .L8005115C
    /* 4195C 8005115C 5C46010C */  jal        func_80051970
    /* 41960 80051160 2120A000 */   addu      $a0, $a1, $zero
    /* 41964 80051164 DB004010 */  beqz       $v0, .L800514D4
    /* 41968 80051168 21200000 */   addu      $a0, $zero, $zero
    /* 4196C 8005116C 0F002232 */  andi       $v0, $s1, 0xF
    /* 41970 80051170 0980013C */  lui        $at, %hi(D_8008AA60)
    /* 41974 80051174 21082200 */  addu       $at, $at, $v0
    /* 41978 80051178 60AA2790 */  lbu        $a3, %lo(D_8008AA60)($at)
    /* 4197C 8005117C 32450108 */  j          .L800514C8
    /* 41980 80051180 21280000 */   addu      $a1, $zero, $zero
  glabel .L80051184
    /* 41984 80051184 5C46010C */  jal        func_80051970
    /* 41988 80051188 2120A000 */   addu      $a0, $a1, $zero
    /* 4198C 8005118C D1004010 */  beqz       $v0, .L800514D4
    /* 41990 80051190 21200000 */   addu      $a0, $zero, $zero
.size func_8005113C, . - func_8005113C
