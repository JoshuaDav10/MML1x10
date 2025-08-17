.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002DE04
    /* 1E604 8002DE04 C0280500 */  sll        $a1, $a1, 3
    /* 1E608 8002DE08 0000C28C */  lw         $v0, 0x0($a2)
    /* 1E60C 8002DE0C 2128A400 */  addu       $a1, $a1, $a0
    /* 1E610 8002DE10 0000A2AC */  sw         $v0, 0x0($a1)
    /* 1E614 8002DE14 0400C28C */  lw         $v0, 0x4($a2)
    /* 1E618 8002DE18 0800E003 */  jr         $ra
    /* 1E61C 8002DE1C 0400A2AC */   sw        $v0, 0x4($a1)
.size func_8002DE04, . - func_8002DE04
