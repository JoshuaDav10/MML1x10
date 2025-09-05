.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040C04
    /* 31404 80040C04 03004230 */  andi       $v0, $v0, 0x3
    /* 31408 80040C08 0D004314 */  bne        $v0, $v1, .L80040C40
    /* 3140C 80040C0C 00000000 */   nop
  .L80040C10:
    /* 31410 80040C10 75010292 */  lbu        $v0, 0x175($s0)
    /* 31414 80040C14 05000324 */  addiu      $v1, $zero, 0x5
    /* 31418 80040C18 05004230 */  andi       $v0, $v0, 0x5
    /* 3141C 80040C1C 08004314 */  bne        $v0, $v1, .L80040C40
    /* 31420 80040C20 21200002 */   addu      $a0, $s0, $zero
    /* 31424 80040C24 21280000 */  addu       $a1, $zero, $zero
    /* 31428 80040C28 00340600 */  sll        $a2, $a2, 16
    /* 3142C 80040C2C 03340600 */  sra        $a2, $a2, 16
    /* 31430 80040C30 8003010C */  jal        func_80040E00
    /* 31434 80040C34 21386002 */   addu      $a3, $s3, $zero
.size func_80040C04, . - func_80040C04
