.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80048E6C
    /* 3966C 80048E6C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 39670 80048E70 21108000 */  addu       $v0, $a0, $zero
    /* 39674 80048E74 14004424 */  addiu      $a0, $v0, 0x14
    /* 39678 80048E78 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3967C 80048E7C 16004384 */  lh         $v1, 0x16($v0)
    /* 39680 80048E80 2E004684 */  lh         $a2, 0x2E($v0)
    /* 39684 80048E84 7800458C */  lw         $a1, 0x78($v0)
    /* 39688 80048E88 01004790 */  lbu        $a3, 0x1($v0)
    /* 3968C 80048E8C A923010C */  jal        func_80048EA4
    /* 39690 80048E90 23306600 */   subu      $a2, $v1, $a2
    /* 39694 80048E94 1000BF8F */  lw         $ra, 0x10($sp)
    /* 39698 80048E98 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3969C 80048E9C 0800E003 */  jr         $ra
    /* 396A0 80048EA0 00000000 */   nop
.size func_80048E6C, . - func_80048E6C
