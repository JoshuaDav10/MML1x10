.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003786C
    /* 2806C 8003786C FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 28070 80037870 40100400 */  sll        $v0, $a0, 1
    /* 28074 80037874 21104400 */  addu       $v0, $v0, $a0
    /* 28078 80037878 80100200 */  sll        $v0, $v0, 2
    /* 2807C 8003787C 1680013C */  lui        $at, %hi(D_8015C006)
    /* 28080 80037880 21084100 */  addu       $at, $v0, $at
    /* 28084 80037884 06C020A4 */  sh         $zero, %lo(D_8015C006)($at)
    /* 28088 80037888 0800E003 */  jr         $ra
    /* 2808C 8003788C 00000000 */   nop
.size func_8003786C, . - func_8003786C
