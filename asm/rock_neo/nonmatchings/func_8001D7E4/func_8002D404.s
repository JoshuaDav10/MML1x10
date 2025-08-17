.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002D404
    /* 1DC04 8002D404 1B008700 */  divu       $zero, $a0, $a3
    /* 1DC08 8002D408 0200E014 */  bnez       $a3, .L8002D414
    /* 1DC0C 8002D40C 00000000 */   nop
    /* 1DC10 8002D410 0D000700 */  break      7
  .L8002D414:
    /* 1DC14 8002D414 12180000 */  mflo       $v1
    /* 1DC18 8002D418 00000000 */  nop
    /* 1DC1C 8002D41C 00000000 */  nop
    /* 1DC20 8002D420 18006700 */  mult       $v1, $a3
    /* 1DC24 8002D424 12480000 */  mflo       $t1
    /* 1DC28 8002D428 00000000 */  nop
    /* 1DC2C 8002D42C 00000000 */  nop
    /* 1DC30 8002D430 18006600 */  mult       $v1, $a2
    /* 1DC34 8002D434 12180000 */  mflo       $v1
    /* 1DC38 8002D438 23208900 */  subu       $a0, $a0, $t1
    /* 1DC3C 8002D43C 00000000 */  nop
    /* 1DC40 8002D440 18008500 */  mult       $a0, $a1
    /* 1DC44 8002D444 00160300 */  sll        $v0, $v1, 24
    /* 1DC48 8002D448 001A0300 */  sll        $v1, $v1, 8
    /* 1DC4C 8002D44C 12200000 */  mflo       $a0
    /* 1DC50 8002D450 002C0400 */  sll        $a1, $a0, 16
    /* 1DC54 8002D454 25104500 */  or         $v0, $v0, $a1
    /* 1DC58 8002D458 25104300 */  or         $v0, $v0, $v1
    /* 1DC5C 8002D45C 0800E003 */  jr         $ra
    /* 1DC60 8002D460 25104400 */   or        $v0, $v0, $a0
.size func_8002D404, . - func_8002D404
