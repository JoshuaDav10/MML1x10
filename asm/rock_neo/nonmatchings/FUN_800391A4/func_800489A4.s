.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800489A4
    /* 391A4 800489A4 09000292 */  lbu        $v0, 0x9($s0)
    /* 391A8 800489A8 00000000 */  nop
    /* 391AC 800489AC 01004224 */  addiu      $v0, $v0, 0x1
    /* 391B0 800489B0 74220108 */  j          .L800489D0
    /* 391B4 800489B4 090002A2 */   sb        $v0, 0x9($s0)
  glabel .L800489B8
    /* 391B8 800489B8 A722010C */  jal        func_80048A9C
    /* 391BC 800489BC 21202002 */   addu      $a0, $s1, $zero
    /* 391C0 800489C0 85220108 */  j          .L80048A14
    /* 391C4 800489C4 00000000 */   nop
  glabel .L800489C8
    /* 391C8 800489C8 3477000C */  jal        Sce_flag_off
    /* 391CC 800489CC B1070424 */   addiu     $a0, $zero, 0x7B1
  .L800489D0:
    /* 391D0 800489D0 05002292 */  lbu        $v0, 0x5($s1)
  .L800489D4:
    /* 391D4 800489D4 00000000 */  nop
    /* 391D8 800489D8 01004224 */  addiu      $v0, $v0, 0x1
    /* 391DC 800489DC 85220108 */  j          .L80048A14
    /* 391E0 800489E0 050022A2 */   sb        $v0, 0x5($s1)
  glabel .L800489E4
    /* 391E4 800489E4 9676000C */  jal        Sce_flag_test
    /* 391E8 800489E8 B2070424 */   addiu     $a0, $zero, 0x7B2
    /* 391EC 800489EC 09004014 */  bnez       $v0, .L80048A14
    /* 391F0 800489F0 00000000 */   nop
    /* 391F4 800489F4 3477000C */  jal        Sce_flag_off
    /* 391F8 800489F8 B0070424 */   addiu     $a0, $zero, 0x7B0
    /* 391FC 800489FC A376000C */  jal        Sce_flag_on
    /* 39200 80048A00 B3070424 */   addiu     $a0, $zero, 0x7B3
    /* 39204 80048A04 04002292 */  lbu        $v0, 0x4($s1)
    /* 39208 80048A08 050020A2 */  sb         $zero, 0x5($s1)
    /* 3920C 80048A0C 01004224 */  addiu      $v0, $v0, 0x1
    /* 39210 80048A10 040022A2 */  sb         $v0, 0x4($s1)
  .L80048A14:
    /* 39214 80048A14 037B000C */  jal        func_8001EC0C
    /* 39218 80048A18 00000000 */   nop
    /* 3921C 80048A1C 1C7C000C */  jal        func_8001F070
    /* 39220 80048A20 00000000 */   nop
    /* 39224 80048A24 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 39228 80048A28 1800B28F */  lw         $s2, 0x18($sp)
    /* 3922C 80048A2C 1400B18F */  lw         $s1, 0x14($sp)
    /* 39230 80048A30 1000B08F */  lw         $s0, 0x10($sp)
    /* 39234 80048A34 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 39238 80048A38 0800E003 */  jr         $ra
    /* 3923C 80048A3C 00000000 */   nop
.size func_800489A4, . - func_800489A4
