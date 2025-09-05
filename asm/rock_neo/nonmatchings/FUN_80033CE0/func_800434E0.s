.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800434E0
    /* 33CE0 800434E0 2800B08F */  lw         $s0, 0x28($sp)
    /* 33CE4 800434E4 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 33CE8 800434E8 0800E003 */  jr         $ra
    /* 33CEC 800434EC 00000000 */   nop
.size func_800434E0, . - func_800434E0
