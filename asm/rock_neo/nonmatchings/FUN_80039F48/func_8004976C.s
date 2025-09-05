.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004976C
    /* 39F6C 8004976C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 39F70 80049770 1000B0AF */  sw         $s0, 0x10($sp)
    /* 39F74 80049774 21808000 */  addu       $s0, $a0, $zero
    /* 39F78 80049778 1400BFAF */  sw         $ra, 0x14($sp)
    /* 39F7C 8004977C 01000492 */  lbu        $a0, 0x1($s0)
    /* 39F80 80049780 9DBF000C */  jal        func_8002FE74
    /* 39F84 80049784 00000000 */   nop
    /* 39F88 80049788 02004014 */  bnez       $v0, .L80049794
    /* 39F8C 8004978C 21100000 */   addu      $v0, $zero, $zero
    /* 39F90 80049790 16010286 */  lh         $v0, 0x116($s0)
  .L80049794:
    /* 39F94 80049794 14000426 */  addiu      $a0, $s0, 0x14
    /* 39F98 80049798 56000686 */  lh         $a2, 0x56($s0)
    /* 39F9C 8004979C 7800058E */  lw         $a1, 0x78($s0)
    /* 39FA0 800497A0 01000792 */  lbu        $a3, 0x1($s0)
    /* 39FA4 800497A4 2330C200 */  subu       $a2, $a2, $v0
    /* 39FA8 800497A8 0002C624 */  addiu      $a2, $a2, 0x200
    /* 39FAC 800497AC 83320600 */  sra        $a2, $a2, 10
    /* 39FB0 800497B0 F325010C */  jal        func_800497CC
    /* 39FB4 800497B4 0300C630 */   andi      $a2, $a2, 0x3
    /* 39FB8 800497B8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 39FBC 800497BC 1000B08F */  lw         $s0, 0x10($sp)
    /* 39FC0 800497C0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 39FC4 800497C4 0800E003 */  jr         $ra
    /* 39FC8 800497C8 00000000 */   nop
.size func_8004976C, . - func_8004976C
