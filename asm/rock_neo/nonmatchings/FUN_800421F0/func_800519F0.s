.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800519F0
    /* 421F0 800519F0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 421F4 800519F4 9676000C */  jal        Sce_flag_test
.size func_800519F0, . - func_800519F0
