.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005753C
    /* 47D3C 8005753C 1400858C */  lw         $a1, 0x14($a0)
    /* 47D40 80057540 00000000 */  nop
    /* 47D44 80057544 0000A390 */  lbu        $v1, 0x0($a1)
    /* 47D48 80057548 D5000224 */  addiu      $v0, $zero, 0xD5
    /* 47D4C 8005754C 06006214 */  bne        $v1, $v0, .L80057568
    /* 47D50 80057550 00000000 */   nop
    /* 47D54 80057554 0100A290 */  lbu        $v0, 0x1($a1)
    /* 47D58 80057558 00000000 */  nop
    /* 47D5C 8005755C 02004224 */  addiu      $v0, $v0, 0x2
    /* 47D60 80057560 5B5D0108 */  j          .L8005756C
    /* 47D64 80057564 2110A200 */   addu      $v0, $a1, $v0
  .L80057568:
    /* 47D68 80057568 0300A224 */  addiu      $v0, $a1, 0x3
  .L8005756C:
    /* 47D6C 8005756C 0800E003 */  jr         $ra
    /* 47D70 80057570 140082AC */   sw        $v0, 0x14($a0)
.size func_8005753C, . - func_8005753C
