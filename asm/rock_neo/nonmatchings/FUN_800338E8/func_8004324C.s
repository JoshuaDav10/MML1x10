.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004324C
    /* 33A4C 8004324C 74018280 */  lb         $v0, 0x174($a0)
    /* 33A50 80043250 00000000 */  nop
    /* 33A54 80043254 C0004230 */  andi       $v0, $v0, 0xC0
    /* 33A58 80043258 06004014 */  bnez       $v0, .L80043274
    /* 33A5C 8004325C 01000224 */   addiu     $v0, $zero, 0x1
    /* 33A60 80043260 77018280 */  lb         $v0, 0x177($a0)
    /* 33A64 80043264 00000000 */  nop
    /* 33A68 80043268 02004014 */  bnez       $v0, .L80043274
    /* 33A6C 8004326C 01000224 */   addiu     $v0, $zero, 0x1
    /* 33A70 80043270 21100000 */  addu       $v0, $zero, $zero
  .L80043274:
    /* 33A74 80043274 0800E003 */  jr         $ra
    /* 33A78 80043278 00000000 */   nop
.size func_8004324C, . - func_8004324C
