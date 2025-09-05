.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002F9DC
    /* 201DC 8002F9DC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 201E0 8002F9E0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 201E4 8002F9E4 0800E003 */  jr         $ra
    /* 201E8 8002F9E8 00000000 */   nop
.size func_8002F9DC, . - func_8002F9DC
