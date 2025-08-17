.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80053AA4
    /* 442A4 80053AA4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 442A8 80053AA8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 442AC 80053AAC FF009130 */  andi       $s1, $a0, 0xFF
    /* 442B0 80053AB0 40101100 */  sll        $v0, $s1, 1
    /* 442B4 80053AB4 21105100 */  addu       $v0, $v0, $s1
    /* 442B8 80053AB8 00110200 */  sll        $v0, $v0, 4
    /* 442BC 80053ABC 21105100 */  addu       $v0, $v0, $s1
    /* 442C0 80053AC0 80100200 */  sll        $v0, $v0, 2
    /* 442C4 80053AC4 0C80033C */  lui        $v1, %hi(Moji_work)
    /* 442C8 80053AC8 B8B66324 */  addiu      $v1, $v1, %lo(Moji_work)
    /* 442CC 80053ACC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 442D0 80053AD0 21804300 */  addu       $s0, $v0, $v1
    /* 442D4 80053AD4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 442D8 80053AD8 0000028E */  lw         $v0, 0x0($s0)
    /* 442DC 80053ADC 0400033C */  lui        $v1, (0x40000 >> 16)
    /* 442E0 80053AE0 24104300 */  and        $v0, $v0, $v1
    /* 442E4 80053AE4 04004010 */  beqz       $v0, .L80053AF8
    /* 442E8 80053AE8 21200000 */   addu      $a0, $zero, $zero
    /* 442EC 80053AEC 01000524 */  addiu      $a1, $zero, 0x1
    /* 442F0 80053AF0 2575000C */  jal        func_8001D494
    /* 442F4 80053AF4 21300000 */   addu      $a2, $zero, $zero
  .L80053AF8:
    /* 442F8 80053AF8 C1BF043C */  lui        $a0, (0xBFC1FFFF >> 16)
    /* 442FC 80053AFC FFFF8434 */  ori        $a0, $a0, (0xBFC1FFFF & 0xFFFF)
    /* 44300 80053B00 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 44304 80053B04 C20002A6 */  sh         $v0, 0xC2($s0)
    /* 44308 80053B08 0008023C */  lui        $v0, (0x8000000 >> 16)
    /* 4430C 80053B0C 07102202 */  srav       $v0, $v0, $s1
    /* 44310 80053B10 F411838F */  lw         $v1, %gp_rel(Moji_flag)($gp)
    /* 44314 80053B14 27100200 */  nor        $v0, $zero, $v0
    /* 44318 80053B18 000000AE */  sw         $zero, 0x0($s0)
    /* 4431C 80053B1C 24186400 */  and        $v1, $v1, $a0
    /* 44320 80053B20 24186200 */  and        $v1, $v1, $v0
    /* 44324 80053B24 F41183AF */  sw         $v1, %gp_rel(Moji_flag)($gp)
    /* 44328 80053B28 1800BF8F */  lw         $ra, 0x18($sp)
    /* 4432C 80053B2C 1400B18F */  lw         $s1, 0x14($sp)
    /* 44330 80053B30 1000B08F */  lw         $s0, 0x10($sp)
    /* 44334 80053B34 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 44338 80053B38 0800E003 */  jr         $ra
    /* 4433C 80053B3C 00000000 */   nop
.size func_80053AA4, . - func_80053AA4
