.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80056398
    /* 46B98 80056398 1000B08F */  lw         $s0, 0x10($sp)
    /* 46B9C 8005639C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 46BA0 800563A0 0800E003 */  jr         $ra
    /* 46BA4 800563A4 00000000 */   nop
.size func_80056398, . - func_80056398
