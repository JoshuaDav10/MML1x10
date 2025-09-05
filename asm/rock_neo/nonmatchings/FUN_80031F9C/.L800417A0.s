.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L800417A0
    /* 31FA0 800417A0 6C010282 */  lb         $v0, 0x16C($s0)
    /* 31FA4 800417A4 00000000 */  nop
    /* 31FA8 800417A8 18002202 */  mult       $s1, $v0
    /* 31FAC 800417AC 12300000 */  mflo       $a2
    /* 31FB0 800417B0 83100600 */  sra        $v0, $a2, 2
    /* 31FB4 800417B4 23882202 */  subu       $s1, $s1, $v0
    /* 31FB8 800417B8 02002016 */  bnez       $s1, .L800417C4
    /* 31FBC 800417BC 00000000 */   nop
    /* 31FC0 800417C0 01001124 */  addiu      $s1, $zero, 0x1
  .L800417C4:
    /* 31FC4 800417C4 71000282 */  lb         $v0, 0x71($s0)
    /* 31FC8 800417C8 00000000 */  nop
    /* 31FCC 800417CC 3800401C */  bgtz       $v0, .L800418B0
    /* 31FD0 800417D0 21184000 */   addu      $v1, $v0, $zero
    /* 31FD4 800417D4 18004014 */  bnez       $v0, .L80041838
    /* 31FD8 800417D8 01000224 */   addiu     $v0, $zero, 0x1
    /* 31FDC 800417DC 0600A284 */  lh         $v0, 0x6($a1)
    /* 31FE0 800417E0 00000000 */  nop
    /* 31FE4 800417E4 05004010 */  beqz       $v0, .L800417FC
    /* 31FE8 800417E8 2120A000 */   addu      $a0, $a1, $zero
    /* 31FEC 800417EC 66C4000C */  jal        func_80031198
    /* 31FF0 800417F0 14000526 */   addiu     $a1, $s0, 0x14
    /* 31FF4 800417F4 04060108 */  j          .L80041810
    /* 31FF8 800417F8 21204000 */   addu      $a0, $v0, $zero
  .L800417FC:
    /* 31FFC 800417FC 0000A484 */  lh         $a0, 0x0($a1)
.size .L800417A0, . - .L800417A0
