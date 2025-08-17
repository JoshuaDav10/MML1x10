.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D468
    /* DC68 8001D468 0A80023C */  lui        $v0, %hi(unknown_Cd_strucptr)
    /* DC6C 8001D46C A489428C */  lw         $v0, %lo(unknown_Cd_strucptr)($v0)
    /* DC70 8001D470 01000324 */  addiu      $v1, $zero, 0x1
    /* DC74 8001D474 000043AC */  sw         $v1, 0x0($v0)
    /* DC78 8001D478 040044AC */  sw         $a0, 0x4($v0)
    /* DC7C 8001D47C 080045AC */  sw         $a1, 0x8($v0)
    /* DC80 8001D480 10004224 */  addiu      $v0, $v0, 0x10
    /* DC84 8001D484 0A80013C */  lui        $at, %hi(unknown_Cd_strucptr)
    /* DC88 8001D488 A48922AC */  sw         $v0, %lo(unknown_Cd_strucptr)($at)
    /* DC8C 8001D48C 0800E003 */  jr         $ra
    /* DC90 8001D490 00000000 */   nop
.size func_8001D468, . - func_8001D468
