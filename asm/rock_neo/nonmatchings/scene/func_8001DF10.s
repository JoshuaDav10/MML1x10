.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001DF10
    /* E710 8001DF10 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* E714 8001DF14 1800B2AF */  sw         $s2, 0x18($sp)
    /* E718 8001DF18 21908000 */  addu       $s2, $a0, $zero
    /* E71C 8001DF1C 2000BFAF */  sw         $ra, 0x20($sp)
    /* E720 8001DF20 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* E724 8001DF24 1400B1AF */  sw         $s1, 0x14($sp)
    /* E728 8001DF28 1000B0AF */  sw         $s0, 0x10($sp)
    /* E72C 8001DF2C 0000428E */  lw         $v0, 0x0($s2)
    /* E730 8001DF30 00000000 */  nop
    /* E734 8001DF34 25004010 */  beqz       $v0, .L8001DFCC
    /* E738 8001DF38 21880000 */   addu      $s1, $zero, $zero
    /* E73C 8001DF3C 0B80133C */  lui        $s3, %hi(D_800ACD40)
    /* E740 8001DF40 40CD7326 */  addiu      $s3, $s3, %lo(D_800ACD40)
    /* E744 8001DF44 00141100 */  sll        $v0, $s1, 16
  .L8001DF48:
    /* E748 8001DF48 03140200 */  sra        $v0, $v0, 16
    /* E74C 8001DF4C 80200200 */  sll        $a0, $v0, 2
    /* E750 8001DF50 21208200 */  addu       $a0, $a0, $v0
    /* E754 8001DF54 0400428E */  lw         $v0, 0x4($s2)
    /* E758 8001DF58 80200400 */  sll        $a0, $a0, 2
    /* E75C 8001DF5C 21208200 */  addu       $a0, $a0, $v0
    /* E760 8001DF60 00009090 */  lbu        $s0, 0x0($a0)
    /* E764 8001DF64 BA7A000C */  jal        func_8001EAE8
    /* E768 8001DF68 00000000 */   nop
    /* E76C 8001DF6C 01002426 */  addiu      $a0, $s1, 0x1
    /* E770 8001DF70 21888000 */  addu       $s1, $a0, $zero
    /* E774 8001DF74 80101000 */  sll        $v0, $s0, 2
    /* E778 8001DF78 0C80013C */  lui        $at, %hi(Scene_work + 0x24)
    /* E77C 8001DF7C 21082200 */  addu       $at, $at, $v0
    /* E780 8001DF80 6C4C238C */  lw         $v1, %lo(Scene_work + 0x24)($at)
    /* E784 8001DF84 21105300 */  addu       $v0, $v0, $s3
    /* E788 8001DF88 000043AC */  sw         $v1, 0x0($v0)
    /* E78C 8001DF8C 06006290 */  lbu        $v0, 0x6($v1)
    /* E790 8001DF90 00240400 */  sll        $a0, $a0, 16
    /* E794 8001DF94 DF004230 */  andi       $v0, $v0, 0xDF
    /* E798 8001DF98 060062A0 */  sb         $v0, 0x6($v1)
    /* E79C 8001DF9C 0080023C */  lui        $v0, (0x80000000 >> 16)
    /* E7A0 8001DFA0 0A80033C */  lui        $v1, %hi(D_800988E8)
    /* E7A4 8001DFA4 E888638C */  lw         $v1, %lo(D_800988E8)($v1)
    /* E7A8 8001DFA8 06100202 */  srlv       $v0, $v0, $s0
    /* E7AC 8001DFAC 25186200 */  or         $v1, $v1, $v0
    /* E7B0 8001DFB0 0000428E */  lw         $v0, 0x0($s2)
    /* E7B4 8001DFB4 03240400 */  sra        $a0, $a0, 16
    /* E7B8 8001DFB8 0A80013C */  lui        $at, %hi(D_800988E8)
    /* E7BC 8001DFBC E88823AC */  sw         $v1, %lo(D_800988E8)($at)
    /* E7C0 8001DFC0 2B208200 */  sltu       $a0, $a0, $v0
    /* E7C4 8001DFC4 E0FF8014 */  bnez       $a0, .L8001DF48
    /* E7C8 8001DFC8 00141100 */   sll       $v0, $s1, 16
  .L8001DFCC:
    /* E7CC 8001DFCC 2000BF8F */  lw         $ra, 0x20($sp)
    /* E7D0 8001DFD0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* E7D4 8001DFD4 1800B28F */  lw         $s2, 0x18($sp)
    /* E7D8 8001DFD8 1400B18F */  lw         $s1, 0x14($sp)
    /* E7DC 8001DFDC 1000B08F */  lw         $s0, 0x10($sp)
    /* E7E0 8001DFE0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* E7E4 8001DFE4 0800E003 */  jr         $ra
    /* E7E8 8001DFE8 00000000 */   nop
.size func_8001DF10, . - func_8001DF10
