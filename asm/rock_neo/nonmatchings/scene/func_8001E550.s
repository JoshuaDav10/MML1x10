.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001E550
    /* ED50 8001E550 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* ED54 8001E554 0C80023C */  lui        $v0, %hi(D_800BC733)
    /* ED58 8001E558 33C74290 */  lbu        $v0, %lo(D_800BC733)($v0)
    /* ED5C 8001E55C 0C80073C */  lui        $a3, %hi(D_800BC730)
    /* ED60 8001E560 30C7E724 */  addiu      $a3, $a3, %lo(D_800BC730)
    /* ED64 8001E564 15004014 */  bnez       $v0, .L8001E5BC
    /* ED68 8001E568 3000BFAF */   sw        $ra, 0x30($sp)
    /* ED6C 8001E56C 0C80023C */  lui        $v0, %hi(D_800BC740)
    /* ED70 8001E570 40C7428C */  lw         $v0, %lo(D_800BC740)($v0)
    /* ED74 8001E574 0C80033C */  lui        $v1, %hi(D_800BC7D0)
    /* ED78 8001E578 D0C7638C */  lw         $v1, %lo(D_800BC7D0)($v1)
    /* ED7C 8001E57C 0C80043C */  lui        $a0, %hi(D_800BC7D4)
    /* ED80 8001E580 D4C7848C */  lw         $a0, %lo(D_800BC7D4)($a0)
    /* ED84 8001E584 21104300 */  addu       $v0, $v0, $v1
    /* ED88 8001E588 0C80033C */  lui        $v1, %hi(D_800BC744)
    /* ED8C 8001E58C 44C7638C */  lw         $v1, %lo(D_800BC744)($v1)
    /* ED90 8001E590 03140200 */  sra        $v0, $v0, 16
    /* ED94 8001E594 1000A2AF */  sw         $v0, 0x10($sp)
    /* ED98 8001E598 0C80023C */  lui        $v0, %hi(D_800BC748)
    /* ED9C 8001E59C 48C7428C */  lw         $v0, %lo(D_800BC748)($v0)
    /* EDA0 8001E5A0 21186400 */  addu       $v1, $v1, $a0
    /* EDA4 8001E5A4 0C80043C */  lui        $a0, %hi(D_800BC7D8)
    /* EDA8 8001E5A8 D8C7848C */  lw         $a0, %lo(D_800BC7D8)($a0)
    /* EDAC 8001E5AC 031C0300 */  sra        $v1, $v1, 16
    /* EDB0 8001E5B0 1400A3AF */  sw         $v1, 0x14($sp)
    /* EDB4 8001E5B4 8E790008 */  j          .L8001E638
    /* EDB8 8001E5B8 21104400 */   addu      $v0, $v0, $a0
  .L8001E5BC:
    /* EDBC 8001E5BC 0C80023C */  lui        $v0, %hi(D_800BC739)
    /* EDC0 8001E5C0 39C74290 */  lbu        $v0, %lo(D_800BC739)($v0)
    /* EDC4 8001E5C4 00000000 */  nop
    /* EDC8 8001E5C8 80100200 */  sll        $v0, $v0, 2
    /* EDCC 8001E5CC 0C80013C */  lui        $at, %hi(Scene_work + 0x24)
    /* EDD0 8001E5D0 21082200 */  addu       $at, $at, $v0
    /* EDD4 8001E5D4 6C4C258C */  lw         $a1, %lo(Scene_work + 0x24)($at)
    /* EDD8 8001E5D8 0C80023C */  lui        $v0, %hi(D_800BC7E0)
    /* EDDC 8001E5DC E0C7428C */  lw         $v0, %lo(D_800BC7E0)($v0)
    /* EDE0 8001E5E0 1C00A48C */  lw         $a0, 0x1C($a1)
    /* EDE4 8001E5E4 00000000 */  nop
    /* EDE8 8001E5E8 21208200 */  addu       $a0, $a0, $v0
    /* EDEC 8001E5EC 0C80013C */  lui        $at, %hi(D_800BC740)
    /* EDF0 8001E5F0 40C724AC */  sw         $a0, %lo(D_800BC740)($at)
    /* EDF4 8001E5F4 2000A38C */  lw         $v1, 0x20($a1)
    /* EDF8 8001E5F8 0C80023C */  lui        $v0, %hi(D_800BC7E4)
    /* EDFC 8001E5FC E4C7428C */  lw         $v0, %lo(D_800BC7E4)($v0)
    /* EE00 8001E600 00000000 */  nop
    /* EE04 8001E604 21186200 */  addu       $v1, $v1, $v0
    /* EE08 8001E608 0C80013C */  lui        $at, %hi(D_800BC744)
    /* EE0C 8001E60C 44C723AC */  sw         $v1, %lo(D_800BC744)($at)
    /* EE10 8001E610 2400A28C */  lw         $v0, 0x24($a1)
    /* EE14 8001E614 03240400 */  sra        $a0, $a0, 16
    /* EE18 8001E618 1000A4AF */  sw         $a0, 0x10($sp)
    /* EE1C 8001E61C 0C80043C */  lui        $a0, %hi(D_800BC7E8)
    /* EE20 8001E620 E8C7848C */  lw         $a0, %lo(D_800BC7E8)($a0)
    /* EE24 8001E624 031C0300 */  sra        $v1, $v1, 16
    /* EE28 8001E628 1400A3AF */  sw         $v1, 0x14($sp)
    /* EE2C 8001E62C 21104400 */  addu       $v0, $v0, $a0
    /* EE30 8001E630 0C80013C */  lui        $at, %hi(D_800BC748)
    /* EE34 8001E634 48C722AC */  sw         $v0, %lo(D_800BC748)($at)
  .L8001E638:
    /* EE38 8001E638 03140200 */  sra        $v0, $v0, 16
    /* EE3C 8001E63C 1800A2AF */  sw         $v0, 0x18($sp)
    /* EE40 8001E640 0800E290 */  lbu        $v0, 0x8($a3)
    /* EE44 8001E644 00000000 */  nop
    /* EE48 8001E648 08004014 */  bnez       $v0, .L8001E66C
    /* EE4C 8001E64C 1000A427 */   addiu     $a0, $sp, 0x10
    /* EE50 8001E650 4A00E584 */  lh         $a1, 0x4A($a3)
    /* EE54 8001E654 4200E684 */  lh         $a2, 0x42($a3)
    /* EE58 8001E658 4600E784 */  lh         $a3, 0x46($a3)
    /* EE5C 8001E65C C9E0000C */  jal        func_80038324
    /* EE60 8001E660 1000A427 */   addiu     $a0, $sp, 0x10
    /* EE64 8001E664 AC790008 */  j          .L8001E6B0
    /* EE68 8001E668 00000000 */   nop
  .L8001E66C:
    /* EE6C 8001E66C 2000A527 */  addiu      $a1, $sp, 0x20
    /* EE70 8001E670 7000E28C */  lw         $v0, 0x70($a3)
    /* EE74 8001E674 A000E38C */  lw         $v1, 0xA0($a3)
    /* EE78 8001E678 A400E68C */  lw         $a2, 0xA4($a3)
    /* EE7C 8001E67C 21104300 */  addu       $v0, $v0, $v1
    /* EE80 8001E680 7400E38C */  lw         $v1, 0x74($a3)
    /* EE84 8001E684 03140200 */  sra        $v0, $v0, 16
    /* EE88 8001E688 2000A2AF */  sw         $v0, 0x20($sp)
    /* EE8C 8001E68C 7800E28C */  lw         $v0, 0x78($a3)
    /* EE90 8001E690 21186600 */  addu       $v1, $v1, $a2
    /* EE94 8001E694 A800E68C */  lw         $a2, 0xA8($a3)
    /* EE98 8001E698 031C0300 */  sra        $v1, $v1, 16
    /* EE9C 8001E69C 2400A3AF */  sw         $v1, 0x24($sp)
    /* EEA0 8001E6A0 21104600 */  addu       $v0, $v0, $a2
    /* EEA4 8001E6A4 03140200 */  sra        $v0, $v0, 16
    /* EEA8 8001E6A8 29E1000C */  jal        func_800384A4
    /* EEAC 8001E6AC 2800A2AF */   sw        $v0, 0x28($sp)
  .L8001E6B0:
    /* EEB0 8001E6B0 3000BF8F */  lw         $ra, 0x30($sp)
    /* EEB4 8001E6B4 3800BD27 */  addiu      $sp, $sp, 0x38
    /* EEB8 8001E6B8 0800E003 */  jr         $ra
    /* EEBC 8001E6BC 00000000 */   nop
.size func_8001E550, . - func_8001E550
