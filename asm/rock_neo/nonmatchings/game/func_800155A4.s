.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800155A4
    /* 5DA4 800155A4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5DA8 800155A8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5DAC 800155AC 0880113C */  lui        $s1, %hi(Game_main_tbl)
    /* 5DB0 800155B0 14213126 */  addiu      $s1, $s1, %lo(Game_main_tbl)
    /* 5DB4 800155B4 02000224 */  addiu      $v0, $zero, 0x2
    /* 5DB8 800155B8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5DBC 800155BC 0C80103C */  lui        $s0, %hi(Game_work)
    /* 5DC0 800155C0 101B1026 */  addiu      $s0, $s0, %lo(Game_work)
    /* 5DC4 800155C4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5DC8 800155C8 801F013C */  lui        $at, (0x1F800001 >> 16)
    /* 5DCC 800155CC 010022A0 */  sb         $v0, (0x1F800001 & 0xFFFF)($at)
    /* 5DD0 800155D0 000000AE */  sw         $zero, 0x0($s0)
  .L800155D4:
    /* 5DD4 800155D4 00000282 */  lb         $v0, 0x0($s0)
    /* 5DD8 800155D8 00000000 */  nop
    /* 5DDC 800155DC 80100200 */  sll        $v0, $v0, 2
    /* 5DE0 800155E0 21105100 */  addu       $v0, $v0, $s1
    /* 5DE4 800155E4 0000428C */  lw         $v0, 0x0($v0)
    /* 5DE8 800155E8 00000000 */  nop
    /* 5DEC 800155EC 09F84000 */  jalr       $v0
    /* 5DF0 800155F0 21200002 */   addu      $a0, $s0, $zero
    /* 5DF4 800155F4 A9C6000C */  jal        func_80031AA4
    /* 5DF8 800155F8 00000000 */   nop
    /* 5DFC 800155FC F05A000C */  jal        func_80016BC0
    /* 5E00 80015600 00000000 */   nop
    /* 5E04 80015604 FD5A000C */  jal        func_80016BF4
    /* 5E08 80015608 00000000 */   nop
    /* 5E0C 8001560C A64B000C */  jal        func_80012E98
    /* 5E10 80015610 01000424 */   addiu     $a0, $zero, 0x1
    /* 5E14 80015614 75550008 */  j          .L800155D4
    /* 5E18 80015618 00000000 */   nop
    /* 5E1C 8001561C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5E20 80015620 1400B18F */  lw         $s1, 0x14($sp)
    /* 5E24 80015624 1000B08F */  lw         $s0, 0x10($sp)
    /* 5E28 80015628 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5E2C 8001562C 0800E003 */  jr         $ra
    /* 5E30 80015630 00000000 */   nop
.size func_800155A4, . - func_800155A4
