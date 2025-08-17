.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002DE5C
    /* 1E65C 8002DE5C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1E660 8002DE60 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1E664 8002DE64 04001134 */  ori        $s1, $zero, 0x4
    /* 1E668 8002DE68 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1E66C 8002DE6C 0C80103C */  lui        $s0, (0x800C4B00 >> 16)
    /* 1E670 8002DE70 004B1036 */  ori        $s0, $s0, (0x800C4B00 & 0xFFFF)
    /* 1E674 8002DE74 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1E678 8002DE78 A0FA1026 */  addiu      $s0, $s0, -0x560
  .L8002DE7C:
    /* 1E67C 8002DE7C 00000292 */  lbu        $v0, 0x0($s0)
    /* 1E680 8002DE80 00000000 */  nop
    /* 1E684 8002DE84 02004230 */  andi       $v0, $v0, 0x2
    /* 1E688 8002DE88 03004010 */  beqz       $v0, .L8002DE98
    /* 1E68C 8002DE8C FFFF3126 */   addiu     $s1, $s1, -0x1
    /* 1E690 8002DE90 BBB7000C */  jal        func_8002DEEC
    /* 1E694 8002DE94 21200002 */   addu      $a0, $s0, $zero
  .L8002DE98:
    /* 1E698 8002DE98 F8FF2016 */  bnez       $s1, .L8002DE7C
    /* 1E69C 8002DE9C A0FA1026 */   addiu     $s0, $s0, -0x560
    /* 1E6A0 8002DEA0 10001134 */  ori        $s1, $zero, 0x10
    /* 1E6A4 8002DEA4 0A80103C */  lui        $s0, (0x800A4708 >> 16)
    /* 1E6A8 8002DEA8 08471036 */  ori        $s0, $s0, (0x800A4708 & 0xFFFF)
    /* 1E6AC 8002DEAC A0FA1026 */  addiu      $s0, $s0, -0x560
  .L8002DEB0:
    /* 1E6B0 8002DEB0 00000292 */  lbu        $v0, 0x0($s0)
    /* 1E6B4 8002DEB4 00000000 */  nop
    /* 1E6B8 8002DEB8 02004230 */  andi       $v0, $v0, 0x2
    /* 1E6BC 8002DEBC 03004010 */  beqz       $v0, .L8002DECC
    /* 1E6C0 8002DEC0 FFFF3126 */   addiu     $s1, $s1, -0x1
    /* 1E6C4 8002DEC4 BBB7000C */  jal        func_8002DEEC
    /* 1E6C8 8002DEC8 21200002 */   addu      $a0, $s0, $zero
  .L8002DECC:
    /* 1E6CC 8002DECC F8FF2016 */  bnez       $s1, .L8002DEB0
    /* 1E6D0 8002DED0 A0FA1026 */   addiu     $s0, $s0, -0x560
    /* 1E6D4 8002DED4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1E6D8 8002DED8 1400B18F */  lw         $s1, 0x14($sp)
    /* 1E6DC 8002DEDC 1000B08F */  lw         $s0, 0x10($sp)
    /* 1E6E0 8002DEE0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1E6E4 8002DEE4 0800E003 */  jr         $ra
    /* 1E6E8 8002DEE8 00000000 */   nop
.size func_8002DE5C, . - func_8002DE5C
