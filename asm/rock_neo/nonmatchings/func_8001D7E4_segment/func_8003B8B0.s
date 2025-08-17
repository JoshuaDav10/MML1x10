.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003B8B0
    /* 2C0B0 8003B8B0 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 2C0B4 8003B8B4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2C0B8 8003B8B8 21A08000 */  addu       $s4, $a0, $zero
    /* 2C0BC 8003B8BC 2400B5AF */  sw         $s5, 0x24($sp)
    /* 2C0C0 8003B8C0 21A8A000 */  addu       $s5, $a1, $zero
    /* 2C0C4 8003B8C4 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 2C0C8 8003B8C8 21B8C000 */  addu       $s7, $a2, $zero
    /* 2C0CC 8003B8CC 3000BEAF */  sw         $fp, 0x30($sp)
    /* 2C0D0 8003B8D0 3400BFAF */  sw         $ra, 0x34($sp)
    /* 2C0D4 8003B8D4 2800B6AF */  sw         $s6, 0x28($sp)
    /* 2C0D8 8003B8D8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2C0DC 8003B8DC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2C0E0 8003B8E0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2C0E4 8003B8E4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C0E8 8003B8E8 0000838E */  lw         $v1, 0x0($s4)
    /* 2C0EC 8003B8EC 4800B68F */  lw         $s6, 0x48($sp)
    /* 2C0F0 8003B8F0 03006014 */  bnez       $v1, .L8003B900
    /* 2C0F4 8003B8F4 21F0E000 */   addu      $fp, $a3, $zero
    /* 2C0F8 8003B8F8 49EE0008 */  j          .L8003B924
    /* 2C0FC 8003B8FC 21800000 */   addu      $s0, $zero, $zero
  .L8003B900:
    /* 2C100 8003B900 42101500 */  srl        $v0, $s5, 1
    /* 2C104 8003B904 2B104300 */  sltu       $v0, $v0, $v1
    /* 2C108 8003B908 03004014 */  bnez       $v0, .L8003B918
    /* 2C10C 8003B90C 2B107500 */   sltu      $v0, $v1, $s5
    /* 2C110 8003B910 49EE0008 */  j          .L8003B924
    /* 2C114 8003B914 01001024 */   addiu     $s0, $zero, 0x1
  .L8003B918:
    /* 2C118 8003B918 02004010 */  beqz       $v0, .L8003B924
    /* 2C11C 8003B91C 03001024 */   addiu     $s0, $zero, 0x3
    /* 2C120 8003B920 02001024 */  addiu      $s0, $zero, 0x2
  .L8003B924:
    /* 2C124 8003B924 01001124 */  addiu      $s1, $zero, 0x1
    /* 2C128 8003B928 01001324 */  addiu      $s3, $zero, 0x1
    /* 2C12C 8003B92C 0C001224 */  addiu      $s2, $zero, 0xC
  .L8003B930:
    /* 2C130 8003B930 1680013C */  lui        $at, %hi(D_8015C008)
    /* 2C134 8003B934 21084102 */  addu       $at, $s2, $at
    /* 2C138 8003B938 08C0228C */  lw         $v0, %lo(D_8015C008)($at)
    /* 2C13C 8003B93C 00000000 */  nop
    /* 2C140 8003B940 38004010 */  beqz       $v0, .L8003BA24
    /* 2C144 8003B944 FFFF033C */   lui       $v1, (0xFFFF0000 >> 16)
    /* 2C148 8003B948 0000428C */  lw         $v0, 0x0($v0)
    /* 2C14C 8003B94C 00000000 */  nop
    /* 2C150 8003B950 24104300 */  and        $v0, $v0, $v1
    /* 2C154 8003B954 26005714 */  bne        $v0, $s7, .L8003B9F0
    /* 2C158 8003B958 00000000 */   nop
    /* 2C15C 8003B95C 21006012 */  beqz       $s3, .L8003B9E4
    /* 2C160 8003B960 2120C003 */   addu      $a0, $fp, $zero
    /* 2C164 8003B964 21980000 */  addu       $s3, $zero, $zero
    /* 2C168 8003B968 D8EC000C */  jal        func_8003B360
    /* 2C16C 8003B96C 21202002 */   addu      $a0, $s1, $zero
    /* 2C170 8003B970 21184000 */  addu       $v1, $v0, $zero
    /* 2C174 8003B974 01000224 */  addiu      $v0, $zero, 0x1
    /* 2C178 8003B978 0B006210 */  beq        $v1, $v0, .L8003B9A8
    /* 2C17C 8003B97C 02006228 */   slti      $v0, $v1, 0x2
    /* 2C180 8003B980 05004014 */  bnez       $v0, .L8003B998
    /* 2C184 8003B984 02000224 */   addiu     $v0, $zero, 0x2
    /* 2C188 8003B988 0C006210 */  beq        $v1, $v0, .L8003B9BC
    /* 2C18C 8003B98C 03000224 */   addiu     $v0, $zero, 0x3
    /* 2C190 8003B990 24006210 */  beq        $v1, $v0, .L8003BA24
    /* 2C194 8003B994 00000000 */   nop
  .L8003B998:
    /* 2C198 8003B998 12000012 */  beqz       $s0, .L8003B9E4
    /* 2C19C 8003B99C 2120C003 */   addu      $a0, $fp, $zero
    /* 2C1A0 8003B9A0 79EE0008 */  j          .L8003B9E4
    /* 2C1A4 8003B9A4 01001024 */   addiu     $s0, $zero, 0x1
  .L8003B9A8:
    /* 2C1A8 8003B9A8 0200022E */  sltiu      $v0, $s0, 0x2
    /* 2C1AC 8003B9AC 0D004014 */  bnez       $v0, .L8003B9E4
    /* 2C1B0 8003B9B0 2120C003 */   addu      $a0, $fp, $zero
    /* 2C1B4 8003B9B4 79EE0008 */  j          .L8003B9E4
    /* 2C1B8 8003B9B8 02001024 */   addiu     $s0, $zero, 0x2
  .L8003B9BC:
    /* 2C1BC 8003B9BC 0300022E */  sltiu      $v0, $s0, 0x3
    /* 2C1C0 8003B9C0 08004014 */  bnez       $v0, .L8003B9E4
    /* 2C1C4 8003B9C4 2120C003 */   addu      $a0, $fp, $zero
    /* 2C1C8 8003B9C8 03001024 */  addiu      $s0, $zero, 0x3
    /* 2C1CC 8003B9CC 0000828E */  lw         $v0, 0x0($s4)
    /* 2C1D0 8003B9D0 0600C426 */  addiu      $a0, $s6, 0x6
    /* 2C1D4 8003B9D4 23105500 */  subu       $v0, $v0, $s5
    /* 2C1D8 8003B9D8 A376000C */  jal        Sce_flag_on
    /* 2C1DC 8003B9DC 000082AE */   sw        $v0, 0x0($s4)
    /* 2C1E0 8003B9E0 2120C003 */  addu       $a0, $fp, $zero
  .L8003B9E4:
    /* 2C1E4 8003B9E4 21282002 */  addu       $a1, $s1, $zero
    /* 2C1E8 8003B9E8 50ED000C */  jal        func_8003B540
    /* 2C1EC 8003B9EC 21300002 */   addu      $a2, $s0, $zero
  .L8003B9F0:
    /* 2C1F0 8003B9F0 01003126 */  addiu      $s1, $s1, 0x1
    /* 2C1F4 8003B9F4 0008222E */  sltiu      $v0, $s1, 0x800
    /* 2C1F8 8003B9F8 CDFF4014 */  bnez       $v0, .L8003B930
    /* 2C1FC 8003B9FC 0C005226 */   addiu     $s2, $s2, 0xC
    /* 2C200 8003BA00 0300022E */  sltiu      $v0, $s0, 0x3
    /* 2C204 8003BA04 05004010 */  beqz       $v0, .L8003BA1C
    /* 2C208 8003BA08 00000000 */   nop
    /* 2C20C 8003BA0C A376000C */  jal        Sce_flag_on
    /* 2C210 8003BA10 2120C002 */   addu      $a0, $s6, $zero
    /* 2C214 8003BA14 89EE0008 */  j          .L8003BA24
    /* 2C218 8003BA18 00000000 */   nop
  .L8003BA1C:
    /* 2C21C 8003BA1C 3477000C */  jal        Sce_flag_off
    /* 2C220 8003BA20 2120C002 */   addu      $a0, $s6, $zero
  .L8003BA24:
    /* 2C224 8003BA24 3400BF8F */  lw         $ra, 0x34($sp)
    /* 2C228 8003BA28 3000BE8F */  lw         $fp, 0x30($sp)
    /* 2C22C 8003BA2C 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 2C230 8003BA30 2800B68F */  lw         $s6, 0x28($sp)
    /* 2C234 8003BA34 2400B58F */  lw         $s5, 0x24($sp)
    /* 2C238 8003BA38 2000B48F */  lw         $s4, 0x20($sp)
    /* 2C23C 8003BA3C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2C240 8003BA40 1800B28F */  lw         $s2, 0x18($sp)
    /* 2C244 8003BA44 1400B18F */  lw         $s1, 0x14($sp)
    /* 2C248 8003BA48 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C24C 8003BA4C 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 2C250 8003BA50 0800E003 */  jr         $ra
    /* 2C254 8003BA54 00000000 */   nop
.size func_8003B8B0, . - func_8003B8B0
