.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A100
    /* 4A900 8005A100 FFFFA230 */  andi       $v0, $a1, 0xFFFF
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
.size func_8005A100, . - func_8005A100
