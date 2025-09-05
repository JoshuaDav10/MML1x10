.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80043E78
    /* 34678 80043E78 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 3467C 80043E7C 3000B0AF */  sw         $s0, 0x30($sp)
    /* 34680 80043E80 21808000 */  addu       $s0, $a0, $zero
    /* 34684 80043E84 0B80043C */  lui        $a0, %hi(Player_work)
    /* 34688 80043E88 B0518424 */  addiu      $a0, $a0, %lo(Player_work)
    /* 3468C 80043E8C 3800BFAF */  sw         $ra, 0x38($sp)
    /* 34690 80043E90 3400B1AF */  sw         $s1, 0x34($sp)
    /* 34694 80043E94 98001196 */  lhu        $s1, 0x98($s0)
    /* 34698 80043E98 75DD000C */  jal        func_800375D4
    /* 3469C 80043E9C 01000524 */   addiu     $a1, $zero, 0x1
    /* 346A0 80043EA0 0C000382 */  lb         $v1, 0xC($s0)
    /* 346A4 80043EA4 00000000 */  nop
    /* 346A8 80043EA8 09006010 */  beqz       $v1, .L80043ED0
    /* 346AC 80043EAC 21404000 */   addu      $t0, $v0, $zero
    /* 346B0 80043EB0 14000426 */  addiu      $a0, $s0, 0x14
    /* 346B4 80043EB4 21282002 */  addu       $a1, $s1, $zero
    /* 346B8 80043EB8 2C000626 */  addiu      $a2, $s0, 0x2C
    /* 346BC 80043EBC 2138A000 */  addu       $a3, $a1, $zero
    /* 346C0 80043EC0 00020224 */  addiu      $v0, $zero, 0x200
    /* 346C4 80043EC4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 346C8 80043EC8 BB0F0108 */  j          .L80043EEC
    /* 346CC 80043ECC 00600224 */   addiu     $v0, $zero, 0x6000
  .L80043ED0:
    /* 346D0 80043ED0 14000426 */  addiu      $a0, $s0, 0x14
    /* 346D4 80043ED4 21282002 */  addu       $a1, $s1, $zero
    /* 346D8 80043ED8 2C000626 */  addiu      $a2, $s0, 0x2C
    /* 346DC 80043EDC 2138A000 */  addu       $a3, $a1, $zero
    /* 346E0 80043EE0 00020224 */  addiu      $v0, $zero, 0x200
    /* 346E4 80043EE4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 346E8 80043EE8 00400224 */  addiu      $v0, $zero, 0x4000
  .L80043EEC:
    /* 346EC 80043EEC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 346F0 80043EF0 01000392 */  lbu        $v1, 0x1($s0)
    /* 346F4 80043EF4 C4000226 */  addiu      $v0, $s0, 0xC4
    /* 346F8 80043EF8 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 346FC 80043EFC 0008023C */  lui        $v0, (0x8000000 >> 16)
    /* 34700 80043F00 25100201 */  or         $v0, $t0, $v0
    /* 34704 80043F04 2000A2AF */  sw         $v0, 0x20($sp)
    /* 34708 80043F08 80000224 */  addiu      $v0, $zero, 0x80
    /* 3470C 80043F0C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 34710 80043F10 2800A2AF */  sw         $v0, 0x28($sp)
    /* 34714 80043F14 C3D0000C */  jal        func_8003430C
    /* 34718 80043F18 1800A3AF */   sw        $v1, 0x18($sp)
    /* 3471C 80043F1C 3800BF8F */  lw         $ra, 0x38($sp)
    /* 34720 80043F20 3400B18F */  lw         $s1, 0x34($sp)
    /* 34724 80043F24 3000B08F */  lw         $s0, 0x30($sp)
    /* 34728 80043F28 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 3472C 80043F2C 0800E003 */  jr         $ra
    /* 34730 80043F30 00000000 */   nop
.size func_80043E78, . - func_80043E78
