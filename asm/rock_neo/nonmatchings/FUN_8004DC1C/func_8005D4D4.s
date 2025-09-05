.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D4D4
    /* 4DCD4 8005D4D4 02000224 */  addiu      $v0, $zero, 0x2
    /* 4DCD8 8005D4D8 0C80013C */  lui        $at, %hi(D_800BBD84)
    /* 4DCDC 8005D4DC 84BD22A0 */  sb         $v0, %lo(D_800BBD84)($at)
    /* 4DCE0 8005D4E0 0800E003 */  jr         $ra
    /* 4DCE4 8005D4E4 00000000 */   nop
.size func_8005D4D4, . - func_8005D4D4
