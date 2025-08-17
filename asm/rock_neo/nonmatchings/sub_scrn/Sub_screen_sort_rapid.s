.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sub_screen_sort_rapid
    /* 51A24 80061224 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 51A28 80061228 2400B3AF */  sw         $s3, 0x24($sp)
    /* 51A2C 8006122C 0B80133C */  lui        $s3, %hi(Player_work)
    /* 51A30 80061230 B0517326 */  addiu      $s3, $s3, %lo(Player_work)
    /* 51A34 80061234 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 51A38 80061238 21880000 */  addu       $s1, $zero, $zero
    /* 51A3C 8006123C 2800BFAF */  sw         $ra, 0x28($sp)
    /* 51A40 80061240 2000B2AF */  sw         $s2, 0x20($sp)
    /* 51A44 80061244 1800B0AF */  sw         $s0, 0x18($sp)
    /* 51A48 80061248 1F000224 */  addiu      $v0, $zero, 0x1F
  .L8006124C:
    /* 51A4C 8006124C 23105100 */  subu       $v0, $v0, $s1
    /* 51A50 80061250 20004018 */  blez       $v0, .L800612D4
    /* 51A54 80061254 21800000 */   addu      $s0, $zero, $zero
    /* 51A58 80061258 21904000 */  addu       $s2, $v0, $zero
    /* 51A5C 8006125C 21187002 */  addu       $v1, $s3, $s0
  .L80061260:
    /* 51A60 80061260 55046290 */  lbu        $v0, 0x455($v1)
    /* 51A64 80061264 00000000 */  nop
    /* 51A68 80061268 16004010 */  beqz       $v0, .L800612C4
    /* 51A6C 8006126C 00000000 */   nop
    /* 51A70 80061270 54046390 */  lbu        $v1, 0x454($v1)
    /* 51A74 80061274 00000000 */  nop
    /* 51A78 80061278 0E006010 */  beqz       $v1, .L800612B4
    /* 51A7C 8006127C FFFF6324 */   addiu     $v1, $v1, -0x1
    /* 51A80 80061280 C0180300 */  sll        $v1, $v1, 3
    /* 51A84 80061284 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 51A88 80061288 C0100200 */  sll        $v0, $v0, 3
    /* 51A8C 8006128C 0980013C */  lui        $at, %hi(D_8008FE67)
    /* 51A90 80061290 21082300 */  addu       $at, $at, $v1
    /* 51A94 80061294 67FE2380 */  lb         $v1, %lo(D_8008FE67)($at)
    /* 51A98 80061298 0980013C */  lui        $at, %hi(D_8008FE67)
    /* 51A9C 8006129C 21082200 */  addu       $at, $at, $v0
    /* 51AA0 800612A0 67FE2280 */  lb         $v0, %lo(D_8008FE67)($at)
    /* 51AA4 800612A4 00000000 */  nop
    /* 51AA8 800612A8 2A186200 */  slt        $v1, $v1, $v0
    /* 51AAC 800612AC 05006010 */  beqz       $v1, .L800612C4
    /* 51AB0 800612B0 00000000 */   nop
  .L800612B4:
    /* 51AB4 800612B4 21206002 */  addu       $a0, $s3, $zero
    /* 51AB8 800612B8 21280002 */  addu       $a1, $s0, $zero
    /* 51ABC 800612BC C184010C */  jal        Sub_screen_sort_sub
    /* 51AC0 800612C0 01000626 */   addiu     $a2, $s0, 0x1
  .L800612C4:
    /* 51AC4 800612C4 01001026 */  addiu      $s0, $s0, 0x1
    /* 51AC8 800612C8 2A101202 */  slt        $v0, $s0, $s2
    /* 51ACC 800612CC E4FF4014 */  bnez       $v0, .L80061260
    /* 51AD0 800612D0 21187002 */   addu      $v1, $s3, $s0
  .L800612D4:
    /* 51AD4 800612D4 01003126 */  addiu      $s1, $s1, 0x1
    /* 51AD8 800612D8 1F00222A */  slti       $v0, $s1, 0x1F
    /* 51ADC 800612DC DBFF4014 */  bnez       $v0, .L8006124C
    /* 51AE0 800612E0 1F000224 */   addiu     $v0, $zero, 0x1F
    /* 51AE4 800612E4 2800BF8F */  lw         $ra, 0x28($sp)
    /* 51AE8 800612E8 2400B38F */  lw         $s3, 0x24($sp)
    /* 51AEC 800612EC 2000B28F */  lw         $s2, 0x20($sp)
    /* 51AF0 800612F0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 51AF4 800612F4 1800B08F */  lw         $s0, 0x18($sp)
    /* 51AF8 800612F8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 51AFC 800612FC 0800E003 */  jr         $ra
    /* 51B00 80061300 00000000 */   nop
.size Sub_screen_sort_rapid, . - Sub_screen_sort_rapid
