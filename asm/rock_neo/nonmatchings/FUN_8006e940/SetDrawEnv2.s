.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel SetDrawEnv2
    /* 6E9A8 8007E1A8 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 6E9AC 8007E1AC 3000B0AF */  sw         $s0, 0x30($sp)
    /* 6E9B0 8007E1B0 2180A000 */  addu       $s0, $a1, $zero
    /* 6E9B4 8007E1B4 3400B1AF */  sw         $s1, 0x34($sp)
    /* 6E9B8 8007E1B8 21888000 */  addu       $s1, $a0, $zero
    /* 6E9BC 8007E1BC 3800BFAF */  sw         $ra, 0x38($sp)
    /* 6E9C0 8007E1C0 00000486 */  lh         $a0, 0x0($s0)
    /* 6E9C4 8007E1C4 02000586 */  lh         $a1, 0x2($s0)
    /* 6E9C8 8007E1C8 24F9010C */  jal        get_cs
    /* 6E9CC 8007E1CC 00000000 */   nop
    /* 6E9D0 8007E1D0 040022AE */  sw         $v0, 0x4($s1)
    /* 6E9D4 8007E1D4 04000496 */  lhu        $a0, 0x4($s0)
    /* 6E9D8 8007E1D8 00000296 */  lhu        $v0, 0x0($s0)
    /* 6E9DC 8007E1DC 02000596 */  lhu        $a1, 0x2($s0)
    /* 6E9E0 8007E1E0 21208200 */  addu       $a0, $a0, $v0
    /* 6E9E4 8007E1E4 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 6E9E8 8007E1E8 00240400 */  sll        $a0, $a0, 16
    /* 6E9EC 8007E1EC 06000296 */  lhu        $v0, 0x6($s0)
.size SetDrawEnv2, . - SetDrawEnv2
