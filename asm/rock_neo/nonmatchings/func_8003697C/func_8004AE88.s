.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004AE88
    /* 3B688 8004AE88 00008294 */  lhu        $v0, 0x0($a0)
    /* 3B68C 8004AE8C 00000000 */  nop
    /* 3B690 8004AE90 FF0F4330 */  andi       $v1, $v0, 0xFFF
    /* 3B694 8004AE94 0003A230 */  andi       $v0, $a1, 0x300
    /* 3B698 8004AE98 10004010 */  beqz       $v0, .L8004AEDC
    /* 3B69C 8004AE9C 21300000 */   addu      $a2, $zero, $zero
    /* 3B6A0 8004AEA0 0001A230 */  andi       $v0, $a1, 0x100
    /* 3B6A4 8004AEA4 07004010 */  beqz       $v0, .L8004AEC4
    /* 3B6A8 8004AEA8 01000624 */   addiu     $a2, $zero, 0x1
    /* 3B6AC 8004AEAC FFFB6224 */  addiu      $v0, $v1, -0x401
    /* 3B6B0 8004AEB0 FF07422C */  sltiu      $v0, $v0, 0x7FF
    /* 3B6B4 8004AEB4 0A004010 */  beqz       $v0, .L8004AEE0
    /* 3B6B8 8004AEB8 000CA230 */   andi      $v0, $a1, 0xC00
    /* 3B6BC 8004AEBC B62B0108 */  j          .L8004AED8
    /* 3B6C0 8004AEC0 00100224 */   addiu     $v0, $zero, 0x1000
  .L8004AEC4:
    /* 3B6C4 8004AEC4 00FC6224 */  addiu      $v0, $v1, -0x400
    /* 3B6C8 8004AEC8 0108422C */  sltiu      $v0, $v0, 0x801
    /* 3B6CC 8004AECC 04004014 */  bnez       $v0, .L8004AEE0
    /* 3B6D0 8004AED0 000CA230 */   andi      $v0, $a1, 0xC00
    /* 3B6D4 8004AED4 00100224 */  addiu      $v0, $zero, 0x1000
  .L8004AED8:
    /* 3B6D8 8004AED8 23184300 */  subu       $v1, $v0, $v1
  .L8004AEDC:
    /* 3B6DC 8004AEDC 000CA230 */  andi       $v0, $a1, 0xC00
  .L8004AEE0:
    /* 3B6E0 8004AEE0 0E004010 */  beqz       $v0, .L8004AF1C
    /* 3B6E4 8004AEE4 00000000 */   nop
    /* 3B6E8 8004AEE8 0004A230 */  andi       $v0, $a1, 0x400
    /* 3B6EC 8004AEEC 06004010 */  beqz       $v0, .L8004AF08
    /* 3B6F0 8004AEF0 01000624 */   addiu     $a2, $zero, 0x1
    /* 3B6F4 8004AEF4 01086228 */  slti       $v0, $v1, 0x801
    /* 3B6F8 8004AEF8 08004014 */  bnez       $v0, .L8004AF1C
    /* 3B6FC 8004AEFC 00000000 */   nop
    /* 3B700 8004AF00 C62B0108 */  j          .L8004AF18
    /* 3B704 8004AF04 00180224 */   addiu     $v0, $zero, 0x1800
  .L8004AF08:
    /* 3B708 8004AF08 00086228 */  slti       $v0, $v1, 0x800
    /* 3B70C 8004AF0C 03004010 */  beqz       $v0, .L8004AF1C
    /* 3B710 8004AF10 00000000 */   nop
    /* 3B714 8004AF14 00080224 */  addiu      $v0, $zero, 0x800
  .L8004AF18:
    /* 3B718 8004AF18 23184300 */  subu       $v1, $v0, $v1
  .L8004AF1C:
    /* 3B71C 8004AF1C 000083A4 */  sh         $v1, 0x0($a0)
    /* 3B720 8004AF20 0800E003 */  jr         $ra
    /* 3B724 8004AF24 2110C000 */   addu      $v0, $a2, $zero
.size func_8004AE88, . - func_8004AE88
