.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80012E10
    /* 3610 80012E10 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3614 80012E14 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3618 80012E18 21808000 */  addu       $s0, $a0, $zero
    /* 361C 80012E1C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3620 80012E20 2190A000 */  addu       $s2, $a1, $zero
    /* 3624 80012E24 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3628 80012E28 DCFF010C */  jal        func_8007FF70
    /* 362C 80012E2C 1400B1AF */   sw        $s1, 0x14($sp)
    /* 3630 80012E30 1F80113C */  lui        $s1, (0x801F8100 >> 16)
    /* 3634 80012E34 00813136 */  ori        $s1, $s1, (0x801F8100 & 0xFFFF)
    /* 3638 80012E38 C0811000 */  sll        $s0, $s0, 7
    /* 363C 80012E3C 21881102 */  addu       $s1, $s0, $s1
    /* 3640 80012E40 2080013C */  lui        $at, %hi(D_801F8110)
    /* 3644 80012E44 21080102 */  addu       $at, $s0, $at
    /* 3648 80012E48 1081258C */  lw         $a1, %lo(D_801F8110)($at)
    /* 364C 80012E4C 2080013C */  lui        $at, %hi(D_801F8144)
    /* 3650 80012E50 21080102 */  addu       $at, $s0, $at
    /* 3654 80012E54 4481268C */  lw         $a2, %lo(D_801F8144)($at)
    /* 3658 80012E58 C4FF010C */  jal        OpenTh
    /* 365C 80012E5C 21204002 */   addu      $a0, $s2, $zero
    /* 3660 80012E60 2080013C */  lui        $at, %hi(D_801F8108)
    /* 3664 80012E64 21080102 */  addu       $at, $s0, $at
    /* 3668 80012E68 088122AC */  sw         $v0, %lo(D_801F8108)($at)
    /* 366C 80012E6C E0FF010C */  jal        func_8007FF80
    /* 3670 80012E70 00000000 */   nop
    /* 3674 80012E74 02000224 */  addiu      $v0, $zero, 0x2
    /* 3678 80012E78 000022A6 */  sh         $v0, 0x0($s1)
    /* 367C 80012E7C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3680 80012E80 1800B28F */  lw         $s2, 0x18($sp)
    /* 3684 80012E84 1400B18F */  lw         $s1, 0x14($sp)
    /* 3688 80012E88 1000B08F */  lw         $s0, 0x10($sp)
    /* 368C 80012E8C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3690 80012E90 0800E003 */  jr         $ra
    /* 3694 80012E94 00000000 */   nop
.size func_80012E10, . - func_80012E10
