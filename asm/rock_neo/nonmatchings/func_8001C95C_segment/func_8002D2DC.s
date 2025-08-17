.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002D2DC
    /* 1DADC 8002D2DC 02360500 */  srl        $a2, $a1, 24
    /* 1DAE0 8002D2E0 80300600 */  sll        $a2, $a2, 2
    /* 1DAE4 8002D2E4 2130C400 */  addu       $a2, $a2, $a0
    /* 1DAE8 8002D2E8 021A0500 */  srl        $v1, $a1, 8
    /* 1DAEC 8002D2EC FF006330 */  andi       $v1, $v1, 0xFF
    /* 1DAF0 8002D2F0 80100300 */  sll        $v0, $v1, 2
    /* 1DAF4 8002D2F4 21104300 */  addu       $v0, $v0, $v1
    /* 1DAF8 8002D2F8 80100200 */  sll        $v0, $v0, 2
    /* 1DAFC 8002D2FC 7000C38C */  lw         $v1, 0x70($a2)
    /* 1DB00 8002D300 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 1DB04 8002D304 21104300 */  addu       $v0, $v0, $v1
    /* 1DB08 8002D308 2400428C */  lw         $v0, 0x24($v0)
    /* 1DB0C 8002D30C C0280500 */  sll        $a1, $a1, 3
    /* 1DB10 8002D310 0800E003 */  jr         $ra
    /* 1DB14 8002D314 21104500 */   addu      $v0, $v0, $a1
.size func_8002D2DC, . - func_8002D2DC
