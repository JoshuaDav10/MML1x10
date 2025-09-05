.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054AB4
    /* 452B4 80054AB4 BE008294 */  lhu        $v0, 0xBE($a0)
    /* 452B8 80054AB8 00000000 */  nop
    /* 452BC 80054ABC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 452C0 80054AC0 BE0082A4 */  sh         $v0, 0xBE($a0)
    /* 452C4 80054AC4 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 452C8 80054AC8 80100200 */  sll        $v0, $v0, 2
    /* 452CC 80054ACC 21104400 */  addu       $v0, $v0, $a0
    /* 452D0 80054AD0 1800428C */  lw         $v0, 0x18($v0)
    /* 452D4 80054AD4 0800E003 */  jr         $ra
    /* 452D8 80054AD8 140082AC */   sw        $v0, 0x14($a0)
.size func_80054AB4, . - func_80054AB4
