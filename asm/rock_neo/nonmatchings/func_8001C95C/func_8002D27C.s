.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002D27C
    /* 1DA7C 8002D27C 023E0500 */  srl        $a3, $a1, 24
    /* 1DA80 8002D280 80380700 */  sll        $a3, $a3, 2
    /* 1DA84 8002D284 2138E400 */  addu       $a3, $a3, $a0
    /* 1DA88 8002D288 021A0500 */  srl        $v1, $a1, 8
    /* 1DA8C 8002D28C FF006330 */  andi       $v1, $v1, 0xFF
    /* 1DA90 8002D290 82230500 */  srl        $a0, $a1, 14
    /* 1DA94 8002D294 80100300 */  sll        $v0, $v1, 2
    /* 1DA98 8002D298 21104300 */  addu       $v0, $v0, $v1
    /* 1DA9C 8002D29C 80100200 */  sll        $v0, $v0, 2
    /* 1DAA0 8002D2A0 FC038430 */  andi       $a0, $a0, 0x3FC
    /* 1DAA4 8002D2A4 7000E38C */  lw         $v1, 0x70($a3)
    /* 1DAA8 8002D2A8 FF00A530 */  andi       $a1, $a1, 0xFF
    /* 1DAAC 8002D2AC 21104300 */  addu       $v0, $v0, $v1
    /* 1DAB0 8002D2B0 21104400 */  addu       $v0, $v0, $a0
    /* 1DAB4 8002D2B4 40180500 */  sll        $v1, $a1, 1
    /* 1DAB8 8002D2B8 21186500 */  addu       $v1, $v1, $a1
    /* 1DABC 8002D2BC 80180300 */  sll        $v1, $v1, 2
    /* 1DAC0 8002D2C0 1800428C */  lw         $v0, 0x18($v0)
    /* 1DAC4 8002D2C4 0000C48C */  lw         $a0, 0x0($a2)
    /* 1DAC8 8002D2C8 21104300 */  addu       $v0, $v0, $v1
    /* 1DACC 8002D2CC 000044AC */  sw         $a0, 0x0($v0)
    /* 1DAD0 8002D2D0 0400C38C */  lw         $v1, 0x4($a2)
    /* 1DAD4 8002D2D4 0800E003 */  jr         $ra
    /* 1DAD8 8002D2D8 040043AC */   sw        $v1, 0x4($v0)
.size func_8002D27C, . - func_8002D27C
