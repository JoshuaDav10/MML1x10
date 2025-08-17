.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80036A88
    /* 27288 80036A88 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2728C 80036A8C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 27290 80036A90 21808000 */  addu       $s0, $a0, $zero
    /* 27294 80036A94 1400B1AF */  sw         $s1, 0x14($sp)
    /* 27298 80036A98 2188A000 */  addu       $s1, $a1, $zero
    /* 2729C 80036A9C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 272A0 80036AA0 2190C000 */  addu       $s2, $a2, $zero
    /* 272A4 80036AA4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 272A8 80036AA8 2000BFAF */  sw         $ra, 0x20($sp)
    /* 272AC 80036AAC 3EEC010C */  jal        SetFarColor
    /* 272B0 80036AB0 2198E000 */   addu      $s3, $a3, $zero
    /* 272B4 80036AB4 21206002 */  addu       $a0, $s3, $zero
    /* 272B8 80036AB8 73E8010C */  jal        SetFogNear
    /* 272BC 80036ABC 80010524 */   addiu     $a1, $zero, 0x180
    /* 272C0 80036AC0 0A80013C */  lui        $at, %hi(D_8009A370)
    /* 272C4 80036AC4 70A330A0 */  sb         $s0, %lo(D_8009A370)($at)
    /* 272C8 80036AC8 0A80013C */  lui        $at, %hi(D_8009A371)
    /* 272CC 80036ACC 71A331A0 */  sb         $s1, %lo(D_8009A371)($at)
    /* 272D0 80036AD0 0A80013C */  lui        $at, %hi(D_8009A372)
    /* 272D4 80036AD4 72A332A0 */  sb         $s2, %lo(D_8009A372)($at)
    /* 272D8 80036AD8 0A80013C */  lui        $at, %hi(D_8009A374)
    /* 272DC 80036ADC 74A333A4 */  sh         $s3, %lo(D_8009A374)($at)
    /* 272E0 80036AE0 2000BF8F */  lw         $ra, 0x20($sp)
    /* 272E4 80036AE4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 272E8 80036AE8 1800B28F */  lw         $s2, 0x18($sp)
    /* 272EC 80036AEC 1400B18F */  lw         $s1, 0x14($sp)
    /* 272F0 80036AF0 1000B08F */  lw         $s0, 0x10($sp)
    /* 272F4 80036AF4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 272F8 80036AF8 0800E003 */  jr         $ra
    /* 272FC 80036AFC 00000000 */   nop
.size func_80036A88, . - func_80036A88
