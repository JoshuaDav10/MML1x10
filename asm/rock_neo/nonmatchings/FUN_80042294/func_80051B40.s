.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80051B40
    /* 42340 80051B40 0C80023C */  lui        $v0, (0x800C0000 >> 16)
.size func_80051B40, . - func_80051B40
