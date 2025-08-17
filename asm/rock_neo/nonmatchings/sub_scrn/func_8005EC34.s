.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005EC34
    /* 4F434 8005EC34 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4F438 8005EC38 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4F43C 8005EC3C DA88010C */  jal        Sub_screen_back_ground_set
    /* 4F440 8005EC40 00000000 */   nop
    /* 4F444 8005EC44 0A80043C */  lui        $a0, %hi(D_800A38F0)
    /* 4F448 8005EC48 F0388424 */  addiu      $a0, $a0, %lo(D_800A38F0)
    /* 4F44C 8005EC4C 00008280 */  lb         $v0, 0x0($a0)
    /* 4F450 8005EC50 00000000 */  nop
    /* 4F454 8005EC54 80100200 */  sll        $v0, $v0, 2
    /* 4F458 8005EC58 0980013C */  lui        $at, %hi(D_8008DBB0)
    /* 4F45C 8005EC5C 21082200 */  addu       $at, $at, $v0
    /* 4F460 8005EC60 B0DB228C */  lw         $v0, %lo(D_8008DBB0)($at)
    /* 4F464 8005EC64 00000000 */  nop
    /* 4F468 8005EC68 09F84000 */  jalr       $v0
    /* 4F46C 8005EC6C 00000000 */   nop
    /* 4F470 8005EC70 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4F474 8005EC74 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4F478 8005EC78 0800E003 */  jr         $ra
    /* 4F47C 8005EC7C 00000000 */   nop
.size func_8005EC34, . - func_8005EC34
