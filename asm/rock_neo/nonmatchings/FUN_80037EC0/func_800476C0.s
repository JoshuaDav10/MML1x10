.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800476C0
    /* 37EC0 800476C0 0980013C */  lui        $at, (0x80090000 >> 16)
.size func_800476C0, . - func_800476C0
