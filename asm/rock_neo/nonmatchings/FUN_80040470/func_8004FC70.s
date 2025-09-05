.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004FC70
    /* 40470 8004FC70 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 40474 8004FC74 8942010C */  jal        func_80050A24
    /* 40478 8004FC78 1000A427 */   addiu     $a0, $sp, 0x10
    /* 4047C 8004FC7C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 40480 8004FC80 BF42010C */  jal        func_80050AFC
    /* 40484 8004FC84 21804000 */   addu      $s0, $v0, $zero
    /* 40488 8004FC88 03000016 */  bnez       $s0, .L8004FC98
    /* 4048C 8004FC8C 00000000 */   nop
    /* 40490 8004FC90 2C004010 */  beqz       $v0, .L8004FD44
    /* 40494 8004FC94 00000000 */   nop
.size func_8004FC70, . - func_8004FC70
