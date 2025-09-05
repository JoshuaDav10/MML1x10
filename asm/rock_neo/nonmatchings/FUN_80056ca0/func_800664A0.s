.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800664A0
    /* 56CA0 800664A0 26104300 */  xor        $v0, $v0, $v1
    /* 56CA4 800664A4 2B100200 */  sltu       $v0, $zero, $v0
    /* 56CA8 800664A8 23100200 */  negu       $v0, $v0
    /* 56CAC 800664AC 03004230 */  andi       $v0, $v0, 0x3
  .L800664B0:
    /* 56CB0 800664B0 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 56CB4 800664B4 0800E003 */  jr         $ra
    /* 56CB8 800664B8 00000000 */   nop
.size func_800664A0, . - func_800664A0
