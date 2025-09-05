.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057928
    /* 48128 80057928 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4812C 8005792C 21888000 */  addu       $s1, $a0, $zero
    /* 48130 80057930 1800BFAF */  sw         $ra, 0x18($sp)
    /* 48134 80057934 1000B0AF */  sw         $s0, 0x10($sp)
    /* 48138 80057938 6C00228E */  lw         $v0, 0x6C($s1)
    /* 4813C 8005793C 00000000 */  nop
    /* 48140 80057940 01004290 */  lbu        $v0, 0x1($v0)
    /* 48144 80057944 00000000 */  nop
    /* 48148 80057948 10004014 */  bnez       $v0, .L8005798C
    /* 4814C 8005794C 21280000 */   addu      $a1, $zero, $zero
    /* 48150 80057950 0C80103C */  lui        $s0, %hi(Game_work + 0x7D)
    /* 48154 80057954 8D1B1026 */  addiu      $s0, $s0, %lo(Game_work + 0x7D)
    /* 48158 80057958 00000292 */  lbu        $v0, 0x0($s0)
    /* 4815C 8005795C 0C80033C */  lui        $v1, %hi(Game_work + 0x7C)
    /* 48160 80057960 8C1B6390 */  lbu        $v1, %lo(Game_work + 0x7C)($v1)
    /* 48164 80057964 21300000 */  addu       $a2, $zero, $zero
    /* 48168 80057968 23104300 */  subu       $v0, $v0, $v1
.size func_80057928, . - func_80057928
