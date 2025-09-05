.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D620
    /* 4DE20 8005D620 8C12828F */  lw         $v0, %gp_rel(D_80098AF0)($gp)
    /* 4DE24 8005D624 1000AA8F */  lw         $t2, 0x10($sp)
    /* 4DE28 8005D628 0300422C */  sltiu      $v0, $v0, 0x3
    /* 4DE2C 8005D62C 2C004010 */  beqz       $v0, .L8005D6E0
    /* 4DE30 8005D630 21480000 */   addu      $t1, $zero, $zero
    /* 4DE34 8005D634 48000824 */  addiu      $t0, $zero, 0x48
  .L8005D638:
    /* 4DE38 8005D638 21180001 */  addu       $v1, $t0, $zero
    /* 4DE3C 8005D63C 0C80013C */  lui        $at, %hi(D_800BBD78)
    /* 4DE40 8005D640 21082300 */  addu       $at, $at, $v1
    /* 4DE44 8005D644 78BD2280 */  lb         $v0, %lo(D_800BBD78)($at)
    /* 4DE48 8005D648 00000000 */  nop
    /* 4DE4C 8005D64C 07004010 */  beqz       $v0, .L8005D66C
    /* 4DE50 8005D650 00000000 */   nop
    /* 4DE54 8005D654 01002925 */  addiu      $t1, $t1, 0x1
    /* 4DE58 8005D658 0300222D */  sltiu      $v0, $t1, 0x3
    /* 4DE5C 8005D65C F6FF4014 */  bnez       $v0, .L8005D638
    /* 4DE60 8005D660 24006824 */   addiu     $t0, $v1, 0x24
    /* 4DE64 8005D664 B8750108 */  j          .L8005D6E0
    /* 4DE68 8005D668 00000000 */   nop
  .L8005D66C:
    /* 4DE6C 8005D66C 8C12828F */  lw         $v0, %gp_rel(D_80098AF0)($gp)
    /* 4DE70 8005D670 0C80013C */  lui        $at, %hi(D_800BBD90)
    /* 4DE74 8005D674 21082800 */  addu       $at, $at, $t0
    /* 4DE78 8005D678 90BD25A4 */  sh         $a1, %lo(D_800BBD90)($at)
    /* 4DE7C 8005D67C 0C80013C */  lui        $at, %hi(D_800BBD92)
    /* 4DE80 8005D680 21082800 */  addu       $at, $at, $t0
    /* 4DE84 8005D684 92BD26A4 */  sh         $a2, %lo(D_800BBD92)($at)
    /* 4DE88 8005D688 01004224 */  addiu      $v0, $v0, 0x1
    /* 4DE8C 8005D68C 8C1282AF */  sw         $v0, %gp_rel(D_80098AF0)($gp)
    /* 4DE90 8005D690 03000224 */  addiu      $v0, $zero, 0x3
    /* 4DE94 8005D694 0C80013C */  lui        $at, %hi(D_800BBD78)
    /* 4DE98 8005D698 21082800 */  addu       $at, $at, $t0
    /* 4DE9C 8005D69C 78BD22A0 */  sb         $v0, %lo(D_800BBD78)($at)
    /* 4DEA0 8005D6A0 01000224 */  addiu      $v0, $zero, 0x1
    /* 4DEA4 8005D6A4 0C80013C */  lui        $at, %hi(D_800BBD85)
    /* 4DEA8 8005D6A8 21082800 */  addu       $at, $at, $t0
    /* 4DEAC 8005D6AC 85BD22A0 */  sb         $v0, %lo(D_800BBD85)($at)
    /* 4DEB0 8005D6B0 C0100900 */  sll        $v0, $t1, 3
    /* 4DEB4 8005D6B4 21104900 */  addu       $v0, $v0, $t1
    /* 4DEB8 8005D6B8 80100200 */  sll        $v0, $v0, 2
    /* 4DEBC 8005D6BC 0C80013C */  lui        $at, %hi(D_800BBD84)
    /* 4DEC0 8005D6C0 21082800 */  addu       $at, $at, $t0
    /* 4DEC4 8005D6C4 84BD27A0 */  sb         $a3, %lo(D_800BBD84)($at)
    /* 4DEC8 8005D6C8 0C80013C */  lui        $at, %hi(D_800BBDD0)
    /* 4DECC 8005D6CC 21082200 */  addu       $at, $at, $v0
    /* 4DED0 8005D6D0 D0BD2AAC */  sw         $t2, %lo(D_800BBDD0)($at)
    /* 4DED4 8005D6D4 0C80013C */  lui        $at, %hi(D_800BBD98)
    /* 4DED8 8005D6D8 21082800 */  addu       $at, $at, $t0
    /* 4DEDC 8005D6DC 98BD24AC */  sw         $a0, %lo(D_800BBD98)($at)
  .L8005D6E0:
    /* 4DEE0 8005D6E0 0800E003 */  jr         $ra
    /* 4DEE4 8005D6E4 00000000 */   nop
.size func_8005D620, . - func_8005D620
