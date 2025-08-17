.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80037634
    /* 27E34 80037634 80180500 */  sll        $v1, $a1, 2
    /* 27E38 80037638 C0280500 */  sll        $a1, $a1, 3
    /* 27E3C 8003763C 21208500 */  addu       $a0, $a0, $a1
    /* 27E40 80037640 F6048280 */  lb         $v0, 0x4F6($a0)
    /* 27E44 80037644 0980013C */  lui        $at, %hi(D_80089EAC)
    /* 27E48 80037648 21082300 */  addu       $at, $at, $v1
    /* 27E4C 8003764C AC9E238C */  lw         $v1, %lo(D_80089EAC)($at)
    /* 27E50 80037650 C0100200 */  sll        $v0, $v0, 3
    /* 27E54 80037654 21104300 */  addu       $v0, $v0, $v1
    /* 27E58 80037658 04004284 */  lh         $v0, 0x4($v0)
    /* 27E5C 8003765C 0800E003 */  jr         $ra
    /* 27E60 80037660 00000000 */   nop
.size func_80037634, . - func_80037634
