.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003AC9C
    /* 2B49C 8003AC9C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2B4A0 8003ACA0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2B4A4 8003ACA4 40800400 */  sll        $s0, $a0, 1
    /* 2B4A8 8003ACA8 21800402 */  addu       $s0, $s0, $a0
    /* 2B4AC 8003ACAC 80801000 */  sll        $s0, $s0, 2
    /* 2B4B0 8003ACB0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 2B4B4 8003ACB4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2B4B8 8003ACB8 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2B4BC 8003ACBC 21080102 */  addu       $at, $s0, $at
    /* 2B4C0 8003ACC0 08C0318C */  lw         $s1, %lo(D_8015C008)($at)
    /* 2B4C4 8003ACC4 09EB000C */  jal        func_8003AC24
    /* 2B4C8 8003ACC8 2120A000 */   addu      $a0, $a1, $zero
    /* 2B4CC 8003ACCC 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2B4D0 8003ACD0 21080102 */  addu       $at, $s0, $at
    /* 2B4D4 8003ACD4 08C022AC */  sw         $v0, %lo(D_8015C008)($at)
    /* 2B4D8 8003ACD8 21102002 */  addu       $v0, $s1, $zero
    /* 2B4DC 8003ACDC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2B4E0 8003ACE0 1400B18F */  lw         $s1, 0x14($sp)
    /* 2B4E4 8003ACE4 1000B08F */  lw         $s0, 0x10($sp)
    /* 2B4E8 8003ACE8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2B4EC 8003ACEC 0800E003 */  jr         $ra
    /* 2B4F0 8003ACF0 00000000 */   nop
.size func_8003AC9C, . - func_8003AC9C
