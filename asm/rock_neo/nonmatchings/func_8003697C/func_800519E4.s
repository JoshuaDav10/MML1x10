.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800519E4
    /* 421E4 800519E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 421E8 800519E8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 421EC 800519EC 21808000 */  addu       $s0, $a0, $zero
    /* 421F0 800519F0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 421F4 800519F4 9676000C */  jal        Sce_flag_test
    /* 421F8 800519F8 E0070424 */   addiu     $a0, $zero, 0x7E0
    /* 421FC 800519FC 08004014 */  bnez       $v0, .L80051A20
    /* 42200 80051A00 00000000 */   nop
    /* 42204 80051A04 00000496 */  lhu        $a0, 0x0($s0)
    /* 42208 80051A08 00000000 */  nop
    /* 4220C 80051A0C 1F008430 */  andi       $a0, $a0, 0x1F
    /* 42210 80051A10 9676000C */  jal        Sce_flag_test
    /* 42214 80051A14 E0078434 */   ori       $a0, $a0, 0x7E0
    /* 42218 80051A18 12004010 */  beqz       $v0, .L80051A64
    /* 4221C 80051A1C 21100000 */   addu      $v0, $zero, $zero
  .L80051A20:
    /* 42220 80051A20 9676000C */  jal        Sce_flag_test
    /* 42224 80051A24 C0070424 */   addiu     $a0, $zero, 0x7C0
    /* 42228 80051A28 0E004014 */  bnez       $v0, .L80051A64
    /* 4222C 80051A2C 01000224 */   addiu     $v0, $zero, 0x1
    /* 42230 80051A30 00000496 */  lhu        $a0, 0x0($s0)
    /* 42234 80051A34 00000000 */  nop
    /* 42238 80051A38 1F008430 */  andi       $a0, $a0, 0x1F
    /* 4223C 80051A3C 9676000C */  jal        Sce_flag_test
    /* 42240 80051A40 C0078434 */   ori       $a0, $a0, 0x7C0
    /* 42244 80051A44 07004014 */  bnez       $v0, .L80051A64
    /* 42248 80051A48 01000224 */   addiu     $v0, $zero, 0x1
    /* 4224C 80051A4C 21200000 */  addu       $a0, $zero, $zero
    /* 42250 80051A50 21280000 */  addu       $a1, $zero, $zero
    /* 42254 80051A54 04000786 */  lh         $a3, 0x4($s0)
    /* 42258 80051A58 F28E010C */  jal        func_80063BC8
    /* 4225C 80051A5C 21300000 */   addu      $a2, $zero, $zero
    /* 42260 80051A60 01000224 */  addiu      $v0, $zero, 0x1
  .L80051A64:
    /* 42264 80051A64 1400BF8F */  lw         $ra, 0x14($sp)
    /* 42268 80051A68 1000B08F */  lw         $s0, 0x10($sp)
    /* 4226C 80051A6C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 42270 80051A70 0800E003 */  jr         $ra
    /* 42274 80051A74 00000000 */   nop
.size func_800519E4, . - func_800519E4
