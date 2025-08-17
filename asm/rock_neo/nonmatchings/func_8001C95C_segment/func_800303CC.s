.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800303CC
    /* 20BCC 800303CC 0000A284 */  lh         $v0, 0x0($a1)
    /* 20BD0 800303D0 00008384 */  lh         $v1, 0x0($a0)
    /* 20BD4 800303D4 00000000 */  nop
    /* 20BD8 800303D8 23104300 */  subu       $v0, $v0, $v1
    /* 20BDC 800303DC 18004200 */  mult       $v0, $v0
    /* 20BE0 800303E0 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 20BE4 800303E4 0000A2AF */  sw         $v0, 0x0($sp)
    /* 20BE8 800303E8 0400A284 */  lh         $v0, 0x4($a1)
    /* 20BEC 800303EC 04008384 */  lh         $v1, 0x4($a0)
    /* 20BF0 800303F0 12300000 */  mflo       $a2
    /* 20BF4 800303F4 23104300 */  subu       $v0, $v0, $v1
    /* 20BF8 800303F8 00000000 */  nop
    /* 20BFC 800303FC 18004200 */  mult       $v0, $v0
    /* 20C00 80030400 0800A2AF */  sw         $v0, 0x8($sp)
    /* 20C04 80030404 12180000 */  mflo       $v1
    /* 20C08 80030408 2110C300 */  addu       $v0, $a2, $v1
    /* 20C0C 8003040C 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 20C10 80030410 0800E003 */  jr         $ra
    /* 20C14 80030414 00000000 */   nop
.size func_800303CC, . - func_800303CC
