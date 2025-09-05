.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004FE88
    /* 40688 8004FE88 0E004010 */  beqz       $v0, .L8004FEC4
    /* 4068C 8004FE8C 00000000 */   nop
  .L8004FE90:
    /* 40690 8004FE90 02002296 */  lhu        $v0, 0x2($s1)
    /* 40694 8004FE94 1200A397 */  lhu        $v1, 0x12($sp)
    /* 40698 8004FE98 00000000 */  nop
    /* 4069C 8004FE9C 21104300 */  addu       $v0, $v0, $v1
    /* 406A0 8004FEA0 020022A6 */  sh         $v0, 0x2($s1)
    /* 406A4 8004FEA4 02004296 */  lhu        $v0, 0x2($s2)
    /* 406A8 8004FEA8 1200A397 */  lhu        $v1, 0x12($sp)
    /* 406AC 8004FEAC 1000A427 */  addiu      $a0, $sp, 0x10
.size func_8004FE88, . - func_8004FE88
