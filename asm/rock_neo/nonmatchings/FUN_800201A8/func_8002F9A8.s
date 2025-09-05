.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002F9A8
    /* 201A8 8002F9A8 140082A4 */  sh         $v0, 0x14($a0)
    /* 201AC 8002F9AC 18008294 */  lhu        $v0, 0x18($a0)
    /* 201B0 8002F9B0 0400A394 */  lhu        $v1, 0x4($a1)
.size func_8002F9A8, . - func_8002F9A8
    /* 201B4 8002F9B4 00000000 */  nop
