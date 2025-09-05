.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004566C
    /* 35E6C 8004566C 08008290 */  lbu        $v0, 0x8($a0)
    /* 35E70 80045670 00000000 */  nop
    /* 35E74 80045674 FBFF4224 */  addiu      $v0, $v0, -0x5
    /* 35E78 80045678 80100200 */  sll        $v0, $v0, 2
    /* 35E7C 8004567C 220083A0 */  sb         $v1, 0x22($a0)
    /* 35E80 80045680 0980013C */  lui        $at, %hi(D_80097E0A)
    /* 35E84 80045684 21082200 */  addu       $at, $at, $v0
    /* 35E88 80045688 0A7E2394 */  lhu        $v1, %lo(D_80097E0A)($at)
    /* 35E8C 8004568C 04000224 */  addiu      $v0, $zero, 0x4
    /* 35E90 80045690 080082A0 */  sb         $v0, 0x8($a0)
    /* 35E94 80045694 0800E003 */  jr         $ra
    /* 35E98 80045698 230083A0 */   sb        $v1, 0x23($a0)
.size func_8004566C, . - func_8004566C
