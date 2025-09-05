.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058280
    /* 48A80 80058280 10008230 */  andi       $v0, $a0, 0x10
    /* 48A84 80058284 07004010 */  beqz       $v0, .L800582A4
    /* 48A88 80058288 21300000 */   addu      $a2, $zero, $zero
    /* 48A8C 8005828C 81000424 */  addiu      $a0, $zero, 0x81
    /* 48A90 80058290 01000524 */  addiu      $a1, $zero, 0x1
    /* 48A94 80058294 86000296 */  lhu        $v0, 0x86($s0)
    /* 48A98 80058298 BC0000A6 */  sh         $zero, 0xBC($s0)
    /* 48A9C 8005829C D4600108 */  j          .L80058350
    /* 48AA0 800582A0 01004224 */   addiu     $v0, $v0, 0x1
  .L800582A4:
    /* 48AA4 800582A4 1000023C */  lui        $v0, (0x100010 >> 16)
    /* 48AA8 800582A8 10004234 */  ori        $v0, $v0, (0x100010 & 0xFFFF)
    /* 48AAC 800582AC 2410A200 */  and        $v0, $a1, $v0
    /* 48AB0 800582B0 10000324 */  addiu      $v1, $zero, 0x10
    /* 48AB4 800582B4 0D004314 */  bne        $v0, $v1, .L800582EC
    /* 48AB8 800582B8 40008230 */   andi      $v0, $a0, 0x40
    /* 48ABC 800582BC BC000396 */  lhu        $v1, 0xBC($s0)
    /* 48AC0 800582C0 00000000 */  nop
    /* 48AC4 800582C4 0D00622C */  sltiu      $v0, $v1, 0xD
    /* 48AC8 800582C8 25004014 */  bnez       $v0, .L80058360
    /* 48ACC 800582CC 81000424 */   addiu     $a0, $zero, 0x81
    /* 48AD0 800582D0 01000524 */  addiu      $a1, $zero, 0x1
    /* 48AD4 800582D4 21300000 */  addu       $a2, $zero, $zero
    /* 48AD8 800582D8 86000296 */  lhu        $v0, 0x86($s0)
    /* 48ADC 800582DC 0C000324 */  addiu      $v1, $zero, 0xC
    /* 48AE0 800582E0 BC0003A6 */  sh         $v1, 0xBC($s0)
    /* 48AE4 800582E4 D4600108 */  j          .L80058350
    /* 48AE8 800582E8 01004224 */   addiu     $v0, $v0, 0x1
  .L800582EC:
    /* 48AEC 800582EC 06004010 */  beqz       $v0, .L80058308
    /* 48AF0 800582F0 81000424 */   addiu     $a0, $zero, 0x81
    /* 48AF4 800582F4 01000524 */  addiu      $a1, $zero, 0x1
    /* 48AF8 800582F8 86000296 */  lhu        $v0, 0x86($s0)
    /* 48AFC 800582FC 21300000 */  addu       $a2, $zero, $zero
.size func_80058280, . - func_80058280
