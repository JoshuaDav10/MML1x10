.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004B6AC
    /* 3BEAC 8004B6AC 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 3BEB0 8004B6B0 6000B6AF */  sw         $s6, 0x60($sp)
    /* 3BEB4 8004B6B4 21B00000 */  addu       $s6, $zero, $zero
    /* 3BEB8 8004B6B8 801F033C */  lui        $v1, (0x1F8000C8 >> 16)
    /* 3BEBC 8004B6BC C8006334 */  ori        $v1, $v1, (0x1F8000C8 & 0xFFFF)
    /* 3BEC0 8004B6C0 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* 3BEC4 8004B6C4 6800BEAF */  sw         $fp, 0x68($sp)
    /* 3BEC8 8004B6C8 6400B7AF */  sw         $s7, 0x64($sp)
    /* 3BECC 8004B6CC 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 3BED0 8004B6D0 5800B4AF */  sw         $s4, 0x58($sp)
    /* 3BED4 8004B6D4 5400B3AF */  sw         $s3, 0x54($sp)
    /* 3BED8 8004B6D8 5000B2AF */  sw         $s2, 0x50($sp)
    /* 3BEDC 8004B6DC 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 3BEE0 8004B6E0 4800B0AF */  sw         $s0, 0x48($sp)
    /* 3BEE4 8004B6E4 2800A4AF */  sw         $a0, 0x28($sp)
    /* 3BEE8 8004B6E8 4000A0AF */  sw         $zero, 0x40($sp)
    /* 3BEEC 8004B6EC 801F013C */  lui        $at, (0x1F8000FF >> 16)
    /* 3BEF0 8004B6F0 FF0020A0 */  sb         $zero, (0x1F8000FF & 0xFFFF)($at)
    /* 3BEF4 8004B6F4 0300A288 */  lwl        $v0, 0x3($a1)
    /* 3BEF8 8004B6F8 0000A298 */  lwr        $v0, 0x0($a1)
    /* 3BEFC 8004B6FC 0700A488 */  lwl        $a0, 0x7($a1)
    /* 3BF00 8004B700 0400A498 */  lwr        $a0, 0x4($a1)
    /* 3BF04 8004B704 030062A8 */  swl        $v0, 0x3($v1)
    /* 3BF08 8004B708 000062B8 */  swr        $v0, 0x0($v1)
    /* 3BF0C 8004B70C 070064A8 */  swl        $a0, 0x7($v1)
    /* 3BF10 8004B710 040064B8 */  swr        $a0, 0x4($v1)
    /* 3BF14 8004B714 801F023C */  lui        $v0, (0x1F8000C0 >> 16)
    /* 3BF18 8004B718 2800B88F */  lw         $t8, 0x28($sp)
    /* 3BF1C 8004B71C C0004234 */  ori        $v0, $v0, (0x1F8000C0 & 0xFFFF)
    /* 3BF20 8004B720 0300048B */  lwl        $a0, 0x3($t8)
    /* 3BF24 8004B724 0000049B */  lwr        $a0, 0x0($t8)
    /* 3BF28 8004B728 0700058B */  lwl        $a1, 0x7($t8)
    /* 3BF2C 8004B72C 0400059B */  lwr        $a1, 0x4($t8)
    /* 3BF30 8004B730 030044A8 */  swl        $a0, 0x3($v0)
    /* 3BF34 8004B734 000044B8 */  swr        $a0, 0x0($v0)
    /* 3BF38 8004B738 070045A8 */  swl        $a1, 0x7($v0)
    /* 3BF3C 8004B73C 040045B8 */  swr        $a1, 0x4($v0)
    /* 3BF40 8004B740 801F043C */  lui        $a0, (0x1F8000C0 >> 16)
    /* 3BF44 8004B744 00004294 */  lhu        $v0, 0x0($v0)
    /* 3BF48 8004B748 00006394 */  lhu        $v1, 0x0($v1)
    /* 3BF4C 8004B74C C0008434 */  ori        $a0, $a0, (0x1F8000C0 & 0xFFFF)
    /* 3BF50 8004B750 801F013C */  lui        $at, (0x1F8000F6 >> 16)
    /* 3BF54 8004B754 F60026A0 */  sb         $a2, (0x1F8000F6 & 0xFFFF)($at)
    /* 3BF58 8004B758 801F013C */  lui        $at, (0x1F800100 >> 16)
    /* 3BF5C 8004B75C 000120A4 */  sh         $zero, (0x1F800100 & 0xFFFF)($at)
    /* 3BF60 8004B760 801F013C */  lui        $at, (0x1F800102 >> 16)
    /* 3BF64 8004B764 020120A4 */  sh         $zero, (0x1F800102 & 0xFFFF)($at)
    /* 3BF68 8004B768 801F013C */  lui        $at, (0x1F800104 >> 16)
    /* 3BF6C 8004B76C 040120A4 */  sh         $zero, (0x1F800104 & 0xFFFF)($at)
    /* 3BF70 8004B770 801F013C */  lui        $at, (0x1F800106 >> 16)
    /* 3BF74 8004B774 060120A4 */  sh         $zero, (0x1F800106 & 0xFFFF)($at)
    /* 3BF78 8004B778 801F013C */  lui        $at, (0x1F800108 >> 16)
    /* 3BF7C 8004B77C 080120A4 */  sh         $zero, (0x1F800108 & 0xFFFF)($at)
    /* 3BF80 8004B780 801F013C */  lui        $at, (0x1F80010A >> 16)
    /* 3BF84 8004B784 0A0120A4 */  sh         $zero, (0x1F80010A & 0xFFFF)($at)
    /* 3BF88 8004B788 801F013C */  lui        $at, (0x1F80010C >> 16)
    /* 3BF8C 8004B78C 0C0120A4 */  sh         $zero, (0x1F80010C & 0xFFFF)($at)
    /* 3BF90 8004B790 801F013C */  lui        $at, (0x1F80010E >> 16)
    /* 3BF94 8004B794 0E0120A4 */  sh         $zero, (0x1F80010E & 0xFFFF)($at)
    /* 3BF98 8004B798 801F013C */  lui        $at, (0x1F800110 >> 16)
    /* 3BF9C 8004B79C 100120A4 */  sh         $zero, (0x1F800110 & 0xFFFF)($at)
    /* 3BFA0 8004B7A0 801F013C */  lui        $at, (0x1F800112 >> 16)
    /* 3BFA4 8004B7A4 120120A4 */  sh         $zero, (0x1F800112 & 0xFFFF)($at)
    /* 3BFA8 8004B7A8 801F013C */  lui        $at, (0x1F800114 >> 16)
    /* 3BFAC 8004B7AC 140120A4 */  sh         $zero, (0x1F800114 & 0xFFFF)($at)
    /* 3BFB0 8004B7B0 801F013C */  lui        $at, (0x1F800116 >> 16)
    /* 3BFB4 8004B7B4 160120A4 */  sh         $zero, (0x1F800116 & 0xFFFF)($at)
    /* 3BFB8 8004B7B8 23104300 */  subu       $v0, $v0, $v1
    /* 3BFBC 8004B7BC 801F013C */  lui        $at, (0x1F8000D8 >> 16)
    /* 3BFC0 8004B7C0 D80022A4 */  sh         $v0, (0x1F8000D8 & 0xFFFF)($at)
    /* 3BFC4 8004B7C4 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3BFC8 8004B7C8 C2004294 */  lhu        $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3BFCC 8004B7CC 801F063C */  lui        $a2, (0x1F8000CA >> 16)
    /* 3BFD0 8004B7D0 CA00C694 */  lhu        $a2, (0x1F8000CA & 0xFFFF)($a2)
    /* 3BFD4 8004B7D4 801F033C */  lui        $v1, (0x1F8000C4 >> 16)
    /* 3BFD8 8004B7D8 C4006394 */  lhu        $v1, (0x1F8000C4 & 0xFFFF)($v1)
    /* 3BFDC 8004B7DC 801F083C */  lui        $t0, (0x1F8000CC >> 16)
    /* 3BFE0 8004B7E0 CC000895 */  lhu        $t0, (0x1F8000CC & 0xFFFF)($t0)
    /* 3BFE4 8004B7E4 3000A7AF */  sw         $a3, 0x30($sp)
    /* 3BFE8 8004B7E8 23104600 */  subu       $v0, $v0, $a2
    /* 3BFEC 8004B7EC 23186800 */  subu       $v1, $v1, $t0
    /* 3BFF0 8004B7F0 801F013C */  lui        $at, (0x1F8000DA >> 16)
    /* 3BFF4 8004B7F4 DA0022A4 */  sh         $v0, (0x1F8000DA & 0xFFFF)($at)
    /* 3BFF8 8004B7F8 801F013C */  lui        $at, (0x1F8000DC >> 16)
    /* 3BFFC 8004B7FC DC0023A4 */  sh         $v1, (0x1F8000DC & 0xFFFF)($at)
    /* 3C000 8004B800 782C010C */  jal        func_8004B1E0
    /* 3C004 8004B804 21280000 */   addu      $a1, $zero, $zero
    /* 3C008 8004B808 3800A2AF */  sw         $v0, 0x38($sp)
  .L8004B80C:
    /* 3C00C 8004B80C 3800B88F */  lw         $t8, 0x38($sp)
    /* 3C010 8004B810 00000000 */  nop
    /* 3C014 8004B814 C1000013 */  beqz       $t8, .L8004BB1C
    /* 3C018 8004B818 FFFF1727 */   addiu     $s7, $t8, -0x1
    /* 3C01C 8004B81C 3000B88F */  lw         $t8, 0x30($sp)
    /* 3C020 8004B820 00000000 */  nop
    /* 3C024 8004B824 00801E3B */  xori       $fp, $t8, 0x8000
  .L8004B828:
    /* 3C028 8004B828 801F023C */  lui        $v0, (0x1F8000C0 >> 16)
    /* 3C02C 8004B82C C0004294 */  lhu        $v0, (0x1F8000C0 & 0xFFFF)($v0)
    /* 3C030 8004B830 801F033C */  lui        $v1, (0x1F8000C8 >> 16)
    /* 3C034 8004B834 C8006394 */  lhu        $v1, (0x1F8000C8 & 0xFFFF)($v1)
    /* 3C038 8004B838 801F043C */  lui        $a0, (0x1F8000CA >> 16)
    /* 3C03C 8004B83C CA008494 */  lhu        $a0, (0x1F8000CA & 0xFFFF)($a0)
    /* 3C040 8004B840 801F053C */  lui        $a1, (0x1F8000CC >> 16)
    /* 3C044 8004B844 CC00A594 */  lhu        $a1, (0x1F8000CC & 0xFFFF)($a1)
    /* 3C048 8004B848 23104300 */  subu       $v0, $v0, $v1
    /* 3C04C 8004B84C 801F013C */  lui        $at, (0x1F8000D0 >> 16)
    /* 3C050 8004B850 D00022A4 */  sh         $v0, (0x1F8000D0 & 0xFFFF)($at)
    /* 3C054 8004B854 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3C058 8004B858 C2004294 */  lhu        $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3C05C 8004B85C 801F033C */  lui        $v1, (0x1F8000C4 >> 16)
    /* 3C060 8004B860 C4006394 */  lhu        $v1, (0x1F8000C4 & 0xFFFF)($v1)
    /* 3C064 8004B864 23104400 */  subu       $v0, $v0, $a0
    /* 3C068 8004B868 23186500 */  subu       $v1, $v1, $a1
    /* 3C06C 8004B86C 801F013C */  lui        $at, (0x1F8000D2 >> 16)
    /* 3C070 8004B870 D20022A4 */  sh         $v0, (0x1F8000D2 & 0xFFFF)($at)
    /* 3C074 8004B874 40101700 */  sll        $v0, $s7, 1
    /* 3C078 8004B878 801F013C */  lui        $at, (0x1F8000D4 >> 16)
    /* 3C07C 8004B87C D40023A4 */  sh         $v1, (0x1F8000D4 & 0xFFFF)($at)
    /* 3C080 8004B880 801F013C */  lui        $at, (0x1F800118 >> 16)
    /* 3C084 8004B884 21084100 */  addu       $at, $v0, $at
    /* 3C088 8004B888 18013184 */  lh         $s1, (0x1F800118 & 0xFFFF)($at)
    /* 3C08C 8004B88C 3B23010C */  jal        func_80048CEC
    /* 3C090 8004B890 21202002 */   addu      $a0, $s1, $zero
    /* 3C094 8004B894 21804000 */  addu       $s0, $v0, $zero
    /* 3C098 8004B898 3A00001E */  bgtz       $s0, .L8004B984
    /* 3C09C 8004B89C 40101000 */   sll       $v0, $s0, 1
    /* 3C0A0 8004B8A0 21B00000 */  addu       $s6, $zero, $zero
    /* 3C0A4 8004B8A4 801F043C */  lui        $a0, (0x1F8000C0 >> 16)
    /* 3C0A8 8004B8A8 FB22010C */  jal        func_80048BEC
    /* 3C0AC 8004B8AC C0008434 */   ori       $a0, $a0, (0x1F8000C0 & 0xFFFF)
    /* 3C0B0 8004B8B0 98002216 */  bne        $s1, $v0, .L8004BB14
    /* 3C0B4 8004B8B4 2110E002 */   addu      $v0, $s7, $zero
    /* 3C0B8 8004B8B8 001F0232 */  andi       $v0, $s0, 0x1F00
    /* 3C0BC 8004B8BC 43100200 */  sra        $v0, $v0, 1
    /* 3C0C0 8004B8C0 23200200 */  negu       $a0, $v0
    /* 3C0C4 8004B8C4 FFFF8324 */  addiu      $v1, $a0, -0x1
    /* 3C0C8 8004B8C8 801F023C */  lui        $v0, (0x1F80012E >> 16)
    /* 3C0CC 8004B8CC 2E014284 */  lh         $v0, (0x1F80012E & 0xFFFF)($v0)
    /* 3C0D0 8004B8D0 801F053C */  lui        $a1, (0x1F8000C2 >> 16)
    /* 3C0D4 8004B8D4 C200A584 */  lh         $a1, (0x1F8000C2 & 0xFFFF)($a1)
    /* 3C0D8 8004B8D8 23886200 */  subu       $s1, $v1, $v0
    /* 3C0DC 8004B8DC 2A102502 */  slt        $v0, $s1, $a1
    /* 3C0E0 8004B8E0 11004010 */  beqz       $v0, .L8004B928
    /* 3C0E4 8004B8E4 00600232 */   andi      $v0, $s0, 0x6000
    /* 3C0E8 8004B8E8 801F023C */  lui        $v0, (0x1F8000D2 >> 16)
    /* 3C0EC 8004B8EC D2004284 */  lh         $v0, (0x1F8000D2 & 0xFFFF)($v0)
    /* 3C0F0 8004B8F0 801F013C */  lui        $at, (0x1F800106 >> 16)
    /* 3C0F4 8004B8F4 060120A4 */  sh         $zero, (0x1F800106 & 0xFFFF)($at)
    /* 3C0F8 8004B8F8 801F013C */  lui        $at, (0x1F800108 >> 16)
    /* 3C0FC 8004B8FC 080120A4 */  sh         $zero, (0x1F800108 & 0xFFFF)($at)
    /* 3C100 8004B900 801F013C */  lui        $at, (0x1F80010A >> 16)
    /* 3C104 8004B904 0A0120A4 */  sh         $zero, (0x1F80010A & 0xFFFF)($at)
    /* 3C108 8004B908 801F013C */  lui        $at, (0x1F8000C2 >> 16)
    /* 3C10C 8004B90C C20031A4 */  sh         $s1, (0x1F8000C2 & 0xFFFF)($at)
    /* 3C110 8004B910 82004018 */  blez       $v0, .L8004BB1C
    /* 3C114 8004B914 01001624 */   addiu     $s6, $zero, 0x1
    /* 3C118 8004B918 801F013C */  lui        $at, (0x1F8000F6 >> 16)
    /* 3C11C 8004B91C F60020A0 */  sb         $zero, (0x1F8000F6 & 0xFFFF)($at)
    /* 3C120 8004B920 C72E0108 */  j          .L8004BB1C
    /* 3C124 8004B924 00000000 */   nop
  .L8004B928:
    /* 3C128 8004B928 79004010 */  beqz       $v0, .L8004BB10
    /* 3C12C 8004B92C 431B0200 */   sra       $v1, $v0, 13
    /* 3C130 8004B930 40100300 */  sll        $v0, $v1, 1
    /* 3C134 8004B934 21104300 */  addu       $v0, $v0, $v1
    /* 3C138 8004B938 C0110200 */  sll        $v0, $v0, 7
    /* 3C13C 8004B93C 23108200 */  subu       $v0, $a0, $v0
    /* 3C140 8004B940 801F033C */  lui        $v1, (0x1F80012C >> 16)
    /* 3C144 8004B944 2C016384 */  lh         $v1, (0x1F80012C & 0xFFFF)($v1)
    /* 3C148 8004B948 01004224 */  addiu      $v0, $v0, 0x1
    /* 3C14C 8004B94C 23884300 */  subu       $s1, $v0, $v1
    /* 3C150 8004B950 2A10B100 */  slt        $v0, $a1, $s1
    /* 3C154 8004B954 6F004010 */  beqz       $v0, .L8004BB14
    /* 3C158 8004B958 2110E002 */   addu      $v0, $s7, $zero
    /* 3C15C 8004B95C 801F013C */  lui        $at, (0x1F800106 >> 16)
    /* 3C160 8004B960 060120A4 */  sh         $zero, (0x1F800106 & 0xFFFF)($at)
    /* 3C164 8004B964 801F013C */  lui        $at, (0x1F800108 >> 16)
    /* 3C168 8004B968 080120A4 */  sh         $zero, (0x1F800108 & 0xFFFF)($at)
    /* 3C16C 8004B96C 801F013C */  lui        $at, (0x1F80010A >> 16)
    /* 3C170 8004B970 0A0120A4 */  sh         $zero, (0x1F80010A & 0xFFFF)($at)
    /* 3C174 8004B974 801F013C */  lui        $at, (0x1F8000C2 >> 16)
    /* 3C178 8004B978 C20031A4 */  sh         $s1, (0x1F8000C2 & 0xFFFF)($at)
    /* 3C17C 8004B97C C72E0108 */  j          .L8004BB1C
    /* 3C180 8004B980 01001624 */   addiu     $s6, $zero, 0x1
  .L8004B984:
    /* 3C184 8004B984 FF00043C */  lui        $a0, (0xFFFFFF >> 16)
    /* 3C188 8004B988 FFFF8434 */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
    /* 3C18C 8004B98C 21105000 */  addu       $v0, $v0, $s0
    /* 3C190 8004B990 801F033C */  lui        $v1, (0x1F80004C >> 16)
    /* 3C194 8004B994 4C00638C */  lw         $v1, (0x1F80004C & 0xFFFF)($v1)
    /* 3C198 8004B998 80100200 */  sll        $v0, $v0, 2
    /* 3C19C 8004B99C 21286200 */  addu       $a1, $v1, $v0
    /* 3C1A0 8004B9A0 0800A38C */  lw         $v1, 0x8($a1)
    /* 3C1A4 8004B9A4 0600A294 */  lhu        $v0, 0x6($a1)
    /* 3C1A8 8004B9A8 00000000 */  nop
    /* 3C1AC 8004B9AC FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 3C1B0 8004B9B0 04004010 */  beqz       $v0, .L8004B9C4
    /* 3C1B4 8004B9B4 24186400 */   and       $v1, $v1, $a0
    /* 3C1B8 8004B9B8 0400748C */  lw         $s4, 0x4($v1)
    /* 3C1BC 8004B9BC 722E0108 */  j          .L8004B9C8
    /* 3C1C0 8004B9C0 00000000 */   nop
  .L8004B9C4:
    /* 3C1C4 8004B9C4 0800748C */  lw         $s4, 0x8($v1)
  .L8004B9C8:
    /* 3C1C8 8004B9C8 0000A294 */  lhu        $v0, 0x0($a1)
    /* 3C1CC 8004B9CC 00000000 */  nop
    /* 3C1D0 8004B9D0 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 3C1D4 8004B9D4 0200A294 */  lhu        $v0, 0x2($a1)
    /* 3C1D8 8004B9D8 00000000 */  nop
    /* 3C1DC 8004B9DC 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 3C1E0 8004B9E0 0400A294 */  lhu        $v0, 0x4($a1)
    /* 3C1E4 8004B9E4 00000000 */  nop
    /* 3C1E8 8004B9E8 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 3C1EC 8004B9EC 0800828E */  lw         $v0, 0x8($s4)
    /* 3C1F0 8004B9F0 00000000 */  nop
    /* 3C1F4 8004B9F4 47004010 */  beqz       $v0, .L8004BB14
    /* 3C1F8 8004B9F8 2110E002 */   addu      $v0, $s7, $zero
    /* 3C1FC 8004B9FC 08009126 */  addiu      $s1, $s4, 0x8
  .L8004BA00:
    /* 3C200 8004BA00 1000A397 */  lhu        $v1, 0x10($sp)
    /* 3C204 8004BA04 00008296 */  lhu        $v0, 0x0($s4)
    /* 3C208 8004BA08 00000000 */  nop
    /* 3C20C 8004BA0C 21106200 */  addu       $v0, $v1, $v0
    /* 3C210 8004BA10 1800A2A7 */  sh         $v0, 0x18($sp)
    /* 3C214 8004BA14 FAFF2296 */  lhu        $v0, -0x6($s1)
    /* 3C218 8004BA18 00000000 */  nop
    /* 3C21C 8004BA1C 21186200 */  addu       $v1, $v1, $v0
    /* 3C220 8004BA20 1A00A3A7 */  sh         $v1, 0x1A($sp)
    /* 3C224 8004BA24 1400A397 */  lhu        $v1, 0x14($sp)
    /* 3C228 8004BA28 FCFF2296 */  lhu        $v0, -0x4($s1)
    /* 3C22C 8004BA2C 00000000 */  nop
    /* 3C230 8004BA30 21106200 */  addu       $v0, $v1, $v0
    /* 3C234 8004BA34 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* 3C238 8004BA38 FEFF2296 */  lhu        $v0, -0x2($s1)
    /* 3C23C 8004BA3C 00000000 */  nop
    /* 3C240 8004BA40 21186200 */  addu       $v1, $v1, $v0
    /* 3C244 8004BA44 1E00A3A7 */  sh         $v1, 0x1E($sp)
    /* 3C248 8004BA48 0000328E */  lw         $s2, 0x0($s1)
    /* 3C24C 8004BA4C 00000000 */  nop
    /* 3C250 8004BA50 04004596 */  lhu        $a1, 0x4($s2)
    /* 3C254 8004BA54 00000000 */  nop
    /* 3C258 8004BA58 0001A22C */  sltiu      $v0, $a1, 0x100
    /* 3C25C 8004BA5C 0B004010 */  beqz       $v0, .L8004BA8C
    /* 3C260 8004BA60 F000A230 */   andi      $v0, $a1, 0xF0
    /* 3C264 8004BA64 82100200 */  srl        $v0, $v0, 2
    /* 3C268 8004BA68 0980013C */  lui        $at, %hi(D_8008AA24)
    /* 3C26C 8004BA6C 21082200 */  addu       $at, $at, $v0
    /* 3C270 8004BA70 24AA228C */  lw         $v0, %lo(D_8008AA24)($at)
    /* 3C274 8004BA74 00000000 */  nop
    /* 3C278 8004BA78 09F84000 */  jalr       $v0
    /* 3C27C 8004BA7C 1800A427 */   addiu     $a0, $sp, 0x18
    /* 3C280 8004BA80 21A84000 */  addu       $s5, $v0, $zero
    /* 3C284 8004BA84 0300A016 */  bnez       $s5, .L8004BA94
    /* 3C288 8004BA88 04005026 */   addiu     $s0, $s2, 0x4
  .L8004BA8C:
    /* 3C28C 8004BA8C BF2E0108 */  j          .L8004BAFC
    /* 3C290 8004BA90 21B00000 */   addu      $s6, $zero, $zero
  .L8004BA94:
    /* 3C294 8004BA94 0400338E */  lw         $s3, 0x4($s1)
  .L8004BA98:
    /* 3C298 8004BA98 02000296 */  lhu        $v0, 0x2($s0)
    /* 3C29C 8004BA9C 00000000 */  nop
    /* 3C2A0 8004BAA0 24105E00 */  and        $v0, $v0, $fp
    /* 3C2A4 8004BAA4 00804230 */  andi       $v0, $v0, 0x8000
    /* 3C2A8 8004BAA8 10004014 */  bnez       $v0, .L8004BAEC
    /* 3C2AC 8004BAAC 1800A427 */   addiu     $a0, $sp, 0x18
    /* 3C2B0 8004BAB0 1200A297 */  lhu        $v0, 0x12($sp)
    /* 3C2B4 8004BAB4 00004396 */  lhu        $v1, 0x0($s2)
    /* 3C2B8 8004BAB8 00000000 */  nop
    /* 3C2BC 8004BABC 21184300 */  addu       $v1, $v0, $v1
    /* 3C2C0 8004BAC0 2000A3A7 */  sh         $v1, 0x20($sp)
    /* 3C2C4 8004BAC4 FEFF0396 */  lhu        $v1, -0x2($s0)
    /* 3C2C8 8004BAC8 00000000 */  nop
    /* 3C2CC 8004BACC 21104300 */  addu       $v0, $v0, $v1
    /* 3C2D0 8004BAD0 2200A2A7 */  sh         $v0, 0x22($sp)
    /* 3C2D4 8004BAD4 00000596 */  lhu        $a1, 0x0($s0)
    /* 3C2D8 8004BAD8 722F010C */  jal        func_8004BDC8
    /* 3C2DC 8004BADC 2130A002 */   addu      $a2, $s5, $zero
    /* 3C2E0 8004BAE0 21B04000 */  addu       $s6, $v0, $zero
    /* 3C2E4 8004BAE4 0F00C016 */  bnez       $s6, .L8004BB24
    /* 3C2E8 8004BAE8 00000000 */   nop
  .L8004BAEC:
    /* 3C2EC 8004BAEC 08001026 */  addiu      $s0, $s0, 0x8
    /* 3C2F0 8004BAF0 FFFF7326 */  addiu      $s3, $s3, -0x1
    /* 3C2F4 8004BAF4 E8FF6016 */  bnez       $s3, .L8004BA98
    /* 3C2F8 8004BAF8 08005226 */   addiu     $s2, $s2, 0x8
  .L8004BAFC:
    /* 3C2FC 8004BAFC 10003126 */  addiu      $s1, $s1, 0x10
    /* 3C300 8004BB00 0000228E */  lw         $v0, 0x0($s1)
    /* 3C304 8004BB04 00000000 */  nop
    /* 3C308 8004BB08 BDFF4014 */  bnez       $v0, .L8004BA00
    /* 3C30C 8004BB0C 10009426 */   addiu     $s4, $s4, 0x10
  .L8004BB10:
    /* 3C310 8004BB10 2110E002 */  addu       $v0, $s7, $zero
  .L8004BB14:
    /* 3C314 8004BB14 44FF4014 */  bnez       $v0, .L8004B828
    /* 3C318 8004BB18 FFFFF726 */   addiu     $s7, $s7, -0x1
  .L8004BB1C:
    /* 3C31C 8004BB1C 4300C012 */  beqz       $s6, .L8004BC2C
    /* 3C320 8004BB20 00000000 */   nop
  .L8004BB24:
    /* 3C324 8004BB24 801F113C */  lui        $s1, (0x1F8000C0 >> 16)
    /* 3C328 8004BB28 C0003136 */  ori        $s1, $s1, (0x1F8000C0 & 0xFFFF)
    /* 3C32C 8004BB2C 801F133C */  lui        $s3, (0x1F800106 >> 16)
    /* 3C330 8004BB30 06017336 */  ori        $s3, $s3, (0x1F800106 & 0xFFFF)
    /* 3C334 8004BB34 801F143C */  lui        $s4, (0x1F80010A >> 16)
    /* 3C338 8004BB38 0A019436 */  ori        $s4, $s4, (0x1F80010A & 0xFFFF)
    /* 3C33C 8004BB3C 801F123C */  lui        $s2, (0x1F800108 >> 16)
    /* 3C340 8004BB40 08015236 */  ori        $s2, $s2, (0x1F800108 & 0xFFFF)
    /* 3C344 8004BB44 801F0A3C */  lui        $t2, (0x1F800100 >> 16)
    /* 3C348 8004BB48 00014A35 */  ori        $t2, $t2, (0x1F800100 & 0xFFFF)
    /* 3C34C 8004BB4C 801F083C */  lui        $t0, (0x1F800102 >> 16)
    /* 3C350 8004BB50 02010835 */  ori        $t0, $t0, (0x1F800102 & 0xFFFF)
    /* 3C354 8004BB54 801F073C */  lui        $a3, (0x1F800104 >> 16)
    /* 3C358 8004BB58 0401E734 */  ori        $a3, $a3, (0x1F800104 & 0xFFFF)
    /* 3C35C 8004BB5C 801F053C */  lui        $a1, (0x1F80010C >> 16)
    /* 3C360 8004BB60 0C01A534 */  ori        $a1, $a1, (0x1F80010C & 0xFFFF)
    /* 3C364 8004BB64 801F043C */  lui        $a0, (0x1F80010E >> 16)
    /* 3C368 8004BB68 0E018434 */  ori        $a0, $a0, (0x1F80010E & 0xFFFF)
    /* 3C36C 8004BB6C 801F033C */  lui        $v1, (0x1F800110 >> 16)
    /* 3C370 8004BB70 10016334 */  ori        $v1, $v1, (0x1F800110 & 0xFFFF)
    /* 3C374 8004BB74 4000A68F */  lw         $a2, 0x40($sp)
    /* 3C378 8004BB78 00002296 */  lhu        $v0, 0x0($s1)
    /* 3C37C 8004BB7C 00006996 */  lhu        $t1, 0x0($s3)
    /* 3C380 8004BB80 00004B95 */  lhu        $t3, 0x0($t2)
    /* 3C384 8004BB84 00000C95 */  lhu        $t4, 0x0($t0)
    /* 3C388 8004BB88 0000ED94 */  lhu        $t5, 0x0($a3)
    /* 3C38C 8004BB8C 0000AE94 */  lhu        $t6, 0x0($a1)
    /* 3C390 8004BB90 00008F94 */  lhu        $t7, 0x0($a0)
    /* 3C394 8004BB94 00007094 */  lhu        $s0, 0x0($v1)
    /* 3C398 8004BB98 21C0C000 */  addu       $t8, $a2, $zero
    /* 3C39C 8004BB9C 01001827 */  addiu      $t8, $t8, 0x1
    /* 3C3A0 8004BBA0 21104900 */  addu       $v0, $v0, $t1
    /* 3C3A4 8004BBA4 0800C628 */  slti       $a2, $a2, 0x8
    /* 3C3A8 8004BBA8 4000B8AF */  sw         $t8, 0x40($sp)
    /* 3C3AC 8004BBAC 000040A5 */  sh         $zero, 0x0($t2)
    /* 3C3B0 8004BBB0 000000A5 */  sh         $zero, 0x0($t0)
    /* 3C3B4 8004BBB4 0000E0A4 */  sh         $zero, 0x0($a3)
    /* 3C3B8 8004BBB8 0000A0A4 */  sh         $zero, 0x0($a1)
    /* 3C3BC 8004BBBC 000080A4 */  sh         $zero, 0x0($a0)
    /* 3C3C0 8004BBC0 000060A4 */  sh         $zero, 0x0($v1)
    /* 3C3C4 8004BBC4 000022A6 */  sh         $v0, 0x0($s1)
    /* 3C3C8 8004BBC8 801F023C */  lui        $v0, (0x1F8000C4 >> 16)
    /* 3C3CC 8004BBCC C4004294 */  lhu        $v0, (0x1F8000C4 & 0xFFFF)($v0)
    /* 3C3D0 8004BBD0 00008496 */  lhu        $a0, 0x0($s4)
    /* 3C3D4 8004BBD4 801F033C */  lui        $v1, (0x1F8000C2 >> 16)
    /* 3C3D8 8004BBD8 C2006394 */  lhu        $v1, (0x1F8000C2 & 0xFFFF)($v1)
    /* 3C3DC 8004BBDC 00004596 */  lhu        $a1, 0x0($s2)
    /* 3C3E0 8004BBE0 21104400 */  addu       $v0, $v0, $a0
    /* 3C3E4 8004BBE4 21186500 */  addu       $v1, $v1, $a1
    /* 3C3E8 8004BBE8 801F013C */  lui        $at, (0x1F8000C4 >> 16)
    /* 3C3EC 8004BBEC C40022A4 */  sh         $v0, (0x1F8000C4 & 0xFFFF)($at)
    /* 3C3F0 8004BBF0 801F013C */  lui        $at, (0x1F8000C2 >> 16)
    /* 3C3F4 8004BBF4 C20023A4 */  sh         $v1, (0x1F8000C2 & 0xFFFF)($at)
    /* 3C3F8 8004BBF8 00006BA6 */  sh         $t3, 0x0($s3)
    /* 3C3FC 8004BBFC 00004CA6 */  sh         $t4, 0x0($s2)
    /* 3C400 8004BC00 00008DA6 */  sh         $t5, 0x0($s4)
    /* 3C404 8004BC04 801F013C */  lui        $at, (0x1F800112 >> 16)
    /* 3C408 8004BC08 12012EA4 */  sh         $t6, (0x1F800112 & 0xFFFF)($at)
    /* 3C40C 8004BC0C 801F013C */  lui        $at, (0x1F800114 >> 16)
    /* 3C410 8004BC10 14012FA4 */  sh         $t7, (0x1F800114 & 0xFFFF)($at)
    /* 3C414 8004BC14 801F013C */  lui        $at, (0x1F800116 >> 16)
    /* 3C418 8004BC18 160130A4 */  sh         $s0, (0x1F800116 & 0xFFFF)($at)
    /* 3C41C 8004BC1C FBFEC014 */  bnez       $a2, .L8004B80C
    /* 3C420 8004BC20 0080023C */   lui       $v0, (0x80000000 >> 16)
    /* 3C424 8004BC24 652F0108 */  j          .L8004BD94
    /* 3C428 8004BC28 00000000 */   nop
  .L8004BC2C:
    /* 3C42C 8004BC2C 2800B88F */  lw         $t8, 0x28($sp)
    /* 3C430 8004BC30 801F023C */  lui        $v0, (0x1F8000C0 >> 16)
    /* 3C434 8004BC34 C0004284 */  lh         $v0, (0x1F8000C0 & 0xFFFF)($v0)
    /* 3C438 8004BC38 00000387 */  lh         $v1, 0x0($t8)
    /* 3C43C 8004BC3C 04000587 */  lh         $a1, 0x4($t8)
    /* 3C440 8004BC40 02000487 */  lh         $a0, 0x2($t8)
    /* 3C444 8004BC44 23306200 */  subu       $a2, $v1, $v0
    /* 3C448 8004BC48 801F033C */  lui        $v1, (0x1F8000C4 >> 16)
    /* 3C44C 8004BC4C C4006384 */  lh         $v1, (0x1F8000C4 & 0xFFFF)($v1)
    /* 3C450 8004BC50 801F023C */  lui        $v0, (0x1F8000C2 >> 16)
    /* 3C454 8004BC54 C2004284 */  lh         $v0, (0x1F8000C2 & 0xFFFF)($v0)
    /* 3C458 8004BC58 2328A300 */  subu       $a1, $a1, $v1
    /* 3C45C 8004BC5C 0500C014 */  bnez       $a2, .L8004BC74
    /* 3C460 8004BC60 23208200 */   subu      $a0, $a0, $v0
    /* 3C464 8004BC64 0300A014 */  bnez       $a1, .L8004BC74
    /* 3C468 8004BC68 00000000 */   nop
    /* 3C46C 8004BC6C 49008010 */  beqz       $a0, .L8004BD94
    /* 3C470 8004BC70 21100000 */   addu      $v0, $zero, $zero
  .L8004BC74:
    /* 3C474 8004BC74 0200C104 */  bgez       $a2, .L8004BC80
    /* 3C478 8004BC78 2118C000 */   addu      $v1, $a2, $zero
    /* 3C47C 8004BC7C 23180300 */  negu       $v1, $v1
  .L8004BC80:
    /* 3C480 8004BC80 0500A004 */  bltz       $a1, .L8004BC98
    /* 3C484 8004BC84 2A10A300 */   slt       $v0, $a1, $v1
    /* 3C488 8004BC88 18004010 */  beqz       $v0, .L8004BCEC
    /* 3C48C 8004BC8C 00000000 */   nop
    /* 3C490 8004BC90 2D2F0108 */  j          .L8004BCB4
    /* 3C494 8004BC94 00000000 */   nop
  .L8004BC98:
    /* 3C498 8004BC98 23100500 */  negu       $v0, $a1
    /* 3C49C 8004BC9C 2A104300 */  slt        $v0, $v0, $v1
    /* 3C4A0 8004BCA0 12004010 */  beqz       $v0, .L8004BCEC
    /* 3C4A4 8004BCA4 00000000 */   nop
    /* 3C4A8 8004BCA8 0200C104 */  bgez       $a2, .L8004BCB4
    /* 3C4AC 8004BCAC 2118C000 */   addu      $v1, $a2, $zero
    /* 3C4B0 8004BCB0 23180300 */  negu       $v1, $v1
  .L8004BCB4:
    /* 3C4B4 8004BCB4 05008004 */  bltz       $a0, .L8004BCCC
    /* 3C4B8 8004BCB8 2A108300 */   slt       $v0, $a0, $v1
    /* 3C4BC 8004BCBC 1C004010 */  beqz       $v0, .L8004BD30
    /* 3C4C0 8004BCC0 00000000 */   nop
    /* 3C4C4 8004BCC4 372F0108 */  j          .L8004BCDC
    /* 3C4C8 8004BCC8 00000000 */   nop
  .L8004BCCC:
    /* 3C4CC 8004BCCC 23100400 */  negu       $v0, $a0
    /* 3C4D0 8004BCD0 2A104300 */  slt        $v0, $v0, $v1
    /* 3C4D4 8004BCD4 16004010 */  beqz       $v0, .L8004BD30
    /* 3C4D8 8004BCD8 00000000 */   nop
  .L8004BCDC:
    /* 3C4DC 8004BCDC 1700C018 */  blez       $a2, .L8004BD3C
    /* 3C4E0 8004BCE0 02001024 */   addiu     $s0, $zero, 0x2
    /* 3C4E4 8004BCE4 4F2F0108 */  j          .L8004BD3C
    /* 3C4E8 8004BCE8 01001024 */   addiu     $s0, $zero, 0x1
  .L8004BCEC:
    /* 3C4EC 8004BCEC 0200A104 */  bgez       $a1, .L8004BCF8
    /* 3C4F0 8004BCF0 2118A000 */   addu      $v1, $a1, $zero
    /* 3C4F4 8004BCF4 23180300 */  negu       $v1, $v1
  .L8004BCF8:
    /* 3C4F8 8004BCF8 05008004 */  bltz       $a0, .L8004BD10
    /* 3C4FC 8004BCFC 2A108300 */   slt       $v0, $a0, $v1
    /* 3C500 8004BD00 0B004010 */  beqz       $v0, .L8004BD30
    /* 3C504 8004BD04 00000000 */   nop
    /* 3C508 8004BD08 482F0108 */  j          .L8004BD20
    /* 3C50C 8004BD0C 00000000 */   nop
  .L8004BD10:
    /* 3C510 8004BD10 23100400 */  negu       $v0, $a0
    /* 3C514 8004BD14 2A104300 */  slt        $v0, $v0, $v1
    /* 3C518 8004BD18 05004010 */  beqz       $v0, .L8004BD30
    /* 3C51C 8004BD1C 00000000 */   nop
  .L8004BD20:
    /* 3C520 8004BD20 0600A018 */  blez       $a1, .L8004BD3C
    /* 3C524 8004BD24 04001024 */   addiu     $s0, $zero, 0x4
    /* 3C528 8004BD28 4F2F0108 */  j          .L8004BD3C
    /* 3C52C 8004BD2C 03001024 */   addiu     $s0, $zero, 0x3
  .L8004BD30:
    /* 3C530 8004BD30 02008018 */  blez       $a0, .L8004BD3C
    /* 3C534 8004BD34 06001024 */   addiu     $s0, $zero, 0x6
    /* 3C538 8004BD38 05001024 */  addiu      $s0, $zero, 0x5
  .L8004BD3C:
    /* 3C53C 8004BD3C 0600C010 */  beqz       $a2, .L8004BD58
    /* 3C540 8004BD40 00000000 */   nop
    /* 3C544 8004BD44 0300C018 */  blez       $a2, .L8004BD54
    /* 3C548 8004BD48 00000000 */   nop
    /* 3C54C 8004BD4C 562F0108 */  j          .L8004BD58
    /* 3C550 8004BD50 00011036 */   ori       $s0, $s0, 0x100
  .L8004BD54:
    /* 3C554 8004BD54 00021036 */  ori        $s0, $s0, 0x200
  .L8004BD58:
    /* 3C558 8004BD58 0600A010 */  beqz       $a1, .L8004BD74
    /* 3C55C 8004BD5C 00000000 */   nop
    /* 3C560 8004BD60 0300A018 */  blez       $a1, .L8004BD70
    /* 3C564 8004BD64 00000000 */   nop
    /* 3C568 8004BD68 5D2F0108 */  j          .L8004BD74
    /* 3C56C 8004BD6C 00041036 */   ori       $s0, $s0, 0x400
  .L8004BD70:
    /* 3C570 8004BD70 00081036 */  ori        $s0, $s0, 0x800
  .L8004BD74:
    /* 3C574 8004BD74 07008010 */  beqz       $a0, .L8004BD94
    /* 3C578 8004BD78 21100002 */   addu      $v0, $s0, $zero
    /* 3C57C 8004BD7C 03008018 */  blez       $a0, .L8004BD8C
    /* 3C580 8004BD80 00000000 */   nop
    /* 3C584 8004BD84 642F0108 */  j          .L8004BD90
    /* 3C588 8004BD88 00101036 */   ori       $s0, $s0, 0x1000
  .L8004BD8C:
    /* 3C58C 8004BD8C 00201036 */  ori        $s0, $s0, 0x2000
  .L8004BD90:
    /* 3C590 8004BD90 21100002 */  addu       $v0, $s0, $zero
  .L8004BD94:
    /* 3C594 8004BD94 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* 3C598 8004BD98 6800BE8F */  lw         $fp, 0x68($sp)
    /* 3C59C 8004BD9C 6400B78F */  lw         $s7, 0x64($sp)
    /* 3C5A0 8004BDA0 6000B68F */  lw         $s6, 0x60($sp)
    /* 3C5A4 8004BDA4 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 3C5A8 8004BDA8 5800B48F */  lw         $s4, 0x58($sp)
    /* 3C5AC 8004BDAC 5400B38F */  lw         $s3, 0x54($sp)
    /* 3C5B0 8004BDB0 5000B28F */  lw         $s2, 0x50($sp)
    /* 3C5B4 8004BDB4 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 3C5B8 8004BDB8 4800B08F */  lw         $s0, 0x48($sp)
    /* 3C5BC 8004BDBC 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 3C5C0 8004BDC0 0800E003 */  jr         $ra
    /* 3C5C4 8004BDC4 00000000 */   nop
.size func_8004B6AC, . - func_8004B6AC
