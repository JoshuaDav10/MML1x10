.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D414
    /* DC14 8001D414 0A80023C */  lui        $v0, %hi(unknown_Cd_strucptr)
    /* DC18 8001D418 A489428C */  lw         $v0, %lo(unknown_Cd_strucptr)($v0)
    /* DC1C 8001D41C 04000324 */  addiu      $v1, $zero, 0x4
    /* DC20 8001D420 000043AC */  sw         $v1, 0x0($v0)
    /* DC24 8001D424 040044AC */  sw         $a0, 0x4($v0)
    /* DC28 8001D428 080045AC */  sw         $a1, 0x8($v0)
    /* DC2C 8001D42C 10004224 */  addiu      $v0, $v0, 0x10
    /* DC30 8001D430 0A80013C */  lui        $at, %hi(unknown_Cd_strucptr)
    /* DC34 8001D434 A48922AC */  sw         $v0, %lo(unknown_Cd_strucptr)($at)
    /* DC38 8001D438 0800E003 */  jr         $ra
    /* DC3C 8001D43C 00000000 */   nop
.size func_8001D414, . - func_8001D414
