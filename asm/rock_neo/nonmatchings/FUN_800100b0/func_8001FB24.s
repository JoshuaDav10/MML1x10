.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001FB24
    /* 10324 8001FB24 0C80033C */  lui        $v1, %hi(Game_work + 0x52)
    /* 10328 8001FB28 621B6380 */  lb         $v1, %lo(Game_work + 0x52)($v1)
    /* 1032C 8001FB2C 06000224 */  addiu      $v0, $zero, 0x6
    /* 10330 8001FB30 02006214 */  bne        $v1, $v0, .L8001FB3C
    /* 10334 8001FB34 66000224 */   addiu     $v0, $zero, 0x66
    /* 10338 8001FB38 67000224 */  addiu      $v0, $zero, 0x67
  .L8001FB3C:
    /* 1033C 8001FB3C AA0982A7 */  sh         $v0, %gp_rel(D_8009820E)($gp)
    /* 10340 8001FB40 A80982A7 */  sh         $v0, %gp_rel(D_8009820C)($gp)
    /* 10344 8001FB44 A60982A7 */  sh         $v0, %gp_rel(D_8009820A)($gp)
    /* 10348 8001FB48 A40982A7 */  sh         $v0, %gp_rel(D_80098208)($gp)
    /* 1034C 8001FB4C 0800E003 */  jr         $ra
    /* 10350 8001FB50 00000000 */   nop
.size func_8001FB24, . - func_8001FB24
