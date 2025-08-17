.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800354E0
    /* 25CE0 800354E0 0080023C */  lui        $v0, (0x80000000 >> 16)
    /* 25CE4 800354E4 06108200 */  srlv       $v0, $v0, $a0
    /* 25CE8 800354E8 0A80033C */  lui        $v1, %hi(D_80098798)
    /* 25CEC 800354EC 9887638C */  lw         $v1, %lo(D_80098798)($v1)
    /* 25CF0 800354F0 27100200 */  nor        $v0, $zero, $v0
    /* 25CF4 800354F4 24186200 */  and        $v1, $v1, $v0
    /* 25CF8 800354F8 0A80013C */  lui        $at, %hi(D_80098798)
    /* 25CFC 800354FC 988723AC */  sw         $v1, %lo(D_80098798)($at)
    /* 25D00 80035500 0800E003 */  jr         $ra
    /* 25D04 80035504 00000000 */   nop
.size func_800354E0, . - func_800354E0
