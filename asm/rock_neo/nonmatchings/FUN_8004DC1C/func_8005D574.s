.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D574
    /* 4DD74 8005D574 8C12828F */  lw         $v0, %gp_rel(D_80098AF0)($gp)
    /* 4DD78 8005D578 00000000 */  nop
    /* 4DD7C 8005D57C 0300422C */  sltiu      $v0, $v0, 0x3
    /* 4DD80 8005D580 25004010 */  beqz       $v0, .L8005D618
    /* 4DD84 8005D584 21480000 */   addu      $t1, $zero, $zero
    /* 4DD88 8005D588 48000824 */  addiu      $t0, $zero, 0x48
  .L8005D58C:
    /* 4DD8C 8005D58C 21180001 */  addu       $v1, $t0, $zero
    /* 4DD90 8005D590 0C80013C */  lui        $at, %hi(D_800BBD78)
    /* 4DD94 8005D594 21082300 */  addu       $at, $at, $v1
    /* 4DD98 8005D598 78BD2280 */  lb         $v0, %lo(D_800BBD78)($at)
    /* 4DD9C 8005D59C 00000000 */  nop
    /* 4DDA0 8005D5A0 06004010 */  beqz       $v0, .L8005D5BC
    /* 4DDA4 8005D5A4 01002925 */   addiu     $t1, $t1, 0x1
    /* 4DDA8 8005D5A8 0300222D */  sltiu      $v0, $t1, 0x3
    /* 4DDAC 8005D5AC F7FF4014 */  bnez       $v0, .L8005D58C
    /* 4DDB0 8005D5B0 24006824 */   addiu     $t0, $v1, 0x24
    /* 4DDB4 8005D5B4 86750108 */  j          .L8005D618
    /* 4DDB8 8005D5B8 00000000 */   nop
  .L8005D5BC:
    /* 4DDBC 8005D5BC 8C12828F */  lw         $v0, %gp_rel(D_80098AF0)($gp)
    /* 4DDC0 8005D5C0 0C80013C */  lui        $at, %hi(D_800BBD90)
    /* 4DDC4 8005D5C4 21082800 */  addu       $at, $at, $t0
    /* 4DDC8 8005D5C8 90BD25A4 */  sh         $a1, %lo(D_800BBD90)($at)
    /* 4DDCC 8005D5CC 0C80013C */  lui        $at, %hi(D_800BBD92)
    /* 4DDD0 8005D5D0 21082800 */  addu       $at, $at, $t0
    /* 4DDD4 8005D5D4 92BD26A4 */  sh         $a2, %lo(D_800BBD92)($at)
    /* 4DDD8 8005D5D8 0C80013C */  lui        $at, %hi(D_800BBD98)
    /* 4DDDC 8005D5DC 21082800 */  addu       $at, $at, $t0
    /* 4DDE0 8005D5E0 98BD24AC */  sw         $a0, %lo(D_800BBD98)($at)
    /* 4DDE4 8005D5E4 01004224 */  addiu      $v0, $v0, 0x1
    /* 4DDE8 8005D5E8 8C1282AF */  sw         $v0, %gp_rel(D_80098AF0)($gp)
    /* 4DDEC 8005D5EC 03000224 */  addiu      $v0, $zero, 0x3
    /* 4DDF0 8005D5F0 0C80013C */  lui        $at, %hi(D_800BBD78)
    /* 4DDF4 8005D5F4 21082800 */  addu       $at, $at, $t0
    /* 4DDF8 8005D5F8 78BD22A0 */  sb         $v0, %lo(D_800BBD78)($at)
    /* 4DDFC 8005D5FC 01000224 */  addiu      $v0, $zero, 0x1
    /* 4DE00 8005D600 0C80013C */  lui        $at, %hi(D_800BBD84)
    /* 4DE04 8005D604 21082800 */  addu       $at, $at, $t0
    /* 4DE08 8005D608 84BD27A0 */  sb         $a3, %lo(D_800BBD84)($at)
    /* 4DE0C 8005D60C 0C80013C */  lui        $at, %hi(D_800BBD85)
    /* 4DE10 8005D610 21082800 */  addu       $at, $at, $t0
    /* 4DE14 8005D614 85BD22A0 */  sb         $v0, %lo(D_800BBD85)($at)
  .L8005D618:
    /* 4DE18 8005D618 0800E003 */  jr         $ra
    /* 4DE1C 8005D61C 00000000 */   nop
.size func_8005D574, . - func_8005D574
