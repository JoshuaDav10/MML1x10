.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004FCF0
    /* 404F0 8004FCF0 1200A297 */  lhu        $v0, 0x12($sp)
    /* 404F4 8004FCF4 00000000 */  nop
    /* 404F8 8004FCF8 23100200 */  negu       $v0, $v0
    /* 404FC 8004FCFC 801F013C */  lui        $at, (0x1F800102 >> 16)
    /* 40500 8004FD00 020122A4 */  sh         $v0, (0x1F800102 & 0xFFFF)($at)
    /* 40504 8004FD04 FD42010C */  jal        func_80050BF4
    /* 40508 8004FD08 1000A427 */   addiu     $a0, $sp, 0x10
    /* 4050C 8004FD0C BE3F0108 */  j          .L8004FEF8
    /* 40510 8004FD10 00000000 */   nop
  .L8004FD14:
    /* 40514 8004FD14 00002296 */  lhu        $v0, 0x0($s1)
    /* 40518 8004FD18 1000A397 */  lhu        $v1, 0x10($sp)
    /* 4051C 8004FD1C 00000000 */  nop
    /* 40520 8004FD20 21104300 */  addu       $v0, $v0, $v1
    /* 40524 8004FD24 000022A6 */  sh         $v0, 0x0($s1)
    /* 40528 8004FD28 1000A297 */  lhu        $v0, 0x10($sp)
    /* 4052C 8004FD2C 00000000 */  nop
    /* 40530 8004FD30 23100200 */  negu       $v0, $v0
.size func_8004FCF0, . - func_8004FCF0
