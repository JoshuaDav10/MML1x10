.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003B420
    /* 2BC20 8003B420 24008004 */  bltz       $a0, .L8003B4B4
    /* 2BC24 8003B424 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 2BC28 8003B428 0C80023C */  lui        $v0, %hi(Game_work + 0x50)
    /* 2BC2C 8003B42C 601B4280 */  lb         $v0, %lo(Game_work + 0x50)($v0)
    /* 2BC30 8003B430 0980013C */  lui        $at, %hi(D_80089F04)
    /* 2BC34 8003B434 21082200 */  addu       $at, $at, $v0
    /* 2BC38 8003B438 049F2380 */  lb         $v1, %lo(D_80089F04)($at)
    /* 2BC3C 8003B43C 00000000 */  nop
    /* 2BC40 8003B440 1B006004 */  bltz       $v1, .L8003B4B0
    /* 2BC44 8003B444 401A0300 */   sll       $v1, $v1, 9
    /* 2BC48 8003B448 0C80023C */  lui        $v0, %hi(D_800BD3B8)
    /* 2BC4C 8003B44C B8D34224 */  addiu      $v0, $v0, %lo(D_800BD3B8)
    /* 2BC50 8003B450 21186200 */  addu       $v1, $v1, $v0
    /* 2BC54 8003B454 03110400 */  sra        $v0, $a0, 4
    /* 2BC58 8003B458 80100200 */  sll        $v0, $v0, 2
    /* 2BC5C 8003B45C 21104300 */  addu       $v0, $v0, $v1
    /* 2BC60 8003B460 0000438C */  lw         $v1, 0x0($v0)
    /* 2BC64 8003B464 0F008230 */  andi       $v0, $a0, 0xF
    /* 2BC68 8003B468 40100200 */  sll        $v0, $v0, 1
    /* 2BC6C 8003B46C 06184300 */  srlv       $v1, $v1, $v0
    /* 2BC70 8003B470 03006330 */  andi       $v1, $v1, 0x3
    /* 2BC74 8003B474 01000224 */  addiu      $v0, $zero, 0x1
    /* 2BC78 8003B478 0E006210 */  beq        $v1, $v0, .L8003B4B4
    /* 2BC7C 8003B47C 00000000 */   nop
    /* 2BC80 8003B480 07006010 */  beqz       $v1, .L8003B4A0
    /* 2BC84 8003B484 02000224 */   addiu     $v0, $zero, 0x2
    /* 2BC88 8003B488 07006210 */  beq        $v1, $v0, .L8003B4A8
    /* 2BC8C 8003B48C 03000224 */   addiu     $v0, $zero, 0x3
    /* 2BC90 8003B490 08006210 */  beq        $v1, $v0, .L8003B4B4
    /* 2BC94 8003B494 00000000 */   nop
    /* 2BC98 8003B498 2DED0008 */  j          .L8003B4B4
    /* 2BC9C 8003B49C FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8003B4A0:
    /* 2BCA0 8003B4A0 2DED0008 */  j          .L8003B4B4
    /* 2BCA4 8003B4A4 21100000 */   addu      $v0, $zero, $zero
  .L8003B4A8:
    /* 2BCA8 8003B4A8 2DED0008 */  j          .L8003B4B4
    /* 2BCAC 8003B4AC 02000224 */   addiu     $v0, $zero, 0x2
  .L8003B4B0:
    /* 2BCB0 8003B4B0 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L8003B4B4:
    /* 2BCB4 8003B4B4 0800E003 */  jr         $ra
    /* 2BCB8 8003B4B8 00000000 */   nop
.size func_8003B420, . - func_8003B420
