.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059E74
    /* 4A674 80059E74 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 4A678 80059E78 7000B0AF */  sw         $s0, 0x70($sp)
    /* 4A67C 80059E7C 21808000 */  addu       $s0, $a0, $zero
    /* 4A680 80059E80 7C00BFAF */  sw         $ra, 0x7C($sp)
    /* 4A684 80059E84 7800B2AF */  sw         $s2, 0x78($sp)
    /* 4A688 80059E88 7400B1AF */  sw         $s1, 0x74($sp)
    /* 4A68C 80059E8C 0000028E */  lw         $v0, 0x0($s0)
    /* 4A690 80059E90 0001043C */  lui        $a0, (0x1000000 >> 16)
    /* 4A694 80059E94 24304400 */  and        $a2, $v0, $a0
    /* 4A698 80059E98 2A00C014 */  bnez       $a2, .L80059F44
    /* 4A69C 80059E9C 21900000 */   addu      $s2, $zero, $zero
    /* 4A6A0 80059EA0 25104400 */  or         $v0, $v0, $a0
    /* 4A6A4 80059EA4 6C00038E */  lw         $v1, 0x6C($s0)
    /* 4A6A8 80059EA8 000002AE */  sw         $v0, 0x0($s0)
    /* 4A6AC 80059EAC BC0000A6 */  sh         $zero, 0xBC($s0)
    /* 4A6B0 80059EB0 860000A6 */  sh         $zero, 0x86($s0)
    /* 4A6B4 80059EB4 01006390 */  lbu        $v1, 0x1($v1)
    /* 4A6B8 80059EB8 04000224 */  addiu      $v0, $zero, 0x4
    /* 4A6BC 80059EBC 710002A2 */  sb         $v0, 0x71($s0)
    /* 4A6C0 80059EC0 05000224 */  addiu      $v0, $zero, 0x5
    /* 4A6C4 80059EC4 040002A6 */  sh         $v0, 0x4($s0)
    /* 4A6C8 80059EC8 60000224 */  addiu      $v0, $zero, 0x60
    /* 4A6CC 80059ECC 730000A2 */  sb         $zero, 0x73($s0)
    /* 4A6D0 80059ED0 720003A2 */  sb         $v1, 0x72($s0)
    /* 4A6D4 80059ED4 840E82A3 */  sb         $v0, %gp_rel(D_800986E8)($gp)
    /* 4A6D8 80059ED8 02000224 */  addiu      $v0, $zero, 0x2
    /* 4A6DC 80059EDC 880E82A3 */  sb         $v0, %gp_rel(D_800986EC)($gp)
    /* 4A6E0 80059EE0 72000282 */  lb         $v0, 0x72($s0)
    /* 4A6E4 80059EE4 72000492 */  lbu        $a0, 0x72($s0)
    /* 4A6E8 80059EE8 2A10C200 */  slt        $v0, $a2, $v0
    /* 4A6EC 80059EEC 15004010 */  beqz       $v0, .L80059F44
    /* 4A6F0 80059EF0 21280000 */   addu      $a1, $zero, $zero
    /* 4A6F4 80059EF4 0980063C */  lui        $a2, %hi(D_8008D028)
    /* 4A6F8 80059EF8 28D0C624 */  addiu      $a2, $a2, %lo(D_8008D028)
  .L80059EFC:
    /* 4A6FC 80059EFC FFFFA330 */  andi       $v1, $a1, 0xFFFF
    /* 4A700 80059F00 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4A704 80059F04 00160400 */  sll        $v0, $a0, 24
    /* 4A708 80059F08 03160200 */  sra        $v0, $v0, 24
    /* 4A70C 80059F0C 23104300 */  subu       $v0, $v0, $v1
    /* 4A710 80059F10 40180200 */  sll        $v1, $v0, 1
    /* 4A714 80059F14 21186200 */  addu       $v1, $v1, $v0
    /* 4A718 80059F18 6C00028E */  lw         $v0, 0x6C($s0)
    /* 4A71C 80059F1C 0000C490 */  lbu        $a0, 0x0($a2)
    /* 4A720 80059F20 23104300 */  subu       $v0, $v0, $v1
    /* 4A724 80059F24 020044A0 */  sb         $a0, 0x2($v0)
    /* 4A728 80059F28 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 4A72C 80059F2C 72000382 */  lb         $v1, 0x72($s0)
    /* 4A730 80059F30 72000492 */  lbu        $a0, 0x72($s0)
    /* 4A734 80059F34 2A104300 */  slt        $v0, $v0, $v1
    /* 4A738 80059F38 F0FF4014 */  bnez       $v0, .L80059EFC
    /* 4A73C 80059F3C 00000000 */   nop
    /* 4A740 80059F40 21900000 */  addu       $s2, $zero, $zero
  .L80059F44:
    /* 4A744 80059F44 0010033C */  lui        $v1, (0x10000000 >> 16)
    /* 4A748 80059F48 0000028E */  lw         $v0, 0x0($s0)
    /* 4A74C 80059F4C 71000592 */  lbu        $a1, 0x71($s0)
    /* 4A750 80059F50 25104300 */  or         $v0, $v0, $v1
    /* 4A754 80059F54 000002AE */  sw         $v0, 0x0($s0)
    /* 4A758 80059F58 04000286 */  lh         $v0, 0x4($s0)
    /* 4A75C 80059F5C 00360500 */  sll        $a2, $a1, 24
    /* 4A760 80059F60 A600401C */  bgtz       $v0, .L8005A1FC
    /* 4A764 80059F64 21184000 */   addu      $v1, $v0, $zero
    /* 4A768 80059F68 BA000496 */  lhu        $a0, 0xBA($s0)
    /* 4A76C 80059F6C 00000000 */  nop
    /* 4A770 80059F70 00408230 */  andi       $v0, $a0, 0x4000
    /* 4A774 80059F74 0F004010 */  beqz       $v0, .L80059FB4
    /* 4A778 80059F78 00108230 */   andi      $v0, $a0, 0x1000
    /* 4A77C 80059F7C 7C0F828F */  lw         $v0, %gp_rel(D_800987E0)($gp)
    /* 4A780 80059F80 00000000 */  nop
    /* 4A784 80059F84 09004010 */  beqz       $v0, .L80059FAC
    /* 4A788 80059F88 82000424 */   addiu     $a0, $zero, 0x82
    /* 4A78C 80059F8C 01000524 */  addiu      $a1, $zero, 0x1
    /* 4A790 80059F90 0268000C */  jal        Sound_call
    /* 4A794 80059F94 21300000 */   addu      $a2, $zero, $zero
    /* 4A798 80059F98 FFFE033C */  lui        $v1, (0xFEFFFFFF >> 16)
    /* 4A79C 80059F9C FFFF6334 */  ori        $v1, $v1, (0xFEFFFFFF & 0xFFFF)
    /* 4A7A0 80059FA0 0000028E */  lw         $v0, 0x0($s0)
    /* 4A7A4 80059FA4 F8670108 */  j          .L80059FE0
    /* 4A7A8 80059FA8 01001224 */   addiu     $s2, $zero, 0x1
  .L80059FAC:
    /* 4A7AC 80059FAC 1A680108 */  j          .L8005A068
    /* 4A7B0 80059FB0 C6010424 */   addiu     $a0, $zero, 0x1C6
  .L80059FB4:
    /* 4A7B4 80059FB4 0D004010 */  beqz       $v0, .L80059FEC
    /* 4A7B8 80059FB8 20008230 */   andi      $v0, $a0, 0x20
    /* 4A7BC 80059FBC 83000424 */  addiu      $a0, $zero, 0x83
    /* 4A7C0 80059FC0 01000524 */  addiu      $a1, $zero, 0x1
    /* 4A7C4 80059FC4 0268000C */  jal        Sound_call
    /* 4A7C8 80059FC8 21300000 */   addu      $a2, $zero, $zero
    /* 4A7CC 80059FCC FFFE033C */  lui        $v1, (0xFEFFFFFF >> 16)
    /* 4A7D0 80059FD0 FFFF6334 */  ori        $v1, $v1, (0xFEFFFFFF & 0xFFFF)
    /* 4A7D4 80059FD4 0000028E */  lw         $v0, 0x0($s0)
    /* 4A7D8 80059FD8 01001224 */  addiu      $s2, $zero, 0x1
    /* 4A7DC 80059FDC 7C0F80AF */  sw         $zero, %gp_rel(D_800987E0)($gp)
  .L80059FE0:
    /* 4A7E0 80059FE0 24104300 */  and        $v0, $v0, $v1
    /* 4A7E4 80059FE4 81680108 */  j          .L8005A204
    /* 4A7E8 80059FE8 000002AE */   sw        $v0, 0x0($s0)
  .L80059FEC:
    /* 4A7EC 80059FEC 26004010 */  beqz       $v0, .L8005A088
    /* 4A7F0 80059FF0 0100A224 */   addiu     $v0, $a1, 0x1
    /* 4A7F4 80059FF4 710002A2 */  sb         $v0, 0x71($s0)
    /* 4A7F8 80059FF8 00160200 */  sll        $v0, $v0, 24
    /* 4A7FC 80059FFC 72000682 */  lb         $a2, 0x72($s0)
    /* 4A800 8005A000 03260200 */  sra        $a0, $v0, 24
    /* 4A804 8005A004 FFFFC224 */  addiu      $v0, $a2, -0x1
    /* 4A808 8005A008 2A108200 */  slt        $v0, $a0, $v0
    /* 4A80C 8005A00C 1B004010 */  beqz       $v0, .L8005A07C
    /* 4A810 8005A010 2118C000 */   addu      $v1, $a2, $zero
    /* 4A814 8005A014 21280000 */  addu       $a1, $zero, $zero
    /* 4A818 8005A018 2310C400 */  subu       $v0, $a2, $a0
    /* 4A81C 8005A01C 40180200 */  sll        $v1, $v0, 1
    /* 4A820 8005A020 6C00048E */  lw         $a0, 0x6C($s0)
    /* 4A824 8005A024 21186200 */  addu       $v1, $v1, $v0
    /* 4A828 8005A028 23208300 */  subu       $a0, $a0, $v1
    /* 4A82C 8005A02C 02008390 */  lbu        $v1, 0x2($a0)
    /* 4A830 8005A030 FFFFA230 */  andi       $v0, $a1, 0xFFFF
  .L8005A034:
    /* 4A834 8005A034 0980013C */  lui        $at, %hi(D_8008D028)
    /* 4A838 8005A038 21082200 */  addu       $at, $at, $v0
    /* 4A83C 8005A03C 28D02290 */  lbu        $v0, %lo(D_8008D028)($at)
    /* 4A840 8005A040 00000000 */  nop
    /* 4A844 8005A044 06006210 */  beq        $v1, $v0, .L8005A060
    /* 4A848 8005A048 00000000 */   nop
    /* 4A84C 8005A04C 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4A850 8005A050 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 4A854 8005A054 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 4A858 8005A058 F6FF4014 */  bnez       $v0, .L8005A034
    /* 4A85C 8005A05C FFFFA230 */   andi      $v0, $a1, 0xFFFF
  .L8005A060:
    /* 4A860 8005A060 860005A6 */  sh         $a1, 0x86($s0)
    /* 4A864 8005A064 83000424 */  addiu      $a0, $zero, 0x83
  .L8005A068:
    /* 4A868 8005A068 01000524 */  addiu      $a1, $zero, 0x1
    /* 4A86C 8005A06C 0268000C */  jal        Sound_call
    /* 4A870 8005A070 21300000 */   addu      $a2, $zero, $zero
    /* 4A874 8005A074 81680108 */  j          .L8005A204
    /* 4A878 8005A078 00000000 */   nop
  .L8005A07C:
    /* 4A87C 8005A07C FEFF6224 */  addiu      $v0, $v1, -0x2
    /* 4A880 8005A080 81680108 */  j          .L8005A204
    /* 4A884 8005A084 710002A2 */   sb        $v0, 0x71($s0)
  .L8005A088:
    /* 4A888 8005A088 80008230 */  andi       $v0, $a0, 0x80
    /* 4A88C 8005A08C 1F004010 */  beqz       $v0, .L8005A10C
    /* 4A890 8005A090 00000000 */   nop
    /* 4A894 8005A094 0200C010 */  beqz       $a2, .L8005A0A0
    /* 4A898 8005A098 FFFFA224 */   addiu     $v0, $a1, -0x1
    /* 4A89C 8005A09C 710002A2 */  sb         $v0, 0x71($s0)
  .L8005A0A0:
    /* 4A8A0 8005A0A0 83000424 */  addiu      $a0, $zero, 0x83
    /* 4A8A4 8005A0A4 01000524 */  addiu      $a1, $zero, 0x1
    /* 4A8A8 8005A0A8 0268000C */  jal        Sound_call
    /* 4A8AC 8005A0AC 21300000 */   addu      $a2, $zero, $zero
    /* 4A8B0 8005A0B0 21280000 */  addu       $a1, $zero, $zero
    /* 4A8B4 8005A0B4 72000482 */  lb         $a0, 0x72($s0)
    /* 4A8B8 8005A0B8 71000282 */  lb         $v0, 0x71($s0)
    /* 4A8BC 8005A0BC 6C00038E */  lw         $v1, 0x6C($s0)
    /* 4A8C0 8005A0C0 23208200 */  subu       $a0, $a0, $v0
    /* 4A8C4 8005A0C4 40100400 */  sll        $v0, $a0, 1
    /* 4A8C8 8005A0C8 21104400 */  addu       $v0, $v0, $a0
    /* 4A8CC 8005A0CC 23186200 */  subu       $v1, $v1, $v0
    /* 4A8D0 8005A0D0 02006390 */  lbu        $v1, 0x2($v1)
    /* 4A8D4 8005A0D4 FFFFA230 */  andi       $v0, $a1, 0xFFFF
  .L8005A0D8:
    /* 4A8D8 8005A0D8 0980013C */  lui        $at, %hi(D_8008D028)
    /* 4A8DC 8005A0DC 21082200 */  addu       $at, $at, $v0
    /* 4A8E0 8005A0E0 28D02290 */  lbu        $v0, %lo(D_8008D028)($at)
    /* 4A8E4 8005A0E4 00000000 */  nop
    /* 4A8E8 8005A0E8 06006210 */  beq        $v1, $v0, .L8005A104
    /* 4A8EC 8005A0EC 00000000 */   nop
    /* 4A8F0 8005A0F0 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4A8F4 8005A0F4 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 4A8F8 8005A0F8 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 4A8FC 8005A0FC F6FF4014 */  bnez       $v0, .L8005A0D8
    /* 4A900 8005A100 FFFFA230 */   andi      $v0, $a1, 0xFFFF
  .L8005A104:
    /* 4A904 8005A104 81680108 */  j          .L8005A204
    /* 4A908 8005A108 860005A6 */   sh        $a1, 0x86($s0)
  .L8005A10C:
    /* 4A90C 8005A10C 10008230 */  andi       $v0, $a0, 0x10
    /* 4A910 8005A110 07004010 */  beqz       $v0, .L8005A130
    /* 4A914 8005A114 01000524 */   addiu     $a1, $zero, 0x1
    /* 4A918 8005A118 81000424 */  addiu      $a0, $zero, 0x81
    /* 4A91C 8005A11C 86000296 */  lhu        $v0, 0x86($s0)
    /* 4A920 8005A120 21300000 */  addu       $a2, $zero, $zero
    /* 4A924 8005A124 BC0000A6 */  sh         $zero, 0xBC($s0)
    /* 4A928 8005A128 78680108 */  j          .L8005A1E0
    /* 4A92C 8005A12C 01004224 */   addiu     $v0, $v0, 0x1
  .L8005A130:
    /* 4A930 8005A130 1000033C */  lui        $v1, (0x100010 >> 16)
    /* 4A934 8005A134 B800058E */  lw         $a1, 0xB8($s0)
    /* 4A938 8005A138 10006334 */  ori        $v1, $v1, (0x100010 & 0xFFFF)
    /* 4A93C 8005A13C 10000224 */  addiu      $v0, $zero, 0x10
    /* 4A940 8005A140 2418A300 */  and        $v1, $a1, $v1
    /* 4A944 8005A144 0D006214 */  bne        $v1, $v0, .L8005A17C
    /* 4A948 8005A148 40008230 */   andi      $v0, $a0, 0x40
    /* 4A94C 8005A14C BC000396 */  lhu        $v1, 0xBC($s0)
    /* 4A950 8005A150 00000000 */  nop
    /* 4A954 8005A154 0D00622C */  sltiu      $v0, $v1, 0xD
    /* 4A958 8005A158 25004014 */  bnez       $v0, .L8005A1F0
    /* 4A95C 8005A15C 81000424 */   addiu     $a0, $zero, 0x81
    /* 4A960 8005A160 01000524 */  addiu      $a1, $zero, 0x1
    /* 4A964 8005A164 21300000 */  addu       $a2, $zero, $zero
    /* 4A968 8005A168 86000296 */  lhu        $v0, 0x86($s0)
    /* 4A96C 8005A16C 0C000324 */  addiu      $v1, $zero, 0xC
    /* 4A970 8005A170 BC0003A6 */  sh         $v1, 0xBC($s0)
    /* 4A974 8005A174 78680108 */  j          .L8005A1E0
    /* 4A978 8005A178 01004224 */   addiu     $v0, $v0, 0x1
  .L8005A17C:
    /* 4A97C 8005A17C 06004010 */  beqz       $v0, .L8005A198
    /* 4A980 8005A180 81000424 */   addiu     $a0, $zero, 0x81
    /* 4A984 8005A184 01000524 */  addiu      $a1, $zero, 0x1
    /* 4A988 8005A188 86000296 */  lhu        $v0, 0x86($s0)
    /* 4A98C 8005A18C 21300000 */  addu       $a2, $zero, $zero
    /* 4A990 8005A190 77680108 */  j          .L8005A1DC
    /* 4A994 8005A194 BC0000A6 */   sh        $zero, 0xBC($s0)
  .L8005A198:
    /* 4A998 8005A198 4000023C */  lui        $v0, (0x400040 >> 16)
    /* 4A99C 8005A19C 40004234 */  ori        $v0, $v0, (0x400040 & 0xFFFF)
    /* 4A9A0 8005A1A0 2410A200 */  and        $v0, $a1, $v0
    /* 4A9A4 8005A1A4 40000324 */  addiu      $v1, $zero, 0x40
    /* 4A9A8 8005A1A8 16004314 */  bne        $v0, $v1, .L8005A204
    /* 4A9AC 8005A1AC 00000000 */   nop
    /* 4A9B0 8005A1B0 BC000396 */  lhu        $v1, 0xBC($s0)
    /* 4A9B4 8005A1B4 00000000 */  nop
    /* 4A9B8 8005A1B8 0D00622C */  sltiu      $v0, $v1, 0xD
    /* 4A9BC 8005A1BC 0D004014 */  bnez       $v0, .L8005A1F4
    /* 4A9C0 8005A1C0 01006224 */   addiu     $v0, $v1, 0x1
    /* 4A9C4 8005A1C4 81000424 */  addiu      $a0, $zero, 0x81
    /* 4A9C8 8005A1C8 01000524 */  addiu      $a1, $zero, 0x1
    /* 4A9CC 8005A1CC 21300000 */  addu       $a2, $zero, $zero
    /* 4A9D0 8005A1D0 86000296 */  lhu        $v0, 0x86($s0)
    /* 4A9D4 8005A1D4 0C000324 */  addiu      $v1, $zero, 0xC
    /* 4A9D8 8005A1D8 BC0003A6 */  sh         $v1, 0xBC($s0)
  .L8005A1DC:
    /* 4A9DC 8005A1DC FFFF4224 */  addiu      $v0, $v0, -0x1
  .L8005A1E0:
    /* 4A9E0 8005A1E0 0268000C */  jal        Sound_call
    /* 4A9E4 8005A1E4 860002A6 */   sh        $v0, 0x86($s0)
    /* 4A9E8 8005A1E8 81680108 */  j          .L8005A204
    /* 4A9EC 8005A1EC 00000000 */   nop
  .L8005A1F0:
    /* 4A9F0 8005A1F0 01006224 */  addiu      $v0, $v1, 0x1
  .L8005A1F4:
    /* 4A9F4 8005A1F4 81680108 */  j          .L8005A204
    /* 4A9F8 8005A1F8 BC0002A6 */   sh        $v0, 0xBC($s0)
  .L8005A1FC:
    /* 4A9FC 8005A1FC FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 4AA00 8005A200 040002A6 */  sh         $v0, 0x4($s0)
  .L8005A204:
    /* 4AA04 8005A204 86000286 */  lh         $v0, 0x86($s0)
    /* 4AA08 8005A208 00000000 */  nop
    /* 4AA0C 8005A20C 0A004228 */  slti       $v0, $v0, 0xA
    /* 4AA10 8005A210 02004014 */  bnez       $v0, .L8005A21C
    /* 4AA14 8005A214 00000000 */   nop
    /* 4AA18 8005A218 860000A6 */  sh         $zero, 0x86($s0)
  .L8005A21C:
    /* 4AA1C 8005A21C 86000286 */  lh         $v0, 0x86($s0)
    /* 4AA20 8005A220 00000000 */  nop
    /* 4AA24 8005A224 03004104 */  bgez       $v0, .L8005A234
    /* 4AA28 8005A228 FFFF4332 */   andi      $v1, $s2, 0xFFFF
    /* 4AA2C 8005A22C 09000224 */  addiu      $v0, $zero, 0x9
    /* 4AA30 8005A230 860002A6 */  sh         $v0, 0x86($s0)
  .L8005A234:
    /* 4AA34 8005A234 95006014 */  bnez       $v1, .L8005A48C
    /* 4AA38 8005A238 00000000 */   nop
    /* 4AA3C 8005A23C 72000282 */  lb         $v0, 0x72($s0)
    /* 4AA40 8005A240 72000492 */  lbu        $a0, 0x72($s0)
    /* 4AA44 8005A244 2A106200 */  slt        $v0, $v1, $v0
    /* 4AA48 8005A248 12004010 */  beqz       $v0, .L8005A294
    /* 4AA4C 8005A24C 21280000 */   addu      $a1, $zero, $zero
    /* 4AA50 8005A250 50000624 */  addiu      $a2, $zero, 0x50
    /* 4AA54 8005A254 FFFFA330 */  andi       $v1, $a1, 0xFFFF
  .L8005A258:
    /* 4AA58 8005A258 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4AA5C 8005A25C 00160400 */  sll        $v0, $a0, 24
    /* 4AA60 8005A260 03160200 */  sra        $v0, $v0, 24
    /* 4AA64 8005A264 23104300 */  subu       $v0, $v0, $v1
    /* 4AA68 8005A268 40180200 */  sll        $v1, $v0, 1
    /* 4AA6C 8005A26C 21186200 */  addu       $v1, $v1, $v0
    /* 4AA70 8005A270 6C00048E */  lw         $a0, 0x6C($s0)
    /* 4AA74 8005A274 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 4AA78 8005A278 23208300 */  subu       $a0, $a0, $v1
    /* 4AA7C 8005A27C 010086A0 */  sb         $a2, 0x1($a0)
    /* 4AA80 8005A280 72000382 */  lb         $v1, 0x72($s0)
    /* 4AA84 8005A284 72000492 */  lbu        $a0, 0x72($s0)
    /* 4AA88 8005A288 2A104300 */  slt        $v0, $v0, $v1
    /* 4AA8C 8005A28C F2FF4014 */  bnez       $v0, .L8005A258
    /* 4AA90 8005A290 FFFFA330 */   andi      $v1, $a1, 0xFFFF
  .L8005A294:
    /* 4AA94 8005A294 72000282 */  lb         $v0, 0x72($s0)
    /* 4AA98 8005A298 71000382 */  lb         $v1, 0x71($s0)
    /* 4AA9C 8005A29C 86000486 */  lh         $a0, 0x86($s0)
    /* 4AAA0 8005A2A0 23104300 */  subu       $v0, $v0, $v1
    /* 4AAA4 8005A2A4 40180200 */  sll        $v1, $v0, 1
    /* 4AAA8 8005A2A8 21186200 */  addu       $v1, $v1, $v0
    /* 4AAAC 8005A2AC 6C00028E */  lw         $v0, 0x6C($s0)
    /* 4AAB0 8005A2B0 0980013C */  lui        $at, %hi(D_8008D028)
    /* 4AAB4 8005A2B4 21082400 */  addu       $at, $at, $a0
    /* 4AAB8 8005A2B8 28D02490 */  lbu        $a0, %lo(D_8008D028)($at)
    /* 4AABC 8005A2BC 23104300 */  subu       $v0, $v0, $v1
    /* 4AAC0 8005A2C0 020044A0 */  sb         $a0, 0x2($v0)
    /* 4AAC4 8005A2C4 72000282 */  lb         $v0, 0x72($s0)
    /* 4AAC8 8005A2C8 71000382 */  lb         $v1, 0x71($s0)
    /* 4AACC 8005A2CC 00000000 */  nop
    /* 4AAD0 8005A2D0 23104300 */  subu       $v0, $v0, $v1
    /* 4AAD4 8005A2D4 40180200 */  sll        $v1, $v0, 1
    /* 4AAD8 8005A2D8 21186200 */  addu       $v1, $v1, $v0
    /* 4AADC 8005A2DC 6C00028E */  lw         $v0, 0x6C($s0)
    /* 4AAE0 8005A2E0 840E8493 */  lbu        $a0, %gp_rel(D_800986E8)($gp)
    /* 4AAE4 8005A2E4 23104300 */  subu       $v0, $v0, $v1
    /* 4AAE8 8005A2E8 010044A0 */  sb         $a0, 0x1($v0)
    /* 4AAEC 8005A2EC 840E8293 */  lbu        $v0, %gp_rel(D_800986E8)($gp)
    /* 4AAF0 8005A2F0 880E8493 */  lbu        $a0, %gp_rel(D_800986EC)($gp)
    /* 4AAF4 8005A2F4 00000000 */  nop
    /* 4AAF8 8005A2F8 21104400 */  addu       $v0, $v0, $a0
    /* 4AAFC 8005A2FC FF004330 */  andi       $v1, $v0, 0xFF
    /* 4AB00 8005A300 840E82A3 */  sb         $v0, %gp_rel(D_800986E8)($gp)
    /* 4AB04 8005A304 90000224 */  addiu      $v0, $zero, 0x90
    /* 4AB08 8005A308 03006210 */  beq        $v1, $v0, .L8005A318
    /* 4AB0C 8005A30C 60000224 */   addiu     $v0, $zero, 0x60
    /* 4AB10 8005A310 03006214 */  bne        $v1, $v0, .L8005A320
    /* 4AB14 8005A314 00000000 */   nop
  .L8005A318:
    /* 4AB18 8005A318 23100400 */  negu       $v0, $a0
    /* 4AB1C 8005A31C 880E82A3 */  sb         $v0, %gp_rel(D_800986EC)($gp)
  .L8005A320:
    /* 4AB20 8005A320 7C0F80AF */  sw         $zero, %gp_rel(D_800987E0)($gp)
    /* 4AB24 8005A324 72000282 */  lb         $v0, 0x72($s0)
    /* 4AB28 8005A328 00000000 */  nop
    /* 4AB2C 8005A32C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4AB30 8005A330 1B004018 */  blez       $v0, .L8005A3A0
    /* 4AB34 8005A334 21280000 */   addu      $a1, $zero, $zero
    /* 4AB38 8005A338 6C00078E */  lw         $a3, 0x6C($s0)
    /* 4AB3C 8005A33C 0980063C */  lui        $a2, %hi(D_8008D028)
    /* 4AB40 8005A340 28D0C690 */  lbu        $a2, %lo(D_8008D028)($a2)
  .L8005A344:
    /* 4AB44 8005A344 7C0F828F */  lw         $v0, %gp_rel(D_800987E0)($gp)
    /* 4AB48 8005A348 00000000 */  nop
    /* 4AB4C 8005A34C 80200200 */  sll        $a0, $v0, 2
    /* 4AB50 8005A350 21208200 */  addu       $a0, $a0, $v0
    /* 4AB54 8005A354 40200400 */  sll        $a0, $a0, 1
    /* 4AB58 8005A358 7C0F84AF */  sw         $a0, %gp_rel(D_800987E0)($gp)
    /* 4AB5C 8005A35C 72000382 */  lb         $v1, 0x72($s0)
    /* 4AB60 8005A360 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 4AB64 8005A364 23186200 */  subu       $v1, $v1, $v0
    /* 4AB68 8005A368 40100300 */  sll        $v0, $v1, 1
    /* 4AB6C 8005A36C 21104300 */  addu       $v0, $v0, $v1
    /* 4AB70 8005A370 2310E200 */  subu       $v0, $a3, $v0
    /* 4AB74 8005A374 02004290 */  lbu        $v0, 0x2($v0)
    /* 4AB78 8005A378 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4AB7C 8005A37C 23104600 */  subu       $v0, $v0, $a2
    /* 4AB80 8005A380 21208200 */  addu       $a0, $a0, $v0
    /* 4AB84 8005A384 7C0F84AF */  sw         $a0, %gp_rel(D_800987E0)($gp)
    /* 4AB88 8005A388 72000282 */  lb         $v0, 0x72($s0)
    /* 4AB8C 8005A38C FFFFA330 */  andi       $v1, $a1, 0xFFFF
    /* 4AB90 8005A390 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4AB94 8005A394 2A186200 */  slt        $v1, $v1, $v0
    /* 4AB98 8005A398 EAFF6014 */  bnez       $v1, .L8005A344
    /* 4AB9C 8005A39C 00000000 */   nop
  .L8005A3A0:
    /* 4ABA0 8005A3A0 9012848F */  lw         $a0, %gp_rel(D_80098AF4)($gp)
    /* 4ABA4 8005A3A4 9F0C010C */  jal        func_8004327C
    /* 4ABA8 8005A3A8 23200400 */   negu      $a0, $a0
    /* 4ABAC 8005A3AC 05004010 */  beqz       $v0, .L8005A3C4
    /* 4ABB0 8005A3B0 00000000 */   nop
    /* 4ABB4 8005A3B4 0C80113C */  lui        $s1, %hi(Game_work + 0x1C)
    /* 4ABB8 8005A3B8 2C1B318E */  lw         $s1, %lo(Game_work + 0x1C)($s1)
    /* 4ABBC 8005A3BC F2680108 */  j          .L8005A3C8
    /* 4ABC0 8005A3C0 00000000 */   nop
  .L8005A3C4:
    /* 4ABC4 8005A3C4 9012918F */  lw         $s1, %gp_rel(D_80098AF4)($gp)
  .L8005A3C8:
    /* 4ABC8 8005A3C8 7C0F828F */  lw         $v0, %gp_rel(D_800987E0)($gp)
    /* 4ABCC 8005A3CC 00000000 */  nop
    /* 4ABD0 8005A3D0 2B102202 */  sltu       $v0, $s1, $v0
    /* 4ABD4 8005A3D4 64004010 */  beqz       $v0, .L8005A568
    /* 4ABD8 8005A3D8 02000424 */   addiu     $a0, $zero, 0x2
    /* 4ABDC 8005A3DC 0C80063C */  lui        $a2, %hi(D_800BE2F8)
    /* 4ABE0 8005A3E0 F8E2C624 */  addiu      $a2, $a2, %lo(D_800BE2F8)
    /* 4ABE4 8005A3E4 C46F010C */  jal        func_8005BF10
    /* 4ABE8 8005A3E8 21282002 */   addu      $a1, $s1, $zero
    /* 4ABEC 8005A3EC 72000282 */  lb         $v0, 0x72($s0)
    /* 4ABF0 8005A3F0 72000692 */  lbu        $a2, 0x72($s0)
    /* 4ABF4 8005A3F4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4ABF8 8005A3F8 15004018 */  blez       $v0, .L8005A450
    /* 4ABFC 8005A3FC 21280000 */   addu      $a1, $zero, $zero
    /* 4AC00 8005A400 FFFFA430 */  andi       $a0, $a1, 0xFFFF
  .L8005A404:
    /* 4AC04 8005A404 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4AC08 8005A408 00160600 */  sll        $v0, $a2, 24
    /* 4AC0C 8005A40C 03160200 */  sra        $v0, $v0, 24
    /* 4AC10 8005A410 23104400 */  subu       $v0, $v0, $a0
    /* 4AC14 8005A414 40180200 */  sll        $v1, $v0, 1
    /* 4AC18 8005A418 21186200 */  addu       $v1, $v1, $v0
    /* 4AC1C 8005A41C 6C00028E */  lw         $v0, 0x6C($s0)
    /* 4AC20 8005A420 0C80013C */  lui        $at, %hi(D_800BE2F9)
    /* 4AC24 8005A424 21082400 */  addu       $at, $at, $a0
    /* 4AC28 8005A428 F9E22490 */  lbu        $a0, %lo(D_800BE2F9)($at)
    /* 4AC2C 8005A42C 23104300 */  subu       $v0, $v0, $v1
    /* 4AC30 8005A430 FFFFA330 */  andi       $v1, $a1, 0xFFFF
    /* 4AC34 8005A434 020044A0 */  sb         $a0, 0x2($v0)
    /* 4AC38 8005A438 72000282 */  lb         $v0, 0x72($s0)
    /* 4AC3C 8005A43C 72000692 */  lbu        $a2, 0x72($s0)
    /* 4AC40 8005A440 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4AC44 8005A444 2A186200 */  slt        $v1, $v1, $v0
    /* 4AC48 8005A448 EEFF6014 */  bnez       $v1, .L8005A404
    /* 4AC4C 8005A44C FFFFA430 */   andi      $a0, $a1, 0xFFFF
  .L8005A450:
    /* 4AC50 8005A450 7C0F91AF */  sw         $s1, %gp_rel(D_800987E0)($gp)
    /* 4AC54 8005A454 72000482 */  lb         $a0, 0x72($s0)
    /* 4AC58 8005A458 71000282 */  lb         $v0, 0x71($s0)
    /* 4AC5C 8005A45C 6C00038E */  lw         $v1, 0x6C($s0)
    /* 4AC60 8005A460 23208200 */  subu       $a0, $a0, $v0
    /* 4AC64 8005A464 40100400 */  sll        $v0, $a0, 1
    /* 4AC68 8005A468 21104400 */  addu       $v0, $v0, $a0
    /* 4AC6C 8005A46C 23186200 */  subu       $v1, $v1, $v0
    /* 4AC70 8005A470 02006290 */  lbu        $v0, 0x2($v1)
    /* 4AC74 8005A474 0980033C */  lui        $v1, %hi(D_8008D028)
    /* 4AC78 8005A478 28D06390 */  lbu        $v1, %lo(D_8008D028)($v1)
    /* 4AC7C 8005A47C 00000000 */  nop
    /* 4AC80 8005A480 23104300 */  subu       $v0, $v0, $v1
    /* 4AC84 8005A484 5A690108 */  j          .L8005A568
    /* 4AC88 8005A488 860002A6 */   sh        $v0, 0x86($s0)
  .L8005A48C:
    /* 4AC8C 8005A48C 7C0F858F */  lw         $a1, %gp_rel(D_800987E0)($gp)
    /* 4AC90 8005A490 0C80063C */  lui        $a2, %hi(D_800BE2F8)
    /* 4AC94 8005A494 F8E2C624 */  addiu      $a2, $a2, %lo(D_800BE2F8)
    /* 4AC98 8005A498 C46F010C */  jal        func_8005BF10
    /* 4AC9C 8005A49C 02000424 */   addiu     $a0, $zero, 0x2
    /* 4ACA0 8005A4A0 72000282 */  lb         $v0, 0x72($s0)
    /* 4ACA4 8005A4A4 72000692 */  lbu        $a2, 0x72($s0)
    /* 4ACA8 8005A4A8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4ACAC 8005A4AC 15004018 */  blez       $v0, .L8005A504
    /* 4ACB0 8005A4B0 21280000 */   addu      $a1, $zero, $zero
    /* 4ACB4 8005A4B4 FFFFA430 */  andi       $a0, $a1, 0xFFFF
  .L8005A4B8:
    /* 4ACB8 8005A4B8 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4ACBC 8005A4BC 00160600 */  sll        $v0, $a2, 24
    /* 4ACC0 8005A4C0 03160200 */  sra        $v0, $v0, 24
    /* 4ACC4 8005A4C4 23104400 */  subu       $v0, $v0, $a0
    /* 4ACC8 8005A4C8 40180200 */  sll        $v1, $v0, 1
    /* 4ACCC 8005A4CC 21186200 */  addu       $v1, $v1, $v0
    /* 4ACD0 8005A4D0 6C00028E */  lw         $v0, 0x6C($s0)
    /* 4ACD4 8005A4D4 0C80013C */  lui        $at, %hi(D_800BE2F9)
    /* 4ACD8 8005A4D8 21082400 */  addu       $at, $at, $a0
    /* 4ACDC 8005A4DC F9E22490 */  lbu        $a0, %lo(D_800BE2F9)($at)
    /* 4ACE0 8005A4E0 23104300 */  subu       $v0, $v0, $v1
    /* 4ACE4 8005A4E4 FFFFA330 */  andi       $v1, $a1, 0xFFFF
    /* 4ACE8 8005A4E8 020044A0 */  sb         $a0, 0x2($v0)
    /* 4ACEC 8005A4EC 72000282 */  lb         $v0, 0x72($s0)
    /* 4ACF0 8005A4F0 72000692 */  lbu        $a2, 0x72($s0)
    /* 4ACF4 8005A4F4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4ACF8 8005A4F8 2A186200 */  slt        $v1, $v1, $v0
    /* 4ACFC 8005A4FC EEFF6014 */  bnez       $v1, .L8005A4B8
    /* 4AD00 8005A500 FFFFA430 */   andi      $a0, $a1, 0xFFFF
  .L8005A504:
    /* 4AD04 8005A504 72000282 */  lb         $v0, 0x72($s0)
    /* 4AD08 8005A508 72000492 */  lbu        $a0, 0x72($s0)
    /* 4AD0C 8005A50C 12004018 */  blez       $v0, .L8005A558
    /* 4AD10 8005A510 21280000 */   addu      $a1, $zero, $zero
    /* 4AD14 8005A514 80000624 */  addiu      $a2, $zero, 0x80
    /* 4AD18 8005A518 FFFFA330 */  andi       $v1, $a1, 0xFFFF
  .L8005A51C:
    /* 4AD1C 8005A51C 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4AD20 8005A520 00160400 */  sll        $v0, $a0, 24
    /* 4AD24 8005A524 03160200 */  sra        $v0, $v0, 24
    /* 4AD28 8005A528 23104300 */  subu       $v0, $v0, $v1
    /* 4AD2C 8005A52C 40180200 */  sll        $v1, $v0, 1
    /* 4AD30 8005A530 21186200 */  addu       $v1, $v1, $v0
    /* 4AD34 8005A534 6C00048E */  lw         $a0, 0x6C($s0)
    /* 4AD38 8005A538 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 4AD3C 8005A53C 23208300 */  subu       $a0, $a0, $v1
    /* 4AD40 8005A540 010086A0 */  sb         $a2, 0x1($a0)
    /* 4AD44 8005A544 72000382 */  lb         $v1, 0x72($s0)
    /* 4AD48 8005A548 72000492 */  lbu        $a0, 0x72($s0)
    /* 4AD4C 8005A54C 2A104300 */  slt        $v0, $v0, $v1
    /* 4AD50 8005A550 F2FF4014 */  bnez       $v0, .L8005A51C
    /* 4AD54 8005A554 FFFFA330 */   andi      $v1, $a1, 0xFFFF
  .L8005A558:
    /* 4AD58 8005A558 6C00028E */  lw         $v0, 0x6C($s0)
    /* 4AD5C 8005A55C 00000000 */  nop
    /* 4AD60 8005A560 02004224 */  addiu      $v0, $v0, 0x2
    /* 4AD64 8005A564 6C0002AE */  sw         $v0, 0x6C($s0)
  .L8005A568:
    /* 4AD68 8005A568 21104002 */  addu       $v0, $s2, $zero
    /* 4AD6C 8005A56C 0000038E */  lw         $v1, 0x0($s0)
    /* 4AD70 8005A570 8000043C */  lui        $a0, (0x800000 >> 16)
    /* 4AD74 8005A574 25186400 */  or         $v1, $v1, $a0
    /* 4AD78 8005A578 000003AE */  sw         $v1, 0x0($s0)
    /* 4AD7C 8005A57C 7C00BF8F */  lw         $ra, 0x7C($sp)
    /* 4AD80 8005A580 7800B28F */  lw         $s2, 0x78($sp)
    /* 4AD84 8005A584 7400B18F */  lw         $s1, 0x74($sp)
    /* 4AD88 8005A588 7000B08F */  lw         $s0, 0x70($sp)
    /* 4AD8C 8005A58C 8000BD27 */  addiu      $sp, $sp, 0x80
    /* 4AD90 8005A590 0800E003 */  jr         $ra
    /* 4AD94 8005A594 00000000 */   nop
.size func_80059E74, . - func_80059E74
