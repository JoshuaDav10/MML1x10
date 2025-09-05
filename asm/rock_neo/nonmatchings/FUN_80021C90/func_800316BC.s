.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800316BC
    /* 21EBC 800316BC 0A80063C */  lui        $a2, %hi(D_800987EC)
    /* 21EC0 800316C0 EC87C68C */  lw         $a2, %lo(D_800987EC)($a2)
    /* 21EC4 800316C4 21280000 */  addu       $a1, $zero, $zero
    /* 21EC8 800316C8 0080043C */  lui        $a0, (0x80000000 >> 16)
    /* 21ECC 800316CC 03000724 */  addiu      $a3, $zero, 0x3
    /* 21ED0 800316D0 0A80033C */  lui        $v1, %hi(D_800A2D08)
    /* 21ED4 800316D4 082D6324 */  addiu      $v1, $v1, %lo(D_800A2D08)
  .L800316D8:
    /* 21ED8 800316D8 0410A600 */  sllv       $v0, $a2, $a1
    /* 21EDC 800316DC 0E004004 */  bltz       $v0, .L80031718
    /* 21EE0 800316E0 21106000 */   addu      $v0, $v1, $zero
    /* 21EE4 800316E4 0A80033C */  lui        $v1, %hi(D_800987EC)
    /* 21EE8 800316E8 EC87638C */  lw         $v1, %lo(D_800987EC)($v1)
    /* 21EEC 800316EC 0620A400 */  srlv       $a0, $a0, $a1
    /* 21EF0 800316F0 100040AC */  sw         $zero, 0x10($v0)
    /* 21EF4 800316F4 25186400 */  or         $v1, $v1, $a0
    /* 21EF8 800316F8 0A80013C */  lui        $at, %hi(D_800987EC)
    /* 21EFC 800316FC EC8723AC */  sw         $v1, %lo(D_800987EC)($at)
    /* 21F00 80031700 020040A4 */  sh         $zero, 0x2($v0)
.size func_800316BC, . - func_800316BC
