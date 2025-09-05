.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80041740
    /* 31F40 80041740 8000BD27 */  addiu      $sp, $sp, 0x80
    /* 31F44 80041744 0800E003 */  jr         $ra
    /* 31F48 80041748 00000000 */   nop
.size func_80041740, . - func_80041740
