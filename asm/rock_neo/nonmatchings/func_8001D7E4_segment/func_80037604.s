.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80037604
    /* 27E04 80037604 80180500 */  sll        $v1, $a1, 2
    /* 27E08 80037608 C0280500 */  sll        $a1, $a1, 3
    /* 27E0C 8003760C 21208500 */  addu       $a0, $a0, $a1
    /* 27E10 80037610 F5048280 */  lb         $v0, 0x4F5($a0)
    /* 27E14 80037614 0980013C */  lui        $at, %hi(D_80089EAC)
    /* 27E18 80037618 21082300 */  addu       $at, $at, $v1
    /* 27E1C 8003761C AC9E238C */  lw         $v1, %lo(D_80089EAC)($at)
    /* 27E20 80037620 C0100200 */  sll        $v0, $v0, 3
    /* 27E24 80037624 21104300 */  addu       $v0, $v0, $v1
    /* 27E28 80037628 02004284 */  lh         $v0, 0x2($v0)
    /* 27E2C 8003762C 0800E003 */  jr         $ra
    /* 27E30 80037630 00000000 */   nop
.size func_80037604, . - func_80037604
