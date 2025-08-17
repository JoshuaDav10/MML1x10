.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003CB20
    /* 2D320 8003CB20 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2D324 8003CB24 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2D328 8003CB28 21808000 */  addu       $s0, $a0, $zero
    /* 2D32C 8003CB2C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2D330 8003CB30 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2D334 8003CB34 00000000 */  nop
    /* 2D338 8003CB38 1D004014 */  bnez       $v0, .L8003CBB0
    /* 2D33C 8003CB3C 01000224 */   addiu     $v0, $zero, 0x1
    /* 2D340 8003CB40 74010392 */  lbu        $v1, 0x174($s0)
    /* 2D344 8003CB44 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 2D348 8003CB48 440000A6 */  sh         $zero, 0x44($s0)
    /* 2D34C 8003CB4C 480000A6 */  sh         $zero, 0x48($s0)
    /* 2D350 8003CB50 FC006330 */  andi       $v1, $v1, 0xFC
    /* 2D354 8003CB54 740103A2 */  sb         $v1, 0x174($s0)
    /* 2D358 8003CB58 C0006330 */  andi       $v1, $v1, 0xC0
    /* 2D35C 8003CB5C 09006014 */  bnez       $v1, .L8003CB84
    /* 2D360 8003CB60 00000000 */   nop
    /* 2D364 8003CB64 77010282 */  lb         $v0, 0x177($s0)
    /* 2D368 8003CB68 00000000 */  nop
    /* 2D36C 8003CB6C 05004014 */  bnez       $v0, .L8003CB84
    /* 2D370 8003CB70 00000000 */   nop
    /* 2D374 8003CB74 F208010C */  jal        Pl00_shot_enable_on
    /* 2D378 8003CB78 00000000 */   nop
    /* 2D37C 8003CB7C F5F20008 */  j          .L8003CBD4
    /* 2D380 8003CB80 21200002 */   addu      $a0, $s0, $zero
  .L8003CB84:
    /* 2D384 8003CB84 74010292 */  lbu        $v0, 0x174($s0)
    /* 2D388 8003CB88 00000000 */  nop
    /* 2D38C 8003CB8C 40004230 */  andi       $v0, $v0, 0x40
    /* 2D390 8003CB90 04004010 */  beqz       $v0, .L8003CBA4
    /* 2D394 8003CB94 21200002 */   addu      $a0, $s0, $zero
    /* 2D398 8003CB98 00018690 */  lbu        $a2, 0x100($a0)
    /* 2D39C 8003CB9C F7F20008 */  j          .L8003CBDC
    /* 2D3A0 8003CBA0 40000524 */   addiu     $a1, $zero, 0x40
  .L8003CBA4:
    /* 2D3A4 8003CBA4 00018690 */  lbu        $a2, 0x100($a0)
    /* 2D3A8 8003CBA8 F7F20008 */  j          .L8003CBDC
    /* 2D3AC 8003CBAC 60000524 */   addiu     $a1, $zero, 0x60
  .L8003CBB0:
    /* 2D3B0 8003CBB0 74010282 */  lb         $v0, 0x174($s0)
    /* 2D3B4 8003CBB4 4D0400A2 */  sb         $zero, 0x44D($s0)
    /* 2D3B8 8003CBB8 C0004230 */  andi       $v0, $v0, 0xC0
    /* 2D3BC 8003CBBC 09004014 */  bnez       $v0, .L8003CBE4
    /* 2D3C0 8003CBC0 B40000A6 */   sh        $zero, 0xB4($s0)
    /* 2D3C4 8003CBC4 77010282 */  lb         $v0, 0x177($s0)
    /* 2D3C8 8003CBC8 00000000 */  nop
    /* 2D3CC 8003CBCC 05004014 */  bnez       $v0, .L8003CBE4
    /* 2D3D0 8003CBD0 21200002 */   addu      $a0, $s0, $zero
  .L8003CBD4:
    /* 2D3D4 8003CBD4 21280000 */  addu       $a1, $zero, $zero
    /* 2D3D8 8003CBD8 21300000 */  addu       $a2, $zero, $zero
  .L8003CBDC:
    /* 2D3DC 8003CBDC 7707010C */  jal        func_80041DDC
    /* 2D3E0 8003CBE0 21380000 */   addu      $a3, $zero, $zero
  .L8003CBE4:
    /* 2D3E4 8003CBE4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2D3E8 8003CBE8 1000B08F */  lw         $s0, 0x10($sp)
    /* 2D3EC 8003CBEC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2D3F0 8003CBF0 0800E003 */  jr         $ra
    /* 2D3F4 8003CBF4 00000000 */   nop
.size func_8003CB20, . - func_8003CB20
