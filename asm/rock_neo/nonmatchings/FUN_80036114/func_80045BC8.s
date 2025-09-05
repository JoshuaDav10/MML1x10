.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80045BC8
    /* 363C8 80045BC8 21308000 */  addu       $a2, $a0, $zero
    /* 363CC 80045BCC 0A00C290 */  lbu        $v0, 0xA($a2)
    /* 363D0 80045BD0 0B80033C */  lui        $v1, %hi(Player_work + 0x14)
    /* 363D4 80045BD4 C4516384 */  lh         $v1, %lo(Player_work + 0x14)($v1)
.size func_80045BC8, . - func_80045BC8
