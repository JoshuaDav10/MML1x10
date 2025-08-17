.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80030374
    /* 20B74 80030374 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 20B78 80030378 2000BFAF */  sw         $ra, 0x20($sp)
    /* 20B7C 8003037C 0000A284 */  lh         $v0, 0x0($a1)
    /* 20B80 80030380 00008384 */  lh         $v1, 0x0($a0)
    /* 20B84 80030384 00000000 */  nop
    /* 20B88 80030388 23104300 */  subu       $v0, $v0, $v1
    /* 20B8C 8003038C 18004200 */  mult       $v0, $v0
    /* 20B90 80030390 1000A2AF */  sw         $v0, 0x10($sp)
    /* 20B94 80030394 0400A284 */  lh         $v0, 0x4($a1)
    /* 20B98 80030398 04008384 */  lh         $v1, 0x4($a0)
    /* 20B9C 8003039C 12300000 */  mflo       $a2
    /* 20BA0 800303A0 23104300 */  subu       $v0, $v0, $v1
    /* 20BA4 800303A4 00000000 */  nop
    /* 20BA8 800303A8 18004200 */  mult       $v0, $v0
    /* 20BAC 800303AC 1800A2AF */  sw         $v0, 0x18($sp)
    /* 20BB0 800303B0 12180000 */  mflo       $v1
    /* 20BB4 800303B4 5EE9010C */  jal        SquareRoot0
    /* 20BB8 800303B8 2120C300 */   addu      $a0, $a2, $v1
    /* 20BBC 800303BC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 20BC0 800303C0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 20BC4 800303C4 0800E003 */  jr         $ra
    /* 20BC8 800303C8 00000000 */   nop
.size func_80030374, . - func_80030374
