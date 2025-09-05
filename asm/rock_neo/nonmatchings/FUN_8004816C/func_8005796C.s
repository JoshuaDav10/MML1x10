.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005796C
    /* 4816C 8005796C 80200200 */  sll        $a0, $v0, 2
    /* 48170 80057970 21208200 */  addu       $a0, $a0, $v0
    /* 48174 80057974 40200400 */  sll        $a0, $a0, 1
    /* 48178 80057978 A50C010C */  jal        func_80043294
    /* 4817C 8005797C 23200400 */   negu      $a0, $a0
    /* 48180 80057980 00000292 */  lbu        $v0, 0x0($s0)
    /* 48184 80057984 6A5E0108 */  j          .L800579A8
    /* 48188 80057988 00000000 */   nop
  .L8005798C:
    /* 4818C 8005798C 0C80043C */  lui        $a0, %hi(Game_work + 0x1C)
    /* 48190 80057990 2C1B848C */  lw         $a0, %lo(Game_work + 0x1C)($a0)
    /* 48194 80057994 21300000 */  addu       $a2, $zero, $zero
    /* 48198 80057998 A50C010C */  jal        func_80043294
    /* 4819C 8005799C 23200400 */   negu      $a0, $a0
    /* 481A0 800579A0 0C80023C */  lui        $v0, %hi(Game_work + 0x7D)
    /* 481A4 800579A4 8D1B4290 */  lbu        $v0, %lo(Game_work + 0x7D)($v0)
  .L800579A8:
    /* 481A8 800579A8 0C80013C */  lui        $at, %hi(Game_work + 0x7C)
    /* 481AC 800579AC 8C1B22A0 */  sb         $v0, %lo(Game_work + 0x7C)($at)
    /* 481B0 800579B0 6C00238E */  lw         $v1, 0x6C($s1)
    /* 481B4 800579B4 01000224 */  addiu      $v0, $zero, 0x1
.size func_8005796C, . - func_8005796C
