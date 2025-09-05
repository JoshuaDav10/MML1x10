.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80047594
    /* 37D94 80047594 0300C2A0 */  sb         $v0, 0x3($a2)
    /* 37D98 80047598 3B00028A */  lwl        $v0, 0x3B($s0)
    /* 37D9C 8004759C 3800029A */  lwr        $v0, 0x38($s0)
    /* 37DA0 800475A0 3F00038A */  lwl        $v1, 0x3F($s0)
    /* 37DA4 800475A4 3C00039A */  lwr        $v1, 0x3C($s0)
    /* 37DA8 800475A8 3B00C2A8 */  swl        $v0, 0x3B($a2)
    /* 37DAC 800475AC 3800C2B8 */  swr        $v0, 0x38($a2)
    /* 37DB0 800475B0 3F00C3A8 */  swl        $v1, 0x3F($a2)
    /* 37DB4 800475B4 3C00C3B8 */  swr        $v1, 0x3C($a2)
    /* 37DB8 800475B8 941D0108 */  j          .L80047650
    /* 37DBC 800475BC 38001126 */   addiu     $s1, $s0, 0x38
  .L800475C0:
    /* 37DC0 800475C0 0F006330 */  andi       $v1, $v1, 0xF
    /* 37DC4 800475C4 05000224 */  addiu      $v0, $zero, 0x5
    /* 37DC8 800475C8 0E006210 */  beq        $v1, $v0, .L80047604
    /* 37DCC 800475CC 06006228 */   slti      $v0, $v1, 0x6
    /* 37DD0 800475D0 05004010 */  beqz       $v0, .L800475E8
    /* 37DD4 800475D4 04000224 */   addiu     $v0, $zero, 0x4
    /* 37DD8 800475D8 08006210 */  beq        $v1, $v0, .L800475FC
.size func_80047594, . - func_80047594
