.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001EC0C
    /* F40C 8001EC0C 0C80023C */  lui        $v0, %hi(D_800BC7F0)
    /* F410 8001EC10 F0C7428C */  lw         $v0, %lo(D_800BC7F0)($v0)
    /* F414 8001EC14 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* F418 8001EC18 1800B2AF */  sw         $s2, 0x18($sp)
    /* F41C 8001EC1C 0C80123C */  lui        $s2, %hi(Scene_work)
    /* F420 8001EC20 484C5226 */  addiu      $s2, $s2, %lo(Scene_work)
    /* F424 8001EC24 1000B0AF */  sw         $s0, 0x10($sp)
    /* F428 8001EC28 0C80103C */  lui        $s0, %hi(D_800BC730)
    /* F42C 8001EC2C 30C71026 */  addiu      $s0, $s0, %lo(D_800BC730)
    /* F430 8001EC30 2400BFAF */  sw         $ra, 0x24($sp)
    /* F434 8001EC34 2000B4AF */  sw         $s4, 0x20($sp)
    /* F438 8001EC38 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* F43C 8001EC3C 1400B1AF */  sw         $s1, 0x14($sp)
    /* F440 8001EC40 0000438C */  lw         $v1, 0x0($v0)
    /* F444 8001EC44 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* F448 8001EC48 DC006210 */  beq        $v1, $v0, .L8001EFBC
    /* F44C 8001EC4C 00000000 */   nop
    /* F450 8001EC50 21880000 */  addu       $s1, $zero, $zero
    /* F454 8001EC54 01001324 */  addiu      $s3, $zero, 0x1
    /* F458 8001EC58 FF00143C */  lui        $s4, (0xFF0000 >> 16)
  .L8001EC5C:
    /* F45C 8001EC5C C000048E */  lw         $a0, 0xC0($s0)
    /* F460 8001EC60 00000000 */  nop
    /* F464 8001EC64 0000858C */  lw         $a1, 0x0($a0)
    /* F468 8001EC68 11000224 */  addiu      $v0, $zero, 0x11
    /* F46C 8001EC6C 021E0500 */  srl        $v1, $a1, 24
    /* F470 8001EC70 71006210 */  beq        $v1, $v0, .L8001EE38
    /* F474 8001EC74 1200622C */   sltiu     $v0, $v1, 0x12
    /* F478 8001EC78 16004010 */  beqz       $v0, .L8001ECD4
    /* F47C 8001EC7C 03000224 */   addiu     $v0, $zero, 0x3
    /* F480 8001EC80 52006210 */  beq        $v1, $v0, .L8001EDCC
    /* F484 8001EC84 0400622C */   sltiu     $v0, $v1, 0x4
    /* F488 8001EC88 07004010 */  beqz       $v0, .L8001ECA8
    /* F48C 8001EC8C 00000000 */   nop
    /* F490 8001EC90 39007310 */  beq        $v1, $s3, .L8001ED78
    /* F494 8001EC94 0200622C */   sltiu     $v0, $v1, 0x2
    /* F498 8001EC98 42004010 */  beqz       $v0, .L8001EDA4
    /* F49C 8001EC9C 2410B400 */   and       $v0, $a1, $s4
    /* F4A0 8001ECA0 547B0008 */  j          .L8001ED50
    /* F4A4 8001ECA4 FF00023C */   lui       $v0, (0xFFFFFF >> 16)
  .L8001ECA8:
    /* F4A8 8001ECA8 05000224 */  addiu      $v0, $zero, 0x5
    /* F4AC 8001ECAC 4D006210 */  beq        $v1, $v0, .L8001EDE4
    /* F4B0 8001ECB0 0500622C */   sltiu     $v0, $v1, 0x5
    /* F4B4 8001ECB4 48004014 */  bnez       $v0, .L8001EDD8
    /* F4B8 8001ECB8 06000224 */   addiu     $v0, $zero, 0x6
    /* F4BC 8001ECBC 4C006210 */  beq        $v1, $v0, .L8001EDF0
    /* F4C0 8001ECC0 10000224 */   addiu     $v0, $zero, 0x10
    /* F4C4 8001ECC4 4D006210 */  beq        $v1, $v0, .L8001EDFC
    /* F4C8 8001ECC8 00000000 */   nop
    /* F4CC 8001ECCC ED7B0008 */  j          .L8001EFB4
    /* F4D0 8001ECD0 00000000 */   nop
  .L8001ECD4:
    /* F4D4 8001ECD4 16000224 */  addiu      $v0, $zero, 0x16
    /* F4D8 8001ECD8 9A006210 */  beq        $v1, $v0, .L8001EF44
    /* F4DC 8001ECDC 1700622C */   sltiu     $v0, $v1, 0x17
    /* F4E0 8001ECE0 0B004010 */  beqz       $v0, .L8001ED10
    /* F4E4 8001ECE4 13000224 */   addiu     $v0, $zero, 0x13
    /* F4E8 8001ECE8 6B006210 */  beq        $v1, $v0, .L8001EE98
    /* F4EC 8001ECEC 1300622C */   sltiu     $v0, $v1, 0x13
    /* F4F0 8001ECF0 5D004014 */  bnez       $v0, .L8001EE68
    /* F4F4 8001ECF4 14000224 */   addiu     $v0, $zero, 0x14
    /* F4F8 8001ECF8 73006210 */  beq        $v1, $v0, .L8001EEC8
    /* F4FC 8001ECFC 15000224 */   addiu     $v0, $zero, 0x15
    /* F500 8001ED00 84006210 */  beq        $v1, $v0, .L8001EF14
    /* F504 8001ED04 00000000 */   nop
    /* F508 8001ED08 ED7B0008 */  j          .L8001EFB4
    /* F50C 8001ED0C 00000000 */   nop
  .L8001ED10:
    /* F510 8001ED10 21000224 */  addiu      $v0, $zero, 0x21
    /* F514 8001ED14 9B006210 */  beq        $v1, $v0, .L8001EF84
    /* F518 8001ED18 2200622C */   sltiu     $v0, $v1, 0x22
    /* F51C 8001ED1C 05004010 */  beqz       $v0, .L8001ED34
    /* F520 8001ED20 20000224 */   addiu     $v0, $zero, 0x20
    /* F524 8001ED24 93006210 */  beq        $v1, $v0, .L8001EF74
    /* F528 8001ED28 00000000 */   nop
    /* F52C 8001ED2C ED7B0008 */  j          .L8001EFB4
    /* F530 8001ED30 00000000 */   nop
  .L8001ED34:
    /* F534 8001ED34 22000224 */  addiu      $v0, $zero, 0x22
    /* F538 8001ED38 96006210 */  beq        $v1, $v0, .L8001EF94
    /* F53C 8001ED3C FF000224 */   addiu     $v0, $zero, 0xFF
    /* F540 8001ED40 9B006210 */  beq        $v1, $v0, .L8001EFB0
    /* F544 8001ED44 00000000 */   nop
    /* F548 8001ED48 ED7B0008 */  j          .L8001EFB4
    /* F54C 8001ED4C 00000000 */   nop
  .L8001ED50:
    /* F550 8001ED50 C000058E */  lw         $a1, 0xC0($s0)
    /* F554 8001ED54 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* F558 8001ED58 0000A38C */  lw         $v1, 0x0($a1)
    /* F55C 8001ED5C 1400448E */  lw         $a0, 0x14($s2)
    /* F560 8001ED60 24186200 */  and        $v1, $v1, $v0
    /* F564 8001ED64 2B208300 */  sltu       $a0, $a0, $v1
    /* F568 8001ED68 91008014 */  bnez       $a0, .L8001EFB0
    /* F56C 8001ED6C 0400A224 */   addiu     $v0, $a1, 0x4
    /* F570 8001ED70 ED7B0008 */  j          .L8001EFB4
    /* F574 8001ED74 C00002AE */   sw        $v0, 0xC0($s0)
  .L8001ED78:
    /* F578 8001ED78 08004392 */  lbu        $v1, 0x8($s2)
    /* F57C 8001ED7C 2410B400 */  and        $v0, $a1, $s4
    /* F580 8001ED80 02140200 */  srl        $v0, $v0, 16
    /* F584 8001ED84 8A006214 */  bne        $v1, $v0, .L8001EFB0
    /* F588 8001ED88 FFFFA230 */   andi      $v0, $a1, 0xFFFF
    /* F58C 8001ED8C 1800438E */  lw         $v1, 0x18($s2)
    /* F590 8001ED90 00000000 */  nop
    /* F594 8001ED94 0B006210 */  beq        $v1, $v0, .L8001EDC4
    /* F598 8001ED98 04008224 */   addiu     $v0, $a0, 0x4
    /* F59C 8001ED9C ED7B0008 */  j          .L8001EFB4
    /* F5A0 8001EDA0 01001124 */   addiu     $s1, $zero, 0x1
  .L8001EDA4:
    /* F5A4 8001EDA4 09004392 */  lbu        $v1, 0x9($s2)
    /* F5A8 8001EDA8 02140200 */  srl        $v0, $v0, 16
    /* F5AC 8001EDAC 80006214 */  bne        $v1, $v0, .L8001EFB0
    /* F5B0 8001EDB0 FFFFA230 */   andi      $v0, $a1, 0xFFFF
    /* F5B4 8001EDB4 1C00438E */  lw         $v1, 0x1C($s2)
    /* F5B8 8001EDB8 00000000 */  nop
    /* F5BC 8001EDBC 7C006214 */  bne        $v1, $v0, .L8001EFB0
    /* F5C0 8001EDC0 04008224 */   addiu     $v0, $a0, 0x4
  .L8001EDC4:
    /* F5C4 8001EDC4 ED7B0008 */  j          .L8001EFB4
    /* F5C8 8001EDC8 C00002AE */   sw        $v0, 0xC0($s0)
  .L8001EDCC:
    /* F5CC 8001EDCC C000028E */  lw         $v0, 0xC0($s0)
    /* F5D0 8001EDD0 E87B0008 */  j          .L8001EFA0
    /* F5D4 8001EDD4 080000A2 */   sb        $zero, 0x8($s0)
  .L8001EDD8:
    /* F5D8 8001EDD8 C000028E */  lw         $v0, 0xC0($s0)
    /* F5DC 8001EDDC E87B0008 */  j          .L8001EFA0
    /* F5E0 8001EDE0 080013A2 */   sb        $s3, 0x8($s0)
  .L8001EDE4:
    /* F5E4 8001EDE4 C000028E */  lw         $v0, 0xC0($s0)
    /* F5E8 8001EDE8 E87B0008 */  j          .L8001EFA0
    /* F5EC 8001EDEC 030000A2 */   sb        $zero, 0x3($s0)
  .L8001EDF0:
    /* F5F0 8001EDF0 C000028E */  lw         $v0, 0xC0($s0)
    /* F5F4 8001EDF4 E87B0008 */  j          .L8001EFA0
    /* F5F8 8001EDF8 030013A2 */   sb        $s3, 0x3($s0)
  .L8001EDFC:
    /* F5FC 8001EDFC C000028E */  lw         $v0, 0xC0($s0)
    /* F600 8001EE00 C000038E */  lw         $v1, 0xC0($s0)
    /* F604 8001EE04 030000A2 */  sb         $zero, 0x3($s0)
    /* F608 8001EE08 0400428C */  lw         $v0, 0x4($v0)
    /* F60C 8001EE0C 00000000 */  nop
    /* F610 8001EE10 100002AE */  sw         $v0, 0x10($s0)
    /* F614 8001EE14 0800628C */  lw         $v0, 0x8($v1)
    /* F618 8001EE18 C000038E */  lw         $v1, 0xC0($s0)
    /* F61C 8001EE1C 140002AE */  sw         $v0, 0x14($s0)
    /* F620 8001EE20 C000028E */  lw         $v0, 0xC0($s0)
    /* F624 8001EE24 0C00638C */  lw         $v1, 0xC($v1)
    /* F628 8001EE28 10004224 */  addiu      $v0, $v0, 0x10
    /* F62C 8001EE2C C00002AE */  sw         $v0, 0xC0($s0)
    /* F630 8001EE30 ED7B0008 */  j          .L8001EFB4
    /* F634 8001EE34 180003AE */   sw        $v1, 0x18($s0)
  .L8001EE38:
    /* F638 8001EE38 0400828C */  lw         $v0, 0x4($a0)
    /* F63C 8001EE3C C000038E */  lw         $v1, 0xC0($s0)
    /* F640 8001EE40 400002AE */  sw         $v0, 0x40($s0)
    /* F644 8001EE44 0800628C */  lw         $v0, 0x8($v1)
    /* F648 8001EE48 C000038E */  lw         $v1, 0xC0($s0)
    /* F64C 8001EE4C 440002AE */  sw         $v0, 0x44($s0)
    /* F650 8001EE50 C000028E */  lw         $v0, 0xC0($s0)
    /* F654 8001EE54 0C00638C */  lw         $v1, 0xC($v1)
    /* F658 8001EE58 10004224 */  addiu      $v0, $v0, 0x10
    /* F65C 8001EE5C C00002AE */  sw         $v0, 0xC0($s0)
    /* F660 8001EE60 ED7B0008 */  j          .L8001EFB4
    /* F664 8001EE64 480003AE */   sw        $v1, 0x48($s0)
  .L8001EE68:
    /* F668 8001EE68 0400828C */  lw         $v0, 0x4($a0)
    /* F66C 8001EE6C C000038E */  lw         $v1, 0xC0($s0)
    /* F670 8001EE70 200002AE */  sw         $v0, 0x20($s0)
    /* F674 8001EE74 0800628C */  lw         $v0, 0x8($v1)
    /* F678 8001EE78 C000038E */  lw         $v1, 0xC0($s0)
    /* F67C 8001EE7C 240002AE */  sw         $v0, 0x24($s0)
    /* F680 8001EE80 C000028E */  lw         $v0, 0xC0($s0)
    /* F684 8001EE84 0C00638C */  lw         $v1, 0xC($v1)
    /* F688 8001EE88 10004224 */  addiu      $v0, $v0, 0x10
    /* F68C 8001EE8C C00002AE */  sw         $v0, 0xC0($s0)
    /* F690 8001EE90 ED7B0008 */  j          .L8001EFB4
    /* F694 8001EE94 280003AE */   sw        $v1, 0x28($s0)
  .L8001EE98:
    /* F698 8001EE98 0400828C */  lw         $v0, 0x4($a0)
    /* F69C 8001EE9C C000038E */  lw         $v1, 0xC0($s0)
    /* F6A0 8001EEA0 500002AE */  sw         $v0, 0x50($s0)
    /* F6A4 8001EEA4 0800628C */  lw         $v0, 0x8($v1)
    /* F6A8 8001EEA8 C000038E */  lw         $v1, 0xC0($s0)
    /* F6AC 8001EEAC 540002AE */  sw         $v0, 0x54($s0)
    /* F6B0 8001EEB0 C000028E */  lw         $v0, 0xC0($s0)
    /* F6B4 8001EEB4 0C00638C */  lw         $v1, 0xC($v1)
    /* F6B8 8001EEB8 10004224 */  addiu      $v0, $v0, 0x10
    /* F6BC 8001EEBC C00002AE */  sw         $v0, 0xC0($s0)
    /* F6C0 8001EEC0 ED7B0008 */  j          .L8001EFB4
    /* F6C4 8001EEC4 580003AE */   sw        $v1, 0x58($s0)
  .L8001EEC8:
    /* F6C8 8001EEC8 C000028E */  lw         $v0, 0xC0($s0)
    /* F6CC 8001EECC 030013A2 */  sb         $s3, 0x3($s0)
    /* F6D0 8001EED0 0000428C */  lw         $v0, 0x0($v0)
    /* F6D4 8001EED4 C000038E */  lw         $v1, 0xC0($s0)
    /* F6D8 8001EED8 24105400 */  and        $v0, $v0, $s4
    /* F6DC 8001EEDC 02140200 */  srl        $v0, $v0, 16
    /* F6E0 8001EEE0 090002A2 */  sb         $v0, 0x9($s0)
    /* F6E4 8001EEE4 0400628C */  lw         $v0, 0x4($v1)
    /* F6E8 8001EEE8 C000038E */  lw         $v1, 0xC0($s0)
    /* F6EC 8001EEEC B00002AE */  sw         $v0, 0xB0($s0)
    /* F6F0 8001EEF0 0800628C */  lw         $v0, 0x8($v1)
    /* F6F4 8001EEF4 C000038E */  lw         $v1, 0xC0($s0)
    /* F6F8 8001EEF8 B40002AE */  sw         $v0, 0xB4($s0)
    /* F6FC 8001EEFC C000028E */  lw         $v0, 0xC0($s0)
    /* F700 8001EF00 0C00638C */  lw         $v1, 0xC($v1)
    /* F704 8001EF04 10004224 */  addiu      $v0, $v0, 0x10
    /* F708 8001EF08 C00002AE */  sw         $v0, 0xC0($s0)
    /* F70C 8001EF0C ED7B0008 */  j          .L8001EFB4
    /* F710 8001EF10 B80003AE */   sw        $v1, 0xB8($s0)
  .L8001EF14:
    /* F714 8001EF14 0400828C */  lw         $v0, 0x4($a0)
    /* F718 8001EF18 C000038E */  lw         $v1, 0xC0($s0)
    /* F71C 8001EF1C 700002AE */  sw         $v0, 0x70($s0)
    /* F720 8001EF20 0800628C */  lw         $v0, 0x8($v1)
    /* F724 8001EF24 C000038E */  lw         $v1, 0xC0($s0)
    /* F728 8001EF28 740002AE */  sw         $v0, 0x74($s0)
    /* F72C 8001EF2C C000028E */  lw         $v0, 0xC0($s0)
    /* F730 8001EF30 0C00638C */  lw         $v1, 0xC($v1)
    /* F734 8001EF34 10004224 */  addiu      $v0, $v0, 0x10
    /* F738 8001EF38 C00002AE */  sw         $v0, 0xC0($s0)
    /* F73C 8001EF3C ED7B0008 */  j          .L8001EFB4
    /* F740 8001EF40 780003AE */   sw        $v1, 0x78($s0)
  .L8001EF44:
    /* F744 8001EF44 0400828C */  lw         $v0, 0x4($a0)
    /* F748 8001EF48 C000038E */  lw         $v1, 0xC0($s0)
    /* F74C 8001EF4C 800002AE */  sw         $v0, 0x80($s0)
    /* F750 8001EF50 0800628C */  lw         $v0, 0x8($v1)
    /* F754 8001EF54 C000038E */  lw         $v1, 0xC0($s0)
    /* F758 8001EF58 840002AE */  sw         $v0, 0x84($s0)
    /* F75C 8001EF5C C000028E */  lw         $v0, 0xC0($s0)
    /* F760 8001EF60 0C00638C */  lw         $v1, 0xC($v1)
    /* F764 8001EF64 10004224 */  addiu      $v0, $v0, 0x10
    /* F768 8001EF68 C00002AE */  sw         $v0, 0xC0($s0)
    /* F76C 8001EF6C ED7B0008 */  j          .L8001EFB4
    /* F770 8001EF70 880003AE */   sw        $v1, 0x88($s0)
  .L8001EF74:
    /* F774 8001EF74 5FDA000C */  jal        func_8003697C
    /* F778 8001EF78 00000000 */   nop
    /* F77C 8001EF7C E77B0008 */  j          .L8001EF9C
    /* F780 8001EF80 00000000 */   nop
  .L8001EF84:
    /* F784 8001EF84 70DA000C */  jal        func_800369C0
    /* F788 8001EF88 00000000 */   nop
    /* F78C 8001EF8C E77B0008 */  j          .L8001EF9C
    /* F790 8001EF90 00000000 */   nop
  .L8001EF94:
    /* F794 8001EF94 87DA000C */  jal        func_80036A1C
    /* F798 8001EF98 00000000 */   nop
  .L8001EF9C:
    /* F79C 8001EF9C C000028E */  lw         $v0, 0xC0($s0)
  .L8001EFA0:
    /* F7A0 8001EFA0 00000000 */  nop
    /* F7A4 8001EFA4 04004224 */  addiu      $v0, $v0, 0x4
    /* F7A8 8001EFA8 ED7B0008 */  j          .L8001EFB4
    /* F7AC 8001EFAC C00002AE */   sw        $v0, 0xC0($s0)
  .L8001EFB0:
    /* F7B0 8001EFB0 01001124 */  addiu      $s1, $zero, 0x1
  .L8001EFB4:
    /* F7B4 8001EFB4 29FF2012 */  beqz       $s1, .L8001EC5C
    /* F7B8 8001EFB8 00000000 */   nop
  .L8001EFBC:
    /* F7BC 8001EFBC 1000028E */  lw         $v0, 0x10($s0)
    /* F7C0 8001EFC0 2000038E */  lw         $v1, 0x20($s0)
    /* F7C4 8001EFC4 2400048E */  lw         $a0, 0x24($s0)
    /* F7C8 8001EFC8 2800058E */  lw         $a1, 0x28($s0)
    /* F7CC 8001EFCC 21104300 */  addu       $v0, $v0, $v1
    /* F7D0 8001EFD0 100002AE */  sw         $v0, 0x10($s0)
    /* F7D4 8001EFD4 1400028E */  lw         $v0, 0x14($s0)
    /* F7D8 8001EFD8 1800038E */  lw         $v1, 0x18($s0)
    /* F7DC 8001EFDC 21104400 */  addu       $v0, $v0, $a0
    /* F7E0 8001EFE0 140002AE */  sw         $v0, 0x14($s0)
    /* F7E4 8001EFE4 4000028E */  lw         $v0, 0x40($s0)
    /* F7E8 8001EFE8 5000048E */  lw         $a0, 0x50($s0)
    /* F7EC 8001EFEC 21186500 */  addu       $v1, $v1, $a1
    /* F7F0 8001EFF0 180003AE */  sw         $v1, 0x18($s0)
    /* F7F4 8001EFF4 4400038E */  lw         $v1, 0x44($s0)
    /* F7F8 8001EFF8 5400058E */  lw         $a1, 0x54($s0)
    /* F7FC 8001EFFC 21104400 */  addu       $v0, $v0, $a0
    /* F800 8001F000 400002AE */  sw         $v0, 0x40($s0)
    /* F804 8001F004 4800028E */  lw         $v0, 0x48($s0)
    /* F808 8001F008 5800048E */  lw         $a0, 0x58($s0)
    /* F80C 8001F00C 21186500 */  addu       $v1, $v1, $a1
    /* F810 8001F010 440003AE */  sw         $v1, 0x44($s0)
    /* F814 8001F014 7000038E */  lw         $v1, 0x70($s0)
    /* F818 8001F018 8000058E */  lw         $a1, 0x80($s0)
    /* F81C 8001F01C 21104400 */  addu       $v0, $v0, $a0
    /* F820 8001F020 480002AE */  sw         $v0, 0x48($s0)
    /* F824 8001F024 7400028E */  lw         $v0, 0x74($s0)
    /* F828 8001F028 8400048E */  lw         $a0, 0x84($s0)
    /* F82C 8001F02C 21186500 */  addu       $v1, $v1, $a1
    /* F830 8001F030 700003AE */  sw         $v1, 0x70($s0)
    /* F834 8001F034 7800038E */  lw         $v1, 0x78($s0)
    /* F838 8001F038 8800058E */  lw         $a1, 0x88($s0)
    /* F83C 8001F03C 21104400 */  addu       $v0, $v0, $a0
    /* F840 8001F040 21186500 */  addu       $v1, $v1, $a1
    /* F844 8001F044 740002AE */  sw         $v0, 0x74($s0)
    /* F848 8001F048 780003AE */  sw         $v1, 0x78($s0)
    /* F84C 8001F04C 2400BF8F */  lw         $ra, 0x24($sp)
    /* F850 8001F050 2000B48F */  lw         $s4, 0x20($sp)
    /* F854 8001F054 1C00B38F */  lw         $s3, 0x1C($sp)
    /* F858 8001F058 1800B28F */  lw         $s2, 0x18($sp)
    /* F85C 8001F05C 1400B18F */  lw         $s1, 0x14($sp)
    /* F860 8001F060 1000B08F */  lw         $s0, 0x10($sp)
    /* F864 8001F064 2800BD27 */  addiu      $sp, $sp, 0x28
    /* F868 8001F068 0800E003 */  jr         $ra
    /* F86C 8001F06C 00000000 */   nop
.size func_8001EC0C, . - func_8001EC0C
