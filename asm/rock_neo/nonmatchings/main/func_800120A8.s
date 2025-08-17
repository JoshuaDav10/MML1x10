.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800120A8
    /* 28A8 800120A8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 28AC 800120AC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 28B0 800120B0 0C80103C */  lui        $s0, %hi(D_800C0C5C)
    /* 28B4 800120B4 5C0C1026 */  addiu      $s0, $s0, %lo(D_800C0C5C)
    /* 28B8 800120B8 21200002 */  addu       $a0, $s0, $zero
    /* 28BC 800120BC 21280000 */  addu       $a1, $zero, $zero
    /* 28C0 800120C0 21300000 */  addu       $a2, $zero, $zero
    /* 28C4 800120C4 40010724 */  addiu      $a3, $zero, 0x140
    /* 28C8 800120C8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 28CC 800120CC F0001124 */  addiu      $s1, $zero, 0xF0
    /* 28D0 800120D0 2400BFAF */  sw         $ra, 0x24($sp)
    /* 28D4 800120D4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 28D8 800120D8 E1F0010C */  jal        SetDefDrawEnv
    /* 28DC 800120DC 1000B1AF */   sw        $s1, 0x10($sp)
    /* 28E0 800120E0 ECFF1226 */  addiu      $s2, $s0, -0x14
    /* 28E4 800120E4 21204002 */  addu       $a0, $s2, $zero
    /* 28E8 800120E8 21280000 */  addu       $a1, $zero, $zero
    /* 28EC 800120EC 00010624 */  addiu      $a2, $zero, 0x100
    /* 28F0 800120F0 40010724 */  addiu      $a3, $zero, 0x140
    /* 28F4 800120F4 0FF1010C */  jal        SetDefDispEnv
    /* 28F8 800120F8 1000B1AF */   sw        $s1, 0x10($sp)
    /* 28FC 800120FC 90000426 */  addiu      $a0, $s0, 0x90
    /* 2900 80012100 21280000 */  addu       $a1, $zero, $zero
    /* 2904 80012104 00010624 */  addiu      $a2, $zero, 0x100
    /* 2908 80012108 40010724 */  addiu      $a3, $zero, 0x140
    /* 290C 8001210C E1F0010C */  jal        SetDefDrawEnv
    /* 2910 80012110 1000B1AF */   sw        $s1, 0x10($sp)
    /* 2914 80012114 7C001026 */  addiu      $s0, $s0, 0x7C
    /* 2918 80012118 21200002 */  addu       $a0, $s0, $zero
    /* 291C 8001211C 21280000 */  addu       $a1, $zero, $zero
    /* 2920 80012120 21300000 */  addu       $a2, $zero, $zero
    /* 2924 80012124 40010724 */  addiu      $a3, $zero, 0x140
    /* 2928 80012128 0FF1010C */  jal        SetDefDispEnv
    /* 292C 8001212C 1000B1AF */   sw        $s1, 0x10($sp)
    /* 2930 80012130 5748000C */  jal        func_8001215C
    /* 2934 80012134 21204002 */   addu      $a0, $s2, $zero
    /* 2938 80012138 5748000C */  jal        func_8001215C
    /* 293C 8001213C 21200002 */   addu      $a0, $s0, $zero
    /* 2940 80012140 2400BF8F */  lw         $ra, 0x24($sp)
    /* 2944 80012144 2000B28F */  lw         $s2, 0x20($sp)
    /* 2948 80012148 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 294C 8001214C 1800B08F */  lw         $s0, 0x18($sp)
    /* 2950 80012150 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2954 80012154 0800E003 */  jr         $ra
    /* 2958 80012158 00000000 */   nop
.size func_800120A8, . - func_800120A8
