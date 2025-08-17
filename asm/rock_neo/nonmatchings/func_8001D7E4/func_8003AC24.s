.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003AC24
    /* 2B424 8003AC24 1480023C */  lui        $v0, %hi(D_8013A004)
    /* 2B428 8003AC28 04A0428C */  lw         $v0, %lo(D_8013A004)($v0)
    /* 2B42C 8003AC2C 00000000 */  nop
    /* 2B430 8003AC30 18004010 */  beqz       $v0, .L8003AC94
    /* 2B434 8003AC34 21100000 */   addu      $v0, $zero, $zero
    /* 2B438 8003AC38 21180000 */  addu       $v1, $zero, $zero
    /* 2B43C 8003AC3C 1380053C */  lui        $a1, (0x8013A000 >> 16)
    /* 2B440 8003AC40 00A0A534 */  ori        $a1, $a1, (0x8013A000 & 0xFFFF)
  .L8003AC44:
    /* 2B444 8003AC44 0040622C */  sltiu      $v0, $v1, 0x4000
    /* 2B448 8003AC48 12004010 */  beqz       $v0, .L8003AC94
    /* 2B44C 8003AC4C 21100000 */   addu      $v0, $zero, $zero
    /* 2B450 8003AC50 0000A28C */  lw         $v0, 0x0($a1)
    /* 2B454 8003AC54 00000000 */  nop
    /* 2B458 8003AC58 06004414 */  bne        $v0, $a0, .L8003AC74
    /* 2B45C 8003AC5C 00000000 */   nop
    /* 2B460 8003AC60 1480013C */  lui        $at, %hi(D_8013A004)
    /* 2B464 8003AC64 21086100 */  addu       $at, $v1, $at
    /* 2B468 8003AC68 04A0228C */  lw         $v0, %lo(D_8013A004)($at)
    /* 2B46C 8003AC6C 25EB0008 */  j          .L8003AC94
    /* 2B470 8003AC70 00000000 */   nop
  .L8003AC74:
    /* 2B474 8003AC74 08006324 */  addiu      $v1, $v1, 0x8
    /* 2B478 8003AC78 1480013C */  lui        $at, %hi(D_8013A004)
    /* 2B47C 8003AC7C 21086100 */  addu       $at, $v1, $at
    /* 2B480 8003AC80 04A0228C */  lw         $v0, %lo(D_8013A004)($at)
    /* 2B484 8003AC84 00000000 */  nop
    /* 2B488 8003AC88 EEFF4014 */  bnez       $v0, .L8003AC44
    /* 2B48C 8003AC8C 0800A524 */   addiu     $a1, $a1, 0x8
    /* 2B490 8003AC90 21100000 */  addu       $v0, $zero, $zero
  .L8003AC94:
    /* 2B494 8003AC94 0800E003 */  jr         $ra
    /* 2B498 8003AC98 00000000 */   nop
.size func_8003AC24, . - func_8003AC24
