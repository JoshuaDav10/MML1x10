.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800482A8
    /* 38AA8 800482A8 0B80033C */  lui        $v1, %hi(Player_work + 0x9)
    /* 38AAC 800482AC B9516390 */  lbu        $v1, %lo(Player_work + 0x9)($v1)
    /* 38AB0 800482B0 03000224 */  addiu      $v0, $zero, 0x3
    /* 38AB4 800482B4 21006214 */  bne        $v1, $v0, .L8004833C
.size func_800482A8, . - func_800482A8
