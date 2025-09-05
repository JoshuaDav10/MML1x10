.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002F8B4
    /* 200B4 8002F8B4 00140200 */  sll        $v0, $v0, 16
    /* 200B8 8002F8B8 21186200 */  addu       $v1, $v1, $v0
    /* 200BC 8002F8BC 1C0083AC */  sw         $v1, 0x1C($a0)
    /* 200C0 8002F8C0 0400A284 */  lh         $v0, 0x4($a1)
.size func_8002F8B4, . - func_8002F8B4
