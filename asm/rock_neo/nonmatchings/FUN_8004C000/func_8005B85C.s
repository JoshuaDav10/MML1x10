.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005B85C
    /* 4C05C 8005B85C 21288000 */  addu       $a1, $a0, $zero
    /* 4C060 8005B860 7D00A390 */  lbu        $v1, 0x7D($a1)
    /* 4C064 8005B864 00000000 */  nop
    /* 4C068 8005B868 05006010 */  beqz       $v1, .L8005B880
    /* 4C06C 8005B86C 02000224 */   addiu     $v0, $zero, 0x2
    /* 4C070 8005B870 3E006210 */  beq        $v1, $v0, .L8005B96C
    /* 4C074 8005B874 FFF9023C */   lui       $v0, (0xF9FF0000 >> 16)
    /* 4C078 8005B878 616E0108 */  j          .L8005B984
    /* 4C07C 8005B87C 00000000 */   nop
.size func_8005B85C, . - func_8005B85C
