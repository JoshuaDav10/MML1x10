.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800605DC
    /* 50DDC 800605DC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 50DE0 800605E0 1000B0AF */  sw         $s0, 0x10($sp)
.size func_800605DC, . - func_800605DC
