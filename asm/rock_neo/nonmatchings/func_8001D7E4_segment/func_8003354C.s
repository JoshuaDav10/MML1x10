.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003354C
    /* 23D4C 8003354C 21280000 */  addu       $a1, $zero, $zero
    /* 23D50 80033550 20000624 */  addiu      $a2, $zero, 0x20
    /* 23D54 80033554 21188000 */  addu       $v1, $a0, $zero
    /* 23D58 80033558 20000224 */  addiu      $v0, $zero, 0x20
    /* 23D5C 8003355C 8A0382A0 */  sb         $v0, 0x38A($a0)
    /* 23D60 80033560 890382A0 */  sb         $v0, 0x389($a0)
    /* 23D64 80033564 880382A0 */  sb         $v0, 0x388($a0)
  .L80033568:
    /* 23D68 80033568 8E0366A0 */  sb         $a2, 0x38E($v1)
    /* 23D6C 8003356C 8D0366A0 */  sb         $a2, 0x38D($v1)
    /* 23D70 80033570 8C0366A0 */  sb         $a2, 0x38C($v1)
    /* 23D74 80033574 0100A524 */  addiu      $a1, $a1, 0x1
    /* 23D78 80033578 0D00A228 */  slti       $v0, $a1, 0xD
    /* 23D7C 8003357C FAFF4014 */  bnez       $v0, .L80033568
    /* 23D80 80033580 04006324 */   addiu     $v1, $v1, 0x4
    /* 23D84 80033584 06008290 */  lbu        $v0, 0x6($a0)
    /* 23D88 80033588 00000000 */  nop
    /* 23D8C 8003358C 40004234 */  ori        $v0, $v0, 0x40
    /* 23D90 80033590 0800E003 */  jr         $ra
    /* 23D94 80033594 060082A0 */   sb        $v0, 0x6($a0)
.size func_8003354C, . - func_8003354C
