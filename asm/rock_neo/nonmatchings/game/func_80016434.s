.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80016434
    /* 6C34 80016434 02000224 */  addiu      $v0, $zero, 0x2
    /* 6C38 80016438 1C008214 */  bne        $a0, $v0, .L800164AC
    /* 6C3C 8001643C 03000224 */   addiu     $v0, $zero, 0x3
    /* 6C40 80016440 0C80013C */  lui        $at, %hi(D_800C356C)
    /* 6C44 80016444 6C3522A0 */  sb         $v0, %lo(D_800C356C)($at)
    /* 6C48 80016448 18000224 */  addiu      $v0, $zero, 0x18
    /* 6C4C 8001644C 0C80013C */  lui        $at, %hi(D_800C356E)
    /* 6C50 80016450 6E3522A0 */  sb         $v0, %lo(D_800C356E)($at)
    /* 6C54 80016454 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 6C58 80016458 0C80013C */  lui        $at, %hi(D_800C3562)
    /* 6C5C 8001645C 623522A4 */  sh         $v0, %lo(D_800C3562)($at)
    /* 6C60 80016460 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 6C64 80016464 0C80013C */  lui        $at, %hi(D_800C3570)
    /* 6C68 80016468 703522A0 */  sb         $v0, %lo(D_800C3570)($at)
    /* 6C6C 8001646C 1B000224 */  addiu      $v0, $zero, 0x1B
    /* 6C70 80016470 0C80013C */  lui        $at, %hi(Game_work + 0x79)
    /* 6C74 80016474 891B22A0 */  sb         $v0, %lo(Game_work + 0x79)($at)
    /* 6C78 80016478 01000224 */  addiu      $v0, $zero, 0x1
    /* 6C7C 8001647C 0C80013C */  lui        $at, %hi(D_800C356F)
    /* 6C80 80016480 6F3520A0 */  sb         $zero, %lo(D_800C356F)($at)
    /* 6C84 80016484 0C80013C */  lui        $at, %hi(D_800C3560)
    /* 6C88 80016488 603520A4 */  sh         $zero, %lo(D_800C3560)($at)
    /* 6C8C 8001648C 0C80013C */  lui        $at, %hi(D_800C3564)
    /* 6C90 80016490 643520A4 */  sh         $zero, %lo(D_800C3564)($at)
    /* 6C94 80016494 0C80013C */  lui        $at, %hi(D_800C356A)
    /* 6C98 80016498 6A3520A4 */  sh         $zero, %lo(D_800C356A)($at)
    /* 6C9C 8001649C 0C80013C */  lui        $at, %hi(D_800C356D)
    /* 6CA0 800164A0 6D3520A0 */  sb         $zero, %lo(D_800C356D)($at)
    /* 6CA4 800164A4 0C80013C */  lui        $at, %hi(Game_work + 0x7A)
    /* 6CA8 800164A8 8A1B22A0 */  sb         $v0, %lo(Game_work + 0x7A)($at)
  .L800164AC:
    /* 6CAC 800164AC 0800E003 */  jr         $ra
    /* 6CB0 800164B0 00000000 */   nop
.size func_80016434, . - func_80016434
