.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80041B5C
    /* 3235C 80041B5C 101B22A0 */  sb         $v0, 0x1B10($at)
    /* 32360 80041B60 0C80013C */  lui        $at, %hi(Game_work + 0x1)
    /* 32364 80041B64 111B20A0 */  sb         $zero, %lo(Game_work + 0x1)($at)
    /* 32368 80041B68 09000292 */  lbu        $v0, 0x9($s0)
    /* 3236C 80041B6C 00000000 */  nop
    /* 32370 80041B70 01004224 */  addiu      $v0, $v0, 0x1
    /* 32374 80041B74 090002A2 */  sb         $v0, 0x9($s0)
  .L80041B78:
    /* 32378 80041B78 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3237C 80041B7C 1000B08F */  lw         $s0, 0x10($sp)
    /* 32380 80041B80 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 32384 80041B84 0800E003 */  jr         $ra
    /* 32388 80041B88 00000000 */   nop
.size func_80041B5C, . - func_80041B5C
