.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D6FC
    /* 4DEFC 8005D6FC 21082300 */  addu       $at, $at, $v1
    /* 4DF00 8005D700 78BD2280 */  lb         $v0, -0x4288($at)
    /* 4DF04 8005D704 00000000 */  nop
    /* 4DF08 8005D708 07004010 */  beqz       $v0, .L8005D728
    /* 4DF0C 8005D70C 00000000 */   nop
    /* 4DF10 8005D710 0C80013C */  lui        $at, %hi(D_800BBD98)
    /* 4DF14 8005D714 21082300 */  addu       $at, $at, $v1
    /* 4DF18 8005D718 98BD228C */  lw         $v0, %lo(D_800BBD98)($at)
.size func_8005D6FC, . - func_8005D6FC
