.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001E810
    /* F010 8001E810 00240400 */  sll        $a0, $a0, 16
    /* F014 8001E814 002C0500 */  sll        $a1, $a1, 16
    /* F018 8001E818 00340600 */  sll        $a2, $a2, 16
    /* F01C 8001E81C 0C80013C */  lui        $at, %hi(D_800BC770)
    /* F020 8001E820 70C724AC */  sw         $a0, %lo(D_800BC770)($at)
    /* F024 8001E824 0C80013C */  lui        $at, %hi(D_800BC774)
    /* F028 8001E828 74C725AC */  sw         $a1, %lo(D_800BC774)($at)
    /* F02C 8001E82C 0C80013C */  lui        $at, %hi(D_800BC778)
    /* F030 8001E830 78C726AC */  sw         $a2, %lo(D_800BC778)($at)
    /* F034 8001E834 0800E003 */  jr         $ra
    /* F038 8001E838 00000000 */   nop
.size func_8001E810, . - func_8001E810
