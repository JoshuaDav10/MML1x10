.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80047C84
    /* 38484 80047C84 090080A0 */  sb         $zero, 0x9($a0)
    /* 38488 80047C88 0980023C */  lui        $v0, %hi(D_8008A6CD)
    /* 3848C 80047C8C CDA64290 */  lbu        $v0, %lo(D_8008A6CD)($v0)
    /* 38490 80047C90 00000000 */  nop
    /* 38494 80047C94 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 38498 80047C98 0980023C */  lui        $v0, %hi(D_8008A6C8)
    /* 3849C 80047C9C C8A6428C */  lw         $v0, %lo(D_8008A6C8)($v0)
    /* 384A0 80047CA0 00000000 */  nop
    /* 384A4 80047CA4 140082AC */  sw         $v0, 0x14($a0)
    /* 384A8 80047CA8 0980023C */  lui        $v0, %hi(D_8008A6CE)
    /* 384AC 80047CAC CEA64290 */  lbu        $v0, %lo(D_8008A6CE)($v0)
    /* 384B0 80047CB0 00000000 */  nop
    /* 384B4 80047CB4 220082A0 */  sb         $v0, 0x22($a0)
    /* 384B8 80047CB8 0980023C */  lui        $v0, %hi(D_8008A6CF)
    /* 384BC 80047CBC CFA64290 */  lbu        $v0, %lo(D_8008A6CF)($v0)
    /* 384C0 80047CC0 00000000 */  nop
    /* 384C4 80047CC4 230082A0 */  sb         $v0, 0x23($a0)
    /* 384C8 80047CC8 0980023C */  lui        $v0, %hi(D_8008A6CC)
    /* 384CC 80047CCC CCA64290 */  lbu        $v0, %lo(D_8008A6CC)($v0)
    /* 384D0 80047CD0 0800E003 */  jr         $ra
    /* 384D4 80047CD4 240082A4 */   sh        $v0, 0x24($a0)
.size func_80047C84, . - func_80047C84
