.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002F998
    /* 20198 8002F998 14008294 */  lhu        $v0, 0x14($a0)
    /* 2019C 8002F99C 0000A394 */  lhu        $v1, 0x0($a1)
    /* 201A0 8002F9A0 00000000 */  nop
    /* 201A4 8002F9A4 21104300 */  addu       $v0, $v0, $v1
.size func_8002F998, . - func_8002F998
