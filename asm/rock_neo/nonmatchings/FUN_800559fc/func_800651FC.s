.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800651FC
    /* 559FC 800651FC 05028DA2 */  sb         $t5, 0x205($s4)
.size func_800651FC, . - func_800651FC
