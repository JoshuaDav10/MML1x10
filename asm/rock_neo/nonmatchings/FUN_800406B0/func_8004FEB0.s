.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004FEB0
    /* 406B0 8004FEB0 21104300 */  addu       $v0, $v0, $v1
    /* 406B4 8004FEB4 FD42010C */  jal        func_80050BF4
    /* 406B8 8004FEB8 020042A6 */   sh        $v0, 0x2($s2)
    /* 406BC 8004FEBC BE3F0108 */  j          .L8004FEF8
    /* 406C0 8004FEC0 00000000 */   nop
  .L8004FEC4:
    /* 406C4 8004FEC4 00002296 */  lhu        $v0, 0x0($s1)
    /* 406C8 8004FEC8 1000A397 */  lhu        $v1, 0x10($sp)
    /* 406CC 8004FECC 00000000 */  nop
    /* 406D0 8004FED0 21104300 */  addu       $v0, $v0, $v1
    /* 406D4 8004FED4 000022A6 */  sh         $v0, 0x0($s1)
    /* 406D8 8004FED8 00004296 */  lhu        $v0, 0x0($s2)
    /* 406DC 8004FEDC 1000A397 */  lhu        $v1, 0x10($sp)
    /* 406E0 8004FEE0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 406E4 8004FEE4 21104300 */  addu       $v0, $v0, $v1
    /* 406E8 8004FEE8 000042A6 */  sh         $v0, 0x0($s2)
.size func_8004FEB0, . - func_8004FEB0
