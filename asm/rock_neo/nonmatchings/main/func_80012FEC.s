.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80012FEC
    /* 37EC 80012FEC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 37F0 80012FF0 2800B2AF */  sw         $s2, 0x28($sp)
    /* 37F4 80012FF4 21908000 */  addu       $s2, $a0, $zero
    /* 37F8 80012FF8 2120A000 */  addu       $a0, $a1, $zero
    /* 37FC 80012FFC 21280000 */  addu       $a1, $zero, $zero
    /* 3800 80013000 21300000 */  addu       $a2, $zero, $zero
    /* 3804 80013004 3000BFAF */  sw         $ra, 0x30($sp)
    /* 3808 80013008 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 380C 8001300C 2400B1AF */  sw         $s1, 0x24($sp)
    /* 3810 80013010 5FDA010C */  jal        PCopen
    /* 3814 80013014 2000B0AF */   sw        $s0, 0x20($sp)
    /* 3818 80013018 21884000 */  addu       $s1, $v0, $zero
    /* 381C 8001301C 21202002 */  addu       $a0, $s1, $zero
    /* 3820 80013020 1000A527 */  addiu      $a1, $sp, 0x10
    /* 3824 80013024 6BDA010C */  jal        PCread
    /* 3828 80013028 10000624 */   addiu     $a2, $zero, 0x10
    /* 382C 8001302C 1F80053C */  lui        $a1, (0x801F8114 >> 16)
    /* 3830 80013030 1481A534 */  ori        $a1, $a1, (0x801F8114 & 0xFFFF)
    /* 3834 80013034 21202002 */  addu       $a0, $s1, $zero
    /* 3838 80013038 C0811200 */  sll        $s0, $s2, 7
    /* 383C 8001303C 21280502 */  addu       $a1, $s0, $a1
    /* 3840 80013040 6BDA010C */  jal        PCread
    /* 3844 80013044 3C000624 */   addiu     $a2, $zero, 0x3C
    /* 3848 80013048 21202002 */  addu       $a0, $s1, $zero
    /* 384C 8001304C B4070624 */  addiu      $a2, $zero, 0x7B4
    /* 3850 80013050 2080013C */  lui        $at, %hi(D_801F811C)
    /* 3854 80013054 21080102 */  addu       $at, $s0, $at
    /* 3858 80013058 1C81258C */  lw         $a1, %lo(D_801F811C)($at)
    /* 385C 8001305C 6BDA010C */  jal        PCread
    /* 3860 80013060 00081324 */   addiu     $s3, $zero, 0x800
    /* 3864 80013064 2080013C */  lui        $at, %hi(D_801F811C)
    /* 3868 80013068 21080102 */  addu       $at, $s0, $at
    /* 386C 8001306C 1C81308C */  lw         $s0, %lo(D_801F811C)($at)
  .L80013070:
    /* 3870 80013070 21202002 */  addu       $a0, $s1, $zero
    /* 3874 80013074 21280002 */  addu       $a1, $s0, $zero
    /* 3878 80013078 6BDA010C */  jal        PCread
    /* 387C 8001307C 00080624 */   addiu     $a2, $zero, 0x800
    /* 3880 80013080 FBFF5310 */  beq        $v0, $s3, .L80013070
    /* 3884 80013084 00081026 */   addiu     $s0, $s0, 0x800
    /* 3888 80013088 67DA010C */  jal        func_8007699C
    /* 388C 8001308C 21202002 */   addu      $a0, $s1, $zero
    /* 3890 80013090 A0FF010C */  jal        FlushCache
    /* 3894 80013094 00000000 */   nop
    /* 3898 80013098 C0111200 */  sll        $v0, $s2, 7
    /* 389C 8001309C 2080013C */  lui        $at, %hi(D_801F8114)
    /* 38A0 800130A0 21084100 */  addu       $at, $v0, $at
    /* 38A4 800130A4 1481258C */  lw         $a1, %lo(D_801F8114)($at)
    /* 38A8 800130A8 844B000C */  jal        func_80012E10
    /* 38AC 800130AC 21204002 */   addu      $a0, $s2, $zero
    /* 38B0 800130B0 3000BF8F */  lw         $ra, 0x30($sp)
    /* 38B4 800130B4 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 38B8 800130B8 2800B28F */  lw         $s2, 0x28($sp)
    /* 38BC 800130BC 2400B18F */  lw         $s1, 0x24($sp)
    /* 38C0 800130C0 2000B08F */  lw         $s0, 0x20($sp)
    /* 38C4 800130C4 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 38C8 800130C8 0800E003 */  jr         $ra
    /* 38CC 800130CC 00000000 */   nop
.size func_80012FEC, . - func_80012FEC
