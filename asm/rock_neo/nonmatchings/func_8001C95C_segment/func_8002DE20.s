.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002DE20
    /* 1E620 8002DE20 00290500 */  sll        $a1, $a1, 4
    /* 1E624 8002DE24 0000C28C */  lw         $v0, 0x0($a2)
    /* 1E628 8002DE28 2128A400 */  addu       $a1, $a1, $a0
    /* 1E62C 8002DE2C 0800E003 */  jr         $ra
    /* 1E630 8002DE30 0000A2AC */   sw        $v0, 0x0($a1)
.size func_8002DE20, . - func_8002DE20
