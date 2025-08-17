.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002D22C
    /* 1DA2C 8002D22C 02360500 */  srl        $a2, $a1, 24
    /* 1DA30 8002D230 80300600 */  sll        $a2, $a2, 2
    /* 1DA34 8002D234 2130C400 */  addu       $a2, $a2, $a0
    /* 1DA38 8002D238 02120500 */  srl        $v0, $a1, 8
    /* 1DA3C 8002D23C FF004230 */  andi       $v0, $v0, 0xFF
    /* 1DA40 8002D240 82230500 */  srl        $a0, $a1, 14
    /* 1DA44 8002D244 80180200 */  sll        $v1, $v0, 2
    /* 1DA48 8002D248 21186200 */  addu       $v1, $v1, $v0
    /* 1DA4C 8002D24C 80180300 */  sll        $v1, $v1, 2
    /* 1DA50 8002D250 FC038430 */  andi       $a0, $a0, 0x3FC
    /* 1DA54 8002D254 7000C28C */  lw         $v0, 0x70($a2)
    /* 1DA58 8002D258 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 1DA5C 8002D25C 21186200 */  addu       $v1, $v1, $v0
    /* 1DA60 8002D260 21186400 */  addu       $v1, $v1, $a0
    /* 1DA64 8002D264 40100500 */  sll        $v0, $a1, 1
    /* 1DA68 8002D268 21104500 */  addu       $v0, $v0, $a1
    /* 1DA6C 8002D26C 1800638C */  lw         $v1, 0x18($v1)
    /* 1DA70 8002D270 80100200 */  sll        $v0, $v0, 2
    /* 1DA74 8002D274 0800E003 */  jr         $ra
    /* 1DA78 8002D278 21106200 */   addu      $v0, $v1, $v0
.size func_8002D22C, . - func_8002D22C
