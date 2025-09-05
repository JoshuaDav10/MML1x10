.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060D80
    /* 51580 80060D80 FE010424 */  addiu      $a0, $zero, 0x1FE
    /* 51584 80060D84 01000224 */  addiu      $v0, $zero, 0x1
    /* 51588 80060D88 0A80013C */  lui        $at, %hi(Code800133D8_work)
    /* 5158C 80060D8C A88A22A4 */  sh         $v0, %lo(Code800133D8_work)($at)
    /* 51590 80060D90 0180043C */  lui        $a0, %hi(func_80013420)
    /* 51594 80060D94 20348424 */  addiu      $a0, $a0, %lo(func_80013420)
    /* 51598 80060D98 DE4B000C */  jal        func_80012F78
    /* 5159C 80060D9C 00000000 */   nop
  .L80060DA0:
    /* 515A0 80060DA0 21100000 */  addu       $v0, $zero, $zero
  .L80060DA4:
    /* 515A4 80060DA4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 515A8 80060DA8 1000B08F */  lw         $s0, 0x10($sp)
    /* 515AC 80060DAC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 515B0 80060DB0 0800E003 */  jr         $ra
    /* 515B4 80060DB4 00000000 */   nop
.size func_80060D80, . - func_80060D80
