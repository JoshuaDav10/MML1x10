.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005DF4C
    /* 4E74C 8005DF4C A007828F */  lw         $v0, %gp_rel(D_80098004)($gp)
    /* 4E750 8005DF50 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 4E754 8005DF54 3400BFAF */  sw         $ra, 0x34($sp)
    /* 4E758 8005DF58 02004230 */  andi       $v0, $v0, 0x2
    /* 4E75C 8005DF5C 74004010 */  beqz       $v0, .L8005E130
    /* 4E760 8005DF60 3000B0AF */   sw        $s0, 0x30($sp)
    /* 4E764 8005DF64 0C80033C */  lui        $v1, %hi(D_800C0C26)
    /* 4E768 8005DF68 260C6394 */  lhu        $v1, %lo(D_800C0C26)($v1)
    /* 4E76C 8005DF6C 00000000 */  nop
    /* 4E770 8005DF70 10006230 */  andi       $v0, $v1, 0x10
    /* 4E774 8005DF74 06004010 */  beqz       $v0, .L8005DF90
    /* 4E778 8005DF78 40006230 */   andi      $v0, $v1, 0x40
    /* 4E77C 8005DF7C 980E8297 */  lhu        $v0, %gp_rel(D_800986FC)($gp)
    /* 4E780 8005DF80 00000000 */  nop
    /* 4E784 8005DF84 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 4E788 8005DF88 980E82A7 */  sh         $v0, %gp_rel(D_800986FC)($gp)
    /* 4E78C 8005DF8C 40006230 */  andi       $v0, $v1, 0x40
  .L8005DF90:
    /* 4E790 8005DF90 06004010 */  beqz       $v0, .L8005DFAC
    /* 4E794 8005DF94 80006230 */   andi      $v0, $v1, 0x80
    /* 4E798 8005DF98 980E8297 */  lhu        $v0, %gp_rel(D_800986FC)($gp)
    /* 4E79C 8005DF9C 00000000 */  nop
    /* 4E7A0 8005DFA0 02004224 */  addiu      $v0, $v0, 0x2
    /* 4E7A4 8005DFA4 980E82A7 */  sh         $v0, %gp_rel(D_800986FC)($gp)
    /* 4E7A8 8005DFA8 80006230 */  andi       $v0, $v1, 0x80
  .L8005DFAC:
    /* 4E7AC 8005DFAC 06004010 */  beqz       $v0, .L8005DFC8
    /* 4E7B0 8005DFB0 20006230 */   andi      $v0, $v1, 0x20
    /* 4E7B4 8005DFB4 940E8297 */  lhu        $v0, %gp_rel(D_800986F8)($gp)
    /* 4E7B8 8005DFB8 00000000 */  nop
    /* 4E7BC 8005DFBC FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 4E7C0 8005DFC0 940E82A7 */  sh         $v0, %gp_rel(D_800986F8)($gp)
    /* 4E7C4 8005DFC4 20006230 */  andi       $v0, $v1, 0x20
  .L8005DFC8:
    /* 4E7C8 8005DFC8 05004010 */  beqz       $v0, .L8005DFE0
    /* 4E7CC 8005DFCC 00000000 */   nop
    /* 4E7D0 8005DFD0 940E8297 */  lhu        $v0, %gp_rel(D_800986F8)($gp)
    /* 4E7D4 8005DFD4 00000000 */  nop
    /* 4E7D8 8005DFD8 02004224 */  addiu      $v0, $v0, 0x2
    /* 4E7DC 8005DFDC 940E82A7 */  sh         $v0, %gp_rel(D_800986F8)($gp)
  .L8005DFE0:
    /* 4E7E0 8005DFE0 940E8287 */  lh         $v0, %gp_rel(D_800986F8)($gp)
    /* 4E7E4 8005DFE4 00000000 */  nop
    /* 4E7E8 8005DFE8 E0FF4228 */  slti       $v0, $v0, -0x20
    /* 4E7EC 8005DFEC 02004010 */  beqz       $v0, .L8005DFF8
    /* 4E7F0 8005DFF0 E0FF0224 */   addiu     $v0, $zero, -0x20
    /* 4E7F4 8005DFF4 940E82A7 */  sh         $v0, %gp_rel(D_800986F8)($gp)
  .L8005DFF8:
    /* 4E7F8 8005DFF8 940E8287 */  lh         $v0, %gp_rel(D_800986F8)($gp)
    /* 4E7FC 8005DFFC 00000000 */  nop
    /* 4E800 8005E000 21004228 */  slti       $v0, $v0, 0x21
    /* 4E804 8005E004 02004014 */  bnez       $v0, .L8005E010
    /* 4E808 8005E008 20000224 */   addiu     $v0, $zero, 0x20
    /* 4E80C 8005E00C 940E82A7 */  sh         $v0, %gp_rel(D_800986F8)($gp)
  .L8005E010:
    /* 4E810 8005E010 980E8287 */  lh         $v0, %gp_rel(D_800986FC)($gp)
    /* 4E814 8005E014 00000000 */  nop
    /* 4E818 8005E018 E0FF4228 */  slti       $v0, $v0, -0x20
    /* 4E81C 8005E01C 02004010 */  beqz       $v0, .L8005E028
    /* 4E820 8005E020 E0FF0224 */   addiu     $v0, $zero, -0x20
    /* 4E824 8005E024 980E82A7 */  sh         $v0, %gp_rel(D_800986FC)($gp)
  .L8005E028:
    /* 4E828 8005E028 980E8287 */  lh         $v0, %gp_rel(D_800986FC)($gp)
    /* 4E82C 8005E02C 00000000 */  nop
    /* 4E830 8005E030 21004228 */  slti       $v0, $v0, 0x21
    /* 4E834 8005E034 03004014 */  bnez       $v0, .L8005E044
    /* 4E838 8005E038 06000524 */   addiu     $a1, $zero, 0x6
    /* 4E83C 8005E03C 20000224 */  addiu      $v0, $zero, 0x20
    /* 4E840 8005E040 980E82A7 */  sh         $v0, %gp_rel(D_800986FC)($gp)
  .L8005E044:
    /* 4E844 8005E044 40010324 */  addiu      $v1, $zero, 0x140
    /* 4E848 8005E048 1B006500 */  divu       $zero, $v1, $a1
    /* 4E84C 8005E04C 0200A014 */  bnez       $a1, .L8005E058
    /* 4E850 8005E050 00000000 */   nop
    /* 4E854 8005E054 0D000700 */  break      7
  .L8005E058:
    /* 4E858 8005E058 12180000 */  mflo       $v1
    /* 4E85C 8005E05C F0000624 */  addiu      $a2, $zero, 0xF0
    /* 4E860 8005E060 00000000 */  nop
    /* 4E864 8005E064 1B00C500 */  divu       $zero, $a2, $a1
    /* 4E868 8005E068 0200A014 */  bnez       $a1, .L8005E074
    /* 4E86C 8005E06C 00000000 */   nop
    /* 4E870 8005E070 0D000700 */  break      7
  .L8005E074:
    /* 4E874 8005E074 12300000 */  mflo       $a2
    /* 4E878 8005E078 300F848F */  lw         $a0, %gp_rel(D_80098794)($gp)
    /* 4E87C 8005E07C D00785AF */  sw         $a1, %gp_rel(D_80098034)($gp)
    /* 4E880 8005E080 40100400 */  sll        $v0, $a0, 1
    /* 4E884 8005E084 21104400 */  addu       $v0, $v0, $a0
    /* 4E888 8005E088 80100200 */  sll        $v0, $v0, 2
    /* 4E88C 8005E08C 0980013C */  lui        $at, %hi(D_8008D19E)
    /* 4E890 8005E090 21082200 */  addu       $at, $at, $v0
    /* 4E894 8005E094 9ED12490 */  lbu        $a0, %lo(D_8008D19E)($at)
    /* 4E898 8005E098 00000000 */  nop
    /* 4E89C 8005E09C 23186400 */  subu       $v1, $v1, $a0
    /* 4E8A0 8005E0A0 18006500 */  mult       $v1, $a1
    /* 4E8A4 8005E0A4 2800B027 */  addiu      $s0, $sp, 0x28
    /* 4E8A8 8005E0A8 1800A4A7 */  sh         $a0, 0x18($sp)
    /* 4E8AC 8005E0AC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 4E8B0 8005E0B0 0980013C */  lui        $at, %hi(D_8008D19F)
    /* 4E8B4 8005E0B4 21082200 */  addu       $at, $at, $v0
    /* 4E8B8 8005E0B8 9FD12390 */  lbu        $v1, %lo(D_8008D19F)($at)
    /* 4E8BC 8005E0BC 40010224 */  addiu      $v0, $zero, 0x140
    /* 4E8C0 8005E0C0 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* 4E8C4 8005E0C4 F0000224 */  addiu      $v0, $zero, 0xF0
    /* 4E8C8 8005E0C8 2000A0A7 */  sh         $zero, 0x20($sp)
    /* 4E8CC 8005E0CC 2200A0A7 */  sh         $zero, 0x22($sp)
    /* 4E8D0 8005E0D0 2800A0A7 */  sh         $zero, 0x28($sp)
    /* 4E8D4 8005E0D4 12380000 */  mflo       $a3
    /* 4E8D8 8005E0D8 2A00A0A7 */  sh         $zero, 0x2A($sp)
    /* 4E8DC 8005E0DC 2330C300 */  subu       $a2, $a2, $v1
    /* 4E8E0 8005E0E0 1800C500 */  mult       $a2, $a1
    /* 4E8E4 8005E0E4 2E00A2A7 */  sh         $v0, 0x2E($sp)
    /* 4E8E8 8005E0E8 1A00A3A7 */  sh         $v1, 0x1A($sp)
    /* 4E8EC 8005E0EC 940E8397 */  lhu        $v1, %gp_rel(D_800986F8)($gp)
    /* 4E8F0 8005E0F0 42100700 */  srl        $v0, $a3, 1
    /* 4E8F4 8005E0F4 01004224 */  addiu      $v0, $v0, 0x1
    /* 4E8F8 8005E0F8 21186200 */  addu       $v1, $v1, $v0
    /* 4E8FC 8005E0FC 1800A527 */  addiu      $a1, $sp, 0x18
    /* 4E900 8005E100 2000A627 */  addiu      $a2, $sp, 0x20
    /* 4E904 8005E104 21380002 */  addu       $a3, $s0, $zero
    /* 4E908 8005E108 1000A3A7 */  sh         $v1, 0x10($sp)
    /* 4E90C 8005E10C 980E8397 */  lhu        $v1, %gp_rel(D_800986FC)($gp)
    /* 4E910 8005E110 12480000 */  mflo       $t1
    /* 4E914 8005E114 42100900 */  srl        $v0, $t1, 1
    /* 4E918 8005E118 10FF4224 */  addiu      $v0, $v0, -0xF0
    /* 4E91C 8005E11C 23186200 */  subu       $v1, $v1, $v0
    /* 4E920 8005E120 5178010C */  jal        func_8005E144
    /* 4E924 8005E124 1200A3A7 */   sh        $v1, 0x12($sp)
    /* 4E928 8005E128 AA7A010C */  jal        func_8005EAA8
    /* 4E92C 8005E12C 21200002 */   addu      $a0, $s0, $zero
  .L8005E130:
    /* 4E930 8005E130 3400BF8F */  lw         $ra, 0x34($sp)
    /* 4E934 8005E134 3000B08F */  lw         $s0, 0x30($sp)
    /* 4E938 8005E138 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 4E93C 8005E13C 0800E003 */  jr         $ra
    /* 4E940 8005E140 00000000 */   nop
.size func_8005DF4C, . - func_8005DF4C
