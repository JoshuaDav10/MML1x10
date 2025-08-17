.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004BDC8
    /* 3C5C8 8004BDC8 38FFBD27 */  addiu      $sp, $sp, -0xC8
    /* 3C5CC 8004BDCC 21400000 */  addu       $t0, $zero, $zero
    /* 3C5D0 8004BDD0 21480000 */  addu       $t1, $zero, $zero
    /* 3C5D4 8004BDD4 BC00B3AF */  sw         $s3, 0xBC($sp)
    /* 3C5D8 8004BDD8 21980000 */  addu       $s3, $zero, $zero
    /* 3C5DC 8004BDDC FF00A530 */  andi       $a1, $a1, 0xFF
    /* 3C5E0 8004BDE0 21C8A000 */  addu       $t9, $a1, $zero
    /* 3C5E4 8004BDE4 FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* 3C5E8 8004BDE8 C000BFAF */  sw         $ra, 0xC0($sp)
    /* 3C5EC 8004BDEC B800B2AF */  sw         $s2, 0xB8($sp)
    /* 3C5F0 8004BDF0 B400B1AF */  sw         $s1, 0xB4($sp)
    /* 3C5F4 8004BDF4 B000B0AF */  sw         $s0, 0xB0($sp)
    /* 3C5F8 8004BDF8 08008284 */  lh         $v0, 0x8($a0)
    /* 3C5FC 8004BDFC 801F063C */  lui        $a2, (0x1F80012E >> 16)
    /* 3C600 8004BE00 2E01C684 */  lh         $a2, (0x1F80012E & 0xFFFF)($a2)
    /* 3C604 8004BE04 0A008384 */  lh         $v1, 0xA($a0)
    /* 3C608 8004BE08 00008D84 */  lh         $t5, 0x0($a0)
    /* 3C60C 8004BE0C 02008E84 */  lh         $t6, 0x2($a0)
    /* 3C610 8004BE10 04008C84 */  lh         $t4, 0x4($a0)
    /* 3C614 8004BE14 06009884 */  lh         $t8, 0x6($a0)
    /* 3C618 8004BE18 21384000 */  addu       $a3, $v0, $zero
    /* 3C61C 8004BE1C 2378E600 */  subu       $t7, $a3, $a2
    /* 3C620 8004BE20 21506000 */  addu       $t2, $v1, $zero
    /* 3C624 8004BE24 801F023C */  lui        $v0, (0x1F80012C >> 16)
    /* 3C628 8004BE28 2C014284 */  lh         $v0, (0x1F80012C & 0xFFFF)($v0)
    /* 3C62C 8004BE2C 00000000 */  nop
    /* 3C630 8004BE30 23806200 */  subu       $s0, $v1, $v0
    /* 3C634 8004BE34 5600A22C */  sltiu      $v0, $a1, 0x56
    /* 3C638 8004BE38 29094010 */  beqz       $v0, .L8004E2E0
    /* 3C63C 8004BE3C 2158E000 */   addu      $t3, $a3, $zero
    /* 3C640 8004BE40 80100500 */  sll        $v0, $a1, 2
    /* 3C644 8004BE44 0180013C */  lui        $at, %hi(jtbl_80010EDC)
    /* 3C648 8004BE48 21082200 */  addu       $at, $at, $v0
    /* 3C64C 8004BE4C DC0E228C */  lw         $v0, %lo(jtbl_80010EDC)($at)
    /* 3C650 8004BE50 00000000 */  nop
    /* 3C654 8004BE54 08004000 */  jr         $v0
    /* 3C658 8004BE58 00000000 */   nop
  glabel .L8004BE5C
    /* 3C65C 8004BE5C 801F043C */  lui        $a0, (0x1F8000C2 >> 16)
    /* 3C660 8004BE60 C2008484 */  lh         $a0, (0x1F8000C2 & 0xFFFF)($a0)
    /* 3C664 8004BE64 00000000 */  nop
    /* 3C668 8004BE68 2A18E401 */  slt        $v1, $t7, $a0
    /* 3C66C 8004BE6C 1D096010 */  beqz       $v1, .L8004E2E4
    /* 3C670 8004BE70 21100000 */   addu      $v0, $zero, $zero
    /* 3C674 8004BE74 B9380108 */  j          .L8004E2E4
    /* 3C678 8004BE78 2A109000 */   slt       $v0, $a0, $s0
  glabel .L8004BE7C
    /* 3C67C 8004BE7C 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3C680 8004BE80 C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3C684 8004BE84 00000000 */  nop
    /* 3C688 8004BE88 2A10E301 */  slt        $v0, $t7, $v1
    /* 3C68C 8004BE8C 14094010 */  beqz       $v0, .L8004E2E0
    /* 3C690 8004BE90 2A107000 */   slt       $v0, $v1, $s0
    /* 3C694 8004BE94 12094010 */  beqz       $v0, .L8004E2E0
    /* 3C698 8004BE98 801F043C */   lui       $a0, (0x1F8000F6 >> 16)
    /* 3C69C 8004BE9C F6008434 */  ori        $a0, $a0, (0x1F8000F6 & 0xFFFF)
    /* 3C6A0 8004BEA0 00008280 */  lb         $v0, 0x0($a0)
    /* 3C6A4 8004BEA4 801F013C */  lui        $at, (0x1F8000F2 >> 16)
    /* 3C6A8 8004BEA8 F2002FA4 */  sh         $t7, (0x1F8000F2 & 0xFFFF)($at)
    /* 3C6AC 8004BEAC 801F013C */  lui        $at, (0x1F8000FA >> 16)
    /* 3C6B0 8004BEB0 FA0030A4 */  sh         $s0, (0x1F8000FA & 0xFFFF)($at)
    /* 3C6B4 8004BEB4 0E004014 */  bnez       $v0, .L8004BEF0
    /* 3C6B8 8004BEB8 01001324 */   addiu     $s3, $zero, 0x1
    /* 3C6BC 8004BEBC 23106F00 */  subu       $v0, $v1, $t7
    /* 3C6C0 8004BEC0 08004228 */  slti       $v0, $v0, 0x8
    /* 3C6C4 8004BEC4 0A004010 */  beqz       $v0, .L8004BEF0
    /* 3C6C8 8004BEC8 00000000 */   nop
    /* 3C6CC 8004BECC 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3C6D0 8004BED0 FF004280 */  lb         $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3C6D4 8004BED4 00000000 */  nop
    /* 3C6D8 8004BED8 05004014 */  bnez       $v0, .L8004BEF0
    /* 3C6DC 8004BEDC 00010224 */   addiu     $v0, $zero, 0x100
    /* 3C6E0 8004BEE0 801F013C */  lui        $at, (0x1F8000C2 >> 16)
    /* 3C6E4 8004BEE4 C2002FA4 */  sh         $t7, (0x1F8000C2 & 0xFFFF)($at)
    /* 3C6E8 8004BEE8 B2380108 */  j          .L8004E2C8
    /* 3C6EC 8004BEEC 000082A4 */   sh        $v0, 0x0($a0)
  .L8004BEF0:
    /* 3C6F0 8004BEF0 801F043C */  lui        $a0, (0x1F8000C0 >> 16)
    /* 3C6F4 8004BEF4 C0008434 */  ori        $a0, $a0, (0x1F8000C0 & 0xFFFF)
    /* 3C6F8 8004BEF8 801F053C */  lui        $a1, (0x1F8000C8 >> 16)
    /* 3C6FC 8004BEFC C800A534 */  ori        $a1, $a1, (0x1F8000C8 & 0xFFFF)
    /* 3C700 8004BF00 133D010C */  jal        func_8004F44C
    /* 3C704 8004BF04 01000624 */   addiu     $a2, $zero, 0x1
    /* 3C708 8004BF08 51300108 */  j          .L8004C144
    /* 3C70C 8004BF0C 00000000 */   nop
  glabel .L8004BF10
    /* 3C710 8004BF10 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3C714 8004BF14 C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3C718 8004BF18 00000000 */  nop
    /* 3C71C 8004BF1C 2A10E301 */  slt        $v0, $t7, $v1
    /* 3C720 8004BF20 EF084010 */  beqz       $v0, .L8004E2E0
    /* 3C724 8004BF24 2A107000 */   slt       $v0, $v1, $s0
    /* 3C728 8004BF28 ED084010 */  beqz       $v0, .L8004E2E0
    /* 3C72C 8004BF2C 801F043C */   lui       $a0, (0x1F8000C0 >> 16)
    /* 3C730 8004BF30 01001324 */  addiu      $s3, $zero, 0x1
    /* 3C734 8004BF34 C0008434 */  ori        $a0, $a0, (0x1F8000C0 & 0xFFFF)
    /* 3C738 8004BF38 801F053C */  lui        $a1, (0x1F8000C8 >> 16)
    /* 3C73C 8004BF3C C800A534 */  ori        $a1, $a1, (0x1F8000C8 & 0xFFFF)
    /* 3C740 8004BF40 801F013C */  lui        $at, (0x1F8000F2 >> 16)
    /* 3C744 8004BF44 F2002FA4 */  sh         $t7, (0x1F8000F2 & 0xFFFF)($at)
    /* 3C748 8004BF48 801F013C */  lui        $at, (0x1F8000FA >> 16)
    /* 3C74C 8004BF4C FA0030A4 */  sh         $s0, (0x1F8000FA & 0xFFFF)($at)
    /* 3C750 8004BF50 133D010C */  jal        func_8004F44C
    /* 3C754 8004BF54 21300000 */   addu      $a2, $zero, $zero
    /* 3C758 8004BF58 51300108 */  j          .L8004C144
    /* 3C75C 8004BF5C 00000000 */   nop
  glabel .L8004BF60
    /* 3C760 8004BF60 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3C764 8004BF64 C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3C768 8004BF68 00000000 */  nop
    /* 3C76C 8004BF6C 2A10E301 */  slt        $v0, $t7, $v1
    /* 3C770 8004BF70 DB084010 */  beqz       $v0, .L8004E2E0
    /* 3C774 8004BF74 2A107000 */   slt       $v0, $v1, $s0
    /* 3C778 8004BF78 DA084010 */  beqz       $v0, .L8004E2E4
    /* 3C77C 8004BF7C 21106002 */   addu      $v0, $s3, $zero
    /* 3C780 8004BF80 801F023C */  lui        $v0, (0x1F8000D2 >> 16)
    /* 3C784 8004BF84 D2004284 */  lh         $v0, (0x1F8000D2 & 0xFFFF)($v0)
    /* 3C788 8004BF88 801F013C */  lui        $at, (0x1F8000F2 >> 16)
    /* 3C78C 8004BF8C F2002FA4 */  sh         $t7, (0x1F8000F2 & 0xFFFF)($at)
    /* 3C790 8004BF90 801F013C */  lui        $at, (0x1F8000FA >> 16)
    /* 3C794 8004BF94 FA0030A4 */  sh         $s0, (0x1F8000FA & 0xFFFF)($at)
    /* 3C798 8004BF98 06004104 */  bgez       $v0, .L8004BFB4
    /* 3C79C 8004BF9C 01001324 */   addiu     $s3, $zero, 0x1
    /* 3C7A0 8004BFA0 801F023C */  lui        $v0, (0x1F8000F6 >> 16)
    /* 3C7A4 8004BFA4 F6004280 */  lb         $v0, (0x1F8000F6 & 0xFFFF)($v0)
    /* 3C7A8 8004BFA8 00000000 */  nop
    /* 3C7AC 8004BFAC 05004014 */  bnez       $v0, .L8004BFC4
    /* 3C7B0 8004BFB0 801F043C */   lui       $a0, (0x1F8000C0 >> 16)
  .L8004BFB4:
    /* 3C7B4 8004BFB4 801F013C */  lui        $at, (0x1F8000C2 >> 16)
    /* 3C7B8 8004BFB8 C2002FA4 */  sh         $t7, (0x1F8000C2 & 0xFFFF)($at)
    /* 3C7BC 8004BFBC 58300108 */  j          .L8004C160
    /* 3C7C0 8004BFC0 00010224 */   addiu     $v0, $zero, 0x100
  .L8004BFC4:
    /* 3C7C4 8004BFC4 C0008434 */  ori        $a0, $a0, (0x1F8000C0 & 0xFFFF)
    /* 3C7C8 8004BFC8 801F053C */  lui        $a1, (0x1F8000C8 >> 16)
    /* 3C7CC 8004BFCC C800A534 */  ori        $a1, $a1, (0x1F8000C8 & 0xFFFF)
    /* 3C7D0 8004BFD0 133D010C */  jal        func_8004F44C
    /* 3C7D4 8004BFD4 03000624 */   addiu     $a2, $zero, 0x3
    /* 3C7D8 8004BFD8 C2084010 */  beqz       $v0, .L8004E2E4
    /* 3C7DC 8004BFDC 21106002 */   addu      $v0, $s3, $zero
    /* 3C7E0 8004BFE0 B2380108 */  j          .L8004E2C8
    /* 3C7E4 8004BFE4 00000000 */   nop
  glabel .L8004BFE8
    /* 3C7E8 8004BFE8 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3C7EC 8004BFEC C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3C7F0 8004BFF0 00000000 */  nop
    /* 3C7F4 8004BFF4 2A10E301 */  slt        $v0, $t7, $v1
    /* 3C7F8 8004BFF8 B9084010 */  beqz       $v0, .L8004E2E0
    /* 3C7FC 8004BFFC 2A107000 */   slt       $v0, $v1, $s0
    /* 3C800 8004C000 B8084010 */  beqz       $v0, .L8004E2E4
    /* 3C804 8004C004 21106002 */   addu      $v0, $s3, $zero
    /* 3C808 8004C008 801F013C */  lui        $at, (0x1F8000F2 >> 16)
    /* 3C80C 8004C00C F2002FA4 */  sh         $t7, (0x1F8000F2 & 0xFFFF)($at)
    /* 3C810 8004C010 801F013C */  lui        $at, (0x1F8000FA >> 16)
    /* 3C814 8004C014 FA0030A4 */  sh         $s0, (0x1F8000FA & 0xFFFF)($at)
    /* 3C818 8004C018 801F013C */  lui        $at, (0x1F8000C2 >> 16)
    /* 3C81C 8004C01C C20030A4 */  sh         $s0, (0x1F8000C2 & 0xFFFF)($at)
    /* 3C820 8004C020 B2380108 */  j          .L8004E2C8
    /* 3C824 8004C024 01001324 */   addiu     $s3, $zero, 0x1
  glabel .L8004C028
    /* 3C828 8004C028 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3C82C 8004C02C C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3C830 8004C030 00000000 */  nop
    /* 3C834 8004C034 2A10E301 */  slt        $v0, $t7, $v1
    /* 3C838 8004C038 A9084010 */  beqz       $v0, .L8004E2E0
    /* 3C83C 8004C03C 2A107000 */   slt       $v0, $v1, $s0
    /* 3C840 8004C040 A8084010 */  beqz       $v0, .L8004E2E4
    /* 3C844 8004C044 21106002 */   addu      $v0, $s3, $zero
    /* 3C848 8004C048 01001324 */  addiu      $s3, $zero, 0x1
    /* 3C84C 8004C04C 801F013C */  lui        $at, (0x1F8000F2 >> 16)
    /* 3C850 8004C050 F2002FA4 */  sh         $t7, (0x1F8000F2 & 0xFFFF)($at)
    /* 3C854 8004C054 801F013C */  lui        $at, (0x1F8000FA >> 16)
    /* 3C858 8004C058 FA0030A4 */  sh         $s0, (0x1F8000FA & 0xFFFF)($at)
  .L8004C05C:
    /* 3C85C 8004C05C 801F043C */  lui        $a0, (0x1F8000C0 >> 16)
    /* 3C860 8004C060 C0008434 */  ori        $a0, $a0, (0x1F8000C0 & 0xFFFF)
    /* 3C864 8004C064 801F053C */  lui        $a1, (0x1F8000C8 >> 16)
    /* 3C868 8004C068 C800A534 */  ori        $a1, $a1, (0x1F8000C8 & 0xFFFF)
    /* 3C86C 8004C06C 2F3E010C */  jal        func_8004F8BC
    /* 3C870 8004C070 FCFF2627 */   addiu     $a2, $t9, -0x4
    /* 3C874 8004C074 32300108 */  j          .L8004C0C8
    /* 3C878 8004C078 00000000 */   nop
  glabel .L8004C07C
    /* 3C87C 8004C07C 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3C880 8004C080 C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3C884 8004C084 00000000 */  nop
    /* 3C888 8004C088 2A10E301 */  slt        $v0, $t7, $v1
    /* 3C88C 8004C08C 94084010 */  beqz       $v0, .L8004E2E0
    /* 3C890 8004C090 2A107000 */   slt       $v0, $v1, $s0
    /* 3C894 8004C094 93084010 */  beqz       $v0, .L8004E2E4
    /* 3C898 8004C098 21106002 */   addu      $v0, $s3, $zero
    /* 3C89C 8004C09C 01001324 */  addiu      $s3, $zero, 0x1
    /* 3C8A0 8004C0A0 801F013C */  lui        $at, (0x1F8000F2 >> 16)
    /* 3C8A4 8004C0A4 F2002FA4 */  sh         $t7, (0x1F8000F2 & 0xFFFF)($at)
    /* 3C8A8 8004C0A8 801F013C */  lui        $at, (0x1F8000FA >> 16)
    /* 3C8AC 8004C0AC FA0030A4 */  sh         $s0, (0x1F8000FA & 0xFFFF)($at)
    /* 3C8B0 8004C0B0 801F043C */  lui        $a0, (0x1F8000C0 >> 16)
  .L8004C0B4:
    /* 3C8B4 8004C0B4 C0008434 */  ori        $a0, $a0, (0x1F8000C0 & 0xFFFF)
    /* 3C8B8 8004C0B8 801F053C */  lui        $a1, (0x1F8000C8 >> 16)
    /* 3C8BC 8004C0BC C800A534 */  ori        $a1, $a1, (0x1F8000C8 & 0xFFFF)
    /* 3C8C0 8004C0C0 FA3E010C */  jal        func_8004FBE8
    /* 3C8C4 8004C0C4 FAFF2627 */   addiu     $a2, $t9, -0x6
  .L8004C0C8:
    /* 3C8C8 8004C0C8 0A004010 */  beqz       $v0, .L8004C0F4
    /* 3C8CC 8004C0CC 00000000 */   nop
    /* 3C8D0 8004C0D0 801F023C */  lui        $v0, (0x1F8000D2 >> 16)
    /* 3C8D4 8004C0D4 D2004284 */  lh         $v0, (0x1F8000D2 & 0xFFFF)($v0)
    /* 3C8D8 8004C0D8 00000000 */  nop
    /* 3C8DC 8004C0DC 03004004 */  bltz       $v0, .L8004C0EC
    /* 3C8E0 8004C0E0 00010224 */   addiu     $v0, $zero, 0x100
    /* 3C8E4 8004C0E4 801F013C */  lui        $at, (0x1F8000F6 >> 16)
    /* 3C8E8 8004C0E8 F60022A4 */  sh         $v0, (0x1F8000F6 & 0xFFFF)($at)
  .L8004C0EC:
    /* 3C8EC 8004C0EC 801F013C */  lui        $at, (0x1F800108 >> 16)
    /* 3C8F0 8004C0F0 080120A4 */  sh         $zero, (0x1F800108 & 0xFFFF)($at)
  .L8004C0F4:
    /* 3C8F4 8004C0F4 801F013C */  lui        $at, (0x1F800106 >> 16)
    /* 3C8F8 8004C0F8 060120A4 */  sh         $zero, (0x1F800106 & 0xFFFF)($at)
    /* 3C8FC 8004C0FC B6380108 */  j          .L8004E2D8
    /* 3C900 8004C100 00000000 */   nop
  glabel .L8004C104
    /* 3C904 8004C104 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3C908 8004C108 C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3C90C 8004C10C 00000000 */  nop
    /* 3C910 8004C110 2A10E301 */  slt        $v0, $t7, $v1
    /* 3C914 8004C114 72084010 */  beqz       $v0, .L8004E2E0
    /* 3C918 8004C118 2A107000 */   slt       $v0, $v1, $s0
    /* 3C91C 8004C11C 70084010 */  beqz       $v0, .L8004E2E0
    /* 3C920 8004C120 801F043C */   lui       $a0, (0x1F8000C0 >> 16)
    /* 3C924 8004C124 01001324 */  addiu      $s3, $zero, 0x1
    /* 3C928 8004C128 C0008434 */  ori        $a0, $a0, (0x1F8000C0 & 0xFFFF)
    /* 3C92C 8004C12C 801F013C */  lui        $at, (0x1F8000F2 >> 16)
    /* 3C930 8004C130 F2002FA4 */  sh         $t7, (0x1F8000F2 & 0xFFFF)($at)
    /* 3C934 8004C134 801F013C */  lui        $at, (0x1F8000FA >> 16)
    /* 3C938 8004C138 FA0030A4 */  sh         $s0, (0x1F8000FA & 0xFFFF)($at)
    /* 3C93C 8004C13C 7A40010C */  jal        func_800501E8
    /* 3C940 8004C140 E4FF2527 */   addiu     $a1, $t9, -0x1C
  .L8004C144:
    /* 3C944 8004C144 67084010 */  beqz       $v0, .L8004E2E4
    /* 3C948 8004C148 21106002 */   addu      $v0, $s3, $zero
    /* 3C94C 8004C14C 801F023C */  lui        $v0, (0x1F8000D2 >> 16)
    /* 3C950 8004C150 D2004284 */  lh         $v0, (0x1F8000D2 & 0xFFFF)($v0)
    /* 3C954 8004C154 00000000 */  nop
    /* 3C958 8004C158 5B084004 */  bltz       $v0, .L8004E2C8
    /* 3C95C 8004C15C 00010224 */   addiu     $v0, $zero, 0x100
  .L8004C160:
    /* 3C960 8004C160 801F013C */  lui        $at, (0x1F8000F6 >> 16)
    /* 3C964 8004C164 F60022A4 */  sh         $v0, (0x1F8000F6 & 0xFFFF)($at)
    /* 3C968 8004C168 B2380108 */  j          .L8004E2C8
    /* 3C96C 8004C16C 00000000 */   nop
  glabel .L8004C170
    /* 3C970 8004C170 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3C974 8004C174 C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3C978 8004C178 00000000 */  nop
    /* 3C97C 8004C17C 2A10E301 */  slt        $v0, $t7, $v1
    /* 3C980 8004C180 57084010 */  beqz       $v0, .L8004E2E0
    /* 3C984 8004C184 2A107000 */   slt       $v0, $v1, $s0
    /* 3C988 8004C188 56084010 */  beqz       $v0, .L8004E2E4
    /* 3C98C 8004C18C 21106002 */   addu      $v0, $s3, $zero
    /* 3C990 8004C190 01001324 */  addiu      $s3, $zero, 0x1
    /* 3C994 8004C194 801F023C */  lui        $v0, (0x1F8000D8 >> 16)
    /* 3C998 8004C198 D8004284 */  lh         $v0, (0x1F8000D8 & 0xFFFF)($v0)
    /* 3C99C 8004C19C 801F053C */  lui        $a1, (0x1F800126 >> 16)
    /* 3C9A0 8004C1A0 2601A584 */  lh         $a1, (0x1F800126 & 0xFFFF)($a1)
    /* 3C9A4 8004C1A4 801F013C */  lui        $at, (0x1F8000F2 >> 16)
    /* 3C9A8 8004C1A8 F2002FA4 */  sh         $t7, (0x1F8000F2 & 0xFFFF)($at)
    /* 3C9AC 8004C1AC 801F013C */  lui        $at, (0x1F8000FA >> 16)
    /* 3C9B0 8004C1B0 FA0030A4 */  sh         $s0, (0x1F8000FA & 0xFFFF)($at)
    /* 3C9B4 8004C1B4 03004004 */  bltz       $v0, .L8004C1C4
    /* 3C9B8 8004C1B8 2318CD01 */   subu      $v1, $t6, $t5
    /* 3C9BC 8004C1BC 72300108 */  j          .L8004C1C8
    /* 3C9C0 8004C1C0 21104500 */   addu      $v0, $v0, $a1
  .L8004C1C4:
    /* 3C9C4 8004C1C4 2310A200 */  subu       $v0, $a1, $v0
  .L8004C1C8:
    /* 3C9C8 8004C1C8 18004300 */  mult       $v0, $v1
    /* 3C9CC 8004C1CC 12280000 */  mflo       $a1
    /* 3C9D0 8004C1D0 801F023C */  lui        $v0, (0x1F8000DC >> 16)
    /* 3C9D4 8004C1D4 DC004284 */  lh         $v0, (0x1F8000DC & 0xFFFF)($v0)
    /* 3C9D8 8004C1D8 801F043C */  lui        $a0, (0x1F800128 >> 16)
    /* 3C9DC 8004C1DC 28018484 */  lh         $a0, (0x1F800128 & 0xFFFF)($a0)
    /* 3C9E0 8004C1E0 02004104 */  bgez       $v0, .L8004C1EC
    /* 3C9E4 8004C1E4 23180C03 */   subu      $v1, $t8, $t4
    /* 3C9E8 8004C1E8 23100200 */  negu       $v0, $v0
  .L8004C1EC:
    /* 3C9EC 8004C1EC 23104400 */  subu       $v0, $v0, $a0
    /* 3C9F0 8004C1F0 18004300 */  mult       $v0, $v1
    /* 3C9F4 8004C1F4 12180000 */  mflo       $v1
    /* 3C9F8 8004C1F8 2A106500 */  slt        $v0, $v1, $a1
    /* 3C9FC 8004C1FC 07004010 */  beqz       $v0, .L8004C21C
    /* 3CA00 8004C200 2A10A300 */   slt       $v0, $a1, $v1
    /* 3CA04 8004C204 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3CA08 8004C208 FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3CA0C 8004C20C 00000000 */  nop
    /* 3CA10 8004C210 01004230 */  andi       $v0, $v0, 0x1
    /* 3CA14 8004C214 31004014 */  bnez       $v0, .L8004C2DC
    /* 3CA18 8004C218 2A10A300 */   slt       $v0, $a1, $v1
  .L8004C21C:
    /* 3CA1C 8004C21C D7074010 */  beqz       $v0, .L8004E17C
    /* 3CA20 8004C220 801F043C */   lui       $a0, (0x1F8000C0 >> 16)
    /* 3CA24 8004C224 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3CA28 8004C228 FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3CA2C 8004C22C F1300108 */  j          .L8004C3C4
    /* 3CA30 8004C230 08004230 */   andi      $v0, $v0, 0x8
  glabel .L8004C234
    /* 3CA34 8004C234 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3CA38 8004C238 C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3CA3C 8004C23C 00000000 */  nop
    /* 3CA40 8004C240 2A10E301 */  slt        $v0, $t7, $v1
    /* 3CA44 8004C244 26084010 */  beqz       $v0, .L8004E2E0
    /* 3CA48 8004C248 2A107000 */   slt       $v0, $v1, $s0
    /* 3CA4C 8004C24C 25084010 */  beqz       $v0, .L8004E2E4
    /* 3CA50 8004C250 21106002 */   addu      $v0, $s3, $zero
    /* 3CA54 8004C254 01001324 */  addiu      $s3, $zero, 0x1
    /* 3CA58 8004C258 801F023C */  lui        $v0, (0x1F8000D8 >> 16)
    /* 3CA5C 8004C25C D8004284 */  lh         $v0, (0x1F8000D8 & 0xFFFF)($v0)
    /* 3CA60 8004C260 801F053C */  lui        $a1, (0x1F800124 >> 16)
    /* 3CA64 8004C264 2401A584 */  lh         $a1, (0x1F800124 & 0xFFFF)($a1)
    /* 3CA68 8004C268 801F013C */  lui        $at, (0x1F8000F2 >> 16)
    /* 3CA6C 8004C26C F2002FA4 */  sh         $t7, (0x1F8000F2 & 0xFFFF)($at)
    /* 3CA70 8004C270 801F013C */  lui        $at, (0x1F8000FA >> 16)
    /* 3CA74 8004C274 FA0030A4 */  sh         $s0, (0x1F8000FA & 0xFFFF)($at)
    /* 3CA78 8004C278 02004104 */  bgez       $v0, .L8004C284
    /* 3CA7C 8004C27C 2318CD01 */   subu      $v1, $t6, $t5
    /* 3CA80 8004C280 23100200 */  negu       $v0, $v0
  .L8004C284:
    /* 3CA84 8004C284 23104500 */  subu       $v0, $v0, $a1
    /* 3CA88 8004C288 18004300 */  mult       $v0, $v1
    /* 3CA8C 8004C28C 12280000 */  mflo       $a1
    /* 3CA90 8004C290 801F023C */  lui        $v0, (0x1F8000DC >> 16)
    /* 3CA94 8004C294 DC004284 */  lh         $v0, (0x1F8000DC & 0xFFFF)($v0)
    /* 3CA98 8004C298 801F043C */  lui        $a0, (0x1F800128 >> 16)
    /* 3CA9C 8004C29C 28018484 */  lh         $a0, (0x1F800128 & 0xFFFF)($a0)
    /* 3CAA0 8004C2A0 02004104 */  bgez       $v0, .L8004C2AC
    /* 3CAA4 8004C2A4 23180C03 */   subu      $v1, $t8, $t4
    /* 3CAA8 8004C2A8 23100200 */  negu       $v0, $v0
  .L8004C2AC:
    /* 3CAAC 8004C2AC 23104400 */  subu       $v0, $v0, $a0
    /* 3CAB0 8004C2B0 18004300 */  mult       $v0, $v1
    /* 3CAB4 8004C2B4 12180000 */  mflo       $v1
    /* 3CAB8 8004C2B8 2A106500 */  slt        $v0, $v1, $a1
    /* 3CABC 8004C2BC 09004010 */  beqz       $v0, .L8004C2E4
    /* 3CAC0 8004C2C0 2A10A300 */   slt       $v0, $a1, $v1
    /* 3CAC4 8004C2C4 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3CAC8 8004C2C8 FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3CACC 8004C2CC 00000000 */  nop
    /* 3CAD0 8004C2D0 02004230 */  andi       $v0, $v0, 0x2
    /* 3CAD4 8004C2D4 03004010 */  beqz       $v0, .L8004C2E4
    /* 3CAD8 8004C2D8 2A10A300 */   slt       $v0, $a1, $v1
  .L8004C2DC:
    /* 3CADC 8004C2DC 17300108 */  j          .L8004C05C
    /* 3CAE0 8004C2E0 04001924 */   addiu     $t9, $zero, 0x4
  .L8004C2E4:
    /* 3CAE4 8004C2E4 A5074010 */  beqz       $v0, .L8004E17C
    /* 3CAE8 8004C2E8 801F043C */   lui       $a0, (0x1F8000C0 >> 16)
    /* 3CAEC 8004C2EC 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3CAF0 8004C2F0 FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3CAF4 8004C2F4 28310108 */  j          .L8004C4A0
    /* 3CAF8 8004C2F8 08004230 */   andi      $v0, $v0, 0x8
  glabel .L8004C2FC
    /* 3CAFC 8004C2FC 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3CB00 8004C300 C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3CB04 8004C304 00000000 */  nop
    /* 3CB08 8004C308 2A10E301 */  slt        $v0, $t7, $v1
    /* 3CB0C 8004C30C F4074010 */  beqz       $v0, .L8004E2E0
    /* 3CB10 8004C310 2A107000 */   slt       $v0, $v1, $s0
    /* 3CB14 8004C314 F3074010 */  beqz       $v0, .L8004E2E4
    /* 3CB18 8004C318 21106002 */   addu      $v0, $s3, $zero
    /* 3CB1C 8004C31C 01001324 */  addiu      $s3, $zero, 0x1
    /* 3CB20 8004C320 801F023C */  lui        $v0, (0x1F8000D8 >> 16)
    /* 3CB24 8004C324 D8004284 */  lh         $v0, (0x1F8000D8 & 0xFFFF)($v0)
    /* 3CB28 8004C328 801F053C */  lui        $a1, (0x1F800126 >> 16)
    /* 3CB2C 8004C32C 2601A584 */  lh         $a1, (0x1F800126 & 0xFFFF)($a1)
    /* 3CB30 8004C330 801F013C */  lui        $at, (0x1F8000F2 >> 16)
    /* 3CB34 8004C334 F2002FA4 */  sh         $t7, (0x1F8000F2 & 0xFFFF)($at)
    /* 3CB38 8004C338 801F013C */  lui        $at, (0x1F8000FA >> 16)
    /* 3CB3C 8004C33C FA0030A4 */  sh         $s0, (0x1F8000FA & 0xFFFF)($at)
    /* 3CB40 8004C340 03004004 */  bltz       $v0, .L8004C350
    /* 3CB44 8004C344 2318CD01 */   subu      $v1, $t6, $t5
    /* 3CB48 8004C348 D5300108 */  j          .L8004C354
    /* 3CB4C 8004C34C 21104500 */   addu      $v0, $v0, $a1
  .L8004C350:
    /* 3CB50 8004C350 2310A200 */  subu       $v0, $a1, $v0
  .L8004C354:
    /* 3CB54 8004C354 18004300 */  mult       $v0, $v1
    /* 3CB58 8004C358 12280000 */  mflo       $a1
    /* 3CB5C 8004C35C 801F023C */  lui        $v0, (0x1F8000DC >> 16)
    /* 3CB60 8004C360 DC004284 */  lh         $v0, (0x1F8000DC & 0xFFFF)($v0)
    /* 3CB64 8004C364 801F043C */  lui        $a0, (0x1F80012A >> 16)
    /* 3CB68 8004C368 2A018484 */  lh         $a0, (0x1F80012A & 0xFFFF)($a0)
    /* 3CB6C 8004C36C 03004004 */  bltz       $v0, .L8004C37C
    /* 3CB70 8004C370 23180C03 */   subu      $v1, $t8, $t4
    /* 3CB74 8004C374 E0300108 */  j          .L8004C380
    /* 3CB78 8004C378 21104400 */   addu      $v0, $v0, $a0
  .L8004C37C:
    /* 3CB7C 8004C37C 23108200 */  subu       $v0, $a0, $v0
  .L8004C380:
    /* 3CB80 8004C380 18004300 */  mult       $v0, $v1
    /* 3CB84 8004C384 12180000 */  mflo       $v1
    /* 3CB88 8004C388 2A106500 */  slt        $v0, $v1, $a1
    /* 3CB8C 8004C38C 07004010 */  beqz       $v0, .L8004C3AC
    /* 3CB90 8004C390 2A10A300 */   slt       $v0, $a1, $v1
    /* 3CB94 8004C394 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3CB98 8004C398 FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3CB9C 8004C39C 00000000 */  nop
    /* 3CBA0 8004C3A0 01004230 */  andi       $v0, $v0, 0x1
    /* 3CBA4 8004C3A4 36004014 */  bnez       $v0, .L8004C480
    /* 3CBA8 8004C3A8 2A10A300 */   slt       $v0, $a1, $v1
  .L8004C3AC:
    /* 3CBAC 8004C3AC 73074010 */  beqz       $v0, .L8004E17C
    /* 3CBB0 8004C3B0 801F043C */   lui       $a0, (0x1F8000C0 >> 16)
    /* 3CBB4 8004C3B4 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3CBB8 8004C3B8 FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3CBBC 8004C3BC 00000000 */  nop
    /* 3CBC0 8004C3C0 04004230 */  andi       $v0, $v0, 0x4
  .L8004C3C4:
    /* 3CBC4 8004C3C4 6D074010 */  beqz       $v0, .L8004E17C
    /* 3CBC8 8004C3C8 801F043C */   lui       $a0, (0x1F8000C0 >> 16)
    /* 3CBCC 8004C3CC 2D300108 */  j          .L8004C0B4
    /* 3CBD0 8004C3D0 06001924 */   addiu     $t9, $zero, 0x6
  glabel .L8004C3D4
    /* 3CBD4 8004C3D4 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3CBD8 8004C3D8 C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3CBDC 8004C3DC 00000000 */  nop
    /* 3CBE0 8004C3E0 2A10E301 */  slt        $v0, $t7, $v1
    /* 3CBE4 8004C3E4 BE074010 */  beqz       $v0, .L8004E2E0
    /* 3CBE8 8004C3E8 2A107000 */   slt       $v0, $v1, $s0
    /* 3CBEC 8004C3EC BD074010 */  beqz       $v0, .L8004E2E4
    /* 3CBF0 8004C3F0 21106002 */   addu      $v0, $s3, $zero
    /* 3CBF4 8004C3F4 01001324 */  addiu      $s3, $zero, 0x1
    /* 3CBF8 8004C3F8 801F023C */  lui        $v0, (0x1F8000D8 >> 16)
    /* 3CBFC 8004C3FC D8004284 */  lh         $v0, (0x1F8000D8 & 0xFFFF)($v0)
    /* 3CC00 8004C400 801F053C */  lui        $a1, (0x1F800126 >> 16)
    /* 3CC04 8004C404 2601A584 */  lh         $a1, (0x1F800126 & 0xFFFF)($a1)
    /* 3CC08 8004C408 801F013C */  lui        $at, (0x1F8000F2 >> 16)
    /* 3CC0C 8004C40C F2002FA4 */  sh         $t7, (0x1F8000F2 & 0xFFFF)($at)
    /* 3CC10 8004C410 801F013C */  lui        $at, (0x1F8000FA >> 16)
    /* 3CC14 8004C414 FA0030A4 */  sh         $s0, (0x1F8000FA & 0xFFFF)($at)
    /* 3CC18 8004C418 03004004 */  bltz       $v0, .L8004C428
    /* 3CC1C 8004C41C 2318CD01 */   subu      $v1, $t6, $t5
    /* 3CC20 8004C420 0B310108 */  j          .L8004C42C
    /* 3CC24 8004C424 21104500 */   addu      $v0, $v0, $a1
  .L8004C428:
    /* 3CC28 8004C428 2310A200 */  subu       $v0, $a1, $v0
  .L8004C42C:
    /* 3CC2C 8004C42C 18004300 */  mult       $v0, $v1
    /* 3CC30 8004C430 12280000 */  mflo       $a1
    /* 3CC34 8004C434 801F023C */  lui        $v0, (0x1F8000DC >> 16)
    /* 3CC38 8004C438 DC004284 */  lh         $v0, (0x1F8000DC & 0xFFFF)($v0)
    /* 3CC3C 8004C43C 801F043C */  lui        $a0, (0x1F800128 >> 16)
    /* 3CC40 8004C440 28018484 */  lh         $a0, (0x1F800128 & 0xFFFF)($a0)
    /* 3CC44 8004C444 02004104 */  bgez       $v0, .L8004C450
    /* 3CC48 8004C448 23180C03 */   subu      $v1, $t8, $t4
    /* 3CC4C 8004C44C 23100200 */  negu       $v0, $v0
  .L8004C450:
    /* 3CC50 8004C450 23104400 */  subu       $v0, $v0, $a0
    /* 3CC54 8004C454 18004300 */  mult       $v0, $v1
    /* 3CC58 8004C458 12180000 */  mflo       $v1
    /* 3CC5C 8004C45C 2A106500 */  slt        $v0, $v1, $a1
    /* 3CC60 8004C460 09004010 */  beqz       $v0, .L8004C488
    /* 3CC64 8004C464 2A10A300 */   slt       $v0, $a1, $v1
    /* 3CC68 8004C468 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3CC6C 8004C46C FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3CC70 8004C470 00000000 */  nop
    /* 3CC74 8004C474 02004230 */  andi       $v0, $v0, 0x2
    /* 3CC78 8004C478 03004010 */  beqz       $v0, .L8004C488
    /* 3CC7C 8004C47C 2A10A300 */   slt       $v0, $a1, $v1
  .L8004C480:
    /* 3CC80 8004C480 17300108 */  j          .L8004C05C
    /* 3CC84 8004C484 05001924 */   addiu     $t9, $zero, 0x5
  .L8004C488:
    /* 3CC88 8004C488 3C074010 */  beqz       $v0, .L8004E17C
    /* 3CC8C 8004C48C 801F043C */   lui       $a0, (0x1F8000C0 >> 16)
    /* 3CC90 8004C490 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3CC94 8004C494 FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3CC98 8004C498 00000000 */  nop
    /* 3CC9C 8004C49C 04004230 */  andi       $v0, $v0, 0x4
  .L8004C4A0:
    /* 3CCA0 8004C4A0 36074010 */  beqz       $v0, .L8004E17C
    /* 3CCA4 8004C4A4 801F043C */   lui       $a0, (0x1F8000C0 >> 16)
    /* 3CCA8 8004C4A8 2D300108 */  j          .L8004C0B4
    /* 3CCAC 8004C4AC 07001924 */   addiu     $t9, $zero, 0x7
  glabel .L8004C4B0
    /* 3CCB0 8004C4B0 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3CCB4 8004C4B4 C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3CCB8 8004C4B8 00000000 */  nop
    /* 3CCBC 8004C4BC 2A10E301 */  slt        $v0, $t7, $v1
    /* 3CCC0 8004C4C0 87074010 */  beqz       $v0, .L8004E2E0
    /* 3CCC4 8004C4C4 2A107000 */   slt       $v0, $v1, $s0
    /* 3CCC8 8004C4C8 86074010 */  beqz       $v0, .L8004E2E4
    /* 3CCCC 8004C4CC 21106002 */   addu      $v0, $s3, $zero
    /* 3CCD0 8004C4D0 801F023C */  lui        $v0, (0x1F8000D2 >> 16)
    /* 3CCD4 8004C4D4 D2004284 */  lh         $v0, (0x1F8000D2 & 0xFFFF)($v0)
    /* 3CCD8 8004C4D8 801F013C */  lui        $at, (0x1F8000F2 >> 16)
    /* 3CCDC 8004C4DC F2002FA4 */  sh         $t7, (0x1F8000F2 & 0xFFFF)($at)
    /* 3CCE0 8004C4E0 801F013C */  lui        $at, (0x1F8000FA >> 16)
    /* 3CCE4 8004C4E4 FA0030A4 */  sh         $s0, (0x1F8000FA & 0xFFFF)($at)
    /* 3CCE8 8004C4E8 23074004 */  bltz       $v0, .L8004E178
    /* 3CCEC 8004C4EC 01001324 */   addiu     $s3, $zero, 0x1
    /* 3CCF0 8004C4F0 00010224 */  addiu      $v0, $zero, 0x100
    /* 3CCF4 8004C4F4 801F013C */  lui        $at, (0x1F8000C2 >> 16)
    /* 3CCF8 8004C4F8 C2002FA4 */  sh         $t7, (0x1F8000C2 & 0xFFFF)($at)
    /* 3CCFC 8004C4FC 801F013C */  lui        $at, (0x1F8000F6 >> 16)
    /* 3CD00 8004C500 F60022A4 */  sh         $v0, (0x1F8000F6 & 0xFFFF)($at)
    /* 3CD04 8004C504 B9380108 */  j          .L8004E2E4
    /* 3CD08 8004C508 21106002 */   addu      $v0, $s3, $zero
  glabel .L8004C50C
    /* 3CD0C 8004C50C 801F023C */  lui        $v0, (0x1F8000F6 >> 16)
    /* 3CD10 8004C510 F6004280 */  lb         $v0, (0x1F8000F6 & 0xFFFF)($v0)
    /* 3CD14 8004C514 00000000 */  nop
    /* 3CD18 8004C518 0E004014 */  bnez       $v0, .L8004C554
    /* 3CD1C 8004C51C 00000000 */   nop
    /* 3CD20 8004C520 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3CD24 8004C524 FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3CD28 8004C528 00000000 */  nop
    /* 3CD2C 8004C52C 08004230 */  andi       $v0, $v0, 0x8
    /* 3CD30 8004C530 08004010 */  beqz       $v0, .L8004C554
    /* 3CD34 8004C534 00000000 */   nop
    /* 3CD38 8004C538 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3CD3C 8004C53C C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3CD40 8004C540 00000000 */  nop
    /* 3CD44 8004C544 23104F00 */  subu       $v0, $v0, $t7
    /* 3CD48 8004C548 20004228 */  slti       $v0, $v0, 0x20
    /* 3CD4C 8004C54C F2064014 */  bnez       $v0, .L8004E118
    /* 3CD50 8004C550 00000000 */   nop
  .L8004C554:
    /* 3CD54 8004C554 801F023C */  lui        $v0, (0x1F80012A >> 16)
    /* 3CD58 8004C558 2A014284 */  lh         $v0, (0x1F80012A & 0xFFFF)($v0)
    /* 3CD5C 8004C55C 801F033C */  lui        $v1, (0x1F800128 >> 16)
    /* 3CD60 8004C560 28016384 */  lh         $v1, (0x1F800128 & 0xFFFF)($v1)
    /* 3CD64 8004C564 23204701 */  subu       $a0, $t2, $a3
    /* 3CD68 8004C568 23104300 */  subu       $v0, $v0, $v1
    /* 3CD6C 8004C56C 18008200 */  mult       $a0, $v0
    /* 3CD70 8004C570 12100000 */  mflo       $v0
    /* 3CD74 8004C574 23300C03 */  subu       $a2, $t8, $t4
    /* 3CD78 8004C578 00000000 */  nop
    /* 3CD7C 8004C57C 1A004600 */  div        $zero, $v0, $a2
    /* 3CD80 8004C580 0200C014 */  bnez       $a2, .L8004C58C
    /* 3CD84 8004C584 00000000 */   nop
    /* 3CD88 8004C588 0D000700 */  break      7
  .L8004C58C:
    /* 3CD8C 8004C58C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3CD90 8004C590 0400C114 */  bne        $a2, $at, .L8004C5A4
    /* 3CD94 8004C594 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3CD98 8004C598 02004114 */  bne        $v0, $at, .L8004C5A4
    /* 3CD9C 8004C59C 00000000 */   nop
    /* 3CDA0 8004C5A0 0D000600 */  break      6
  .L8004C5A4:
    /* 3CDA4 8004C5A4 12100000 */  mflo       $v0
    /* 3CDA8 8004C5A8 801F043C */  lui        $a0, (0x1F8000C4 >> 16)
    /* 3CDAC 8004C5AC C4008484 */  lh         $a0, (0x1F8000C4 & 0xFFFF)($a0)
    /* 3CDB0 8004C5B0 2338E200 */  subu       $a3, $a3, $v0
    /* 3CDB4 8004C5B4 23484701 */  subu       $t1, $t2, $a3
    /* 3CDB8 8004C5B8 23100403 */  subu       $v0, $t8, $a0
    /* 3CDBC 8004C5BC 18002201 */  mult       $t1, $v0
    /* 3CDC0 8004C5C0 12100000 */  mflo       $v0
    /* 3CDC4 8004C5C4 00000000 */  nop
    /* 3CDC8 8004C5C8 00000000 */  nop
    /* 3CDCC 8004C5CC 1A004600 */  div        $zero, $v0, $a2
    /* 3CDD0 8004C5D0 0200C014 */  bnez       $a2, .L8004C5DC
    /* 3CDD4 8004C5D4 00000000 */   nop
    /* 3CDD8 8004C5D8 0D000700 */  break      7
  .L8004C5DC:
    /* 3CDDC 8004C5DC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3CDE0 8004C5E0 0400C114 */  bne        $a2, $at, .L8004C5F4
    /* 3CDE4 8004C5E4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3CDE8 8004C5E8 02004114 */  bne        $v0, $at, .L8004C5F4
    /* 3CDEC 8004C5EC 00000000 */   nop
    /* 3CDF0 8004C5F0 0D000600 */  break      6
  .L8004C5F4:
    /* 3CDF4 8004C5F4 12100000 */  mflo       $v0
    /* 3CDF8 8004C5F8 801F033C */  lui        $v1, (0x1F8000F4 >> 16)
    /* 3CDFC 8004C5FC F4006384 */  lh         $v1, (0x1F8000F4 & 0xFFFF)($v1)
    /* 3CE00 8004C600 00000000 */  nop
    /* 3CE04 8004C604 23288300 */  subu       $a1, $a0, $v1
    /* 3CE08 8004C608 2140E200 */  addu       $t0, $a3, $v0
    /* 3CE0C 8004C60C 2A100B01 */  slt        $v0, $t0, $t3
    /* 3CE10 8004C610 02004010 */  beqz       $v0, .L8004C61C
    /* 3CE14 8004C614 21206000 */   addu      $a0, $v1, $zero
    /* 3CE18 8004C618 21406001 */  addu       $t0, $t3, $zero
  .L8004C61C:
    /* 3CE1C 8004C61C 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3CE20 8004C620 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3CE24 8004C624 00000000 */  nop
    /* 3CE28 8004C628 23104201 */  subu       $v0, $t2, $v0
    /* 3CE2C 8004C62C 1800C200 */  mult       $a2, $v0
    /* 3CE30 8004C630 12100000 */  mflo       $v0
    /* 3CE34 8004C634 00000000 */  nop
    /* 3CE38 8004C638 00000000 */  nop
    /* 3CE3C 8004C63C 1A004900 */  div        $zero, $v0, $t1
    /* 3CE40 8004C640 02002015 */  bnez       $t1, .L8004C64C
    /* 3CE44 8004C644 00000000 */   nop
    /* 3CE48 8004C648 0D000700 */  break      7
  .L8004C64C:
    /* 3CE4C 8004C64C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3CE50 8004C650 04002115 */  bne        $t1, $at, .L8004C664
    /* 3CE54 8004C654 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3CE58 8004C658 02004114 */  bne        $v0, $at, .L8004C664
    /* 3CE5C 8004C65C 00000000 */   nop
    /* 3CE60 8004C660 0D000600 */  break      6
  .L8004C664:
    /* 3CE64 8004C664 12180000 */  mflo       $v1
    /* 3CE68 8004C668 00000000 */  nop
    /* 3CE6C 8004C66C AC016018 */  blez       $v1, .L8004CD20
    /* 3CE70 8004C670 21108300 */   addu      $v0, $a0, $v1
    /* 3CE74 8004C674 801F013C */  lui        $at, (0x1F8000F4 >> 16)
    /* 3CE78 8004C678 F40022A4 */  sh         $v0, (0x1F8000F4 & 0xFFFF)($at)
    /* 3CE7C 8004C67C 6E380108 */  j          .L8004E1B8
    /* 3CE80 8004C680 20000924 */   addiu     $t1, $zero, 0x20
  glabel .L8004C684
    /* 3CE84 8004C684 801F023C */  lui        $v0, (0x1F8000F6 >> 16)
    /* 3CE88 8004C688 F6004280 */  lb         $v0, (0x1F8000F6 & 0xFFFF)($v0)
    /* 3CE8C 8004C68C 00000000 */  nop
    /* 3CE90 8004C690 0E004014 */  bnez       $v0, .L8004C6CC
    /* 3CE94 8004C694 00000000 */   nop
    /* 3CE98 8004C698 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3CE9C 8004C69C FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3CEA0 8004C6A0 00000000 */  nop
    /* 3CEA4 8004C6A4 04004230 */  andi       $v0, $v0, 0x4
    /* 3CEA8 8004C6A8 08004010 */  beqz       $v0, .L8004C6CC
    /* 3CEAC 8004C6AC 00000000 */   nop
    /* 3CEB0 8004C6B0 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3CEB4 8004C6B4 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3CEB8 8004C6B8 00000000 */  nop
    /* 3CEBC 8004C6BC 23104F00 */  subu       $v0, $v0, $t7
    /* 3CEC0 8004C6C0 20004228 */  slti       $v0, $v0, 0x20
    /* 3CEC4 8004C6C4 94064014 */  bnez       $v0, .L8004E118
    /* 3CEC8 8004C6C8 00000000 */   nop
  .L8004C6CC:
    /* 3CECC 8004C6CC 801F023C */  lui        $v0, (0x1F80012A >> 16)
    /* 3CED0 8004C6D0 2A014284 */  lh         $v0, (0x1F80012A & 0xFFFF)($v0)
    /* 3CED4 8004C6D4 801F033C */  lui        $v1, (0x1F800128 >> 16)
    /* 3CED8 8004C6D8 28016384 */  lh         $v1, (0x1F800128 & 0xFFFF)($v1)
    /* 3CEDC 8004C6DC 23204701 */  subu       $a0, $t2, $a3
    /* 3CEE0 8004C6E0 23104300 */  subu       $v0, $v0, $v1
    /* 3CEE4 8004C6E4 18008200 */  mult       $a0, $v0
    /* 3CEE8 8004C6E8 12100000 */  mflo       $v0
    /* 3CEEC 8004C6EC 23300C03 */  subu       $a2, $t8, $t4
    /* 3CEF0 8004C6F0 00000000 */  nop
    /* 3CEF4 8004C6F4 1A004600 */  div        $zero, $v0, $a2
    /* 3CEF8 8004C6F8 0200C014 */  bnez       $a2, .L8004C704
    /* 3CEFC 8004C6FC 00000000 */   nop
    /* 3CF00 8004C700 0D000700 */  break      7
  .L8004C704:
    /* 3CF04 8004C704 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3CF08 8004C708 0400C114 */  bne        $a2, $at, .L8004C71C
    /* 3CF0C 8004C70C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3CF10 8004C710 02004114 */  bne        $v0, $at, .L8004C71C
    /* 3CF14 8004C714 00000000 */   nop
    /* 3CF18 8004C718 0D000600 */  break      6
  .L8004C71C:
    /* 3CF1C 8004C71C 12100000 */  mflo       $v0
    /* 3CF20 8004C720 801F043C */  lui        $a0, (0x1F8000C4 >> 16)
    /* 3CF24 8004C724 C4008484 */  lh         $a0, (0x1F8000C4 & 0xFFFF)($a0)
    /* 3CF28 8004C728 2338E200 */  subu       $a3, $a3, $v0
    /* 3CF2C 8004C72C 23484701 */  subu       $t1, $t2, $a3
    /* 3CF30 8004C730 23108C00 */  subu       $v0, $a0, $t4
    /* 3CF34 8004C734 18002201 */  mult       $t1, $v0
    /* 3CF38 8004C738 12100000 */  mflo       $v0
    /* 3CF3C 8004C73C 00000000 */  nop
    /* 3CF40 8004C740 00000000 */  nop
    /* 3CF44 8004C744 1A004600 */  div        $zero, $v0, $a2
    /* 3CF48 8004C748 0200C014 */  bnez       $a2, .L8004C754
    /* 3CF4C 8004C74C 00000000 */   nop
    /* 3CF50 8004C750 0D000700 */  break      7
  .L8004C754:
    /* 3CF54 8004C754 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3CF58 8004C758 0400C114 */  bne        $a2, $at, .L8004C76C
    /* 3CF5C 8004C75C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3CF60 8004C760 02004114 */  bne        $v0, $at, .L8004C76C
    /* 3CF64 8004C764 00000000 */   nop
    /* 3CF68 8004C768 0D000600 */  break      6
  .L8004C76C:
    /* 3CF6C 8004C76C 12100000 */  mflo       $v0
    /* 3CF70 8004C770 801F033C */  lui        $v1, (0x1F8000FC >> 16)
    /* 3CF74 8004C774 FC006384 */  lh         $v1, (0x1F8000FC & 0xFFFF)($v1)
    /* 3CF78 8004C778 00000000 */  nop
    /* 3CF7C 8004C77C 23286400 */  subu       $a1, $v1, $a0
    /* 3CF80 8004C780 2140E200 */  addu       $t0, $a3, $v0
    /* 3CF84 8004C784 2A100B01 */  slt        $v0, $t0, $t3
    /* 3CF88 8004C788 02004010 */  beqz       $v0, .L8004C794
    /* 3CF8C 8004C78C 21206000 */   addu      $a0, $v1, $zero
    /* 3CF90 8004C790 21406001 */  addu       $t0, $t3, $zero
  .L8004C794:
    /* 3CF94 8004C794 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3CF98 8004C798 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3CF9C 8004C79C 00000000 */  nop
    /* 3CFA0 8004C7A0 23104201 */  subu       $v0, $t2, $v0
    /* 3CFA4 8004C7A4 1800C200 */  mult       $a2, $v0
    /* 3CFA8 8004C7A8 12100000 */  mflo       $v0
    /* 3CFAC 8004C7AC 00000000 */  nop
    /* 3CFB0 8004C7B0 00000000 */  nop
    /* 3CFB4 8004C7B4 1A004900 */  div        $zero, $v0, $t1
    /* 3CFB8 8004C7B8 02002015 */  bnez       $t1, .L8004C7C4
    /* 3CFBC 8004C7BC 00000000 */   nop
    /* 3CFC0 8004C7C0 0D000700 */  break      7
  .L8004C7C4:
    /* 3CFC4 8004C7C4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3CFC8 8004C7C8 04002115 */  bne        $t1, $at, .L8004C7DC
    /* 3CFCC 8004C7CC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3CFD0 8004C7D0 02004114 */  bne        $v0, $at, .L8004C7DC
    /* 3CFD4 8004C7D4 00000000 */   nop
    /* 3CFD8 8004C7D8 0D000600 */  break      6
  .L8004C7DC:
    /* 3CFDC 8004C7DC 12180000 */  mflo       $v1
    /* 3CFE0 8004C7E0 00000000 */  nop
    /* 3CFE4 8004C7E4 4E016018 */  blez       $v1, .L8004CD20
    /* 3CFE8 8004C7E8 23108300 */   subu      $v0, $a0, $v1
    /* 3CFEC 8004C7EC 801F013C */  lui        $at, (0x1F8000FC >> 16)
    /* 3CFF0 8004C7F0 FC0022A4 */  sh         $v0, (0x1F8000FC & 0xFFFF)($at)
    /* 3CFF4 8004C7F4 6E380108 */  j          .L8004E1B8
    /* 3CFF8 8004C7F8 20000924 */   addiu     $t1, $zero, 0x20
  glabel .L8004C7FC
    /* 3CFFC 8004C7FC 801F023C */  lui        $v0, (0x1F8000F6 >> 16)
    /* 3D000 8004C800 F6004280 */  lb         $v0, (0x1F8000F6 & 0xFFFF)($v0)
    /* 3D004 8004C804 00000000 */  nop
    /* 3D008 8004C808 0E004014 */  bnez       $v0, .L8004C844
    /* 3D00C 8004C80C 00000000 */   nop
    /* 3D010 8004C810 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3D014 8004C814 FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3D018 8004C818 00000000 */  nop
    /* 3D01C 8004C81C 01004230 */  andi       $v0, $v0, 0x1
    /* 3D020 8004C820 08004010 */  beqz       $v0, .L8004C844
    /* 3D024 8004C824 00000000 */   nop
    /* 3D028 8004C828 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3D02C 8004C82C C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3D030 8004C830 00000000 */  nop
    /* 3D034 8004C834 23104F00 */  subu       $v0, $v0, $t7
    /* 3D038 8004C838 20004228 */  slti       $v0, $v0, 0x20
    /* 3D03C 8004C83C 36064014 */  bnez       $v0, .L8004E118
    /* 3D040 8004C840 00000000 */   nop
  .L8004C844:
    /* 3D044 8004C844 801F023C */  lui        $v0, (0x1F800126 >> 16)
    /* 3D048 8004C848 26014284 */  lh         $v0, (0x1F800126 & 0xFFFF)($v0)
    /* 3D04C 8004C84C 801F033C */  lui        $v1, (0x1F800124 >> 16)
    /* 3D050 8004C850 24016384 */  lh         $v1, (0x1F800124 & 0xFFFF)($v1)
    /* 3D054 8004C854 23204701 */  subu       $a0, $t2, $a3
    /* 3D058 8004C858 23104300 */  subu       $v0, $v0, $v1
    /* 3D05C 8004C85C 18008200 */  mult       $a0, $v0
    /* 3D060 8004C860 12100000 */  mflo       $v0
    /* 3D064 8004C864 2330CD01 */  subu       $a2, $t6, $t5
    /* 3D068 8004C868 00000000 */  nop
    /* 3D06C 8004C86C 1A004600 */  div        $zero, $v0, $a2
    /* 3D070 8004C870 0200C014 */  bnez       $a2, .L8004C87C
    /* 3D074 8004C874 00000000 */   nop
    /* 3D078 8004C878 0D000700 */  break      7
  .L8004C87C:
    /* 3D07C 8004C87C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D080 8004C880 0400C114 */  bne        $a2, $at, .L8004C894
    /* 3D084 8004C884 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D088 8004C888 02004114 */  bne        $v0, $at, .L8004C894
    /* 3D08C 8004C88C 00000000 */   nop
    /* 3D090 8004C890 0D000600 */  break      6
  .L8004C894:
    /* 3D094 8004C894 12100000 */  mflo       $v0
    /* 3D098 8004C898 801F033C */  lui        $v1, (0x1F8000C0 >> 16)
    /* 3D09C 8004C89C C0006384 */  lh         $v1, (0x1F8000C0 & 0xFFFF)($v1)
    /* 3D0A0 8004C8A0 2338E200 */  subu       $a3, $a3, $v0
    /* 3D0A4 8004C8A4 23484701 */  subu       $t1, $t2, $a3
    /* 3D0A8 8004C8A8 23106D00 */  subu       $v0, $v1, $t5
    /* 3D0AC 8004C8AC 18002201 */  mult       $t1, $v0
    /* 3D0B0 8004C8B0 12100000 */  mflo       $v0
    /* 3D0B4 8004C8B4 00000000 */  nop
    /* 3D0B8 8004C8B8 00000000 */  nop
    /* 3D0BC 8004C8BC 1A004600 */  div        $zero, $v0, $a2
    /* 3D0C0 8004C8C0 0200C014 */  bnez       $a2, .L8004C8CC
    /* 3D0C4 8004C8C4 00000000 */   nop
    /* 3D0C8 8004C8C8 0D000700 */  break      7
  .L8004C8CC:
    /* 3D0CC 8004C8CC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D0D0 8004C8D0 0400C114 */  bne        $a2, $at, .L8004C8E4
    /* 3D0D4 8004C8D4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D0D8 8004C8D8 02004114 */  bne        $v0, $at, .L8004C8E4
    /* 3D0DC 8004C8DC 00000000 */   nop
    /* 3D0E0 8004C8E0 0D000600 */  break      6
  .L8004C8E4:
    /* 3D0E4 8004C8E4 12200000 */  mflo       $a0
    /* 3D0E8 8004C8E8 801F0C3C */  lui        $t4, (0x1F8000F8 >> 16)
    /* 3D0EC 8004C8EC F8008C35 */  ori        $t4, $t4, (0x1F8000F8 & 0xFFFF)
    /* 3D0F0 8004C8F0 00008285 */  lh         $v0, 0x0($t4)
    /* 3D0F4 8004C8F4 00000000 */  nop
    /* 3D0F8 8004C8F8 23284300 */  subu       $a1, $v0, $v1
    /* 3D0FC 8004C8FC 2140E400 */  addu       $t0, $a3, $a0
    /* 3D100 8004C900 21204000 */  addu       $a0, $v0, $zero
    /* 3D104 8004C904 2A100B01 */  slt        $v0, $t0, $t3
    /* 3D108 8004C908 02004010 */  beqz       $v0, .L8004C914
    /* 3D10C 8004C90C 00000000 */   nop
    /* 3D110 8004C910 21406001 */  addu       $t0, $t3, $zero
  .L8004C914:
    /* 3D114 8004C914 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3D118 8004C918 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3D11C 8004C91C 00000000 */  nop
    /* 3D120 8004C920 23104201 */  subu       $v0, $t2, $v0
    /* 3D124 8004C924 1800C200 */  mult       $a2, $v0
    /* 3D128 8004C928 12100000 */  mflo       $v0
    /* 3D12C 8004C92C 00000000 */  nop
    /* 3D130 8004C930 00000000 */  nop
    /* 3D134 8004C934 1A004900 */  div        $zero, $v0, $t1
    /* 3D138 8004C938 02002015 */  bnez       $t1, .L8004C944
    /* 3D13C 8004C93C 00000000 */   nop
    /* 3D140 8004C940 0D000700 */  break      7
  .L8004C944:
    /* 3D144 8004C944 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D148 8004C948 04002115 */  bne        $t1, $at, .L8004C95C
    /* 3D14C 8004C94C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D150 8004C950 02004114 */  bne        $v0, $at, .L8004C95C
    /* 3D154 8004C954 00000000 */   nop
    /* 3D158 8004C958 0D000600 */  break      6
  .L8004C95C:
    /* 3D15C 8004C95C 12180000 */  mflo       $v1
    /* 3D160 8004C960 00000000 */  nop
    /* 3D164 8004C964 7E016018 */  blez       $v1, .L8004CF60
    /* 3D168 8004C968 23108300 */   subu      $v0, $a0, $v1
    /* 3D16C 8004C96C D8330108 */  j          .L8004CF60
    /* 3D170 8004C970 000082A5 */   sh        $v0, 0x0($t4)
  glabel .L8004C974
    /* 3D174 8004C974 801F023C */  lui        $v0, (0x1F8000F6 >> 16)
    /* 3D178 8004C978 F6004280 */  lb         $v0, (0x1F8000F6 & 0xFFFF)($v0)
    /* 3D17C 8004C97C 00000000 */  nop
    /* 3D180 8004C980 0E004014 */  bnez       $v0, .L8004C9BC
    /* 3D184 8004C984 00000000 */   nop
    /* 3D188 8004C988 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3D18C 8004C98C FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3D190 8004C990 00000000 */  nop
    /* 3D194 8004C994 02004230 */  andi       $v0, $v0, 0x2
    /* 3D198 8004C998 08004010 */  beqz       $v0, .L8004C9BC
    /* 3D19C 8004C99C 00000000 */   nop
    /* 3D1A0 8004C9A0 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3D1A4 8004C9A4 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3D1A8 8004C9A8 00000000 */  nop
    /* 3D1AC 8004C9AC 23104F00 */  subu       $v0, $v0, $t7
    /* 3D1B0 8004C9B0 20004228 */  slti       $v0, $v0, 0x20
    /* 3D1B4 8004C9B4 D8054014 */  bnez       $v0, .L8004E118
    /* 3D1B8 8004C9B8 00000000 */   nop
  .L8004C9BC:
    /* 3D1BC 8004C9BC 801F023C */  lui        $v0, (0x1F800126 >> 16)
    /* 3D1C0 8004C9C0 26014284 */  lh         $v0, (0x1F800126 & 0xFFFF)($v0)
    /* 3D1C4 8004C9C4 801F033C */  lui        $v1, (0x1F800124 >> 16)
    /* 3D1C8 8004C9C8 24016384 */  lh         $v1, (0x1F800124 & 0xFFFF)($v1)
    /* 3D1CC 8004C9CC 23204701 */  subu       $a0, $t2, $a3
    /* 3D1D0 8004C9D0 23104300 */  subu       $v0, $v0, $v1
    /* 3D1D4 8004C9D4 18008200 */  mult       $a0, $v0
    /* 3D1D8 8004C9D8 12100000 */  mflo       $v0
    /* 3D1DC 8004C9DC 2330CD01 */  subu       $a2, $t6, $t5
    /* 3D1E0 8004C9E0 00000000 */  nop
    /* 3D1E4 8004C9E4 1A004600 */  div        $zero, $v0, $a2
    /* 3D1E8 8004C9E8 0200C014 */  bnez       $a2, .L8004C9F4
    /* 3D1EC 8004C9EC 00000000 */   nop
    /* 3D1F0 8004C9F0 0D000700 */  break      7
  .L8004C9F4:
    /* 3D1F4 8004C9F4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D1F8 8004C9F8 0400C114 */  bne        $a2, $at, .L8004CA0C
    /* 3D1FC 8004C9FC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D200 8004CA00 02004114 */  bne        $v0, $at, .L8004CA0C
    /* 3D204 8004CA04 00000000 */   nop
    /* 3D208 8004CA08 0D000600 */  break      6
  .L8004CA0C:
    /* 3D20C 8004CA0C 12100000 */  mflo       $v0
    /* 3D210 8004CA10 801F033C */  lui        $v1, (0x1F8000C0 >> 16)
    /* 3D214 8004CA14 C0006384 */  lh         $v1, (0x1F8000C0 & 0xFFFF)($v1)
    /* 3D218 8004CA18 2338E200 */  subu       $a3, $a3, $v0
    /* 3D21C 8004CA1C 23484701 */  subu       $t1, $t2, $a3
    /* 3D220 8004CA20 2310C301 */  subu       $v0, $t6, $v1
    /* 3D224 8004CA24 18002201 */  mult       $t1, $v0
    /* 3D228 8004CA28 12100000 */  mflo       $v0
    /* 3D22C 8004CA2C 00000000 */  nop
    /* 3D230 8004CA30 00000000 */  nop
    /* 3D234 8004CA34 1A004600 */  div        $zero, $v0, $a2
    /* 3D238 8004CA38 0200C014 */  bnez       $a2, .L8004CA44
    /* 3D23C 8004CA3C 00000000 */   nop
    /* 3D240 8004CA40 0D000700 */  break      7
  .L8004CA44:
    /* 3D244 8004CA44 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D248 8004CA48 0400C114 */  bne        $a2, $at, .L8004CA5C
    /* 3D24C 8004CA4C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D250 8004CA50 02004114 */  bne        $v0, $at, .L8004CA5C
    /* 3D254 8004CA54 00000000 */   nop
    /* 3D258 8004CA58 0D000600 */  break      6
  .L8004CA5C:
    /* 3D25C 8004CA5C 12200000 */  mflo       $a0
    /* 3D260 8004CA60 801F0C3C */  lui        $t4, (0x1F8000F0 >> 16)
    /* 3D264 8004CA64 F0008C35 */  ori        $t4, $t4, (0x1F8000F0 & 0xFFFF)
    /* 3D268 8004CA68 00008285 */  lh         $v0, 0x0($t4)
    /* 3D26C 8004CA6C 00000000 */  nop
    /* 3D270 8004CA70 23286200 */  subu       $a1, $v1, $v0
    /* 3D274 8004CA74 2140E400 */  addu       $t0, $a3, $a0
    /* 3D278 8004CA78 21204000 */  addu       $a0, $v0, $zero
    /* 3D27C 8004CA7C 2A100B01 */  slt        $v0, $t0, $t3
    /* 3D280 8004CA80 02004010 */  beqz       $v0, .L8004CA8C
    /* 3D284 8004CA84 00000000 */   nop
    /* 3D288 8004CA88 21406001 */  addu       $t0, $t3, $zero
  .L8004CA8C:
    /* 3D28C 8004CA8C 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3D290 8004CA90 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3D294 8004CA94 00000000 */  nop
    /* 3D298 8004CA98 23104201 */  subu       $v0, $t2, $v0
    /* 3D29C 8004CA9C 1800C200 */  mult       $a2, $v0
    /* 3D2A0 8004CAA0 12100000 */  mflo       $v0
    /* 3D2A4 8004CAA4 00000000 */  nop
    /* 3D2A8 8004CAA8 00000000 */  nop
    /* 3D2AC 8004CAAC 1A004900 */  div        $zero, $v0, $t1
    /* 3D2B0 8004CAB0 02002015 */  bnez       $t1, .L8004CABC
    /* 3D2B4 8004CAB4 00000000 */   nop
    /* 3D2B8 8004CAB8 0D000700 */  break      7
  .L8004CABC:
    /* 3D2BC 8004CABC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D2C0 8004CAC0 04002115 */  bne        $t1, $at, .L8004CAD4
    /* 3D2C4 8004CAC4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D2C8 8004CAC8 02004114 */  bne        $v0, $at, .L8004CAD4
    /* 3D2CC 8004CACC 00000000 */   nop
    /* 3D2D0 8004CAD0 0D000600 */  break      6
  .L8004CAD4:
    /* 3D2D4 8004CAD4 12180000 */  mflo       $v1
    /* 3D2D8 8004CAD8 00000000 */  nop
    /* 3D2DC 8004CADC 20016018 */  blez       $v1, .L8004CF60
    /* 3D2E0 8004CAE0 21108300 */   addu      $v0, $a0, $v1
    /* 3D2E4 8004CAE4 D8330108 */  j          .L8004CF60
    /* 3D2E8 8004CAE8 000082A5 */   sh        $v0, 0x0($t4)
  glabel .L8004CAEC
    /* 3D2EC 8004CAEC 801F023C */  lui        $v0, (0x1F80012A >> 16)
    /* 3D2F0 8004CAF0 2A014284 */  lh         $v0, (0x1F80012A & 0xFFFF)($v0)
    /* 3D2F4 8004CAF4 801F033C */  lui        $v1, (0x1F800128 >> 16)
    /* 3D2F8 8004CAF8 28016384 */  lh         $v1, (0x1F800128 & 0xFFFF)($v1)
    /* 3D2FC 8004CAFC 23204701 */  subu       $a0, $t2, $a3
    /* 3D300 8004CB00 23104300 */  subu       $v0, $v0, $v1
    /* 3D304 8004CB04 18008200 */  mult       $a0, $v0
    /* 3D308 8004CB08 12100000 */  mflo       $v0
    /* 3D30C 8004CB0C 23280C03 */  subu       $a1, $t8, $t4
    /* 3D310 8004CB10 00000000 */  nop
    /* 3D314 8004CB14 1A004500 */  div        $zero, $v0, $a1
    /* 3D318 8004CB18 0200A014 */  bnez       $a1, .L8004CB24
    /* 3D31C 8004CB1C 00000000 */   nop
    /* 3D320 8004CB20 0D000700 */  break      7
  .L8004CB24:
    /* 3D324 8004CB24 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D328 8004CB28 0400A114 */  bne        $a1, $at, .L8004CB3C
    /* 3D32C 8004CB2C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D330 8004CB30 02004114 */  bne        $v0, $at, .L8004CB3C
    /* 3D334 8004CB34 00000000 */   nop
    /* 3D338 8004CB38 0D000600 */  break      6
  .L8004CB3C:
    /* 3D33C 8004CB3C 12180000 */  mflo       $v1
    /* 3D340 8004CB40 801F063C */  lui        $a2, (0x1F8000C4 >> 16)
    /* 3D344 8004CB44 C400C684 */  lh         $a2, (0x1F8000C4 & 0xFFFF)($a2)
    /* 3D348 8004CB48 2310EA00 */  subu       $v0, $a3, $t2
    /* 3D34C 8004CB4C 23104300 */  subu       $v0, $v0, $v1
    /* 3D350 8004CB50 2138E200 */  addu       $a3, $a3, $v0
    /* 3D354 8004CB54 C2170500 */  srl        $v0, $a1, 31
    /* 3D358 8004CB58 2110A200 */  addu       $v0, $a1, $v0
    /* 3D35C 8004CB5C 43100200 */  sra        $v0, $v0, 1
    /* 3D360 8004CB60 21108201 */  addu       $v0, $t4, $v0
    /* 3D364 8004CB64 2A10C200 */  slt        $v0, $a2, $v0
    /* 3D368 8004CB68 37004010 */  beqz       $v0, .L8004CC48
    /* 3D36C 8004CB6C 23204701 */   subu      $a0, $t2, $a3
    /* 3D370 8004CB70 23100603 */  subu       $v0, $t8, $a2
    /* 3D374 8004CB74 18008200 */  mult       $a0, $v0
    /* 3D378 8004CB78 12100000 */  mflo       $v0
    /* 3D37C 8004CB7C 00000000 */  nop
    /* 3D380 8004CB80 00000000 */  nop
    /* 3D384 8004CB84 1A004500 */  div        $zero, $v0, $a1
    /* 3D388 8004CB88 0200A014 */  bnez       $a1, .L8004CB94
    /* 3D38C 8004CB8C 00000000 */   nop
    /* 3D390 8004CB90 0D000700 */  break      7
  .L8004CB94:
    /* 3D394 8004CB94 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D398 8004CB98 0400A114 */  bne        $a1, $at, .L8004CBAC
    /* 3D39C 8004CB9C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D3A0 8004CBA0 02004114 */  bne        $v0, $at, .L8004CBAC
    /* 3D3A4 8004CBA4 00000000 */   nop
    /* 3D3A8 8004CBA8 0D000600 */  break      6
  .L8004CBAC:
    /* 3D3AC 8004CBAC 12100000 */  mflo       $v0
    /* 3D3B0 8004CBB0 00000000 */  nop
    /* 3D3B4 8004CBB4 2140E200 */  addu       $t0, $a3, $v0
    /* 3D3B8 8004CBB8 2A100B01 */  slt        $v0, $t0, $t3
    /* 3D3BC 8004CBBC 02004010 */  beqz       $v0, .L8004CBC8
    /* 3D3C0 8004CBC0 00000000 */   nop
    /* 3D3C4 8004CBC4 21406001 */  addu       $t0, $t3, $zero
  .L8004CBC8:
    /* 3D3C8 8004CBC8 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3D3CC 8004CBCC C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3D3D0 8004CBD0 00000000 */  nop
    /* 3D3D4 8004CBD4 23104201 */  subu       $v0, $t2, $v0
    /* 3D3D8 8004CBD8 1800A200 */  mult       $a1, $v0
    /* 3D3DC 8004CBDC 12100000 */  mflo       $v0
    /* 3D3E0 8004CBE0 00000000 */  nop
    /* 3D3E4 8004CBE4 00000000 */  nop
    /* 3D3E8 8004CBE8 1A004400 */  div        $zero, $v0, $a0
    /* 3D3EC 8004CBEC 02008014 */  bnez       $a0, .L8004CBF8
    /* 3D3F0 8004CBF0 00000000 */   nop
    /* 3D3F4 8004CBF4 0D000700 */  break      7
  .L8004CBF8:
    /* 3D3F8 8004CBF8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D3FC 8004CBFC 04008114 */  bne        $a0, $at, .L8004CC10
    /* 3D400 8004CC00 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D404 8004CC04 02004114 */  bne        $v0, $at, .L8004CC10
    /* 3D408 8004CC08 00000000 */   nop
    /* 3D40C 8004CC0C 0D000600 */  break      6
  .L8004CC10:
    /* 3D410 8004CC10 12280000 */  mflo       $a1
    /* 3D414 8004CC14 00000000 */  nop
    /* 3D418 8004CC18 0700A018 */  blez       $a1, .L8004CC38
    /* 3D41C 8004CC1C 00000000 */   nop
    /* 3D420 8004CC20 801F023C */  lui        $v0, (0x1F8000F4 >> 16)
    /* 3D424 8004CC24 F4004294 */  lhu        $v0, (0x1F8000F4 & 0xFFFF)($v0)
    /* 3D428 8004CC28 00000000 */  nop
    /* 3D42C 8004CC2C 21104500 */  addu       $v0, $v0, $a1
    /* 3D430 8004CC30 801F013C */  lui        $at, (0x1F8000F4 >> 16)
    /* 3D434 8004CC34 F40022A4 */  sh         $v0, (0x1F8000F4 & 0xFFFF)($at)
  .L8004CC38:
    /* 3D438 8004CC38 801F023C */  lui        $v0, (0x1F8000F4 >> 16)
    /* 3D43C 8004CC3C F4004284 */  lh         $v0, (0x1F8000F4 & 0xFFFF)($v0)
    /* 3D440 8004CC40 48330108 */  j          .L8004CD20
    /* 3D444 8004CC44 2328C200 */   subu      $a1, $a2, $v0
  .L8004CC48:
    /* 3D448 8004CC48 2310CC00 */  subu       $v0, $a2, $t4
    /* 3D44C 8004CC4C 18008200 */  mult       $a0, $v0
    /* 3D450 8004CC50 12100000 */  mflo       $v0
    /* 3D454 8004CC54 00000000 */  nop
    /* 3D458 8004CC58 00000000 */  nop
    /* 3D45C 8004CC5C 1A004500 */  div        $zero, $v0, $a1
    /* 3D460 8004CC60 0200A014 */  bnez       $a1, .L8004CC6C
    /* 3D464 8004CC64 00000000 */   nop
    /* 3D468 8004CC68 0D000700 */  break      7
  .L8004CC6C:
    /* 3D46C 8004CC6C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D470 8004CC70 0400A114 */  bne        $a1, $at, .L8004CC84
    /* 3D474 8004CC74 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D478 8004CC78 02004114 */  bne        $v0, $at, .L8004CC84
    /* 3D47C 8004CC7C 00000000 */   nop
    /* 3D480 8004CC80 0D000600 */  break      6
  .L8004CC84:
    /* 3D484 8004CC84 12100000 */  mflo       $v0
    /* 3D488 8004CC88 00000000 */  nop
    /* 3D48C 8004CC8C 2140E200 */  addu       $t0, $a3, $v0
    /* 3D490 8004CC90 2A100B01 */  slt        $v0, $t0, $t3
    /* 3D494 8004CC94 02004010 */  beqz       $v0, .L8004CCA0
    /* 3D498 8004CC98 00000000 */   nop
    /* 3D49C 8004CC9C 21406001 */  addu       $t0, $t3, $zero
  .L8004CCA0:
    /* 3D4A0 8004CCA0 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3D4A4 8004CCA4 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3D4A8 8004CCA8 00000000 */  nop
    /* 3D4AC 8004CCAC 23104201 */  subu       $v0, $t2, $v0
    /* 3D4B0 8004CCB0 1800A200 */  mult       $a1, $v0
    /* 3D4B4 8004CCB4 12100000 */  mflo       $v0
    /* 3D4B8 8004CCB8 00000000 */  nop
    /* 3D4BC 8004CCBC 00000000 */  nop
    /* 3D4C0 8004CCC0 1A004400 */  div        $zero, $v0, $a0
    /* 3D4C4 8004CCC4 02008014 */  bnez       $a0, .L8004CCD0
    /* 3D4C8 8004CCC8 00000000 */   nop
    /* 3D4CC 8004CCCC 0D000700 */  break      7
  .L8004CCD0:
    /* 3D4D0 8004CCD0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D4D4 8004CCD4 04008114 */  bne        $a0, $at, .L8004CCE8
    /* 3D4D8 8004CCD8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D4DC 8004CCDC 02004114 */  bne        $v0, $at, .L8004CCE8
    /* 3D4E0 8004CCE0 00000000 */   nop
    /* 3D4E4 8004CCE4 0D000600 */  break      6
  .L8004CCE8:
    /* 3D4E8 8004CCE8 12280000 */  mflo       $a1
    /* 3D4EC 8004CCEC 00000000 */  nop
    /* 3D4F0 8004CCF0 0700A018 */  blez       $a1, .L8004CD10
    /* 3D4F4 8004CCF4 00000000 */   nop
    /* 3D4F8 8004CCF8 801F023C */  lui        $v0, (0x1F8000FC >> 16)
    /* 3D4FC 8004CCFC FC004294 */  lhu        $v0, (0x1F8000FC & 0xFFFF)($v0)
    /* 3D500 8004CD00 00000000 */  nop
    /* 3D504 8004CD04 23104500 */  subu       $v0, $v0, $a1
    /* 3D508 8004CD08 801F013C */  lui        $at, (0x1F8000FC >> 16)
    /* 3D50C 8004CD0C FC0022A4 */  sh         $v0, (0x1F8000FC & 0xFFFF)($at)
  .L8004CD10:
    /* 3D510 8004CD10 801F023C */  lui        $v0, (0x1F8000FC >> 16)
    /* 3D514 8004CD14 FC004284 */  lh         $v0, (0x1F8000FC & 0xFFFF)($v0)
    /* 3D518 8004CD18 00000000 */  nop
    /* 3D51C 8004CD1C 23284600 */  subu       $a1, $v0, $a2
  .L8004CD20:
    /* 3D520 8004CD20 6E380108 */  j          .L8004E1B8
    /* 3D524 8004CD24 20000924 */   addiu     $t1, $zero, 0x20
  glabel .L8004CD28
    /* 3D528 8004CD28 801F023C */  lui        $v0, (0x1F800126 >> 16)
    /* 3D52C 8004CD2C 26014284 */  lh         $v0, (0x1F800126 & 0xFFFF)($v0)
    /* 3D530 8004CD30 801F033C */  lui        $v1, (0x1F800124 >> 16)
    /* 3D534 8004CD34 24016384 */  lh         $v1, (0x1F800124 & 0xFFFF)($v1)
    /* 3D538 8004CD38 23204701 */  subu       $a0, $t2, $a3
    /* 3D53C 8004CD3C 23104300 */  subu       $v0, $v0, $v1
    /* 3D540 8004CD40 18008200 */  mult       $a0, $v0
    /* 3D544 8004CD44 12100000 */  mflo       $v0
    /* 3D548 8004CD48 2328CD01 */  subu       $a1, $t6, $t5
    /* 3D54C 8004CD4C 00000000 */  nop
    /* 3D550 8004CD50 1A004500 */  div        $zero, $v0, $a1
    /* 3D554 8004CD54 0200A014 */  bnez       $a1, .L8004CD60
    /* 3D558 8004CD58 00000000 */   nop
    /* 3D55C 8004CD5C 0D000700 */  break      7
  .L8004CD60:
    /* 3D560 8004CD60 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D564 8004CD64 0400A114 */  bne        $a1, $at, .L8004CD78
    /* 3D568 8004CD68 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D56C 8004CD6C 02004114 */  bne        $v0, $at, .L8004CD78
    /* 3D570 8004CD70 00000000 */   nop
    /* 3D574 8004CD74 0D000600 */  break      6
  .L8004CD78:
    /* 3D578 8004CD78 12180000 */  mflo       $v1
    /* 3D57C 8004CD7C 801F063C */  lui        $a2, (0x1F8000C0 >> 16)
    /* 3D580 8004CD80 C000C634 */  ori        $a2, $a2, (0x1F8000C0 & 0xFFFF)
    /* 3D584 8004CD84 2310EA00 */  subu       $v0, $a3, $t2
    /* 3D588 8004CD88 23104300 */  subu       $v0, $v0, $v1
    /* 3D58C 8004CD8C 2138E200 */  addu       $a3, $a3, $v0
    /* 3D590 8004CD90 C2170500 */  srl        $v0, $a1, 31
    /* 3D594 8004CD94 2110A200 */  addu       $v0, $a1, $v0
    /* 3D598 8004CD98 43100200 */  sra        $v0, $v0, 1
    /* 3D59C 8004CD9C 0000C384 */  lh         $v1, 0x0($a2)
    /* 3D5A0 8004CDA0 2110A201 */  addu       $v0, $t5, $v0
    /* 3D5A4 8004CDA4 2A104300 */  slt        $v0, $v0, $v1
    /* 3D5A8 8004CDA8 37004010 */  beqz       $v0, .L8004CE88
    /* 3D5AC 8004CDAC 23204701 */   subu      $a0, $t2, $a3
    /* 3D5B0 8004CDB0 23106D00 */  subu       $v0, $v1, $t5
    /* 3D5B4 8004CDB4 18008200 */  mult       $a0, $v0
    /* 3D5B8 8004CDB8 12100000 */  mflo       $v0
    /* 3D5BC 8004CDBC 00000000 */  nop
    /* 3D5C0 8004CDC0 00000000 */  nop
    /* 3D5C4 8004CDC4 1A004500 */  div        $zero, $v0, $a1
    /* 3D5C8 8004CDC8 0200A014 */  bnez       $a1, .L8004CDD4
    /* 3D5CC 8004CDCC 00000000 */   nop
    /* 3D5D0 8004CDD0 0D000700 */  break      7
  .L8004CDD4:
    /* 3D5D4 8004CDD4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D5D8 8004CDD8 0400A114 */  bne        $a1, $at, .L8004CDEC
    /* 3D5DC 8004CDDC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D5E0 8004CDE0 02004114 */  bne        $v0, $at, .L8004CDEC
    /* 3D5E4 8004CDE4 00000000 */   nop
    /* 3D5E8 8004CDE8 0D000600 */  break      6
  .L8004CDEC:
    /* 3D5EC 8004CDEC 12100000 */  mflo       $v0
    /* 3D5F0 8004CDF0 00000000 */  nop
    /* 3D5F4 8004CDF4 2140E200 */  addu       $t0, $a3, $v0
    /* 3D5F8 8004CDF8 2A100B01 */  slt        $v0, $t0, $t3
    /* 3D5FC 8004CDFC 02004010 */  beqz       $v0, .L8004CE08
    /* 3D600 8004CE00 00000000 */   nop
    /* 3D604 8004CE04 21406001 */  addu       $t0, $t3, $zero
  .L8004CE08:
    /* 3D608 8004CE08 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3D60C 8004CE0C C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3D610 8004CE10 00000000 */  nop
    /* 3D614 8004CE14 23104201 */  subu       $v0, $t2, $v0
    /* 3D618 8004CE18 1800A200 */  mult       $a1, $v0
    /* 3D61C 8004CE1C 12100000 */  mflo       $v0
    /* 3D620 8004CE20 00000000 */  nop
    /* 3D624 8004CE24 00000000 */  nop
    /* 3D628 8004CE28 1A004400 */  div        $zero, $v0, $a0
    /* 3D62C 8004CE2C 02008014 */  bnez       $a0, .L8004CE38
    /* 3D630 8004CE30 00000000 */   nop
    /* 3D634 8004CE34 0D000700 */  break      7
  .L8004CE38:
    /* 3D638 8004CE38 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D63C 8004CE3C 04008114 */  bne        $a0, $at, .L8004CE50
    /* 3D640 8004CE40 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D644 8004CE44 02004114 */  bne        $v0, $at, .L8004CE50
    /* 3D648 8004CE48 00000000 */   nop
    /* 3D64C 8004CE4C 0D000600 */  break      6
  .L8004CE50:
    /* 3D650 8004CE50 12280000 */  mflo       $a1
    /* 3D654 8004CE54 00000000 */  nop
    /* 3D658 8004CE58 0600A018 */  blez       $a1, .L8004CE74
    /* 3D65C 8004CE5C 801F033C */   lui       $v1, (0x1F8000F8 >> 16)
    /* 3D660 8004CE60 F8006334 */  ori        $v1, $v1, (0x1F8000F8 & 0xFFFF)
    /* 3D664 8004CE64 00006294 */  lhu        $v0, 0x0($v1)
    /* 3D668 8004CE68 00000000 */  nop
    /* 3D66C 8004CE6C 23104500 */  subu       $v0, $v0, $a1
    /* 3D670 8004CE70 000062A4 */  sh         $v0, 0x0($v1)
  .L8004CE74:
    /* 3D674 8004CE74 0000C384 */  lh         $v1, 0x0($a2)
    /* 3D678 8004CE78 801F023C */  lui        $v0, (0x1F8000F8 >> 16)
    /* 3D67C 8004CE7C F8004284 */  lh         $v0, (0x1F8000F8 & 0xFFFF)($v0)
    /* 3D680 8004CE80 D8330108 */  j          .L8004CF60
    /* 3D684 8004CE84 23284300 */   subu      $a1, $v0, $v1
  .L8004CE88:
    /* 3D688 8004CE88 2310C301 */  subu       $v0, $t6, $v1
    /* 3D68C 8004CE8C 18008200 */  mult       $a0, $v0
    /* 3D690 8004CE90 12100000 */  mflo       $v0
    /* 3D694 8004CE94 00000000 */  nop
    /* 3D698 8004CE98 00000000 */  nop
    /* 3D69C 8004CE9C 1A004500 */  div        $zero, $v0, $a1
    /* 3D6A0 8004CEA0 0200A014 */  bnez       $a1, .L8004CEAC
    /* 3D6A4 8004CEA4 00000000 */   nop
    /* 3D6A8 8004CEA8 0D000700 */  break      7
  .L8004CEAC:
    /* 3D6AC 8004CEAC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D6B0 8004CEB0 0400A114 */  bne        $a1, $at, .L8004CEC4
    /* 3D6B4 8004CEB4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D6B8 8004CEB8 02004114 */  bne        $v0, $at, .L8004CEC4
    /* 3D6BC 8004CEBC 00000000 */   nop
    /* 3D6C0 8004CEC0 0D000600 */  break      6
  .L8004CEC4:
    /* 3D6C4 8004CEC4 12100000 */  mflo       $v0
    /* 3D6C8 8004CEC8 00000000 */  nop
    /* 3D6CC 8004CECC 2140E200 */  addu       $t0, $a3, $v0
    /* 3D6D0 8004CED0 2A100B01 */  slt        $v0, $t0, $t3
    /* 3D6D4 8004CED4 02004010 */  beqz       $v0, .L8004CEE0
    /* 3D6D8 8004CED8 00000000 */   nop
    /* 3D6DC 8004CEDC 21406001 */  addu       $t0, $t3, $zero
  .L8004CEE0:
    /* 3D6E0 8004CEE0 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3D6E4 8004CEE4 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3D6E8 8004CEE8 00000000 */  nop
    /* 3D6EC 8004CEEC 23104201 */  subu       $v0, $t2, $v0
    /* 3D6F0 8004CEF0 1800A200 */  mult       $a1, $v0
    /* 3D6F4 8004CEF4 12100000 */  mflo       $v0
    /* 3D6F8 8004CEF8 00000000 */  nop
    /* 3D6FC 8004CEFC 00000000 */  nop
    /* 3D700 8004CF00 1A004400 */  div        $zero, $v0, $a0
    /* 3D704 8004CF04 02008014 */  bnez       $a0, .L8004CF10
    /* 3D708 8004CF08 00000000 */   nop
    /* 3D70C 8004CF0C 0D000700 */  break      7
  .L8004CF10:
    /* 3D710 8004CF10 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D714 8004CF14 04008114 */  bne        $a0, $at, .L8004CF28
    /* 3D718 8004CF18 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D71C 8004CF1C 02004114 */  bne        $v0, $at, .L8004CF28
    /* 3D720 8004CF20 00000000 */   nop
    /* 3D724 8004CF24 0D000600 */  break      6
  .L8004CF28:
    /* 3D728 8004CF28 12280000 */  mflo       $a1
    /* 3D72C 8004CF2C 00000000 */  nop
    /* 3D730 8004CF30 0600A018 */  blez       $a1, .L8004CF4C
    /* 3D734 8004CF34 801F033C */   lui       $v1, (0x1F8000F0 >> 16)
    /* 3D738 8004CF38 F0006334 */  ori        $v1, $v1, (0x1F8000F0 & 0xFFFF)
    /* 3D73C 8004CF3C 00006294 */  lhu        $v0, 0x0($v1)
    /* 3D740 8004CF40 00000000 */  nop
    /* 3D744 8004CF44 21104500 */  addu       $v0, $v0, $a1
    /* 3D748 8004CF48 000062A4 */  sh         $v0, 0x0($v1)
  .L8004CF4C:
    /* 3D74C 8004CF4C 0000C384 */  lh         $v1, 0x0($a2)
    /* 3D750 8004CF50 801F023C */  lui        $v0, (0x1F8000F0 >> 16)
    /* 3D754 8004CF54 F0004284 */  lh         $v0, (0x1F8000F0 & 0xFFFF)($v0)
    /* 3D758 8004CF58 00000000 */  nop
    /* 3D75C 8004CF5C 23286200 */  subu       $a1, $v1, $v0
  .L8004CF60:
    /* 3D760 8004CF60 6E380108 */  j          .L8004E1B8
    /* 3D764 8004CF64 10000924 */   addiu     $t1, $zero, 0x10
  glabel .L8004CF68
    /* 3D768 8004CF68 801F193C */  lui        $t9, (0x1F8000C4 >> 16)
    /* 3D76C 8004CF6C C4003987 */  lh         $t9, (0x1F8000C4 & 0xFFFF)($t9)
    /* 3D770 8004CF70 2358CD01 */  subu       $t3, $t6, $t5
    /* 3D774 8004CF74 23882C03 */  subu       $s1, $t9, $t4
    /* 3D778 8004CF78 18002B02 */  mult       $s1, $t3
    /* 3D77C 8004CF7C 12100000 */  mflo       $v0
    /* 3D780 8004CF80 23300C03 */  subu       $a2, $t8, $t4
    /* 3D784 8004CF84 00000000 */  nop
    /* 3D788 8004CF88 1A004600 */  div        $zero, $v0, $a2
    /* 3D78C 8004CF8C 0200C014 */  bnez       $a2, .L8004CF98
    /* 3D790 8004CF90 00000000 */   nop
    /* 3D794 8004CF94 0D000700 */  break      7
  .L8004CF98:
    /* 3D798 8004CF98 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D79C 8004CF9C 0400C114 */  bne        $a2, $at, .L8004CFB0
    /* 3D7A0 8004CFA0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D7A4 8004CFA4 02004114 */  bne        $v0, $at, .L8004CFB0
    /* 3D7A8 8004CFA8 00000000 */   nop
    /* 3D7AC 8004CFAC 0D000600 */  break      6
  .L8004CFB0:
    /* 3D7B0 8004CFB0 12180000 */  mflo       $v1
    /* 3D7B4 8004CFB4 23C01903 */  subu       $t8, $t8, $t9
    /* 3D7B8 8004CFB8 00000000 */  nop
    /* 3D7BC 8004CFBC 18000B03 */  mult       $t8, $t3
    /* 3D7C0 8004CFC0 12100000 */  mflo       $v0
    /* 3D7C4 8004CFC4 00000000 */  nop
    /* 3D7C8 8004CFC8 00000000 */  nop
    /* 3D7CC 8004CFCC 1A004600 */  div        $zero, $v0, $a2
    /* 3D7D0 8004CFD0 0200C014 */  bnez       $a2, .L8004CFDC
    /* 3D7D4 8004CFD4 00000000 */   nop
    /* 3D7D8 8004CFD8 0D000700 */  break      7
  .L8004CFDC:
    /* 3D7DC 8004CFDC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D7E0 8004CFE0 0400C114 */  bne        $a2, $at, .L8004CFF4
    /* 3D7E4 8004CFE4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D7E8 8004CFE8 02004114 */  bne        $v0, $at, .L8004CFF4
    /* 3D7EC 8004CFEC 00000000 */   nop
    /* 3D7F0 8004CFF0 0D000600 */  break      6
  .L8004CFF4:
    /* 3D7F4 8004CFF4 12200000 */  mflo       $a0
    /* 3D7F8 8004CFF8 801F123C */  lui        $s2, (0x1F8000C0 >> 16)
    /* 3D7FC 8004CFFC C0005236 */  ori        $s2, $s2, (0x1F8000C0 & 0xFFFF)
    /* 3D800 8004D000 00004C86 */  lh         $t4, 0x0($s2)
    /* 3D804 8004D004 2310EA00 */  subu       $v0, $a3, $t2
    /* 3D808 8004D008 2138E200 */  addu       $a3, $a3, $v0
    /* 3D80C 8004D00C 2118A301 */  addu       $v1, $t5, $v1
    /* 3D810 8004D010 2A188301 */  slt        $v1, $t4, $v1
    /* 3D814 8004D014 2120A401 */  addu       $a0, $t5, $a0
    /* 3D818 8004D018 2A208401 */  slt        $a0, $t4, $a0
    /* 3D81C 8004D01C 02008010 */  beqz       $a0, .L8004D028
    /* 3D820 8004D020 40280300 */   sll       $a1, $v1, 1
    /* 3D824 8004D024 0100A534 */  ori        $a1, $a1, 0x1
  .L8004D028:
    /* 3D828 8004D028 01000224 */  addiu      $v0, $zero, 0x1
    /* 3D82C 8004D02C 4100A210 */  beq        $a1, $v0, .L8004D134
    /* 3D830 8004D030 0200A228 */   slti      $v0, $a1, 0x2
    /* 3D834 8004D034 05004010 */  beqz       $v0, .L8004D04C
    /* 3D838 8004D038 00000000 */   nop
    /* 3D83C 8004D03C 0A00A010 */  beqz       $a1, .L8004D068
    /* 3D840 8004D040 23184701 */   subu      $v1, $t2, $a3
    /* 3D844 8004D044 6E380108 */  j          .L8004E1B8
    /* 3D848 8004D048 00000000 */   nop
  .L8004D04C:
    /* 3D84C 8004D04C 02000224 */  addiu      $v0, $zero, 0x2
    /* 3D850 8004D050 6900A210 */  beq        $a1, $v0, .L8004D1F8
    /* 3D854 8004D054 03000224 */   addiu     $v0, $zero, 0x3
    /* 3D858 8004D058 9800A210 */  beq        $a1, $v0, .L8004D2BC
    /* 3D85C 8004D05C 23184701 */   subu      $v1, $t2, $a3
    /* 3D860 8004D060 6E380108 */  j          .L8004E1B8
    /* 3D864 8004D064 00000000 */   nop
  .L8004D068:
    /* 3D868 8004D068 23108D01 */  subu       $v0, $t4, $t5
    /* 3D86C 8004D06C 18006200 */  mult       $v1, $v0
    /* 3D870 8004D070 12100000 */  mflo       $v0
    /* 3D874 8004D074 00000000 */  nop
    /* 3D878 8004D078 00000000 */  nop
    /* 3D87C 8004D07C 1A004B00 */  div        $zero, $v0, $t3
    /* 3D880 8004D080 02006015 */  bnez       $t3, .L8004D08C
    /* 3D884 8004D084 00000000 */   nop
    /* 3D888 8004D088 0D000700 */  break      7
  .L8004D08C:
    /* 3D88C 8004D08C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D890 8004D090 04006115 */  bne        $t3, $at, .L8004D0A4
    /* 3D894 8004D094 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D898 8004D098 02004114 */  bne        $v0, $at, .L8004D0A4
    /* 3D89C 8004D09C 00000000 */   nop
    /* 3D8A0 8004D0A0 0D000600 */  break      6
  .L8004D0A4:
    /* 3D8A4 8004D0A4 12200000 */  mflo       $a0
    /* 3D8A8 8004D0A8 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3D8AC 8004D0AC C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3D8B0 8004D0B0 00000000 */  nop
    /* 3D8B4 8004D0B4 23104201 */  subu       $v0, $t2, $v0
    /* 3D8B8 8004D0B8 18006201 */  mult       $t3, $v0
    /* 3D8BC 8004D0BC 12100000 */  mflo       $v0
    /* 3D8C0 8004D0C0 00000000 */  nop
    /* 3D8C4 8004D0C4 00000000 */  nop
    /* 3D8C8 8004D0C8 1A004300 */  div        $zero, $v0, $v1
    /* 3D8CC 8004D0CC 02006014 */  bnez       $v1, .L8004D0D8
    /* 3D8D0 8004D0D0 00000000 */   nop
    /* 3D8D4 8004D0D4 0D000700 */  break      7
  .L8004D0D8:
    /* 3D8D8 8004D0D8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D8DC 8004D0DC 04006114 */  bne        $v1, $at, .L8004D0F0
    /* 3D8E0 8004D0E0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D8E4 8004D0E4 02004114 */  bne        $v0, $at, .L8004D0F0
    /* 3D8E8 8004D0E8 00000000 */   nop
    /* 3D8EC 8004D0EC 0D000600 */  break      6
  .L8004D0F0:
    /* 3D8F0 8004D0F0 12280000 */  mflo       $a1
    /* 3D8F4 8004D0F4 00000000 */  nop
    /* 3D8F8 8004D0F8 0700A018 */  blez       $a1, .L8004D118
    /* 3D8FC 8004D0FC 2140E400 */   addu      $t0, $a3, $a0
    /* 3D900 8004D100 801F033C */  lui        $v1, (0x1F8000F8 >> 16)
    /* 3D904 8004D104 F8006334 */  ori        $v1, $v1, (0x1F8000F8 & 0xFFFF)
    /* 3D908 8004D108 00006294 */  lhu        $v0, 0x0($v1)
    /* 3D90C 8004D10C 00000000 */  nop
    /* 3D910 8004D110 23104500 */  subu       $v0, $v0, $a1
    /* 3D914 8004D114 000062A4 */  sh         $v0, 0x0($v1)
  .L8004D118:
    /* 3D918 8004D118 801F033C */  lui        $v1, (0x1F8000C4 >> 16)
    /* 3D91C 8004D11C C4006384 */  lh         $v1, (0x1F8000C4 & 0xFFFF)($v1)
    /* 3D920 8004D120 801F023C */  lui        $v0, (0x1F8000F8 >> 16)
    /* 3D924 8004D124 F8004284 */  lh         $v0, (0x1F8000F8 & 0xFFFF)($v0)
    /* 3D928 8004D128 10000924 */  addiu      $t1, $zero, 0x10
    /* 3D92C 8004D12C 6E380108 */  j          .L8004E1B8
    /* 3D930 8004D130 23284300 */   subu      $a1, $v0, $v1
  .L8004D134:
    /* 3D934 8004D134 23184701 */  subu       $v1, $t2, $a3
    /* 3D938 8004D138 18007800 */  mult       $v1, $t8
    /* 3D93C 8004D13C 12100000 */  mflo       $v0
    /* 3D940 8004D140 00000000 */  nop
    /* 3D944 8004D144 00000000 */  nop
    /* 3D948 8004D148 1A004600 */  div        $zero, $v0, $a2
    /* 3D94C 8004D14C 0200C014 */  bnez       $a2, .L8004D158
    /* 3D950 8004D150 00000000 */   nop
    /* 3D954 8004D154 0D000700 */  break      7
  .L8004D158:
    /* 3D958 8004D158 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D95C 8004D15C 0400C114 */  bne        $a2, $at, .L8004D170
    /* 3D960 8004D160 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D964 8004D164 02004114 */  bne        $v0, $at, .L8004D170
    /* 3D968 8004D168 00000000 */   nop
    /* 3D96C 8004D16C 0D000600 */  break      6
  .L8004D170:
    /* 3D970 8004D170 12200000 */  mflo       $a0
    /* 3D974 8004D174 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3D978 8004D178 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3D97C 8004D17C 00000000 */  nop
    /* 3D980 8004D180 23104201 */  subu       $v0, $t2, $v0
    /* 3D984 8004D184 1800C200 */  mult       $a2, $v0
    /* 3D988 8004D188 12100000 */  mflo       $v0
    /* 3D98C 8004D18C 00000000 */  nop
    /* 3D990 8004D190 00000000 */  nop
    /* 3D994 8004D194 1A004300 */  div        $zero, $v0, $v1
    /* 3D998 8004D198 02006014 */  bnez       $v1, .L8004D1A4
    /* 3D99C 8004D19C 00000000 */   nop
    /* 3D9A0 8004D1A0 0D000700 */  break      7
  .L8004D1A4:
    /* 3D9A4 8004D1A4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D9A8 8004D1A8 04006114 */  bne        $v1, $at, .L8004D1BC
    /* 3D9AC 8004D1AC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D9B0 8004D1B0 02004114 */  bne        $v0, $at, .L8004D1BC
    /* 3D9B4 8004D1B4 00000000 */   nop
    /* 3D9B8 8004D1B8 0D000600 */  break      6
  .L8004D1BC:
    /* 3D9BC 8004D1BC 12280000 */  mflo       $a1
    /* 3D9C0 8004D1C0 00000000 */  nop
    /* 3D9C4 8004D1C4 0700A018 */  blez       $a1, .L8004D1E4
    /* 3D9C8 8004D1C8 2140E400 */   addu      $t0, $a3, $a0
    /* 3D9CC 8004D1CC 801F023C */  lui        $v0, (0x1F8000F4 >> 16)
    /* 3D9D0 8004D1D0 F4004294 */  lhu        $v0, (0x1F8000F4 & 0xFFFF)($v0)
    /* 3D9D4 8004D1D4 00000000 */  nop
    /* 3D9D8 8004D1D8 21104500 */  addu       $v0, $v0, $a1
    /* 3D9DC 8004D1DC 801F013C */  lui        $at, (0x1F8000F4 >> 16)
    /* 3D9E0 8004D1E0 F40022A4 */  sh         $v0, (0x1F8000F4 & 0xFFFF)($at)
  .L8004D1E4:
    /* 3D9E4 8004D1E4 801F023C */  lui        $v0, (0x1F8000F4 >> 16)
    /* 3D9E8 8004D1E8 F4004284 */  lh         $v0, (0x1F8000F4 & 0xFFFF)($v0)
    /* 3D9EC 8004D1EC 20000924 */  addiu      $t1, $zero, 0x20
    /* 3D9F0 8004D1F0 6E380108 */  j          .L8004E1B8
    /* 3D9F4 8004D1F4 23282203 */   subu      $a1, $t9, $v0
  .L8004D1F8:
    /* 3D9F8 8004D1F8 23184701 */  subu       $v1, $t2, $a3
    /* 3D9FC 8004D1FC 18007100 */  mult       $v1, $s1
    /* 3DA00 8004D200 12100000 */  mflo       $v0
    /* 3DA04 8004D204 00000000 */  nop
    /* 3DA08 8004D208 00000000 */  nop
    /* 3DA0C 8004D20C 1A004600 */  div        $zero, $v0, $a2
    /* 3DA10 8004D210 0200C014 */  bnez       $a2, .L8004D21C
    /* 3DA14 8004D214 00000000 */   nop
    /* 3DA18 8004D218 0D000700 */  break      7
  .L8004D21C:
    /* 3DA1C 8004D21C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3DA20 8004D220 0400C114 */  bne        $a2, $at, .L8004D234
    /* 3DA24 8004D224 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3DA28 8004D228 02004114 */  bne        $v0, $at, .L8004D234
    /* 3DA2C 8004D22C 00000000 */   nop
    /* 3DA30 8004D230 0D000600 */  break      6
  .L8004D234:
    /* 3DA34 8004D234 12200000 */  mflo       $a0
    /* 3DA38 8004D238 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3DA3C 8004D23C C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3DA40 8004D240 00000000 */  nop
    /* 3DA44 8004D244 23104201 */  subu       $v0, $t2, $v0
    /* 3DA48 8004D248 1800C200 */  mult       $a2, $v0
    /* 3DA4C 8004D24C 12100000 */  mflo       $v0
    /* 3DA50 8004D250 00000000 */  nop
    /* 3DA54 8004D254 00000000 */  nop
    /* 3DA58 8004D258 1A004300 */  div        $zero, $v0, $v1
    /* 3DA5C 8004D25C 02006014 */  bnez       $v1, .L8004D268
    /* 3DA60 8004D260 00000000 */   nop
    /* 3DA64 8004D264 0D000700 */  break      7
  .L8004D268:
    /* 3DA68 8004D268 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3DA6C 8004D26C 04006114 */  bne        $v1, $at, .L8004D280
    /* 3DA70 8004D270 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3DA74 8004D274 02004114 */  bne        $v0, $at, .L8004D280
    /* 3DA78 8004D278 00000000 */   nop
    /* 3DA7C 8004D27C 0D000600 */  break      6
  .L8004D280:
    /* 3DA80 8004D280 12280000 */  mflo       $a1
    /* 3DA84 8004D284 00000000 */  nop
    /* 3DA88 8004D288 0700A018 */  blez       $a1, .L8004D2A8
    /* 3DA8C 8004D28C 2140E400 */   addu      $t0, $a3, $a0
    /* 3DA90 8004D290 801F023C */  lui        $v0, (0x1F8000FC >> 16)
    /* 3DA94 8004D294 FC004294 */  lhu        $v0, (0x1F8000FC & 0xFFFF)($v0)
    /* 3DA98 8004D298 00000000 */  nop
    /* 3DA9C 8004D29C 23104500 */  subu       $v0, $v0, $a1
    /* 3DAA0 8004D2A0 801F013C */  lui        $at, (0x1F8000FC >> 16)
    /* 3DAA4 8004D2A4 FC0022A4 */  sh         $v0, (0x1F8000FC & 0xFFFF)($at)
  .L8004D2A8:
    /* 3DAA8 8004D2A8 801F023C */  lui        $v0, (0x1F8000FC >> 16)
    /* 3DAAC 8004D2AC FC004284 */  lh         $v0, (0x1F8000FC & 0xFFFF)($v0)
    /* 3DAB0 8004D2B0 20000924 */  addiu      $t1, $zero, 0x20
    /* 3DAB4 8004D2B4 6E380108 */  j          .L8004E1B8
    /* 3DAB8 8004D2B8 21282203 */   addu      $a1, $t9, $v0
  .L8004D2BC:
    /* 3DABC 8004D2BC 2310CC01 */  subu       $v0, $t6, $t4
    /* 3DAC0 8004D2C0 18006200 */  mult       $v1, $v0
    /* 3DAC4 8004D2C4 12100000 */  mflo       $v0
    /* 3DAC8 8004D2C8 00000000 */  nop
    /* 3DACC 8004D2CC 00000000 */  nop
    /* 3DAD0 8004D2D0 1A004B00 */  div        $zero, $v0, $t3
    /* 3DAD4 8004D2D4 02006015 */  bnez       $t3, .L8004D2E0
    /* 3DAD8 8004D2D8 00000000 */   nop
    /* 3DADC 8004D2DC 0D000700 */  break      7
  .L8004D2E0:
    /* 3DAE0 8004D2E0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3DAE4 8004D2E4 04006115 */  bne        $t3, $at, .L8004D2F8
    /* 3DAE8 8004D2E8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3DAEC 8004D2EC 02004114 */  bne        $v0, $at, .L8004D2F8
    /* 3DAF0 8004D2F0 00000000 */   nop
    /* 3DAF4 8004D2F4 0D000600 */  break      6
  .L8004D2F8:
    /* 3DAF8 8004D2F8 12200000 */  mflo       $a0
    /* 3DAFC 8004D2FC 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3DB00 8004D300 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3DB04 8004D304 00000000 */  nop
    /* 3DB08 8004D308 23104201 */  subu       $v0, $t2, $v0
    /* 3DB0C 8004D30C 18006201 */  mult       $t3, $v0
    /* 3DB10 8004D310 12100000 */  mflo       $v0
    /* 3DB14 8004D314 00000000 */  nop
    /* 3DB18 8004D318 00000000 */  nop
    /* 3DB1C 8004D31C 1A004300 */  div        $zero, $v0, $v1
    /* 3DB20 8004D320 02006014 */  bnez       $v1, .L8004D32C
    /* 3DB24 8004D324 00000000 */   nop
    /* 3DB28 8004D328 0D000700 */  break      7
  .L8004D32C:
    /* 3DB2C 8004D32C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3DB30 8004D330 04006114 */  bne        $v1, $at, .L8004D344
    /* 3DB34 8004D334 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3DB38 8004D338 02004114 */  bne        $v0, $at, .L8004D344
    /* 3DB3C 8004D33C 00000000 */   nop
    /* 3DB40 8004D340 0D000600 */  break      6
  .L8004D344:
    /* 3DB44 8004D344 12280000 */  mflo       $a1
    /* 3DB48 8004D348 00000000 */  nop
    /* 3DB4C 8004D34C 0700A018 */  blez       $a1, .L8004D36C
    /* 3DB50 8004D350 2140E400 */   addu      $t0, $a3, $a0
    /* 3DB54 8004D354 801F033C */  lui        $v1, (0x1F8000F0 >> 16)
    /* 3DB58 8004D358 F0006334 */  ori        $v1, $v1, (0x1F8000F0 & 0xFFFF)
    /* 3DB5C 8004D35C 00006294 */  lhu        $v0, 0x0($v1)
    /* 3DB60 8004D360 00000000 */  nop
    /* 3DB64 8004D364 21104500 */  addu       $v0, $v0, $a1
    /* 3DB68 8004D368 000062A4 */  sh         $v0, 0x0($v1)
  .L8004D36C:
    /* 3DB6C 8004D36C 00004386 */  lh         $v1, 0x0($s2)
    /* 3DB70 8004D370 801F023C */  lui        $v0, (0x1F8000F0 >> 16)
    /* 3DB74 8004D374 F0004284 */  lh         $v0, (0x1F8000F0 & 0xFFFF)($v0)
    /* 3DB78 8004D378 10000924 */  addiu      $t1, $zero, 0x10
    /* 3DB7C 8004D37C 6E380108 */  j          .L8004E1B8
    /* 3DB80 8004D380 23286200 */   subu      $a1, $v1, $v0
  glabel .L8004D384
    /* 3DB84 8004D384 801F023C */  lui        $v0, (0x1F80012A >> 16)
    /* 3DB88 8004D388 2A014284 */  lh         $v0, (0x1F80012A & 0xFFFF)($v0)
    /* 3DB8C 8004D38C 801F033C */  lui        $v1, (0x1F800128 >> 16)
    /* 3DB90 8004D390 28016384 */  lh         $v1, (0x1F800128 & 0xFFFF)($v1)
    /* 3DB94 8004D394 23204701 */  subu       $a0, $t2, $a3
    /* 3DB98 8004D398 23104300 */  subu       $v0, $v0, $v1
    /* 3DB9C 8004D39C 18008200 */  mult       $a0, $v0
    /* 3DBA0 8004D3A0 12100000 */  mflo       $v0
    /* 3DBA4 8004D3A4 23180C03 */  subu       $v1, $t8, $t4
    /* 3DBA8 8004D3A8 00000000 */  nop
    /* 3DBAC 8004D3AC 1A004300 */  div        $zero, $v0, $v1
    /* 3DBB0 8004D3B0 02006014 */  bnez       $v1, .L8004D3BC
    /* 3DBB4 8004D3B4 00000000 */   nop
    /* 3DBB8 8004D3B8 0D000700 */  break      7
  .L8004D3BC:
    /* 3DBBC 8004D3BC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3DBC0 8004D3C0 04006114 */  bne        $v1, $at, .L8004D3D4
    /* 3DBC4 8004D3C4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3DBC8 8004D3C8 02004114 */  bne        $v0, $at, .L8004D3D4
    /* 3DBCC 8004D3CC 00000000 */   nop
    /* 3DBD0 8004D3D0 0D000600 */  break      6
  .L8004D3D4:
    /* 3DBD4 8004D3D4 12100000 */  mflo       $v0
    /* 3DBD8 8004D3D8 00000000 */  nop
    /* 3DBDC 8004D3DC 2138E200 */  addu       $a3, $a3, $v0
    /* 3DBE0 8004D3E0 801F023C */  lui        $v0, (0x1F8000C4 >> 16)
    /* 3DBE4 8004D3E4 C4004284 */  lh         $v0, (0x1F8000C4 & 0xFFFF)($v0)
    /* 3DBE8 8004D3E8 23204701 */  subu       $a0, $t2, $a3
    /* 3DBEC 8004D3EC 50350108 */  j          .L8004D540
    /* 3DBF0 8004D3F0 23100203 */   subu      $v0, $t8, $v0
  glabel .L8004D3F4
    /* 3DBF4 8004D3F4 801F023C */  lui        $v0, (0x1F80012A >> 16)
    /* 3DBF8 8004D3F8 2A014284 */  lh         $v0, (0x1F80012A & 0xFFFF)($v0)
    /* 3DBFC 8004D3FC 801F033C */  lui        $v1, (0x1F800128 >> 16)
    /* 3DC00 8004D400 28016384 */  lh         $v1, (0x1F800128 & 0xFFFF)($v1)
    /* 3DC04 8004D404 23204701 */  subu       $a0, $t2, $a3
    /* 3DC08 8004D408 23104300 */  subu       $v0, $v0, $v1
    /* 3DC0C 8004D40C 18008200 */  mult       $a0, $v0
    /* 3DC10 8004D410 12100000 */  mflo       $v0
    /* 3DC14 8004D414 23180C03 */  subu       $v1, $t8, $t4
    /* 3DC18 8004D418 00000000 */  nop
    /* 3DC1C 8004D41C 1A004300 */  div        $zero, $v0, $v1
    /* 3DC20 8004D420 02006014 */  bnez       $v1, .L8004D42C
    /* 3DC24 8004D424 00000000 */   nop
    /* 3DC28 8004D428 0D000700 */  break      7
  .L8004D42C:
    /* 3DC2C 8004D42C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3DC30 8004D430 04006114 */  bne        $v1, $at, .L8004D444
    /* 3DC34 8004D434 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3DC38 8004D438 02004114 */  bne        $v0, $at, .L8004D444
    /* 3DC3C 8004D43C 00000000 */   nop
    /* 3DC40 8004D440 0D000600 */  break      6
  .L8004D444:
    /* 3DC44 8004D444 12100000 */  mflo       $v0
    /* 3DC48 8004D448 00000000 */  nop
    /* 3DC4C 8004D44C 2138E200 */  addu       $a3, $a3, $v0
    /* 3DC50 8004D450 801F023C */  lui        $v0, (0x1F8000C4 >> 16)
    /* 3DC54 8004D454 C4004284 */  lh         $v0, (0x1F8000C4 & 0xFFFF)($v0)
    /* 3DC58 8004D458 23204701 */  subu       $a0, $t2, $a3
    /* 3DC5C 8004D45C 50350108 */  j          .L8004D540
    /* 3DC60 8004D460 23104C00 */   subu      $v0, $v0, $t4
  glabel .L8004D464
    /* 3DC64 8004D464 801F023C */  lui        $v0, (0x1F800126 >> 16)
    /* 3DC68 8004D468 26014284 */  lh         $v0, (0x1F800126 & 0xFFFF)($v0)
    /* 3DC6C 8004D46C 801F033C */  lui        $v1, (0x1F800124 >> 16)
    /* 3DC70 8004D470 24016384 */  lh         $v1, (0x1F800124 & 0xFFFF)($v1)
    /* 3DC74 8004D474 23204701 */  subu       $a0, $t2, $a3
    /* 3DC78 8004D478 23104300 */  subu       $v0, $v0, $v1
    /* 3DC7C 8004D47C 18008200 */  mult       $a0, $v0
    /* 3DC80 8004D480 12100000 */  mflo       $v0
    /* 3DC84 8004D484 2318CD01 */  subu       $v1, $t6, $t5
    /* 3DC88 8004D488 00000000 */  nop
    /* 3DC8C 8004D48C 1A004300 */  div        $zero, $v0, $v1
    /* 3DC90 8004D490 02006014 */  bnez       $v1, .L8004D49C
    /* 3DC94 8004D494 00000000 */   nop
    /* 3DC98 8004D498 0D000700 */  break      7
  .L8004D49C:
    /* 3DC9C 8004D49C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3DCA0 8004D4A0 04006114 */  bne        $v1, $at, .L8004D4B4
    /* 3DCA4 8004D4A4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3DCA8 8004D4A8 02004114 */  bne        $v0, $at, .L8004D4B4
    /* 3DCAC 8004D4AC 00000000 */   nop
    /* 3DCB0 8004D4B0 0D000600 */  break      6
  .L8004D4B4:
    /* 3DCB4 8004D4B4 12100000 */  mflo       $v0
    /* 3DCB8 8004D4B8 00000000 */  nop
    /* 3DCBC 8004D4BC 2138E200 */  addu       $a3, $a3, $v0
    /* 3DCC0 8004D4C0 801F023C */  lui        $v0, (0x1F8000C0 >> 16)
    /* 3DCC4 8004D4C4 C0004284 */  lh         $v0, (0x1F8000C0 & 0xFFFF)($v0)
    /* 3DCC8 8004D4C8 23204701 */  subu       $a0, $t2, $a3
    /* 3DCCC 8004D4CC 50350108 */  j          .L8004D540
    /* 3DCD0 8004D4D0 23104D00 */   subu      $v0, $v0, $t5
  glabel .L8004D4D4
    /* 3DCD4 8004D4D4 801F023C */  lui        $v0, (0x1F800126 >> 16)
    /* 3DCD8 8004D4D8 26014284 */  lh         $v0, (0x1F800126 & 0xFFFF)($v0)
    /* 3DCDC 8004D4DC 801F033C */  lui        $v1, (0x1F800124 >> 16)
    /* 3DCE0 8004D4E0 24016384 */  lh         $v1, (0x1F800124 & 0xFFFF)($v1)
    /* 3DCE4 8004D4E4 23204701 */  subu       $a0, $t2, $a3
    /* 3DCE8 8004D4E8 23104300 */  subu       $v0, $v0, $v1
    /* 3DCEC 8004D4EC 18008200 */  mult       $a0, $v0
    /* 3DCF0 8004D4F0 12100000 */  mflo       $v0
    /* 3DCF4 8004D4F4 2318CD01 */  subu       $v1, $t6, $t5
    /* 3DCF8 8004D4F8 00000000 */  nop
    /* 3DCFC 8004D4FC 1A004300 */  div        $zero, $v0, $v1
    /* 3DD00 8004D500 02006014 */  bnez       $v1, .L8004D50C
    /* 3DD04 8004D504 00000000 */   nop
    /* 3DD08 8004D508 0D000700 */  break      7
  .L8004D50C:
    /* 3DD0C 8004D50C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3DD10 8004D510 04006114 */  bne        $v1, $at, .L8004D524
    /* 3DD14 8004D514 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3DD18 8004D518 02004114 */  bne        $v0, $at, .L8004D524
    /* 3DD1C 8004D51C 00000000 */   nop
    /* 3DD20 8004D520 0D000600 */  break      6
  .L8004D524:
    /* 3DD24 8004D524 12100000 */  mflo       $v0
    /* 3DD28 8004D528 00000000 */  nop
    /* 3DD2C 8004D52C 2138E200 */  addu       $a3, $a3, $v0
    /* 3DD30 8004D530 801F023C */  lui        $v0, (0x1F8000C0 >> 16)
    /* 3DD34 8004D534 C0004284 */  lh         $v0, (0x1F8000C0 & 0xFFFF)($v0)
    /* 3DD38 8004D538 23204701 */  subu       $a0, $t2, $a3
    /* 3DD3C 8004D53C 2310C201 */  subu       $v0, $t6, $v0
  .L8004D540:
    /* 3DD40 8004D540 18008200 */  mult       $a0, $v0
    /* 3DD44 8004D544 12100000 */  mflo       $v0
    /* 3DD48 8004D548 00000000 */  nop
    /* 3DD4C 8004D54C 00000000 */  nop
    /* 3DD50 8004D550 1A004300 */  div        $zero, $v0, $v1
    /* 3DD54 8004D554 02006014 */  bnez       $v1, .L8004D560
    /* 3DD58 8004D558 00000000 */   nop
    /* 3DD5C 8004D55C 0D000700 */  break      7
  .L8004D560:
    /* 3DD60 8004D560 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3DD64 8004D564 04006114 */  bne        $v1, $at, .L8004D578
    /* 3DD68 8004D568 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3DD6C 8004D56C 02004114 */  bne        $v0, $at, .L8004D578
    /* 3DD70 8004D570 00000000 */   nop
    /* 3DD74 8004D574 0D000600 */  break      6
  .L8004D578:
    /* 3DD78 8004D578 12180000 */  mflo       $v1
    /* 3DD7C 8004D57C 00000000 */  nop
    /* 3DD80 8004D580 2140E300 */  addu       $t0, $a3, $v1
    /* 3DD84 8004D584 2A104801 */  slt        $v0, $t2, $t0
    /* 3DD88 8004D588 42034010 */  beqz       $v0, .L8004E294
    /* 3DD8C 8004D58C 00000000 */   nop
    /* 3DD90 8004D590 A5380108 */  j          .L8004E294
    /* 3DD94 8004D594 21404001 */   addu      $t0, $t2, $zero
  glabel .L8004D598
    /* 3DD98 8004D598 801F023C */  lui        $v0, (0x1F8000F6 >> 16)
    /* 3DD9C 8004D59C F6004280 */  lb         $v0, (0x1F8000F6 & 0xFFFF)($v0)
    /* 3DDA0 8004D5A0 00000000 */  nop
    /* 3DDA4 8004D5A4 0E004014 */  bnez       $v0, .L8004D5E0
    /* 3DDA8 8004D5A8 801F123C */   lui       $s2, (0x1F8000F8 >> 16)
    /* 3DDAC 8004D5AC 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3DDB0 8004D5B0 FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3DDB4 8004D5B4 00000000 */  nop
    /* 3DDB8 8004D5B8 09004230 */  andi       $v0, $v0, 0x9
    /* 3DDBC 8004D5BC 09004010 */  beqz       $v0, .L8004D5E4
    /* 3DDC0 8004D5C0 F8005236 */   ori       $s2, $s2, (0x1F8000F8 & 0xFFFF)
    /* 3DDC4 8004D5C4 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3DDC8 8004D5C8 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3DDCC 8004D5CC 00000000 */  nop
    /* 3DDD0 8004D5D0 23104F00 */  subu       $v0, $v0, $t7
    /* 3DDD4 8004D5D4 20004228 */  slti       $v0, $v0, 0x20
    /* 3DDD8 8004D5D8 CF024014 */  bnez       $v0, .L8004E118
    /* 3DDDC 8004D5DC 801F123C */   lui       $s2, (0x1F8000F8 >> 16)
  .L8004D5E0:
    /* 3DDE0 8004D5E0 F8005236 */  ori        $s2, $s2, (0x1F8000F8 & 0xFFFF)
  .L8004D5E4:
    /* 3DDE4 8004D5E4 00004386 */  lh         $v1, 0x0($s2)
    /* 3DDE8 8004D5E8 801F093C */  lui        $t1, (0x1F8000C0 >> 16)
    /* 3DDEC 8004D5EC C0002985 */  lh         $t1, (0x1F8000C0 & 0xFFFF)($t1)
    /* 3DDF0 8004D5F0 801F023C */  lui        $v0, (0x1F8000F4 >> 16)
    /* 3DDF4 8004D5F4 F4004284 */  lh         $v0, (0x1F8000F4 & 0xFFFF)($v0)
    /* 3DDF8 8004D5F8 801F083C */  lui        $t0, (0x1F8000C4 >> 16)
    /* 3DDFC 8004D5FC C4000885 */  lh         $t0, (0x1F8000C4 & 0xFFFF)($t0)
    /* 3DE00 8004D600 23286900 */  subu       $a1, $v1, $t1
    /* 3DE04 8004D604 21884000 */  addu       $s1, $v0, $zero
    /* 3DE08 8004D608 23200201 */  subu       $a0, $t0, $v0
    /* 3DE0C 8004D60C 2A108500 */  slt        $v0, $a0, $a1
    /* 3DE10 8004D610 02004010 */  beqz       $v0, .L8004D61C
    /* 3DE14 8004D614 21586000 */   addu      $t3, $v1, $zero
    /* 3DE18 8004D618 21288000 */  addu       $a1, $a0, $zero
  .L8004D61C:
    /* 3DE1C 8004D61C 23304701 */  subu       $a2, $t2, $a3
    /* 3DE20 8004D620 23102D01 */  subu       $v0, $t1, $t5
    /* 3DE24 8004D624 23180803 */  subu       $v1, $t8, $t0
    /* 3DE28 8004D628 21104300 */  addu       $v0, $v0, $v1
    /* 3DE2C 8004D62C 1800C200 */  mult       $a2, $v0
    /* 3DE30 8004D630 12100000 */  mflo       $v0
    /* 3DE34 8004D634 2320CD01 */  subu       $a0, $t6, $t5
    /* 3DE38 8004D638 00000000 */  nop
    /* 3DE3C 8004D63C 1A004400 */  div        $zero, $v0, $a0
    /* 3DE40 8004D640 02008014 */  bnez       $a0, .L8004D64C
    /* 3DE44 8004D644 00000000 */   nop
    /* 3DE48 8004D648 0D000700 */  break      7
  .L8004D64C:
    /* 3DE4C 8004D64C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3DE50 8004D650 04008114 */  bne        $a0, $at, .L8004D664
    /* 3DE54 8004D654 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3DE58 8004D658 02004114 */  bne        $v0, $at, .L8004D664
    /* 3DE5C 8004D65C 00000000 */   nop
    /* 3DE60 8004D660 0D000600 */  break      6
  .L8004D664:
    /* 3DE64 8004D664 12100000 */  mflo       $v0
    /* 3DE68 8004D668 FFFF2333 */  andi       $v1, $t9, 0xFFFF
    /* 3DE6C 8004D66C 2140E200 */  addu       $t0, $a3, $v0
    /* 3DE70 8004D670 18000224 */  addiu      $v0, $zero, 0x18
    /* 3DE74 8004D674 A6026210 */  beq        $v1, $v0, .L8004E110
    /* 3DE78 8004D678 00000000 */   nop
    /* 3DE7C 8004D67C 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3DE80 8004D680 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3DE84 8004D684 00000000 */  nop
    /* 3DE88 8004D688 23384201 */  subu       $a3, $t2, $v0
    /* 3DE8C 8004D68C 18008700 */  mult       $a0, $a3
    /* 3DE90 8004D690 12100000 */  mflo       $v0
    /* 3DE94 8004D694 00000000 */  nop
    /* 3DE98 8004D698 00000000 */  nop
    /* 3DE9C 8004D69C 1A004600 */  div        $zero, $v0, $a2
    /* 3DEA0 8004D6A0 0200C014 */  bnez       $a2, .L8004D6AC
    /* 3DEA4 8004D6A4 00000000 */   nop
    /* 3DEA8 8004D6A8 0D000700 */  break      7
  .L8004D6AC:
    /* 3DEAC 8004D6AC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3DEB0 8004D6B0 0400C114 */  bne        $a2, $at, .L8004D6C4
    /* 3DEB4 8004D6B4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3DEB8 8004D6B8 02004114 */  bne        $v0, $at, .L8004D6C4
    /* 3DEBC 8004D6BC 00000000 */   nop
    /* 3DEC0 8004D6C0 0D000600 */  break      6
  .L8004D6C4:
    /* 3DEC4 8004D6C4 12180000 */  mflo       $v1
    /* 3DEC8 8004D6C8 00000000 */  nop
    /* 3DECC 8004D6CC 9F006018 */  blez       $v1, .L8004D94C
    /* 3DED0 8004D6D0 23106301 */   subu      $v0, $t3, $v1
    /* 3DED4 8004D6D4 53360108 */  j          .L8004D94C
    /* 3DED8 8004D6D8 000042A6 */   sh        $v0, 0x0($s2)
  glabel .L8004D6DC
    /* 3DEDC 8004D6DC 801F023C */  lui        $v0, (0x1F8000F6 >> 16)
    /* 3DEE0 8004D6E0 F6004280 */  lb         $v0, (0x1F8000F6 & 0xFFFF)($v0)
    /* 3DEE4 8004D6E4 00000000 */  nop
    /* 3DEE8 8004D6E8 0E004014 */  bnez       $v0, .L8004D724
    /* 3DEEC 8004D6EC 801F113C */   lui       $s1, (0x1F8000F8 >> 16)
    /* 3DEF0 8004D6F0 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3DEF4 8004D6F4 FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3DEF8 8004D6F8 00000000 */  nop
    /* 3DEFC 8004D6FC 06004230 */  andi       $v0, $v0, 0x6
    /* 3DF00 8004D700 09004010 */  beqz       $v0, .L8004D728
    /* 3DF04 8004D704 F8003136 */   ori       $s1, $s1, (0x1F8000F8 & 0xFFFF)
    /* 3DF08 8004D708 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3DF0C 8004D70C C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3DF10 8004D710 00000000 */  nop
    /* 3DF14 8004D714 23104F00 */  subu       $v0, $v0, $t7
    /* 3DF18 8004D718 20004228 */  slti       $v0, $v0, 0x20
    /* 3DF1C 8004D71C 7E024014 */  bnez       $v0, .L8004E118
    /* 3DF20 8004D720 801F113C */   lui       $s1, (0x1F8000F8 >> 16)
  .L8004D724:
    /* 3DF24 8004D724 F8003136 */  ori        $s1, $s1, (0x1F8000F8 & 0xFFFF)
  .L8004D728:
    /* 3DF28 8004D728 00002386 */  lh         $v1, 0x0($s1)
    /* 3DF2C 8004D72C 801F093C */  lui        $t1, (0x1F8000C0 >> 16)
    /* 3DF30 8004D730 C0002985 */  lh         $t1, (0x1F8000C0 & 0xFFFF)($t1)
    /* 3DF34 8004D734 801F023C */  lui        $v0, (0x1F8000F4 >> 16)
    /* 3DF38 8004D738 F4004284 */  lh         $v0, (0x1F8000F4 & 0xFFFF)($v0)
    /* 3DF3C 8004D73C 801F083C */  lui        $t0, (0x1F8000C4 >> 16)
    /* 3DF40 8004D740 C4000885 */  lh         $t0, (0x1F8000C4 & 0xFFFF)($t0)
    /* 3DF44 8004D744 23286900 */  subu       $a1, $v1, $t1
    /* 3DF48 8004D748 21C84000 */  addu       $t9, $v0, $zero
    /* 3DF4C 8004D74C 23200201 */  subu       $a0, $t0, $v0
    /* 3DF50 8004D750 2A108500 */  slt        $v0, $a0, $a1
    /* 3DF54 8004D754 02004010 */  beqz       $v0, .L8004D760
    /* 3DF58 8004D758 21586000 */   addu      $t3, $v1, $zero
    /* 3DF5C 8004D75C 21288000 */  addu       $a1, $a0, $zero
  .L8004D760:
    /* 3DF60 8004D760 23304701 */  subu       $a2, $t2, $a3
    /* 3DF64 8004D764 23102D01 */  subu       $v0, $t1, $t5
    /* 3DF68 8004D768 23180803 */  subu       $v1, $t8, $t0
    /* 3DF6C 8004D76C 21104300 */  addu       $v0, $v0, $v1
    /* 3DF70 8004D770 1800C200 */  mult       $a2, $v0
    /* 3DF74 8004D774 12180000 */  mflo       $v1
    /* 3DF78 8004D778 2310CD01 */  subu       $v0, $t6, $t5
    /* 3DF7C 8004D77C 00000000 */  nop
    /* 3DF80 8004D780 1A006200 */  div        $zero, $v1, $v0
    /* 3DF84 8004D784 02004014 */  bnez       $v0, .L8004D790
    /* 3DF88 8004D788 00000000 */   nop
    /* 3DF8C 8004D78C 0D000700 */  break      7
  .L8004D790:
    /* 3DF90 8004D790 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3DF94 8004D794 04004114 */  bne        $v0, $at, .L8004D7A8
    /* 3DF98 8004D798 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3DF9C 8004D79C 02006114 */  bne        $v1, $at, .L8004D7A8
    /* 3DFA0 8004D7A0 00000000 */   nop
    /* 3DFA4 8004D7A4 0D000600 */  break      6
  .L8004D7A8:
    /* 3DFA8 8004D7A8 12200000 */  mflo       $a0
    /* 3DFAC 8004D7AC 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3DFB0 8004D7B0 C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3DFB4 8004D7B4 00000000 */  nop
    /* 3DFB8 8004D7B8 23384301 */  subu       $a3, $t2, $v1
    /* 3DFBC 8004D7BC 18004700 */  mult       $v0, $a3
    /* 3DFC0 8004D7C0 12100000 */  mflo       $v0
    /* 3DFC4 8004D7C4 00000000 */  nop
    /* 3DFC8 8004D7C8 00000000 */  nop
    /* 3DFCC 8004D7CC 1A004600 */  div        $zero, $v0, $a2
    /* 3DFD0 8004D7D0 0200C014 */  bnez       $a2, .L8004D7DC
    /* 3DFD4 8004D7D4 00000000 */   nop
    /* 3DFD8 8004D7D8 0D000700 */  break      7
  .L8004D7DC:
    /* 3DFDC 8004D7DC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3DFE0 8004D7E0 0400C114 */  bne        $a2, $at, .L8004D7F4
    /* 3DFE4 8004D7E4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3DFE8 8004D7E8 02004114 */  bne        $v0, $at, .L8004D7F4
    /* 3DFEC 8004D7EC 00000000 */   nop
    /* 3DFF0 8004D7F0 0D000600 */  break      6
  .L8004D7F4:
    /* 3DFF4 8004D7F4 12180000 */  mflo       $v1
    /* 3DFF8 8004D7F8 00000000 */  nop
    /* 3DFFC 8004D7FC B6006018 */  blez       $v1, .L8004DAD8
    /* 3E000 8004D800 23404401 */   subu      $t0, $t2, $a0
    /* 3E004 8004D804 B5360108 */  j          .L8004DAD4
    /* 3E008 8004D808 23106301 */   subu      $v0, $t3, $v1
  glabel .L8004D80C
    /* 3E00C 8004D80C 801F023C */  lui        $v0, (0x1F8000F6 >> 16)
    /* 3E010 8004D810 F6004280 */  lb         $v0, (0x1F8000F6 & 0xFFFF)($v0)
    /* 3E014 8004D814 00000000 */  nop
    /* 3E018 8004D818 0E004014 */  bnez       $v0, .L8004D854
    /* 3E01C 8004D81C 801F123C */   lui       $s2, (0x1F8000F0 >> 16)
    /* 3E020 8004D820 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3E024 8004D824 FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3E028 8004D828 00000000 */  nop
    /* 3E02C 8004D82C 0A004230 */  andi       $v0, $v0, 0xA
    /* 3E030 8004D830 09004010 */  beqz       $v0, .L8004D858
    /* 3E034 8004D834 F0005236 */   ori       $s2, $s2, (0x1F8000F0 & 0xFFFF)
    /* 3E038 8004D838 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3E03C 8004D83C C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3E040 8004D840 00000000 */  nop
    /* 3E044 8004D844 23104F00 */  subu       $v0, $v0, $t7
    /* 3E048 8004D848 20004228 */  slti       $v0, $v0, 0x20
    /* 3E04C 8004D84C 32024014 */  bnez       $v0, .L8004E118
    /* 3E050 8004D850 801F123C */   lui       $s2, (0x1F8000F0 >> 16)
  .L8004D854:
    /* 3E054 8004D854 F0005236 */  ori        $s2, $s2, (0x1F8000F0 & 0xFFFF)
  .L8004D858:
    /* 3E058 8004D858 801F093C */  lui        $t1, (0x1F8000C0 >> 16)
    /* 3E05C 8004D85C C0002985 */  lh         $t1, (0x1F8000C0 & 0xFFFF)($t1)
    /* 3E060 8004D860 00004386 */  lh         $v1, 0x0($s2)
    /* 3E064 8004D864 801F023C */  lui        $v0, (0x1F8000F4 >> 16)
    /* 3E068 8004D868 F4004284 */  lh         $v0, (0x1F8000F4 & 0xFFFF)($v0)
    /* 3E06C 8004D86C 801F083C */  lui        $t0, (0x1F8000C4 >> 16)
    /* 3E070 8004D870 C4000885 */  lh         $t0, (0x1F8000C4 & 0xFFFF)($t0)
    /* 3E074 8004D874 23282301 */  subu       $a1, $t1, $v1
    /* 3E078 8004D878 21884000 */  addu       $s1, $v0, $zero
    /* 3E07C 8004D87C 23200201 */  subu       $a0, $t0, $v0
    /* 3E080 8004D880 2A108500 */  slt        $v0, $a0, $a1
    /* 3E084 8004D884 02004010 */  beqz       $v0, .L8004D890
    /* 3E088 8004D888 21586000 */   addu      $t3, $v1, $zero
    /* 3E08C 8004D88C 21288000 */  addu       $a1, $a0, $zero
  .L8004D890:
    /* 3E090 8004D890 23304701 */  subu       $a2, $t2, $a3
    /* 3E094 8004D894 2310C901 */  subu       $v0, $t6, $t1
    /* 3E098 8004D898 23180803 */  subu       $v1, $t8, $t0
    /* 3E09C 8004D89C 21104300 */  addu       $v0, $v0, $v1
    /* 3E0A0 8004D8A0 1800C200 */  mult       $a2, $v0
    /* 3E0A4 8004D8A4 12100000 */  mflo       $v0
    /* 3E0A8 8004D8A8 2320CD01 */  subu       $a0, $t6, $t5
    /* 3E0AC 8004D8AC 00000000 */  nop
    /* 3E0B0 8004D8B0 1A004400 */  div        $zero, $v0, $a0
    /* 3E0B4 8004D8B4 02008014 */  bnez       $a0, .L8004D8C0
    /* 3E0B8 8004D8B8 00000000 */   nop
    /* 3E0BC 8004D8BC 0D000700 */  break      7
  .L8004D8C0:
    /* 3E0C0 8004D8C0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3E0C4 8004D8C4 04008114 */  bne        $a0, $at, .L8004D8D8
    /* 3E0C8 8004D8C8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3E0CC 8004D8CC 02004114 */  bne        $v0, $at, .L8004D8D8
    /* 3E0D0 8004D8D0 00000000 */   nop
    /* 3E0D4 8004D8D4 0D000600 */  break      6
  .L8004D8D8:
    /* 3E0D8 8004D8D8 12100000 */  mflo       $v0
    /* 3E0DC 8004D8DC FFFF2333 */  andi       $v1, $t9, 0xFFFF
    /* 3E0E0 8004D8E0 2140E200 */  addu       $t0, $a3, $v0
    /* 3E0E4 8004D8E4 19000224 */  addiu      $v0, $zero, 0x19
    /* 3E0E8 8004D8E8 09026210 */  beq        $v1, $v0, .L8004E110
    /* 3E0EC 8004D8EC 00000000 */   nop
    /* 3E0F0 8004D8F0 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3E0F4 8004D8F4 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3E0F8 8004D8F8 00000000 */  nop
    /* 3E0FC 8004D8FC 23384201 */  subu       $a3, $t2, $v0
    /* 3E100 8004D900 18008700 */  mult       $a0, $a3
    /* 3E104 8004D904 12100000 */  mflo       $v0
    /* 3E108 8004D908 00000000 */  nop
    /* 3E10C 8004D90C 00000000 */  nop
    /* 3E110 8004D910 1A004600 */  div        $zero, $v0, $a2
    /* 3E114 8004D914 0200C014 */  bnez       $a2, .L8004D920
    /* 3E118 8004D918 00000000 */   nop
    /* 3E11C 8004D91C 0D000700 */  break      7
  .L8004D920:
    /* 3E120 8004D920 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3E124 8004D924 0400C114 */  bne        $a2, $at, .L8004D938
    /* 3E128 8004D928 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3E12C 8004D92C 02004114 */  bne        $v0, $at, .L8004D938
    /* 3E130 8004D930 00000000 */   nop
    /* 3E134 8004D934 0D000600 */  break      6
  .L8004D938:
    /* 3E138 8004D938 12180000 */  mflo       $v1
    /* 3E13C 8004D93C 00000000 */  nop
    /* 3E140 8004D940 02006018 */  blez       $v1, .L8004D94C
    /* 3E144 8004D944 21106301 */   addu      $v0, $t3, $v1
    /* 3E148 8004D948 000042A6 */  sh         $v0, 0x0($s2)
  .L8004D94C:
    /* 3E14C 8004D94C 23100C03 */  subu       $v0, $t8, $t4
    /* 3E150 8004D950 18004700 */  mult       $v0, $a3
    /* 3E154 8004D954 12100000 */  mflo       $v0
    /* 3E158 8004D958 00000000 */  nop
    /* 3E15C 8004D95C 00000000 */  nop
    /* 3E160 8004D960 1A004600 */  div        $zero, $v0, $a2
    /* 3E164 8004D964 0200C014 */  bnez       $a2, .L8004D970
    /* 3E168 8004D968 00000000 */   nop
    /* 3E16C 8004D96C 0D000700 */  break      7
  .L8004D970:
    /* 3E170 8004D970 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3E174 8004D974 0400C114 */  bne        $a2, $at, .L8004D988
    /* 3E178 8004D978 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3E17C 8004D97C 02004114 */  bne        $v0, $at, .L8004D988
    /* 3E180 8004D980 00000000 */   nop
    /* 3E184 8004D984 0D000600 */  break      6
  .L8004D988:
    /* 3E188 8004D988 12180000 */  mflo       $v1
    /* 3E18C 8004D98C 00000000 */  nop
    /* 3E190 8004D990 DF016018 */  blez       $v1, .L8004E110
    /* 3E194 8004D994 21102302 */   addu      $v0, $s1, $v1
    /* 3E198 8004D998 801F013C */  lui        $at, (0x1F8000F4 >> 16)
    /* 3E19C 8004D99C F40022A4 */  sh         $v0, (0x1F8000F4 & 0xFFFF)($at)
    /* 3E1A0 8004D9A0 6E380108 */  j          .L8004E1B8
    /* 3E1A4 8004D9A4 30000924 */   addiu     $t1, $zero, 0x30
  glabel .L8004D9A8
    /* 3E1A8 8004D9A8 801F023C */  lui        $v0, (0x1F8000F6 >> 16)
    /* 3E1AC 8004D9AC F6004280 */  lb         $v0, (0x1F8000F6 & 0xFFFF)($v0)
    /* 3E1B0 8004D9B0 00000000 */  nop
    /* 3E1B4 8004D9B4 0E004014 */  bnez       $v0, .L8004D9F0
    /* 3E1B8 8004D9B8 801F113C */   lui       $s1, (0x1F8000F0 >> 16)
    /* 3E1BC 8004D9BC 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3E1C0 8004D9C0 FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3E1C4 8004D9C4 00000000 */  nop
    /* 3E1C8 8004D9C8 05004230 */  andi       $v0, $v0, 0x5
    /* 3E1CC 8004D9CC 09004010 */  beqz       $v0, .L8004D9F4
    /* 3E1D0 8004D9D0 F0003136 */   ori       $s1, $s1, (0x1F8000F0 & 0xFFFF)
    /* 3E1D4 8004D9D4 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3E1D8 8004D9D8 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3E1DC 8004D9DC 00000000 */  nop
    /* 3E1E0 8004D9E0 23104F00 */  subu       $v0, $v0, $t7
    /* 3E1E4 8004D9E4 20004228 */  slti       $v0, $v0, 0x20
    /* 3E1E8 8004D9E8 CB014014 */  bnez       $v0, .L8004E118
    /* 3E1EC 8004D9EC 801F113C */   lui       $s1, (0x1F8000F0 >> 16)
  .L8004D9F0:
    /* 3E1F0 8004D9F0 F0003136 */  ori        $s1, $s1, (0x1F8000F0 & 0xFFFF)
  .L8004D9F4:
    /* 3E1F4 8004D9F4 801F093C */  lui        $t1, (0x1F8000C0 >> 16)
    /* 3E1F8 8004D9F8 C0002985 */  lh         $t1, (0x1F8000C0 & 0xFFFF)($t1)
    /* 3E1FC 8004D9FC 00002386 */  lh         $v1, 0x0($s1)
    /* 3E200 8004DA00 801F023C */  lui        $v0, (0x1F8000F4 >> 16)
    /* 3E204 8004DA04 F4004284 */  lh         $v0, (0x1F8000F4 & 0xFFFF)($v0)
    /* 3E208 8004DA08 801F083C */  lui        $t0, (0x1F8000C4 >> 16)
    /* 3E20C 8004DA0C C4000885 */  lh         $t0, (0x1F8000C4 & 0xFFFF)($t0)
    /* 3E210 8004DA10 23282301 */  subu       $a1, $t1, $v1
    /* 3E214 8004DA14 21C84000 */  addu       $t9, $v0, $zero
    /* 3E218 8004DA18 23200201 */  subu       $a0, $t0, $v0
    /* 3E21C 8004DA1C 2A108500 */  slt        $v0, $a0, $a1
    /* 3E220 8004DA20 02004010 */  beqz       $v0, .L8004DA2C
    /* 3E224 8004DA24 21586000 */   addu      $t3, $v1, $zero
    /* 3E228 8004DA28 21288000 */  addu       $a1, $a0, $zero
  .L8004DA2C:
    /* 3E22C 8004DA2C 23304701 */  subu       $a2, $t2, $a3
    /* 3E230 8004DA30 2310C901 */  subu       $v0, $t6, $t1
    /* 3E234 8004DA34 23180803 */  subu       $v1, $t8, $t0
    /* 3E238 8004DA38 21104300 */  addu       $v0, $v0, $v1
    /* 3E23C 8004DA3C 1800C200 */  mult       $a2, $v0
    /* 3E240 8004DA40 12180000 */  mflo       $v1
    /* 3E244 8004DA44 2310CD01 */  subu       $v0, $t6, $t5
    /* 3E248 8004DA48 00000000 */  nop
    /* 3E24C 8004DA4C 1A006200 */  div        $zero, $v1, $v0
    /* 3E250 8004DA50 02004014 */  bnez       $v0, .L8004DA5C
    /* 3E254 8004DA54 00000000 */   nop
    /* 3E258 8004DA58 0D000700 */  break      7
  .L8004DA5C:
    /* 3E25C 8004DA5C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3E260 8004DA60 04004114 */  bne        $v0, $at, .L8004DA74
    /* 3E264 8004DA64 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3E268 8004DA68 02006114 */  bne        $v1, $at, .L8004DA74
    /* 3E26C 8004DA6C 00000000 */   nop
    /* 3E270 8004DA70 0D000600 */  break      6
  .L8004DA74:
    /* 3E274 8004DA74 12200000 */  mflo       $a0
    /* 3E278 8004DA78 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3E27C 8004DA7C C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3E280 8004DA80 00000000 */  nop
    /* 3E284 8004DA84 23384301 */  subu       $a3, $t2, $v1
    /* 3E288 8004DA88 18004700 */  mult       $v0, $a3
    /* 3E28C 8004DA8C 12100000 */  mflo       $v0
    /* 3E290 8004DA90 00000000 */  nop
    /* 3E294 8004DA94 00000000 */  nop
    /* 3E298 8004DA98 1A004600 */  div        $zero, $v0, $a2
    /* 3E29C 8004DA9C 0200C014 */  bnez       $a2, .L8004DAA8
    /* 3E2A0 8004DAA0 00000000 */   nop
    /* 3E2A4 8004DAA4 0D000700 */  break      7
  .L8004DAA8:
    /* 3E2A8 8004DAA8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3E2AC 8004DAAC 0400C114 */  bne        $a2, $at, .L8004DAC0
    /* 3E2B0 8004DAB0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3E2B4 8004DAB4 02004114 */  bne        $v0, $at, .L8004DAC0
    /* 3E2B8 8004DAB8 00000000 */   nop
    /* 3E2BC 8004DABC 0D000600 */  break      6
  .L8004DAC0:
    /* 3E2C0 8004DAC0 12180000 */  mflo       $v1
    /* 3E2C4 8004DAC4 00000000 */  nop
    /* 3E2C8 8004DAC8 03006018 */  blez       $v1, .L8004DAD8
    /* 3E2CC 8004DACC 23404401 */   subu      $t0, $t2, $a0
    /* 3E2D0 8004DAD0 21106301 */  addu       $v0, $t3, $v1
  .L8004DAD4:
    /* 3E2D4 8004DAD4 000022A6 */  sh         $v0, 0x0($s1)
  .L8004DAD8:
    /* 3E2D8 8004DAD8 23100C03 */  subu       $v0, $t8, $t4
    /* 3E2DC 8004DADC 18004700 */  mult       $v0, $a3
    /* 3E2E0 8004DAE0 12100000 */  mflo       $v0
    /* 3E2E4 8004DAE4 00000000 */  nop
    /* 3E2E8 8004DAE8 00000000 */  nop
    /* 3E2EC 8004DAEC 1A004600 */  div        $zero, $v0, $a2
    /* 3E2F0 8004DAF0 0200C014 */  bnez       $a2, .L8004DAFC
    /* 3E2F4 8004DAF4 00000000 */   nop
    /* 3E2F8 8004DAF8 0D000700 */  break      7
  .L8004DAFC:
    /* 3E2FC 8004DAFC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3E300 8004DB00 0400C114 */  bne        $a2, $at, .L8004DB14
    /* 3E304 8004DB04 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3E308 8004DB08 02004114 */  bne        $v0, $at, .L8004DB14
    /* 3E30C 8004DB0C 00000000 */   nop
    /* 3E310 8004DB10 0D000600 */  break      6
  .L8004DB14:
    /* 3E314 8004DB14 12180000 */  mflo       $v1
    /* 3E318 8004DB18 00000000 */  nop
    /* 3E31C 8004DB1C 7C016018 */  blez       $v1, .L8004E110
    /* 3E320 8004DB20 21102303 */   addu      $v0, $t9, $v1
    /* 3E324 8004DB24 801F013C */  lui        $at, (0x1F8000F4 >> 16)
    /* 3E328 8004DB28 F40022A4 */  sh         $v0, (0x1F8000F4 & 0xFFFF)($at)
    /* 3E32C 8004DB2C 6E380108 */  j          .L8004E1B8
    /* 3E330 8004DB30 30000924 */   addiu     $t1, $zero, 0x30
  glabel .L8004DB34
    /* 3E334 8004DB34 801F023C */  lui        $v0, (0x1F8000F6 >> 16)
    /* 3E338 8004DB38 F6004280 */  lb         $v0, (0x1F8000F6 & 0xFFFF)($v0)
    /* 3E33C 8004DB3C 00000000 */  nop
    /* 3E340 8004DB40 0E004014 */  bnez       $v0, .L8004DB7C
    /* 3E344 8004DB44 801F123C */   lui       $s2, (0x1F8000F8 >> 16)
    /* 3E348 8004DB48 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3E34C 8004DB4C FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3E350 8004DB50 00000000 */  nop
    /* 3E354 8004DB54 05004230 */  andi       $v0, $v0, 0x5
    /* 3E358 8004DB58 09004010 */  beqz       $v0, .L8004DB80
    /* 3E35C 8004DB5C F8005236 */   ori       $s2, $s2, (0x1F8000F8 & 0xFFFF)
    /* 3E360 8004DB60 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3E364 8004DB64 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3E368 8004DB68 00000000 */  nop
    /* 3E36C 8004DB6C 23104F00 */  subu       $v0, $v0, $t7
    /* 3E370 8004DB70 20004228 */  slti       $v0, $v0, 0x20
    /* 3E374 8004DB74 68014014 */  bnez       $v0, .L8004E118
    /* 3E378 8004DB78 801F123C */   lui       $s2, (0x1F8000F8 >> 16)
  .L8004DB7C:
    /* 3E37C 8004DB7C F8005236 */  ori        $s2, $s2, (0x1F8000F8 & 0xFFFF)
  .L8004DB80:
    /* 3E380 8004DB80 00004386 */  lh         $v1, 0x0($s2)
    /* 3E384 8004DB84 801F093C */  lui        $t1, (0x1F8000C0 >> 16)
    /* 3E388 8004DB88 C0002985 */  lh         $t1, (0x1F8000C0 & 0xFFFF)($t1)
    /* 3E38C 8004DB8C 801F023C */  lui        $v0, (0x1F8000FC >> 16)
    /* 3E390 8004DB90 FC004284 */  lh         $v0, (0x1F8000FC & 0xFFFF)($v0)
    /* 3E394 8004DB94 801F083C */  lui        $t0, (0x1F8000C4 >> 16)
    /* 3E398 8004DB98 C4000885 */  lh         $t0, (0x1F8000C4 & 0xFFFF)($t0)
    /* 3E39C 8004DB9C 23286900 */  subu       $a1, $v1, $t1
    /* 3E3A0 8004DBA0 21884000 */  addu       $s1, $v0, $zero
    /* 3E3A4 8004DBA4 23204800 */  subu       $a0, $v0, $t0
    /* 3E3A8 8004DBA8 2A108500 */  slt        $v0, $a0, $a1
    /* 3E3AC 8004DBAC 02004010 */  beqz       $v0, .L8004DBB8
    /* 3E3B0 8004DBB0 21586000 */   addu      $t3, $v1, $zero
    /* 3E3B4 8004DBB4 21288000 */  addu       $a1, $a0, $zero
  .L8004DBB8:
    /* 3E3B8 8004DBB8 23304701 */  subu       $a2, $t2, $a3
    /* 3E3BC 8004DBBC 23102D01 */  subu       $v0, $t1, $t5
    /* 3E3C0 8004DBC0 23180C01 */  subu       $v1, $t0, $t4
    /* 3E3C4 8004DBC4 21104300 */  addu       $v0, $v0, $v1
    /* 3E3C8 8004DBC8 1800C200 */  mult       $a2, $v0
    /* 3E3CC 8004DBCC 12100000 */  mflo       $v0
    /* 3E3D0 8004DBD0 2320CD01 */  subu       $a0, $t6, $t5
    /* 3E3D4 8004DBD4 00000000 */  nop
    /* 3E3D8 8004DBD8 1A004400 */  div        $zero, $v0, $a0
    /* 3E3DC 8004DBDC 02008014 */  bnez       $a0, .L8004DBE8
    /* 3E3E0 8004DBE0 00000000 */   nop
    /* 3E3E4 8004DBE4 0D000700 */  break      7
  .L8004DBE8:
    /* 3E3E8 8004DBE8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3E3EC 8004DBEC 04008114 */  bne        $a0, $at, .L8004DC00
    /* 3E3F0 8004DBF0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3E3F4 8004DBF4 02004114 */  bne        $v0, $at, .L8004DC00
    /* 3E3F8 8004DBF8 00000000 */   nop
    /* 3E3FC 8004DBFC 0D000600 */  break      6
  .L8004DC00:
    /* 3E400 8004DC00 12100000 */  mflo       $v0
    /* 3E404 8004DC04 FFFF2333 */  andi       $v1, $t9, 0xFFFF
    /* 3E408 8004DC08 2140E200 */  addu       $t0, $a3, $v0
    /* 3E40C 8004DC0C 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 3E410 8004DC10 3F016210 */  beq        $v1, $v0, .L8004E110
    /* 3E414 8004DC14 00000000 */   nop
    /* 3E418 8004DC18 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3E41C 8004DC1C C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3E420 8004DC20 00000000 */  nop
    /* 3E424 8004DC24 23384201 */  subu       $a3, $t2, $v0
    /* 3E428 8004DC28 18008700 */  mult       $a0, $a3
    /* 3E42C 8004DC2C 12100000 */  mflo       $v0
    /* 3E430 8004DC30 00000000 */  nop
    /* 3E434 8004DC34 00000000 */  nop
    /* 3E438 8004DC38 1A004600 */  div        $zero, $v0, $a2
    /* 3E43C 8004DC3C 0200C014 */  bnez       $a2, .L8004DC48
    /* 3E440 8004DC40 00000000 */   nop
    /* 3E444 8004DC44 0D000700 */  break      7
  .L8004DC48:
    /* 3E448 8004DC48 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3E44C 8004DC4C 0400C114 */  bne        $a2, $at, .L8004DC60
    /* 3E450 8004DC50 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3E454 8004DC54 02004114 */  bne        $v0, $at, .L8004DC60
    /* 3E458 8004DC58 00000000 */   nop
    /* 3E45C 8004DC5C 0D000600 */  break      6
  .L8004DC60:
    /* 3E460 8004DC60 12180000 */  mflo       $v1
    /* 3E464 8004DC64 00000000 */  nop
    /* 3E468 8004DC68 02006018 */  blez       $v1, .L8004DC74
    /* 3E46C 8004DC6C 23106301 */   subu      $v0, $t3, $v1
    /* 3E470 8004DC70 000042A6 */  sh         $v0, 0x0($s2)
  .L8004DC74:
    /* 3E474 8004DC74 23100C03 */  subu       $v0, $t8, $t4
    /* 3E478 8004DC78 18004700 */  mult       $v0, $a3
    /* 3E47C 8004DC7C 12100000 */  mflo       $v0
    /* 3E480 8004DC80 00000000 */  nop
    /* 3E484 8004DC84 00000000 */  nop
    /* 3E488 8004DC88 1A004600 */  div        $zero, $v0, $a2
    /* 3E48C 8004DC8C 0200C014 */  bnez       $a2, .L8004DC98
    /* 3E490 8004DC90 00000000 */   nop
    /* 3E494 8004DC94 0D000700 */  break      7
  .L8004DC98:
    /* 3E498 8004DC98 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3E49C 8004DC9C 0400C114 */  bne        $a2, $at, .L8004DCB0
    /* 3E4A0 8004DCA0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3E4A4 8004DCA4 02004114 */  bne        $v0, $at, .L8004DCB0
    /* 3E4A8 8004DCA8 00000000 */   nop
    /* 3E4AC 8004DCAC 0D000600 */  break      6
  .L8004DCB0:
    /* 3E4B0 8004DCB0 12180000 */  mflo       $v1
    /* 3E4B4 8004DCB4 00000000 */  nop
    /* 3E4B8 8004DCB8 15016018 */  blez       $v1, .L8004E110
    /* 3E4BC 8004DCBC 23102302 */   subu      $v0, $s1, $v1
    /* 3E4C0 8004DCC0 42380108 */  j          .L8004E108
    /* 3E4C4 8004DCC4 00000000 */   nop
  glabel .L8004DCC8
    /* 3E4C8 8004DCC8 801F023C */  lui        $v0, (0x1F8000F6 >> 16)
    /* 3E4CC 8004DCCC F6004280 */  lb         $v0, (0x1F8000F6 & 0xFFFF)($v0)
    /* 3E4D0 8004DCD0 00000000 */  nop
    /* 3E4D4 8004DCD4 0E004014 */  bnez       $v0, .L8004DD10
    /* 3E4D8 8004DCD8 801F113C */   lui       $s1, (0x1F8000F8 >> 16)
    /* 3E4DC 8004DCDC 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3E4E0 8004DCE0 FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3E4E4 8004DCE4 00000000 */  nop
    /* 3E4E8 8004DCE8 0A004230 */  andi       $v0, $v0, 0xA
    /* 3E4EC 8004DCEC 09004010 */  beqz       $v0, .L8004DD14
    /* 3E4F0 8004DCF0 F8003136 */   ori       $s1, $s1, (0x1F8000F8 & 0xFFFF)
    /* 3E4F4 8004DCF4 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3E4F8 8004DCF8 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3E4FC 8004DCFC 00000000 */  nop
    /* 3E500 8004DD00 23104F00 */  subu       $v0, $v0, $t7
    /* 3E504 8004DD04 20004228 */  slti       $v0, $v0, 0x20
    /* 3E508 8004DD08 03014014 */  bnez       $v0, .L8004E118
    /* 3E50C 8004DD0C 801F113C */   lui       $s1, (0x1F8000F8 >> 16)
  .L8004DD10:
    /* 3E510 8004DD10 F8003136 */  ori        $s1, $s1, (0x1F8000F8 & 0xFFFF)
  .L8004DD14:
    /* 3E514 8004DD14 00002386 */  lh         $v1, 0x0($s1)
    /* 3E518 8004DD18 801F093C */  lui        $t1, (0x1F8000C0 >> 16)
    /* 3E51C 8004DD1C C0002985 */  lh         $t1, (0x1F8000C0 & 0xFFFF)($t1)
    /* 3E520 8004DD20 801F023C */  lui        $v0, (0x1F8000FC >> 16)
    /* 3E524 8004DD24 FC004284 */  lh         $v0, (0x1F8000FC & 0xFFFF)($v0)
    /* 3E528 8004DD28 801F083C */  lui        $t0, (0x1F8000C4 >> 16)
    /* 3E52C 8004DD2C C4000885 */  lh         $t0, (0x1F8000C4 & 0xFFFF)($t0)
    /* 3E530 8004DD30 23286900 */  subu       $a1, $v1, $t1
    /* 3E534 8004DD34 21C84000 */  addu       $t9, $v0, $zero
    /* 3E538 8004DD38 23204800 */  subu       $a0, $v0, $t0
    /* 3E53C 8004DD3C 2A108500 */  slt        $v0, $a0, $a1
    /* 3E540 8004DD40 02004010 */  beqz       $v0, .L8004DD4C
    /* 3E544 8004DD44 21586000 */   addu      $t3, $v1, $zero
    /* 3E548 8004DD48 21288000 */  addu       $a1, $a0, $zero
  .L8004DD4C:
    /* 3E54C 8004DD4C 23304701 */  subu       $a2, $t2, $a3
    /* 3E550 8004DD50 23102D01 */  subu       $v0, $t1, $t5
    /* 3E554 8004DD54 23180C01 */  subu       $v1, $t0, $t4
    /* 3E558 8004DD58 21104300 */  addu       $v0, $v0, $v1
    /* 3E55C 8004DD5C 1800C200 */  mult       $a2, $v0
    /* 3E560 8004DD60 12180000 */  mflo       $v1
    /* 3E564 8004DD64 2310CD01 */  subu       $v0, $t6, $t5
    /* 3E568 8004DD68 00000000 */  nop
    /* 3E56C 8004DD6C 1A006200 */  div        $zero, $v1, $v0
    /* 3E570 8004DD70 02004014 */  bnez       $v0, .L8004DD7C
    /* 3E574 8004DD74 00000000 */   nop
    /* 3E578 8004DD78 0D000700 */  break      7
  .L8004DD7C:
    /* 3E57C 8004DD7C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3E580 8004DD80 04004114 */  bne        $v0, $at, .L8004DD94
    /* 3E584 8004DD84 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3E588 8004DD88 02006114 */  bne        $v1, $at, .L8004DD94
    /* 3E58C 8004DD8C 00000000 */   nop
    /* 3E590 8004DD90 0D000600 */  break      6
  .L8004DD94:
    /* 3E594 8004DD94 12200000 */  mflo       $a0
    /* 3E598 8004DD98 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3E59C 8004DD9C C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3E5A0 8004DDA0 00000000 */  nop
    /* 3E5A4 8004DDA4 23384301 */  subu       $a3, $t2, $v1
    /* 3E5A8 8004DDA8 18004700 */  mult       $v0, $a3
    /* 3E5AC 8004DDAC 12100000 */  mflo       $v0
    /* 3E5B0 8004DDB0 00000000 */  nop
    /* 3E5B4 8004DDB4 00000000 */  nop
    /* 3E5B8 8004DDB8 1A004600 */  div        $zero, $v0, $a2
    /* 3E5BC 8004DDBC 0200C014 */  bnez       $a2, .L8004DDC8
    /* 3E5C0 8004DDC0 00000000 */   nop
    /* 3E5C4 8004DDC4 0D000700 */  break      7
  .L8004DDC8:
    /* 3E5C8 8004DDC8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3E5CC 8004DDCC 0400C114 */  bne        $a2, $at, .L8004DDE0
    /* 3E5D0 8004DDD0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3E5D4 8004DDD4 02004114 */  bne        $v0, $at, .L8004DDE0
    /* 3E5D8 8004DDD8 00000000 */   nop
    /* 3E5DC 8004DDDC 0D000600 */  break      6
  .L8004DDE0:
    /* 3E5E0 8004DDE0 12180000 */  mflo       $v1
    /* 3E5E4 8004DDE4 00000000 */  nop
    /* 3E5E8 8004DDE8 B4006018 */  blez       $v1, .L8004E0BC
    /* 3E5EC 8004DDEC 23404401 */   subu      $t0, $t2, $a0
    /* 3E5F0 8004DDF0 2E380108 */  j          .L8004E0B8
    /* 3E5F4 8004DDF4 23106301 */   subu      $v0, $t3, $v1
  glabel .L8004DDF8
    /* 3E5F8 8004DDF8 801F023C */  lui        $v0, (0x1F8000F6 >> 16)
    /* 3E5FC 8004DDFC F6004280 */  lb         $v0, (0x1F8000F6 & 0xFFFF)($v0)
    /* 3E600 8004DE00 00000000 */  nop
    /* 3E604 8004DE04 0E004014 */  bnez       $v0, .L8004DE40
    /* 3E608 8004DE08 801F123C */   lui       $s2, (0x1F8000F0 >> 16)
    /* 3E60C 8004DE0C 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3E610 8004DE10 FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3E614 8004DE14 00000000 */  nop
    /* 3E618 8004DE18 06004230 */  andi       $v0, $v0, 0x6
    /* 3E61C 8004DE1C 09004010 */  beqz       $v0, .L8004DE44
    /* 3E620 8004DE20 F0005236 */   ori       $s2, $s2, (0x1F8000F0 & 0xFFFF)
    /* 3E624 8004DE24 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3E628 8004DE28 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3E62C 8004DE2C 00000000 */  nop
    /* 3E630 8004DE30 23104F00 */  subu       $v0, $v0, $t7
    /* 3E634 8004DE34 20004228 */  slti       $v0, $v0, 0x20
    /* 3E638 8004DE38 B7004014 */  bnez       $v0, .L8004E118
    /* 3E63C 8004DE3C 801F123C */   lui       $s2, (0x1F8000F0 >> 16)
  .L8004DE40:
    /* 3E640 8004DE40 F0005236 */  ori        $s2, $s2, (0x1F8000F0 & 0xFFFF)
  .L8004DE44:
    /* 3E644 8004DE44 801F093C */  lui        $t1, (0x1F8000C0 >> 16)
    /* 3E648 8004DE48 C0002985 */  lh         $t1, (0x1F8000C0 & 0xFFFF)($t1)
    /* 3E64C 8004DE4C 00004386 */  lh         $v1, 0x0($s2)
    /* 3E650 8004DE50 801F023C */  lui        $v0, (0x1F8000FC >> 16)
    /* 3E654 8004DE54 FC004284 */  lh         $v0, (0x1F8000FC & 0xFFFF)($v0)
    /* 3E658 8004DE58 801F083C */  lui        $t0, (0x1F8000C4 >> 16)
    /* 3E65C 8004DE5C C4000885 */  lh         $t0, (0x1F8000C4 & 0xFFFF)($t0)
    /* 3E660 8004DE60 23282301 */  subu       $a1, $t1, $v1
    /* 3E664 8004DE64 21884000 */  addu       $s1, $v0, $zero
    /* 3E668 8004DE68 23204800 */  subu       $a0, $v0, $t0
    /* 3E66C 8004DE6C 2A108500 */  slt        $v0, $a0, $a1
    /* 3E670 8004DE70 02004010 */  beqz       $v0, .L8004DE7C
    /* 3E674 8004DE74 21586000 */   addu      $t3, $v1, $zero
    /* 3E678 8004DE78 21288000 */  addu       $a1, $a0, $zero
  .L8004DE7C:
    /* 3E67C 8004DE7C 23304701 */  subu       $a2, $t2, $a3
    /* 3E680 8004DE80 2310C901 */  subu       $v0, $t6, $t1
    /* 3E684 8004DE84 23180C01 */  subu       $v1, $t0, $t4
    /* 3E688 8004DE88 21104300 */  addu       $v0, $v0, $v1
    /* 3E68C 8004DE8C 1800C200 */  mult       $a2, $v0
    /* 3E690 8004DE90 12100000 */  mflo       $v0
    /* 3E694 8004DE94 2320CD01 */  subu       $a0, $t6, $t5
    /* 3E698 8004DE98 00000000 */  nop
    /* 3E69C 8004DE9C 1A004400 */  div        $zero, $v0, $a0
    /* 3E6A0 8004DEA0 02008014 */  bnez       $a0, .L8004DEAC
    /* 3E6A4 8004DEA4 00000000 */   nop
    /* 3E6A8 8004DEA8 0D000700 */  break      7
  .L8004DEAC:
    /* 3E6AC 8004DEAC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3E6B0 8004DEB0 04008114 */  bne        $a0, $at, .L8004DEC4
    /* 3E6B4 8004DEB4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3E6B8 8004DEB8 02004114 */  bne        $v0, $at, .L8004DEC4
    /* 3E6BC 8004DEBC 00000000 */   nop
    /* 3E6C0 8004DEC0 0D000600 */  break      6
  .L8004DEC4:
    /* 3E6C4 8004DEC4 12100000 */  mflo       $v0
    /* 3E6C8 8004DEC8 FFFF2333 */  andi       $v1, $t9, 0xFFFF
    /* 3E6CC 8004DECC 2140E200 */  addu       $t0, $a3, $v0
    /* 3E6D0 8004DED0 1B000224 */  addiu      $v0, $zero, 0x1B
    /* 3E6D4 8004DED4 8E006210 */  beq        $v1, $v0, .L8004E110
    /* 3E6D8 8004DED8 00000000 */   nop
    /* 3E6DC 8004DEDC 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3E6E0 8004DEE0 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3E6E4 8004DEE4 00000000 */  nop
    /* 3E6E8 8004DEE8 23384201 */  subu       $a3, $t2, $v0
    /* 3E6EC 8004DEEC 18008700 */  mult       $a0, $a3
    /* 3E6F0 8004DEF0 12100000 */  mflo       $v0
    /* 3E6F4 8004DEF4 00000000 */  nop
    /* 3E6F8 8004DEF8 00000000 */  nop
    /* 3E6FC 8004DEFC 1A004600 */  div        $zero, $v0, $a2
    /* 3E700 8004DF00 0200C014 */  bnez       $a2, .L8004DF0C
    /* 3E704 8004DF04 00000000 */   nop
    /* 3E708 8004DF08 0D000700 */  break      7
  .L8004DF0C:
    /* 3E70C 8004DF0C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3E710 8004DF10 0400C114 */  bne        $a2, $at, .L8004DF24
    /* 3E714 8004DF14 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3E718 8004DF18 02004114 */  bne        $v0, $at, .L8004DF24
    /* 3E71C 8004DF1C 00000000 */   nop
    /* 3E720 8004DF20 0D000600 */  break      6
  .L8004DF24:
    /* 3E724 8004DF24 12180000 */  mflo       $v1
    /* 3E728 8004DF28 00000000 */  nop
    /* 3E72C 8004DF2C 02006018 */  blez       $v1, .L8004DF38
    /* 3E730 8004DF30 21106301 */   addu      $v0, $t3, $v1
    /* 3E734 8004DF34 000042A6 */  sh         $v0, 0x0($s2)
  .L8004DF38:
    /* 3E738 8004DF38 23100C03 */  subu       $v0, $t8, $t4
    /* 3E73C 8004DF3C 18004700 */  mult       $v0, $a3
    /* 3E740 8004DF40 12100000 */  mflo       $v0
    /* 3E744 8004DF44 00000000 */  nop
    /* 3E748 8004DF48 00000000 */  nop
    /* 3E74C 8004DF4C 1A004600 */  div        $zero, $v0, $a2
    /* 3E750 8004DF50 0200C014 */  bnez       $a2, .L8004DF5C
    /* 3E754 8004DF54 00000000 */   nop
    /* 3E758 8004DF58 0D000700 */  break      7
  .L8004DF5C:
    /* 3E75C 8004DF5C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3E760 8004DF60 0400C114 */  bne        $a2, $at, .L8004DF74
    /* 3E764 8004DF64 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3E768 8004DF68 02004114 */  bne        $v0, $at, .L8004DF74
    /* 3E76C 8004DF6C 00000000 */   nop
    /* 3E770 8004DF70 0D000600 */  break      6
  .L8004DF74:
    /* 3E774 8004DF74 12180000 */  mflo       $v1
    /* 3E778 8004DF78 00000000 */  nop
    /* 3E77C 8004DF7C 64006018 */  blez       $v1, .L8004E110
    /* 3E780 8004DF80 23102302 */   subu      $v0, $s1, $v1
    /* 3E784 8004DF84 42380108 */  j          .L8004E108
    /* 3E788 8004DF88 00000000 */   nop
  glabel .L8004DF8C
    /* 3E78C 8004DF8C 801F023C */  lui        $v0, (0x1F8000F6 >> 16)
    /* 3E790 8004DF90 F6004280 */  lb         $v0, (0x1F8000F6 & 0xFFFF)($v0)
    /* 3E794 8004DF94 00000000 */  nop
    /* 3E798 8004DF98 0E004014 */  bnez       $v0, .L8004DFD4
    /* 3E79C 8004DF9C 801F113C */   lui       $s1, (0x1F8000F0 >> 16)
    /* 3E7A0 8004DFA0 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 3E7A4 8004DFA4 FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 3E7A8 8004DFA8 00000000 */  nop
    /* 3E7AC 8004DFAC 09004230 */  andi       $v0, $v0, 0x9
    /* 3E7B0 8004DFB0 09004010 */  beqz       $v0, .L8004DFD8
    /* 3E7B4 8004DFB4 F0003136 */   ori       $s1, $s1, (0x1F8000F0 & 0xFFFF)
    /* 3E7B8 8004DFB8 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3E7BC 8004DFBC C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3E7C0 8004DFC0 00000000 */  nop
    /* 3E7C4 8004DFC4 23104F00 */  subu       $v0, $v0, $t7
    /* 3E7C8 8004DFC8 20004228 */  slti       $v0, $v0, 0x20
    /* 3E7CC 8004DFCC 52004014 */  bnez       $v0, .L8004E118
    /* 3E7D0 8004DFD0 801F113C */   lui       $s1, (0x1F8000F0 >> 16)
  .L8004DFD4:
    /* 3E7D4 8004DFD4 F0003136 */  ori        $s1, $s1, (0x1F8000F0 & 0xFFFF)
  .L8004DFD8:
    /* 3E7D8 8004DFD8 801F093C */  lui        $t1, (0x1F8000C0 >> 16)
    /* 3E7DC 8004DFDC C0002985 */  lh         $t1, (0x1F8000C0 & 0xFFFF)($t1)
    /* 3E7E0 8004DFE0 00002386 */  lh         $v1, 0x0($s1)
    /* 3E7E4 8004DFE4 801F023C */  lui        $v0, (0x1F8000FC >> 16)
    /* 3E7E8 8004DFE8 FC004284 */  lh         $v0, (0x1F8000FC & 0xFFFF)($v0)
    /* 3E7EC 8004DFEC 801F083C */  lui        $t0, (0x1F8000C4 >> 16)
    /* 3E7F0 8004DFF0 C4000885 */  lh         $t0, (0x1F8000C4 & 0xFFFF)($t0)
    /* 3E7F4 8004DFF4 23282301 */  subu       $a1, $t1, $v1
    /* 3E7F8 8004DFF8 21C84000 */  addu       $t9, $v0, $zero
    /* 3E7FC 8004DFFC 23204800 */  subu       $a0, $v0, $t0
    /* 3E800 8004E000 2A108500 */  slt        $v0, $a0, $a1
    /* 3E804 8004E004 02004010 */  beqz       $v0, .L8004E010
    /* 3E808 8004E008 21586000 */   addu      $t3, $v1, $zero
    /* 3E80C 8004E00C 21288000 */  addu       $a1, $a0, $zero
  .L8004E010:
    /* 3E810 8004E010 23304701 */  subu       $a2, $t2, $a3
    /* 3E814 8004E014 2310C901 */  subu       $v0, $t6, $t1
    /* 3E818 8004E018 23180C01 */  subu       $v1, $t0, $t4
    /* 3E81C 8004E01C 21104300 */  addu       $v0, $v0, $v1
    /* 3E820 8004E020 1800C200 */  mult       $a2, $v0
    /* 3E824 8004E024 12180000 */  mflo       $v1
    /* 3E828 8004E028 2310CD01 */  subu       $v0, $t6, $t5
    /* 3E82C 8004E02C 00000000 */  nop
    /* 3E830 8004E030 1A006200 */  div        $zero, $v1, $v0
    /* 3E834 8004E034 02004014 */  bnez       $v0, .L8004E040
    /* 3E838 8004E038 00000000 */   nop
    /* 3E83C 8004E03C 0D000700 */  break      7
  .L8004E040:
    /* 3E840 8004E040 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3E844 8004E044 04004114 */  bne        $v0, $at, .L8004E058
    /* 3E848 8004E048 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3E84C 8004E04C 02006114 */  bne        $v1, $at, .L8004E058
    /* 3E850 8004E050 00000000 */   nop
    /* 3E854 8004E054 0D000600 */  break      6
  .L8004E058:
    /* 3E858 8004E058 12200000 */  mflo       $a0
    /* 3E85C 8004E05C 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3E860 8004E060 C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3E864 8004E064 00000000 */  nop
    /* 3E868 8004E068 23384301 */  subu       $a3, $t2, $v1
    /* 3E86C 8004E06C 18004700 */  mult       $v0, $a3
    /* 3E870 8004E070 12100000 */  mflo       $v0
    /* 3E874 8004E074 00000000 */  nop
    /* 3E878 8004E078 00000000 */  nop
    /* 3E87C 8004E07C 1A004600 */  div        $zero, $v0, $a2
    /* 3E880 8004E080 0200C014 */  bnez       $a2, .L8004E08C
    /* 3E884 8004E084 00000000 */   nop
    /* 3E888 8004E088 0D000700 */  break      7
  .L8004E08C:
    /* 3E88C 8004E08C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3E890 8004E090 0400C114 */  bne        $a2, $at, .L8004E0A4
    /* 3E894 8004E094 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3E898 8004E098 02004114 */  bne        $v0, $at, .L8004E0A4
    /* 3E89C 8004E09C 00000000 */   nop
    /* 3E8A0 8004E0A0 0D000600 */  break      6
  .L8004E0A4:
    /* 3E8A4 8004E0A4 12180000 */  mflo       $v1
    /* 3E8A8 8004E0A8 00000000 */  nop
    /* 3E8AC 8004E0AC 03006018 */  blez       $v1, .L8004E0BC
    /* 3E8B0 8004E0B0 23404401 */   subu      $t0, $t2, $a0
    /* 3E8B4 8004E0B4 21106301 */  addu       $v0, $t3, $v1
  .L8004E0B8:
    /* 3E8B8 8004E0B8 000022A6 */  sh         $v0, 0x0($s1)
  .L8004E0BC:
    /* 3E8BC 8004E0BC 23100C03 */  subu       $v0, $t8, $t4
    /* 3E8C0 8004E0C0 18004700 */  mult       $v0, $a3
    /* 3E8C4 8004E0C4 12100000 */  mflo       $v0
    /* 3E8C8 8004E0C8 00000000 */  nop
    /* 3E8CC 8004E0CC 00000000 */  nop
    /* 3E8D0 8004E0D0 1A004600 */  div        $zero, $v0, $a2
    /* 3E8D4 8004E0D4 0200C014 */  bnez       $a2, .L8004E0E0
    /* 3E8D8 8004E0D8 00000000 */   nop
    /* 3E8DC 8004E0DC 0D000700 */  break      7
  .L8004E0E0:
    /* 3E8E0 8004E0E0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3E8E4 8004E0E4 0400C114 */  bne        $a2, $at, .L8004E0F8
    /* 3E8E8 8004E0E8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3E8EC 8004E0EC 02004114 */  bne        $v0, $at, .L8004E0F8
    /* 3E8F0 8004E0F0 00000000 */   nop
    /* 3E8F4 8004E0F4 0D000600 */  break      6
  .L8004E0F8:
    /* 3E8F8 8004E0F8 12180000 */  mflo       $v1
    /* 3E8FC 8004E0FC 00000000 */  nop
    /* 3E900 8004E100 03006018 */  blez       $v1, .L8004E110
    /* 3E904 8004E104 23102303 */   subu      $v0, $t9, $v1
  .L8004E108:
    /* 3E908 8004E108 801F013C */  lui        $at, (0x1F8000FC >> 16)
    /* 3E90C 8004E10C FC0022A4 */  sh         $v0, (0x1F8000FC & 0xFFFF)($at)
  .L8004E110:
    /* 3E910 8004E110 6E380108 */  j          .L8004E1B8
    /* 3E914 8004E114 30000924 */   addiu     $t1, $zero, 0x30
  .L8004E118:
    /* 3E918 8004E118 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3E91C 8004E11C C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3E920 8004E120 00000000 */  nop
    /* 3E924 8004E124 2A10E301 */  slt        $v0, $t7, $v1
    /* 3E928 8004E128 6D004010 */  beqz       $v0, .L8004E2E0
    /* 3E92C 8004E12C 2A107000 */   slt       $v0, $v1, $s0
    /* 3E930 8004E130 6B004010 */  beqz       $v0, .L8004E2E0
    /* 3E934 8004E134 20000324 */   addiu     $v1, $zero, 0x20
    /* 3E938 8004E138 801F023C */  lui        $v0, (0x1F800112 >> 16)
    /* 3E93C 8004E13C 12014294 */  lhu        $v0, (0x1F800112 & 0xFFFF)($v0)
    /* 3E940 8004E140 801F043C */  lui        $a0, (0x1F800116 >> 16)
    /* 3E944 8004E144 16018494 */  lhu        $a0, (0x1F800116 & 0xFFFF)($a0)
    /* 3E948 8004E148 801F013C */  lui        $at, (0x1F8000C2 >> 16)
    /* 3E94C 8004E14C C2002FA4 */  sh         $t7, (0x1F8000C2 & 0xFFFF)($at)
    /* 3E950 8004E150 801F013C */  lui        $at, (0x1F800108 >> 16)
    /* 3E954 8004E154 080120A4 */  sh         $zero, (0x1F800108 & 0xFFFF)($at)
    /* 3E958 8004E158 801F013C */  lui        $at, (0x1F8000FF >> 16)
    /* 3E95C 8004E15C FF0023A0 */  sb         $v1, (0x1F8000FF & 0xFFFF)($at)
    /* 3E960 8004E160 801F013C */  lui        $at, (0x1F800106 >> 16)
    /* 3E964 8004E164 060122A4 */  sh         $v0, (0x1F800106 & 0xFFFF)($at)
    /* 3E968 8004E168 801F013C */  lui        $at, (0x1F80010A >> 16)
    /* 3E96C 8004E16C 0A0124A4 */  sh         $a0, (0x1F80010A & 0xFFFF)($at)
    /* 3E970 8004E170 B8380108 */  j          .L8004E2E0
    /* 3E974 8004E174 01001324 */   addiu     $s3, $zero, 0x1
  .L8004E178:
    /* 3E978 8004E178 801F043C */  lui        $a0, (0x1F8000C0 >> 16)
  .L8004E17C:
    /* 3E97C 8004E17C C0008434 */  ori        $a0, $a0, (0x1F8000C0 & 0xFFFF)
    /* 3E980 8004E180 02291900 */  srl        $a1, $t9, 4
    /* 3E984 8004E184 C53F010C */  jal        func_8004FF14
    /* 3E988 8004E188 FEFFA524 */   addiu     $a1, $a1, -0x2
    /* 3E98C 8004E18C 55004010 */  beqz       $v0, .L8004E2E4
    /* 3E990 8004E190 21106002 */   addu      $v0, $s3, $zero
    /* 3E994 8004E194 801F023C */  lui        $v0, (0x1F8000D2 >> 16)
    /* 3E998 8004E198 D2004284 */  lh         $v0, (0x1F8000D2 & 0xFFFF)($v0)
    /* 3E99C 8004E19C 00000000 */  nop
    /* 3E9A0 8004E1A0 49004004 */  bltz       $v0, .L8004E2C8
    /* 3E9A4 8004E1A4 00010224 */   addiu     $v0, $zero, 0x100
    /* 3E9A8 8004E1A8 801F013C */  lui        $at, (0x1F8000F6 >> 16)
    /* 3E9AC 8004E1AC F60022A4 */  sh         $v0, (0x1F8000F6 & 0xFFFF)($at)
    /* 3E9B0 8004E1B0 B2380108 */  j          .L8004E2C8
    /* 3E9B4 8004E1B4 00000000 */   nop
  .L8004E1B8:
    /* 3E9B8 8004E1B8 801F023C */  lui        $v0, (0x1F80012E >> 16)
    /* 3E9BC 8004E1BC 2E014284 */  lh         $v0, (0x1F80012E & 0xFFFF)($v0)
    /* 3E9C0 8004E1C0 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3E9C4 8004E1C4 C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3E9C8 8004E1C8 23400201 */  subu       $t0, $t0, $v0
    /* 3E9CC 8004E1CC 2A100301 */  slt        $v0, $t0, $v1
    /* 3E9D0 8004E1D0 43004010 */  beqz       $v0, .L8004E2E0
    /* 3E9D4 8004E1D4 2A107000 */   slt       $v0, $v1, $s0
    /* 3E9D8 8004E1D8 42004010 */  beqz       $v0, .L8004E2E4
    /* 3E9DC 8004E1DC 21106002 */   addu      $v0, $s3, $zero
    /* 3E9E0 8004E1E0 801F023C */  lui        $v0, (0x1F8000F6 >> 16)
    /* 3E9E4 8004E1E4 F6004280 */  lb         $v0, (0x1F8000F6 & 0xFFFF)($v0)
    /* 3E9E8 8004E1E8 00000000 */  nop
    /* 3E9EC 8004E1EC 0E004014 */  bnez       $v0, .L8004E228
    /* 3E9F0 8004E1F0 01001324 */   addiu     $s3, $zero, 0x1
    /* 3E9F4 8004E1F4 23106800 */  subu       $v0, $v1, $t0
    /* 3E9F8 8004E1F8 20004228 */  slti       $v0, $v0, 0x20
    /* 3E9FC 8004E1FC 0A004010 */  beqz       $v0, .L8004E228
    /* 3EA00 8004E200 23106F00 */   subu      $v0, $v1, $t7
    /* 3EA04 8004E204 2A104500 */  slt        $v0, $v0, $a1
    /* 3EA08 8004E208 08004010 */  beqz       $v0, .L8004E22C
    /* 3EA0C 8004E20C 801F043C */   lui       $a0, (0x1F8000C0 >> 16)
    /* 3EA10 8004E210 801F013C */  lui        $at, (0x1F8000C2 >> 16)
    /* 3EA14 8004E214 C20028A4 */  sh         $t0, (0x1F8000C2 & 0xFFFF)($at)
    /* 3EA18 8004E218 801F013C */  lui        $at, (0x1F800108 >> 16)
    /* 3EA1C 8004E21C 080120A4 */  sh         $zero, (0x1F800108 & 0xFFFF)($at)
    /* 3EA20 8004E220 B9380108 */  j          .L8004E2E4
    /* 3EA24 8004E224 21106002 */   addu      $v0, $s3, $zero
  .L8004E228:
    /* 3EA28 8004E228 801F043C */  lui        $a0, (0x1F8000C0 >> 16)
  .L8004E22C:
    /* 3EA2C 8004E22C C0008434 */  ori        $a0, $a0, (0x1F8000C0 & 0xFFFF)
    /* 3EA30 8004E230 801F053C */  lui        $a1, (0x1F8000C8 >> 16)
    /* 3EA34 8004E234 C800A534 */  ori        $a1, $a1, (0x1F8000C8 & 0xFFFF)
    /* 3EA38 8004E238 801F013C */  lui        $at, (0x1F8000F2 >> 16)
    /* 3EA3C 8004E23C F20028A4 */  sh         $t0, (0x1F8000F2 & 0xFFFF)($at)
    /* 3EA40 8004E240 801F013C */  lui        $at, (0x1F8000FA >> 16)
    /* 3EA44 8004E244 FA0030A4 */  sh         $s0, (0x1F8000FA & 0xFFFF)($at)
    /* 3EA48 8004E248 133D010C */  jal        func_8004F44C
    /* 3EA4C 8004E24C 43002635 */   ori       $a2, $t1, 0x43
    /* 3EA50 8004E250 07004010 */  beqz       $v0, .L8004E270
    /* 3EA54 8004E254 00000000 */   nop
    /* 3EA58 8004E258 801F013C */  lui        $at, (0x1F800106 >> 16)
    /* 3EA5C 8004E25C 060120A4 */  sh         $zero, (0x1F800106 & 0xFFFF)($at)
    /* 3EA60 8004E260 801F013C */  lui        $at, (0x1F800108 >> 16)
    /* 3EA64 8004E264 080120A4 */  sh         $zero, (0x1F800108 & 0xFFFF)($at)
    /* 3EA68 8004E268 801F013C */  lui        $at, (0x1F80010A >> 16)
    /* 3EA6C 8004E26C 0A0120A4 */  sh         $zero, (0x1F80010A & 0xFFFF)($at)
  .L8004E270:
    /* 3EA70 8004E270 801F023C */  lui        $v0, (0x1F8000D2 >> 16)
    /* 3EA74 8004E274 D2004284 */  lh         $v0, (0x1F8000D2 & 0xFFFF)($v0)
    /* 3EA78 8004E278 00000000 */  nop
    /* 3EA7C 8004E27C 18004004 */  bltz       $v0, .L8004E2E0
    /* 3EA80 8004E280 00010224 */   addiu     $v0, $zero, 0x100
    /* 3EA84 8004E284 801F013C */  lui        $at, (0x1F8000F6 >> 16)
    /* 3EA88 8004E288 F60022A4 */  sh         $v0, (0x1F8000F6 & 0xFFFF)($at)
    /* 3EA8C 8004E28C B9380108 */  j          .L8004E2E4
    /* 3EA90 8004E290 21106002 */   addu      $v0, $s3, $zero
  .L8004E294:
    /* 3EA94 8004E294 801F023C */  lui        $v0, (0x1F80012C >> 16)
    /* 3EA98 8004E298 2C014284 */  lh         $v0, (0x1F80012C & 0xFFFF)($v0)
    /* 3EA9C 8004E29C 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3EAA0 8004E2A0 C2006384 */  lh         $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3EAA4 8004E2A4 23400201 */  subu       $t0, $t0, $v0
    /* 3EAA8 8004E2A8 2A10E301 */  slt        $v0, $t7, $v1
    /* 3EAAC 8004E2AC 0C004010 */  beqz       $v0, .L8004E2E0
    /* 3EAB0 8004E2B0 2A106800 */   slt       $v0, $v1, $t0
    /* 3EAB4 8004E2B4 0A004010 */  beqz       $v0, .L8004E2E0
    /* 3EAB8 8004E2B8 01000225 */   addiu     $v0, $t0, 0x1
    /* 3EABC 8004E2BC 01001324 */  addiu      $s3, $zero, 0x1
    /* 3EAC0 8004E2C0 801F013C */  lui        $at, (0x1F8000C2 >> 16)
    /* 3EAC4 8004E2C4 C20022A4 */  sh         $v0, (0x1F8000C2 & 0xFFFF)($at)
  .L8004E2C8:
    /* 3EAC8 8004E2C8 801F013C */  lui        $at, (0x1F800106 >> 16)
    /* 3EACC 8004E2CC 060120A4 */  sh         $zero, (0x1F800106 & 0xFFFF)($at)
    /* 3EAD0 8004E2D0 801F013C */  lui        $at, (0x1F800108 >> 16)
    /* 3EAD4 8004E2D4 080120A4 */  sh         $zero, (0x1F800108 & 0xFFFF)($at)
  .L8004E2D8:
    /* 3EAD8 8004E2D8 801F013C */  lui        $at, (0x1F80010A >> 16)
    /* 3EADC 8004E2DC 0A0120A4 */  sh         $zero, (0x1F80010A & 0xFFFF)($at)
  glabel .L8004E2E0
    /* 3EAE0 8004E2E0 21106002 */  addu       $v0, $s3, $zero
  .L8004E2E4:
    /* 3EAE4 8004E2E4 C000BF8F */  lw         $ra, 0xC0($sp)
    /* 3EAE8 8004E2E8 BC00B38F */  lw         $s3, 0xBC($sp)
    /* 3EAEC 8004E2EC B800B28F */  lw         $s2, 0xB8($sp)
    /* 3EAF0 8004E2F0 B400B18F */  lw         $s1, 0xB4($sp)
    /* 3EAF4 8004E2F4 B000B08F */  lw         $s0, 0xB0($sp)
    /* 3EAF8 8004E2F8 C800BD27 */  addiu      $sp, $sp, 0xC8
    /* 3EAFC 8004E2FC 0800E003 */  jr         $ra
    /* 3EB00 8004E300 00000000 */   nop
.size func_8004BDC8, . - func_8004BDC8
