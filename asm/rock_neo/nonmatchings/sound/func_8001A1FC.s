.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001A1FC
    /* A9FC 8001A1FC 21180000 */  addu       $v1, $zero, $zero
    /* AA00 8001A200 21280000 */  addu       $a1, $zero, $zero
  .L8001A204:
    /* AA04 8001A204 0C80013C */  lui        $at, %hi(Game_work + 0x1BA)
    /* AA08 8001A208 21082500 */  addu       $at, $at, $a1
    /* AA0C 8001A20C CA1C2290 */  lbu        $v0, %lo(Game_work + 0x1BA)($at)
    /* AA10 8001A210 00000000 */  nop
    /* AA14 8001A214 06004410 */  beq        $v0, $a0, .L8001A230
    /* AA18 8001A218 21106000 */   addu      $v0, $v1, $zero
    /* AA1C 8001A21C 01006324 */  addiu      $v1, $v1, 0x1
    /* AA20 8001A220 05006228 */  slti       $v0, $v1, 0x5
    /* AA24 8001A224 F7FF4014 */  bnez       $v0, .L8001A204
    /* AA28 8001A228 0800A524 */   addiu     $a1, $a1, 0x8
    /* AA2C 8001A22C FFFF0224 */  addiu      $v0, $zero, -0x1
  .L8001A230:
    /* AA30 8001A230 0800E003 */  jr         $ra
    /* AA34 8001A234 00000000 */   nop
.size func_8001A1FC, . - func_8001A1FC
