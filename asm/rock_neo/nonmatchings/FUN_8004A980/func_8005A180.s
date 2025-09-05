.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A180
    /* 4A980 8005A180 81000424 */  addiu      $a0, $zero, 0x81
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
.size func_8005A180, . - func_8005A180
