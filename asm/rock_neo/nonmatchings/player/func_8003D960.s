.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003D960
    /* 2E160 8003D960 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2E164 8003D964 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2E168 8003D968 21808000 */  addu       $s0, $a0, $zero
    /* 2E16C 8003D96C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2E170 8003D970 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2E174 8003D974 1C010596 */  lhu        $a1, 0x11C($s0)
    /* 2E178 8003D978 06004014 */  bnez       $v0, .L8003D994
    /* 2E17C 8003D97C 01000224 */   addiu     $v0, $zero, 0x1
    /* 2E180 8003D980 74010392 */  lbu        $v1, 0x174($s0)
    /* 2E184 8003D984 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 2E188 8003D988 B40000A6 */  sh         $zero, 0xB4($s0)
    /* 2E18C 8003D98C 04006334 */  ori        $v1, $v1, 0x4
    /* 2E190 8003D990 740103A2 */  sb         $v1, 0x174($s0)
  .L8003D994:
    /* 2E194 8003D994 30010496 */  lhu        $a0, 0x130($s0)
    /* 2E198 8003D998 32010296 */  lhu        $v0, 0x132($s0)
    /* 2E19C 8003D99C 00000000 */  nop
    /* 2E1A0 8003D9A0 25108200 */  or         $v0, $a0, $v0
    /* 2E1A4 8003D9A4 2418A200 */  and        $v1, $a1, $v0
    /* 2E1A8 8003D9A8 10006210 */  beq        $v1, $v0, .L8003D9EC
    /* 2E1AC 8003D9AC 24108500 */   and       $v0, $a0, $a1
    /* 2E1B0 8003D9B0 05004010 */  beqz       $v0, .L8003D9C8
    /* 2E1B4 8003D9B4 20000224 */   addiu     $v0, $zero, 0x20
    /* 2E1B8 8003D9B8 480002A6 */  sh         $v0, 0x48($s0)
    /* 2E1BC 8003D9BC 21200002 */  addu       $a0, $s0, $zero
    /* 2E1C0 8003D9C0 76F60008 */  j          .L8003D9D8
    /* 2E1C4 8003D9C4 0F000524 */   addiu     $a1, $zero, 0xF
  .L8003D9C8:
    /* 2E1C8 8003D9C8 E0FF0224 */  addiu      $v0, $zero, -0x20
    /* 2E1CC 8003D9CC 480002A6 */  sh         $v0, 0x48($s0)
    /* 2E1D0 8003D9D0 21200002 */  addu       $a0, $s0, $zero
    /* 2E1D4 8003D9D4 0E000524 */  addiu      $a1, $zero, 0xE
  .L8003D9D8:
    /* 2E1D8 8003D9D8 21300000 */  addu       $a2, $zero, $zero
    /* 2E1DC 8003D9DC 7707010C */  jal        func_80041DDC
    /* 2E1E0 8003D9E0 21380000 */   addu      $a3, $zero, $zero
    /* 2E1E4 8003D9E4 7DF60008 */  j          .L8003D9F4
    /* 2E1E8 8003D9E8 21200002 */   addu      $a0, $s0, $zero
  .L8003D9EC:
    /* 2E1EC 8003D9EC 480000A6 */  sh         $zero, 0x48($s0)
    /* 2E1F0 8003D9F0 21200002 */  addu       $a0, $s0, $zero
  .L8003D9F4:
    /* 2E1F4 8003D9F4 21280000 */  addu       $a1, $zero, $zero
    /* 2E1F8 8003D9F8 48000786 */  lh         $a3, 0x48($s0)
    /* 2E1FC 8003D9FC A407010C */  jal        func_80041E90
    /* 2E200 8003DA00 21300000 */   addu      $a2, $zero, $zero
    /* 2E204 8003DA04 A4000392 */  lbu        $v1, 0xA4($s0)
    /* 2E208 8003DA08 08000224 */  addiu      $v0, $zero, 0x8
    /* 2E20C 8003DA0C 04006214 */  bne        $v1, $v0, .L8003DA20
    /* 2E210 8003DA10 95000424 */   addiu     $a0, $zero, 0x95
    /* 2E214 8003DA14 21280000 */  addu       $a1, $zero, $zero
    /* 2E218 8003DA18 0268000C */  jal        Sound_call
    /* 2E21C 8003DA1C 21300000 */   addu      $a2, $zero, $zero
  .L8003DA20:
    /* 2E220 8003DA20 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2E224 8003DA24 1000B08F */  lw         $s0, 0x10($sp)
    /* 2E228 8003DA28 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2E22C 8003DA2C 0800E003 */  jr         $ra
    /* 2E230 8003DA30 00000000 */   nop
.size func_8003D960, . - func_8003D960
