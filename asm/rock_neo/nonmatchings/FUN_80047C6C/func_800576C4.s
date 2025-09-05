.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800576C4
    /* 47EC4 800576C4 C0008594 */  lhu        $a1, 0xC0($a0)
    /* 47EC8 800576C8 CC0F8393 */  lbu        $v1, %gp_rel(D_80098830)($gp)
.size func_800576C4, . - func_800576C4
