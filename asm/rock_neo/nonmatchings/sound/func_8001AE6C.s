.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001AE6C
    /* B66C 8001AE6C 03008230 */  andi       $v0, $a0, 0x3
    /* B670 8001AE70 1D004010 */  beqz       $v0, .L8001AEE8
    /* B674 8001AE74 21300000 */   addu      $a2, $zero, $zero
    /* B678 8001AE78 01008230 */  andi       $v0, $a0, 0x1
    /* B67C 8001AE7C 0C004010 */  beqz       $v0, .L8001AEB0
    /* B680 8001AE80 01000624 */   addiu     $a2, $zero, 0x1
    /* B684 8001AE84 0A80033C */  lui        $v1, %hi(D_80098840)
    /* B688 8001AE88 40886390 */  lbu        $v1, %lo(D_80098840)($v1)
    /* B68C 8001AE8C 0000A294 */  lhu        $v0, 0x0($a1)
    /* B690 8001AE90 00000000 */  nop
    /* B694 8001AE94 23104300 */  subu       $v0, $v0, $v1
    /* B698 8001AE98 0000A2A4 */  sh         $v0, 0x0($a1)
    /* B69C 8001AE9C 00140200 */  sll        $v0, $v0, 16
    /* B6A0 8001AEA0 1100401C */  bgtz       $v0, .L8001AEE8
    /* B6A4 8001AEA4 00000000 */   nop
    /* B6A8 8001AEA8 B96B0008 */  j          .L8001AEE4
    /* B6AC 8001AEAC 0000A0A4 */   sh        $zero, 0x0($a1)
  .L8001AEB0:
    /* B6B0 8001AEB0 0A80033C */  lui        $v1, %hi(D_80098840)
    /* B6B4 8001AEB4 40886390 */  lbu        $v1, %lo(D_80098840)($v1)
    /* B6B8 8001AEB8 0000A294 */  lhu        $v0, 0x0($a1)
    /* B6BC 8001AEBC 00000000 */  nop
    /* B6C0 8001AEC0 21104300 */  addu       $v0, $v0, $v1
    /* B6C4 8001AEC4 0000A2A4 */  sh         $v0, 0x0($a1)
    /* B6C8 8001AEC8 00140200 */  sll        $v0, $v0, 16
    /* B6CC 8001AECC 03140200 */  sra        $v0, $v0, 16
    /* B6D0 8001AED0 7F004228 */  slti       $v0, $v0, 0x7F
    /* B6D4 8001AED4 04004014 */  bnez       $v0, .L8001AEE8
    /* B6D8 8001AED8 00000000 */   nop
    /* B6DC 8001AEDC 7F000224 */  addiu      $v0, $zero, 0x7F
    /* B6E0 8001AEE0 0000A2A4 */  sh         $v0, 0x0($a1)
  .L8001AEE4:
    /* B6E4 8001AEE4 21300000 */  addu       $a2, $zero, $zero
  .L8001AEE8:
    /* B6E8 8001AEE8 0800E003 */  jr         $ra
    /* B6EC 8001AEEC 2110C000 */   addu      $v0, $a2, $zero
.size func_8001AE6C, . - func_8001AE6C
