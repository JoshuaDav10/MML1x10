.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005958C
    /* 49D8C 8005958C C0008394 */  lhu        $v1, 0xC0($a0)
    /* 49D90 80059590 00000000 */  nop
    /* 49D94 80059594 01006224 */  addiu      $v0, $v1, 0x1
.size func_8005958C, . - func_8005958C
