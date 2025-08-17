.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800375D4
    /* 27DD4 800375D4 80180500 */  sll        $v1, $a1, 2
    /* 27DD8 800375D8 C0280500 */  sll        $a1, $a1, 3
    /* 27DDC 800375DC 21208500 */  addu       $a0, $a0, $a1
    /* 27DE0 800375E0 F4048280 */  lb         $v0, 0x4F4($a0)
    /* 27DE4 800375E4 0980013C */  lui        $at, %hi(D_80089EAC)
    /* 27DE8 800375E8 21082300 */  addu       $at, $at, $v1
    /* 27DEC 800375EC AC9E238C */  lw         $v1, %lo(D_80089EAC)($at)
    /* 27DF0 800375F0 C0100200 */  sll        $v0, $v0, 3
    /* 27DF4 800375F4 21104300 */  addu       $v0, $v0, $v1
    /* 27DF8 800375F8 00004284 */  lh         $v0, 0x0($v0)
    /* 27DFC 800375FC 0800E003 */  jr         $ra
    /* 27E00 80037600 00000000 */   nop
.size func_800375D4, . - func_800375D4
