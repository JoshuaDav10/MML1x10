.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002DE34
    /* 1E634 8002DE34 00290500 */  sll        $a1, $a1, 4
    /* 1E638 8002DE38 0000C28C */  lw         $v0, 0x0($a2)
    /* 1E63C 8002DE3C 2128A400 */  addu       $a1, $a1, $a0
    /* 1E640 8002DE40 0400A2AC */  sw         $v0, 0x4($a1)
    /* 1E644 8002DE44 0400C28C */  lw         $v0, 0x4($a2)
    /* 1E648 8002DE48 00000000 */  nop
    /* 1E64C 8002DE4C 0800A2AC */  sw         $v0, 0x8($a1)
    /* 1E650 8002DE50 0800C28C */  lw         $v0, 0x8($a2)
    /* 1E654 8002DE54 0800E003 */  jr         $ra
    /* 1E658 8002DE58 0C00A2AC */   sw        $v0, 0xC($a1)
.size func_8002DE34, . - func_8002DE34
