.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80037664
    /* 27E64 80037664 80180500 */  sll        $v1, $a1, 2
    /* 27E68 80037668 C0280500 */  sll        $a1, $a1, 3
    /* 27E6C 8003766C 21208500 */  addu       $a0, $a0, $a1
    /* 27E70 80037670 F7048280 */  lb         $v0, 0x4F7($a0)
    /* 27E74 80037674 0980013C */  lui        $at, %hi(D_80089EAC)
    /* 27E78 80037678 21082300 */  addu       $at, $at, $v1
    /* 27E7C 8003767C AC9E238C */  lw         $v1, %lo(D_80089EAC)($at)
    /* 27E80 80037680 C0100200 */  sll        $v0, $v0, 3
    /* 27E84 80037684 21104300 */  addu       $v0, $v0, $v1
    /* 27E88 80037688 06004284 */  lh         $v0, 0x6($v0)
    /* 27E8C 8003768C 0800E003 */  jr         $ra
    /* 27E90 80037690 00000000 */   nop
.size func_80037664, . - func_80037664
