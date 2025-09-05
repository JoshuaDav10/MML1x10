.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002F8C4
    /* 200C4 8002F8C4 2400838C */  lw         $v1, 0x24($a0)
    /* 200C8 8002F8C8 00140200 */  sll        $v0, $v0, 16
    /* 200CC 8002F8CC 21186200 */  addu       $v1, $v1, $v0
    /* 200D0 8002F8D0 2C008294 */  lhu        $v0, 0x2C($a0)
    /* 200D4 8002F8D4 240083AC */  sw         $v1, 0x24($a0)
    /* 200D8 8002F8D8 0000A394 */  lhu        $v1, 0x0($a1)
    /* 200DC 8002F8DC 00000000 */  nop
    /* 200E0 8002F8E0 21104300 */  addu       $v0, $v0, $v1
    /* 200E4 8002F8E4 2C0082A4 */  sh         $v0, 0x2C($a0)
    /* 200E8 8002F8E8 30008294 */  lhu        $v0, 0x30($a0)
    /* 200EC 8002F8EC 0400A394 */  lhu        $v1, 0x4($a1)
.size func_8002F8C4, . - func_8002F8C4
    /* 200F0 8002F8F0 00000000 */  nop
