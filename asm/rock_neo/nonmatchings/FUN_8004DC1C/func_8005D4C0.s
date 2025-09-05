.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D4C0
    /* 4DCC0 8005D4C0 01000224 */  addiu      $v0, $zero, 0x1
    /* 4DCC4 8005D4C4 0C80013C */  lui        $at, %hi(D_800BBD84)
    /* 4DCC8 8005D4C8 84BD22A0 */  sb         $v0, %lo(D_800BBD84)($at)
    /* 4DCCC 8005D4CC 0800E003 */  jr         $ra
    /* 4DCD0 8005D4D0 00000000 */   nop
.size func_8005D4C0, . - func_8005D4C0
