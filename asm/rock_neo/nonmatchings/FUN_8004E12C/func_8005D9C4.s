.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D9C4
    /* 4E1C4 8005D9C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4E1C8 8005D9C8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4E1CC 8005D9CC 0C80013C */  lui        $at, %hi(D_800BBD87)
    /* 4E1D0 8005D9D0 87BD20A0 */  sb         $zero, %lo(D_800BBD87)($at)
    /* 4E1D4 8005D9D4 4A75010C */  jal        func_8005D528
    /* 4E1D8 8005D9D8 00000000 */   nop
    /* 4E1DC 8005D9DC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4E1E0 8005D9E0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4E1E4 8005D9E4 0800E003 */  jr         $ra
    /* 4E1E8 8005D9E8 00000000 */   nop
.size func_8005D9C4, . - func_8005D9C4
