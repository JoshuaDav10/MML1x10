.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800594CC
    /* 49CCC 800594CC C0008394 */  lhu        $v1, 0xC0($a0)
    /* 49CD0 800594D0 00000000 */  nop
    /* 49CD4 800594D4 01006224 */  addiu      $v0, $v1, 0x1
    /* 49CD8 800594D8 80180300 */  sll        $v1, $v1, 2
    /* 49CDC 800594DC C00082A4 */  sh         $v0, 0xC0($a0)
    /* 49CE0 800594E0 6C00828C */  lw         $v0, 0x6C($a0)
    /* 49CE4 800594E4 21186400 */  addu       $v1, $v1, $a0
    /* 49CE8 800594E8 01004224 */  addiu      $v0, $v0, 0x1
    /* 49CEC 800594EC 4C0062AC */  sw         $v0, 0x4C($v1)
    /* 49CF0 800594F0 38118293 */  lbu        $v0, %gp_rel(D_8009899C)($gp)
    /* 49CF4 800594F4 72008380 */  lb         $v1, 0x72($a0)
    /* 49CF8 800594F8 00000000 */  nop
    /* 49CFC 800594FC 21104300 */  addu       $v0, $v0, $v1
    /* 49D00 80059500 0C80013C */  lui        $at, %hi(D_800BE2F7)
    /* 49D04 80059504 21082200 */  addu       $at, $at, $v0
    /* 49D08 80059508 F7E22280 */  lb         $v0, %lo(D_800BE2F7)($at)
    /* 49D0C 8005950C 00000000 */  nop
    /* 49D10 80059510 80100200 */  sll        $v0, $v0, 2
    /* 49D14 80059514 0980013C */  lui        $at, %hi(D_8008CCA4)
    /* 49D18 80059518 21082200 */  addu       $at, $at, $v0
    /* 49D1C 8005951C A4CC228C */  lw         $v0, %lo(D_8008CCA4)($at)
    /* 49D20 80059520 00000000 */  nop
    /* 49D24 80059524 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 49D28 80059528 0800E003 */  jr         $ra
    /* 49D2C 8005952C 01000224 */   addiu     $v0, $zero, 0x1
.size func_800594CC, . - func_800594CC
