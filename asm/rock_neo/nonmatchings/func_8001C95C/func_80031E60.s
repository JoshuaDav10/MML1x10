.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80031E60
    /* 22660 80031E60 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 22664 80031E64 1000B0AF */  sw         $s0, 0x10($sp)
    /* 22668 80031E68 3800B08F */  lw         $s0, 0x38($sp)
    /* 2266C 80031E6C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 22670 80031E70 2190A000 */  addu       $s2, $a1, $zero
    /* 22674 80031E74 1400B1AF */  sw         $s1, 0x14($sp)
    /* 22678 80031E78 2188C000 */  addu       $s1, $a2, $zero
    /* 2267C 80031E7C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 22680 80031E80 3C00B38F */  lw         $s3, 0x3C($sp)
    /* 22684 80031E84 2000BFAF */  sw         $ra, 0x20($sp)
    /* 22688 80031E88 33C4000C */  jal        func_800310CC
    /* 2268C 80031E8C 2128E000 */   addu      $a1, $a3, $zero
    /* 22690 80031E90 21184000 */  addu       $v1, $v0, $zero
    /* 22694 80031E94 21100000 */  addu       $v0, $zero, $zero
    /* 22698 80031E98 23807000 */  subu       $s0, $v1, $s0
    /* 2269C 80031E9C 21807002 */  addu       $s0, $s3, $s0
    /* 226A0 80031EA0 23187200 */  subu       $v1, $v1, $s2
    /* 226A4 80031EA4 21182302 */  addu       $v1, $s1, $v1
    /* 226A8 80031EA8 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* 226AC 80031EAC 008C1100 */  sll        $s1, $s1, 16
    /* 226B0 80031EB0 C38B1100 */  sra        $s1, $s1, 15
    /* 226B4 80031EB4 2A882302 */  slt        $s1, $s1, $v1
    /* 226B8 80031EB8 05002016 */  bnez       $s1, .L80031ED0
    /* 226BC 80031EBC FF0F1032 */   andi      $s0, $s0, 0xFFF
    /* 226C0 80031EC0 00141300 */  sll        $v0, $s3, 16
    /* 226C4 80031EC4 C3130200 */  sra        $v0, $v0, 15
    /* 226C8 80031EC8 2A105000 */  slt        $v0, $v0, $s0
    /* 226CC 80031ECC 01004238 */  xori       $v0, $v0, 0x1
  .L80031ED0:
    /* 226D0 80031ED0 2000BF8F */  lw         $ra, 0x20($sp)
    /* 226D4 80031ED4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 226D8 80031ED8 1800B28F */  lw         $s2, 0x18($sp)
    /* 226DC 80031EDC 1400B18F */  lw         $s1, 0x14($sp)
    /* 226E0 80031EE0 1000B08F */  lw         $s0, 0x10($sp)
    /* 226E4 80031EE4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 226E8 80031EE8 0800E003 */  jr         $ra
    /* 226EC 80031EEC 00000000 */   nop
.size func_80031E60, . - func_80031E60
