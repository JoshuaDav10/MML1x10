.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800414E0
    /* 31CE0 800414E0 2000B08F */  lw         $s0, 0x20($sp)
    /* 31CE4 800414E4 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 31CE8 800414E8 0800E003 */  jr         $ra
    /* 31CEC 800414EC 00000000 */   nop
.size func_800414E0, . - func_800414E0
