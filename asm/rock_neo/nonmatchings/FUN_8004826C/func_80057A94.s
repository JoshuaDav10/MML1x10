.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057A94
    /* 48294 80057A94 BE008594 */  lhu        $a1, 0xBE($a0)
    /* 48298 80057A98 CC0F8393 */  lbu        $v1, %gp_rel(D_80098830)($gp)
    /* 4829C 80057A9C 0100A224 */  addiu      $v0, $a1, 0x1
    /* 482A0 80057AA0 80280500 */  sll        $a1, $a1, 2
    /* 482A4 80057AA4 2128A400 */  addu       $a1, $a1, $a0
    /* 482A8 80057AA8 BE0082A4 */  sh         $v0, 0xBE($a0)
    /* 482AC 80057AAC 1400828C */  lw         $v0, 0x14($a0)
    /* 482B0 80057AB0 80180300 */  sll        $v1, $v1, 2
    /* 482B4 80057AB4 01004224 */  addiu      $v0, $v0, 0x1
.size func_80057A94, . - func_80057A94
