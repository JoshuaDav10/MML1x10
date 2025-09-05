.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800577FC
    /* 47FFC 800577FC 0C80023C */  lui        $v0, (0x800C0000 >> 16)
.size func_800577FC, . - func_800577FC
