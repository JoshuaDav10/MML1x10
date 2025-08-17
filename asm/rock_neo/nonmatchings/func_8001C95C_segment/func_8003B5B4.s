.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003B5B4
    /* 2BDB4 8003B5B4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 2BDB8 8003B5B8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2BDBC 8003B5BC 0C80103C */  lui        $s0, %hi(Game_work + 0x50)
    /* 2BDC0 8003B5C0 601B1026 */  addiu      $s0, $s0, %lo(Game_work + 0x50)
    /* 2BDC4 8003B5C4 3000BFAF */  sw         $ra, 0x30($sp)
    /* 2BDC8 8003B5C8 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 2BDCC 8003B5CC 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2BDD0 8003B5D0 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2BDD4 8003B5D4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2BDD8 8003B5D8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2BDDC 8003B5DC 00000392 */  lbu        $v1, 0x0($s0)
    /* 2BDE0 8003B5E0 00000000 */  nop
    /* 2BDE4 8003B5E4 FBFF6224 */  addiu      $v0, $v1, -0x5
    /* 2BDE8 8003B5E8 0200422C */  sltiu      $v0, $v0, 0x2
    /* 2BDEC 8003B5EC A6004010 */  beqz       $v0, .L8003B888
    /* 2BDF0 8003B5F0 00160300 */   sll       $v0, $v1, 24
    /* 2BDF4 8003B5F4 03160200 */  sra        $v0, $v0, 24
    /* 2BDF8 8003B5F8 05000324 */  addiu      $v1, $zero, 0x5
    /* 2BDFC 8003B5FC 49004314 */  bne        $v0, $v1, .L8003B724
    /* 2BE00 8003B600 00000000 */   nop
    /* 2BE04 8003B604 0C80023C */  lui        $v0, %hi(Game_work + 0x64)
    /* 2BE08 8003B608 741B4290 */  lbu        $v0, %lo(Game_work + 0x64)($v0)
    /* 2BE0C 8003B60C 00000000 */  nop
    /* 2BE10 8003B610 44004010 */  beqz       $v0, .L8003B724
    /* 2BE14 8003B614 E4FF0426 */   addiu     $a0, $s0, -0x1C
    /* 2BE18 8003B618 C8000524 */  addiu      $a1, $zero, 0xC8
    /* 2BE1C 8003B61C 05000724 */  addiu      $a3, $zero, 0x5
    /* 2BE20 8003B620 0980063C */  lui        $a2, %hi(D_80089F64)
    /* 2BE24 8003B624 649FC68C */  lw         $a2, %lo(D_80089F64)($a2)
    /* 2BE28 8003B628 40020224 */  addiu      $v0, $zero, 0x240
    /* 2BE2C 8003B62C 0C80013C */  lui        $at, %hi(Game_work + 0x64)
    /* 2BE30 8003B630 741B20A0 */  sb         $zero, %lo(Game_work + 0x64)($at)
    /* 2BE34 8003B634 2CEE000C */  jal        func_8003B8B0
    /* 2BE38 8003B638 1000A2AF */   sw        $v0, 0x10($sp)
    /* 2BE3C 8003B63C 4E1B033C */  lui        $v1, (0x1B4E81B5 >> 16)
    /* 2BE40 8003B640 0C80023C */  lui        $v0, %hi(Game_work + 0x38)
    /* 2BE44 8003B644 481B428C */  lw         $v0, %lo(Game_work + 0x38)($v0)
    /* 2BE48 8003B648 B5816334 */  ori        $v1, $v1, (0x1B4E81B5 & 0xFFFF)
    /* 2BE4C 8003B64C 19004300 */  multu      $v0, $v1
    /* 2BE50 8003B650 01001124 */  addiu      $s1, $zero, 0x1
    /* 2BE54 8003B654 16001426 */  addiu      $s4, $s0, 0x16
    /* 2BE58 8003B658 0C001324 */  addiu      $s3, $zero, 0xC
    /* 2BE5C 8003B65C 0980153C */  lui        $s5, %hi(D_80089F68)
    /* 2BE60 8003B660 689FB58E */  lw         $s5, %lo(D_80089F68)($s5)
    /* 2BE64 8003B664 10400000 */  mfhi       $t0
    /* 2BE68 8003B668 02910800 */  srl        $s2, $t0, 4
  .L8003B66C:
    /* 2BE6C 8003B66C 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2BE70 8003B670 21086102 */  addu       $at, $s3, $at
    /* 2BE74 8003B674 08C0228C */  lw         $v0, %lo(D_8015C008)($at)
    /* 2BE78 8003B678 00000000 */  nop
    /* 2BE7C 8003B67C 27004010 */  beqz       $v0, .L8003B71C
    /* 2BE80 8003B680 FFFF033C */   lui       $v1, (0xFFFF0000 >> 16)
    /* 2BE84 8003B684 0000428C */  lw         $v0, 0x0($v0)
    /* 2BE88 8003B688 00000000 */  nop
    /* 2BE8C 8003B68C 24104300 */  and        $v0, $v0, $v1
    /* 2BE90 8003B690 1E005514 */  bne        $v0, $s5, .L8003B70C
    /* 2BE94 8003B694 00000000 */   nop
    /* 2BE98 8003B698 21800000 */  addu       $s0, $zero, $zero
    /* 2BE9C 8003B69C D8EC000C */  jal        func_8003B360
    /* 2BEA0 8003B6A0 21202002 */   addu      $a0, $s1, $zero
    /* 2BEA4 8003B6A4 21184000 */  addu       $v1, $v0, $zero
    /* 2BEA8 8003B6A8 01000224 */  addiu      $v0, $zero, 0x1
    /* 2BEAC 8003B6AC 10006210 */  beq        $v1, $v0, .L8003B6F0
    /* 2BEB0 8003B6B0 02006228 */   slti      $v0, $v1, 0x2
    /* 2BEB4 8003B6B4 03004014 */  bnez       $v0, .L8003B6C4
    /* 2BEB8 8003B6B8 04006228 */   slti      $v0, $v1, 0x4
    /* 2BEBC 8003B6BC 0E004014 */  bnez       $v0, .L8003B6F8
    /* 2BEC0 8003B6C0 00000000 */   nop
  .L8003B6C4:
    /* 2BEC4 8003B6C4 0E004012 */  beqz       $s2, .L8003B700
    /* 2BEC8 8003B6C8 05000424 */   addiu     $a0, $zero, 0x5
    /* 2BECC 8003B6CC FFFF5226 */  addiu      $s2, $s2, -0x1
    /* 2BED0 8003B6D0 01001024 */  addiu      $s0, $zero, 0x1
    /* 2BED4 8003B6D4 00008292 */  lbu        $v0, 0x0($s4)
    /* 2BED8 8003B6D8 D2FF838E */  lw         $v1, -0x2E($s4)
    /* 2BEDC 8003B6DC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2BEE0 8003B6E0 6AFF6324 */  addiu      $v1, $v1, -0x96
    /* 2BEE4 8003B6E4 000082A2 */  sb         $v0, 0x0($s4)
    /* 2BEE8 8003B6E8 C0ED0008 */  j          .L8003B700
    /* 2BEEC 8003B6EC D2FF83AE */   sw        $v1, -0x2E($s4)
  .L8003B6F0:
    /* 2BEF0 8003B6F0 BFED0008 */  j          .L8003B6FC
    /* 2BEF4 8003B6F4 02001024 */   addiu     $s0, $zero, 0x2
  .L8003B6F8:
    /* 2BEF8 8003B6F8 03001024 */  addiu      $s0, $zero, 0x3
  .L8003B6FC:
    /* 2BEFC 8003B6FC 05000424 */  addiu      $a0, $zero, 0x5
  .L8003B700:
    /* 2BF00 8003B700 21282002 */  addu       $a1, $s1, $zero
    /* 2BF04 8003B704 50ED000C */  jal        func_8003B540
    /* 2BF08 8003B708 21300002 */   addu      $a2, $s0, $zero
  .L8003B70C:
    /* 2BF0C 8003B70C 01003126 */  addiu      $s1, $s1, 0x1
    /* 2BF10 8003B710 0008222E */  sltiu      $v0, $s1, 0x800
    /* 2BF14 8003B714 D5FF4014 */  bnez       $v0, .L8003B66C
    /* 2BF18 8003B718 0C007326 */   addiu     $s3, $s3, 0xC
  .L8003B71C:
    /* 2BF1C 8003B71C 0C80103C */  lui        $s0, %hi(Game_work + 0x50)
    /* 2BF20 8003B720 601B1026 */  addiu      $s0, $s0, %lo(Game_work + 0x50)
  .L8003B724:
    /* 2BF24 8003B724 00000382 */  lb         $v1, 0x0($s0)
    /* 2BF28 8003B728 06000224 */  addiu      $v0, $zero, 0x6
    /* 2BF2C 8003B72C 56006214 */  bne        $v1, $v0, .L8003B888
    /* 2BF30 8003B730 00000000 */   nop
    /* 2BF34 8003B734 0C80023C */  lui        $v0, %hi(Game_work + 0x65)
    /* 2BF38 8003B738 751B4290 */  lbu        $v0, %lo(Game_work + 0x65)($v0)
    /* 2BF3C 8003B73C 00000000 */  nop
    /* 2BF40 8003B740 51004010 */  beqz       $v0, .L8003B888
    /* 2BF44 8003B744 D8FF0426 */   addiu     $a0, $s0, -0x28
    /* 2BF48 8003B748 F4010524 */  addiu      $a1, $zero, 0x1F4
    /* 2BF4C 8003B74C 0980063C */  lui        $a2, %hi(D_80089F6C)
    /* 2BF50 8003B750 6C9FC68C */  lw         $a2, %lo(D_80089F6C)($a2)
    /* 2BF54 8003B754 0C80013C */  lui        $at, %hi(Game_work + 0x65)
    /* 2BF58 8003B758 751B20A0 */  sb         $zero, %lo(Game_work + 0x65)($at)
    /* 2BF5C 8003B75C 96EE000C */  jal        func_8003BA58
    /* 2BF60 8003B760 06000724 */   addiu     $a3, $zero, 0x6
    /* 2BF64 8003B764 DCFF0426 */  addiu      $a0, $s0, -0x24
    /* 2BF68 8003B768 C8000524 */  addiu      $a1, $zero, 0xC8
    /* 2BF6C 8003B76C 06000724 */  addiu      $a3, $zero, 0x6
    /* 2BF70 8003B770 0980063C */  lui        $a2, %hi(D_80089F70)
    /* 2BF74 8003B774 709FC68C */  lw         $a2, %lo(D_80089F70)($a2)
    /* 2BF78 8003B778 3E020224 */  addiu      $v0, $zero, 0x23E
    /* 2BF7C 8003B77C 2CEE000C */  jal        func_8003B8B0
    /* 2BF80 8003B780 1000A2AF */   sw        $v0, 0x10($sp)
    /* 2BF84 8003B784 E0FF0426 */  addiu      $a0, $s0, -0x20
    /* 2BF88 8003B788 FA000524 */  addiu      $a1, $zero, 0xFA
    /* 2BF8C 8003B78C 06000724 */  addiu      $a3, $zero, 0x6
    /* 2BF90 8003B790 0980063C */  lui        $a2, %hi(D_80089F74)
    /* 2BF94 8003B794 749FC68C */  lw         $a2, %lo(D_80089F74)($a2)
    /* 2BF98 8003B798 3F020224 */  addiu      $v0, $zero, 0x23F
    /* 2BF9C 8003B79C 2CEE000C */  jal        func_8003B8B0
    /* 2BFA0 8003B7A0 1000A2AF */   sw        $v0, 0x10($sp)
    /* 2BFA4 8003B7A4 C116033C */  lui        $v1, (0x16C16C17 >> 16)
    /* 2BFA8 8003B7A8 0C80023C */  lui        $v0, %hi(Game_work + 0x3C)
    /* 2BFAC 8003B7AC 4C1B428C */  lw         $v0, %lo(Game_work + 0x3C)($v0)
    /* 2BFB0 8003B7B0 176C6334 */  ori        $v1, $v1, (0x16C16C17 & 0xFFFF)
    /* 2BFB4 8003B7B4 82100200 */  srl        $v0, $v0, 2
    /* 2BFB8 8003B7B8 19004300 */  multu      $v0, $v1
    /* 2BFBC 8003B7BC 01001124 */  addiu      $s1, $zero, 0x1
    /* 2BFC0 8003B7C0 17001426 */  addiu      $s4, $s0, 0x17
    /* 2BFC4 8003B7C4 0C001324 */  addiu      $s3, $zero, 0xC
    /* 2BFC8 8003B7C8 0980153C */  lui        $s5, %hi(D_80089F78)
    /* 2BFCC 8003B7CC 789FB58E */  lw         $s5, %lo(D_80089F78)($s5)
    /* 2BFD0 8003B7D0 10400000 */  mfhi       $t0
    /* 2BFD4 8003B7D4 82900800 */  srl        $s2, $t0, 2
  .L8003B7D8:
    /* 2BFD8 8003B7D8 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2BFDC 8003B7DC 21086102 */  addu       $at, $s3, $at
    /* 2BFE0 8003B7E0 08C0228C */  lw         $v0, %lo(D_8015C008)($at)
    /* 2BFE4 8003B7E4 00000000 */  nop
    /* 2BFE8 8003B7E8 27004010 */  beqz       $v0, .L8003B888
    /* 2BFEC 8003B7EC FFFF033C */   lui       $v1, (0xFFFF0000 >> 16)
    /* 2BFF0 8003B7F0 0000428C */  lw         $v0, 0x0($v0)
    /* 2BFF4 8003B7F4 00000000 */  nop
    /* 2BFF8 8003B7F8 24104300 */  and        $v0, $v0, $v1
    /* 2BFFC 8003B7FC 1E005514 */  bne        $v0, $s5, .L8003B878
    /* 2C000 8003B800 00000000 */   nop
    /* 2C004 8003B804 21800000 */  addu       $s0, $zero, $zero
    /* 2C008 8003B808 D8EC000C */  jal        func_8003B360
    /* 2C00C 8003B80C 21202002 */   addu      $a0, $s1, $zero
    /* 2C010 8003B810 21184000 */  addu       $v1, $v0, $zero
    /* 2C014 8003B814 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C018 8003B818 10006210 */  beq        $v1, $v0, .L8003B85C
    /* 2C01C 8003B81C 02006228 */   slti      $v0, $v1, 0x2
    /* 2C020 8003B820 03004014 */  bnez       $v0, .L8003B830
    /* 2C024 8003B824 04006228 */   slti      $v0, $v1, 0x4
    /* 2C028 8003B828 0E004014 */  bnez       $v0, .L8003B864
    /* 2C02C 8003B82C 00000000 */   nop
  .L8003B830:
    /* 2C030 8003B830 0E004012 */  beqz       $s2, .L8003B86C
    /* 2C034 8003B834 06000424 */   addiu     $a0, $zero, 0x6
    /* 2C038 8003B838 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* 2C03C 8003B83C 01001024 */  addiu      $s0, $zero, 0x1
    /* 2C040 8003B840 00008292 */  lbu        $v0, 0x0($s4)
    /* 2C044 8003B844 D5FF838E */  lw         $v1, -0x2B($s4)
    /* 2C048 8003B848 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2C04C 8003B84C 4CFF6324 */  addiu      $v1, $v1, -0xB4
    /* 2C050 8003B850 000082A2 */  sb         $v0, 0x0($s4)
    /* 2C054 8003B854 1BEE0008 */  j          .L8003B86C
    /* 2C058 8003B858 D5FF83AE */   sw        $v1, -0x2B($s4)
  .L8003B85C:
    /* 2C05C 8003B85C 1AEE0008 */  j          .L8003B868
    /* 2C060 8003B860 02001024 */   addiu     $s0, $zero, 0x2
  .L8003B864:
    /* 2C064 8003B864 03001024 */  addiu      $s0, $zero, 0x3
  .L8003B868:
    /* 2C068 8003B868 06000424 */  addiu      $a0, $zero, 0x6
  .L8003B86C:
    /* 2C06C 8003B86C 21282002 */  addu       $a1, $s1, $zero
    /* 2C070 8003B870 50ED000C */  jal        func_8003B540
    /* 2C074 8003B874 21300002 */   addu      $a2, $s0, $zero
  .L8003B878:
    /* 2C078 8003B878 01003126 */  addiu      $s1, $s1, 0x1
    /* 2C07C 8003B87C 0008222E */  sltiu      $v0, $s1, 0x800
    /* 2C080 8003B880 D5FF4014 */  bnez       $v0, .L8003B7D8
    /* 2C084 8003B884 0C007326 */   addiu     $s3, $s3, 0xC
  .L8003B888:
    /* 2C088 8003B888 3000BF8F */  lw         $ra, 0x30($sp)
    /* 2C08C 8003B88C 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 2C090 8003B890 2800B48F */  lw         $s4, 0x28($sp)
    /* 2C094 8003B894 2400B38F */  lw         $s3, 0x24($sp)
    /* 2C098 8003B898 2000B28F */  lw         $s2, 0x20($sp)
    /* 2C09C 8003B89C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2C0A0 8003B8A0 1800B08F */  lw         $s0, 0x18($sp)
    /* 2C0A4 8003B8A4 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 2C0A8 8003B8A8 0800E003 */  jr         $ra
    /* 2C0AC 8003B8AC 00000000 */   nop
.size func_8003B5B4, . - func_8003B5B4
