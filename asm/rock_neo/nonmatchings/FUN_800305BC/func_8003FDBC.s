.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003FDBC
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
.size func_8003FDBC, . - func_8003FDBC
