.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057744
    /* 47F44 80057744 0C80033C */  lui        $v1, %hi(Game_work + 0x7D)
    /* 47F48 80057748 8D1B6390 */  lbu        $v1, %lo(Game_work + 0x7D)($v1)
    /* 47F4C 8005774C 0C80023C */  lui        $v0, %hi(Game_work + 0x7C)
    /* 47F50 80057750 8C1B4290 */  lbu        $v0, %lo(Game_work + 0x7C)($v0)
    /* 47F54 80057754 00000000 */  nop
    /* 47F58 80057758 06006214 */  bne        $v1, $v0, .L80057774
    /* 47F5C 8005775C 00000000 */   nop
.size func_80057744, . - func_80057744
