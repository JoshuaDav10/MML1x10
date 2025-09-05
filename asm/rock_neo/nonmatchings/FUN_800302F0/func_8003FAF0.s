.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003FAF0
    /* 302F0 8003FAF0 B701010C */  jal        func_800406DC
    /* 302F4 8003FAF4 21200002 */   addu      $a0, $s0, $zero
    /* 302F8 8003FAF8 A5004014 */  bnez       $v0, .L8003FD90
    /* 302FC 8003FAFC 00000000 */   nop
    /* 30300 8003FB00 34010296 */  lhu        $v0, 0x134($s0)
    /* 30304 8003FB04 00000000 */  nop
    /* 30308 8003FB08 24105100 */  and        $v0, $v0, $s1
    /* 3030C 8003FB0C 10004014 */  bnez       $v0, .L8003FB50
    /* 30310 8003FB10 00000000 */   nop
    /* 30314 8003FB14 E000010C */  jal        func_80040380
    /* 30318 8003FB18 21200002 */   addu      $a0, $s0, $zero
    /* 3031C 8003FB1C 9C004014 */  bnez       $v0, .L8003FD90
    /* 30320 8003FB20 21200002 */   addu      $a0, $s0, $zero
    /* 30324 8003FB24 3F01010C */  jal        func_800404FC
    /* 30328 8003FB28 21280000 */   addu      $a1, $zero, $zero
    /* 3032C 8003FB2C 98004014 */  bnez       $v0, .L8003FD90
    /* 30330 8003FB30 21200002 */   addu      $a0, $s0, $zero
    /* 30334 8003FB34 1A01010C */  jal        func_80040468
    /* 30338 8003FB38 21280000 */   addu      $a1, $zero, $zero
.size func_8003FAF0, . - func_8003FAF0
