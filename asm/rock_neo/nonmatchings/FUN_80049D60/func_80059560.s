.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059560
    /* 49D60 80059560 21104300 */  addu       $v0, $v0, $v1
    /* 49D64 80059564 0C80013C */  lui        $at, %hi(D_800BE2F7)
    /* 49D68 80059568 21082200 */  addu       $at, $at, $v0
    /* 49D6C 8005956C F7E22280 */  lb         $v0, %lo(D_800BE2F7)($at)
    /* 49D70 80059570 00000000 */  nop
    /* 49D74 80059574 80100200 */  sll        $v0, $v0, 2
    /* 49D78 80059578 0980013C */  lui        $at, %hi(D_8008CCA4)
    /* 49D7C 8005957C 21082200 */  addu       $at, $at, $v0
    /* 49D80 80059580 A4CC228C */  lw         $v0, %lo(D_8008CCA4)($at)
    /* 49D84 80059584 0800E003 */  jr         $ra
    /* 49D88 80059588 140082AC */   sw        $v0, 0x14($a0)
.size func_80059560, . - func_80059560
