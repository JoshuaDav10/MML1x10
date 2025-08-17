.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003FDA8
    /* 305A8 8003FDA8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 305AC 8003FDAC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 305B0 8003FDB0 21808000 */  addu       $s0, $a0, $zero
    /* 305B4 8003FDB4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 305B8 8003FDB8 0A000292 */  lbu        $v0, 0xA($s0)
    /* 305BC 8003FDBC 1C010396 */  lhu        $v1, 0x11C($s0)
    /* 305C0 8003FDC0 0300422C */  sltiu      $v0, $v0, 0x3
    /* 305C4 8003FDC4 10004010 */  beqz       $v0, .L8003FE08
    /* 305C8 8003FDC8 00000000 */   nop
    /* 305CC 8003FDCC 34010296 */  lhu        $v0, 0x134($s0)
    /* 305D0 8003FDD0 00000000 */  nop
    /* 305D4 8003FDD4 24104300 */  and        $v0, $v0, $v1
    /* 305D8 8003FDD8 0B004014 */  bnez       $v0, .L8003FE08
    /* 305DC 8003FDDC 8F000424 */   addiu     $a0, $zero, 0x8F
    /* 305E0 8003FDE0 4A0400A2 */  sb         $zero, 0x44A($s0)
    /* 305E4 8003FDE4 21280000 */  addu       $a1, $zero, $zero
    /* 305E8 8003FDE8 0268000C */  jal        Sound_call
    /* 305EC 8003FDEC 21300000 */   addu      $a2, $zero, $zero
    /* 305F0 8003FDF0 AA01010C */  jal        func_800406A8
    /* 305F4 8003FDF4 21200002 */   addu      $a0, $s0, $zero
    /* 305F8 8003FDF8 03004014 */  bnez       $v0, .L8003FE08
    /* 305FC 8003FDFC 00000000 */   nop
    /* 30600 8003FE00 090000A2 */  sb         $zero, 0x9($s0)
    /* 30604 8003FE04 0A0000A6 */  sh         $zero, 0xA($s0)
  .L8003FE08:
    /* 30608 8003FE08 1400BF8F */  lw         $ra, 0x14($sp)
    /* 3060C 8003FE0C 1000B08F */  lw         $s0, 0x10($sp)
    /* 30610 8003FE10 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 30614 8003FE14 0800E003 */  jr         $ra
    /* 30618 8003FE18 00000000 */   nop
.size func_8003FDA8, . - func_8003FDA8
