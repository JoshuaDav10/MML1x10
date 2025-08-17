.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002F998
    /* 20198 8002F998 14008294 */  lhu        $v0, 0x14($a0)
    /* 2019C 8002F99C 0000A394 */  lhu        $v1, 0x0($a1)
    /* 201A0 8002F9A0 00000000 */  nop
    /* 201A4 8002F9A4 21104300 */  addu       $v0, $v0, $v1
    /* 201A8 8002F9A8 140082A4 */  sh         $v0, 0x14($a0)
    /* 201AC 8002F9AC 18008294 */  lhu        $v0, 0x18($a0)
    /* 201B0 8002F9B0 0400A394 */  lhu        $v1, 0x4($a1)
    /* 201B4 8002F9B4 00000000 */  nop
    /* 201B8 8002F9B8 21104300 */  addu       $v0, $v0, $v1
    /* 201BC 8002F9BC 0800E003 */  jr         $ra
    /* 201C0 8002F9C0 180082A4 */   sh        $v0, 0x18($a0)
.size func_8002F998, . - func_8002F998
