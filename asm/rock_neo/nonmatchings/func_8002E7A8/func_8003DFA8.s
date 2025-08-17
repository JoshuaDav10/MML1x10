.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003DFA8
    /* 2E7A8 8003DFA8 17000524 */  addiu      $a1, $zero, 0x17
    /* 2E7AC 8003DFAC 21200002 */  addu       $a0, $s0, $zero
  .L8003DFB0:
    /* 2E7B0 8003DFB0 2C000524 */  addiu      $a1, $zero, 0x2C
  .L8003DFB4:
    /* 2E7B4 8003DFB4 21300000 */  addu       $a2, $zero, $zero
    /* 2E7B8 8003DFB8 7707010C */  jal        func_80041DDC
    /* 2E7BC 8003DFBC 21380000 */   addu      $a3, $zero, $zero
  .L8003DFC0:
    /* 2E7C0 8003DFC0 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2E7C4 8003DFC4 00000000 */  nop
    /* 2E7C8 8003DFC8 01004224 */  addiu      $v0, $v0, 0x1
    /* 2E7CC 8003DFCC 14F80008 */  j          .L8003E050
    /* 2E7D0 8003DFD0 0A0002A2 */   sb        $v0, 0xA($s0)
  .L8003DFD4:
    /* 2E7D4 8003DFD4 17000524 */  addiu      $a1, $zero, 0x17
  .L8003DFD8:
    /* 2E7D8 8003DFD8 21300000 */  addu       $a2, $zero, $zero
    /* 2E7DC 8003DFDC 21380000 */  addu       $a3, $zero, $zero
    /* 2E7E0 8003DFE0 00020224 */  addiu      $v0, $zero, 0x200
    /* 2E7E4 8003DFE4 440082A4 */  sh         $v0, 0x44($a0)
    /* 2E7E8 8003DFE8 02000224 */  addiu      $v0, $zero, 0x2
    /* 2E7EC 8003DFEC 090082A0 */  sb         $v0, 0x9($a0)
    /* 2E7F0 8003DFF0 02000224 */  addiu      $v0, $zero, 0x2
    /* 2E7F4 8003DFF4 460080A4 */  sh         $zero, 0x46($a0)
    /* 2E7F8 8003DFF8 7707010C */  jal        func_80041DDC
    /* 2E7FC 8003DFFC 0A0082A4 */   sh        $v0, 0xA($a0)
    /* 2E800 8003E000 14F80008 */  j          .L8003E050
    /* 2E804 8003E004 00000000 */   nop
  glabel .L8003E008
    /* 2E808 8003E008 A7000382 */  lb         $v1, 0xA7($s0)
    /* 2E80C 8003E00C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2E810 8003E010 0F006214 */  bne        $v1, $v0, .L8003E050
    /* 2E814 8003E014 21200002 */   addu      $a0, $s0, $zero
    /* 2E818 8003E018 090000A2 */  sb         $zero, 0x9($s0)
    /* 2E81C 8003E01C 0A0000A6 */  sh         $zero, 0xA($s0)
    /* 2E820 8003E020 440000A6 */  sh         $zero, 0x44($s0)
    /* 2E824 8003E024 480000A6 */  sh         $zero, 0x48($s0)
    /* 2E828 8003E028 F208010C */  jal        Pl00_shot_enable_on
    /* 2E82C 8003E02C 4A0400A2 */   sb        $zero, 0x44A($s0)
    /* 2E830 8003E030 21200002 */  addu       $a0, $s0, $zero
    /* 2E834 8003E034 21280000 */  addu       $a1, $zero, $zero
    /* 2E838 8003E038 21300000 */  addu       $a2, $zero, $zero
    /* 2E83C 8003E03C 7707010C */  jal        func_80041DDC
    /* 2E840 8003E040 21380000 */   addu      $a3, $zero, $zero
    /* 2E844 8003E044 160100A6 */  sh         $zero, 0x116($s0)
    /* 2E848 8003E048 120100A2 */  sb         $zero, 0x112($s0)
    /* 2E84C 8003E04C B40000A6 */  sh         $zero, 0xB4($s0)
  .L8003E050:
    /* 2E850 8003E050 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2E854 8003E054 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2E858 8003E058 1800B08F */  lw         $s0, 0x18($sp)
    /* 2E85C 8003E05C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2E860 8003E060 0800E003 */  jr         $ra
    /* 2E864 8003E064 00000000 */   nop
.size func_8003DFA8, . - func_8003DFA8
