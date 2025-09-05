.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BC80
    /* 4C480 8005BC80 24104300 */  and        $v0, $v0, $v1
    /* 4C484 8005BC84 0000C2AC */  sw         $v0, 0x0($a2)
  .L8005BC88:
    /* 4C488 8005BC88 0800E003 */  jr         $ra
    /* 4C48C 8005BC8C 00000000 */   nop
.size func_8005BC80, . - func_8005BC80
