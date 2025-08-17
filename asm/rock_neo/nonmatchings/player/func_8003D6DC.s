.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003D6DC
    /* 2DEDC 8003D6DC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2DEE0 8003D6E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2DEE4 8003D6E4 21808000 */  addu       $s0, $a0, $zero
    /* 2DEE8 8003D6E8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2DEEC 8003D6EC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2DEF0 8003D6F0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2DEF4 8003D6F4 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2DEF8 8003D6F8 1C010596 */  lhu        $a1, 0x11C($s0)
    /* 2DEFC 8003D6FC 04004014 */  bnez       $v0, .L8003D710
    /* 2DF00 8003D700 01004224 */   addiu     $v0, $v0, 0x1
    /* 2DF04 8003D704 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 2DF08 8003D708 B60000A6 */  sh         $zero, 0xB6($s0)
    /* 2DF0C 8003D70C 4D0400A2 */  sb         $zero, 0x44D($s0)
  .L8003D710:
    /* 2DF10 8003D710 34010296 */  lhu        $v0, 0x134($s0)
    /* 2DF14 8003D714 00000000 */  nop
    /* 2DF18 8003D718 24104500 */  and        $v0, $v0, $a1
    /* 2DF1C 8003D71C 03004010 */  beqz       $v0, .L8003D72C
    /* 2DF20 8003D720 02001224 */   addiu     $s2, $zero, 0x2
    /* 2DF24 8003D724 CDF50008 */  j          .L8003D734
    /* 2DF28 8003D728 20001124 */   addiu     $s1, $zero, 0x20
  .L8003D72C:
    /* 2DF2C 8003D72C 04001224 */  addiu      $s2, $zero, 0x4
    /* 2DF30 8003D730 48001124 */  addiu      $s1, $zero, 0x48
  .L8003D734:
    /* 2DF34 8003D734 74010382 */  lb         $v1, 0x174($s0)
    /* 2DF38 8003D738 00000000 */  nop
    /* 2DF3C 8003D73C C0006230 */  andi       $v0, $v1, 0xC0
    /* 2DF40 8003D740 11004014 */  bnez       $v0, .L8003D788
    /* 2DF44 8003D744 80006230 */   andi      $v0, $v1, 0x80
    /* 2DF48 8003D748 28010496 */  lhu        $a0, 0x128($s0)
    /* 2DF4C 8003D74C 2A010296 */  lhu        $v0, 0x12A($s0)
    /* 2DF50 8003D750 00000000 */  nop
    /* 2DF54 8003D754 25108200 */  or         $v0, $a0, $v0
    /* 2DF58 8003D758 2418A200 */  and        $v1, $a1, $v0
    /* 2DF5C 8003D75C 07006210 */  beq        $v1, $v0, .L8003D77C
    /* 2DF60 8003D760 24108500 */   and       $v0, $a0, $a1
    /* 2DF64 8003D764 03004010 */  beqz       $v0, .L8003D774
    /* 2DF68 8003D768 21200002 */   addu      $a0, $s0, $zero
    /* 2DF6C 8003D76C E7F50008 */  j          .L8003D79C
    /* 2DF70 8003D770 0D000524 */   addiu     $a1, $zero, 0xD
  .L8003D774:
    /* 2DF74 8003D774 E7F50008 */  j          .L8003D79C
    /* 2DF78 8003D778 0D000524 */   addiu     $a1, $zero, 0xD
  .L8003D77C:
    /* 2DF7C 8003D77C 21200002 */  addu       $a0, $s0, $zero
    /* 2DF80 8003D780 E7F50008 */  j          .L8003D79C
    /* 2DF84 8003D784 21280000 */   addu      $a1, $zero, $zero
  .L8003D788:
    /* 2DF88 8003D788 03004010 */  beqz       $v0, .L8003D798
    /* 2DF8C 8003D78C 21200002 */   addu      $a0, $s0, $zero
    /* 2DF90 8003D790 E7F50008 */  j          .L8003D79C
    /* 2DF94 8003D794 60000524 */   addiu     $a1, $zero, 0x60
  .L8003D798:
    /* 2DF98 8003D798 40000524 */  addiu      $a1, $zero, 0x40
  .L8003D79C:
    /* 2DF9C 8003D79C 21300000 */  addu       $a2, $zero, $zero
    /* 2DFA0 8003D7A0 7707010C */  jal        func_80041DDC
    /* 2DFA4 8003D7A4 21380000 */   addu      $a3, $zero, $zero
    /* 2DFA8 8003D7A8 21200002 */  addu       $a0, $s0, $zero
    /* 2DFAC 8003D7AC 21284002 */  addu       $a1, $s2, $zero
    /* 2DFB0 8003D7B0 1108010C */  jal        func_80042044
    /* 2DFB4 8003D7B4 21302002 */   addu      $a2, $s1, $zero
    /* 2DFB8 8003D7B8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 2DFBC 8003D7BC 1800B28F */  lw         $s2, 0x18($sp)
    /* 2DFC0 8003D7C0 1400B18F */  lw         $s1, 0x14($sp)
    /* 2DFC4 8003D7C4 1000B08F */  lw         $s0, 0x10($sp)
    /* 2DFC8 8003D7C8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2DFCC 8003D7CC 0800E003 */  jr         $ra
    /* 2DFD0 8003D7D0 00000000 */   nop
.size func_8003D6DC, . - func_8003D6DC
