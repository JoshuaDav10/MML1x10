.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005B980
    /* 4C180 8005B980 0000A3AC */  sw         $v1, 0x0($a1)
  .L8005B984:
    /* 4C184 8005B984 0800E003 */  jr         $ra
    /* 4C188 8005B988 00000000 */   nop
.size func_8005B980, . - func_8005B980
