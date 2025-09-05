.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004327C
    /* 33A7C 8004327C 0C80023C */  lui        $v0, %hi(Game_work + 0x1C)
    /* 33A80 80043280 2C1B428C */  lw         $v0, %lo(Game_work + 0x1C)($v0)
    /* 33A84 80043284 23200400 */  negu       $a0, $a0
    /* 33A88 80043288 2B104400 */  sltu       $v0, $v0, $a0
    /* 33A8C 8004328C 0800E003 */  jr         $ra
    /* 33A90 80043290 23100200 */   negu      $v0, $v0
.size func_8004327C, . - func_8004327C
