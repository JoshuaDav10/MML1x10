.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003FA78
    /* 30278 8003FA78 01000224 */  addiu      $v0, $zero, 0x1
    /* 3027C 8003FA7C 090002A2 */  sb         $v0, 0x9($s0)
    /* 30280 8003FA80 64FF0008 */  j          .L8003FD90
    /* 30284 8003FA84 0A0000A6 */   sh        $zero, 0xA($s0)
  .L8003FA88:
    /* 30288 8003FA88 49FF0008 */  j          .L8003FD24
    /* 3028C 8003FA8C 090080A0 */   sb        $zero, 0x9($a0)
  .L8003FA90:
    /* 30290 8003FA90 24010496 */  lhu        $a0, 0x124($s0)
    /* 30294 8003FA94 26010396 */  lhu        $v1, 0x126($s0)
    /* 30298 8003FA98 2C010596 */  lhu        $a1, 0x12C($s0)
    /* 3029C 8003FA9C 2E010296 */  lhu        $v0, 0x12E($s0)
    /* 302A0 8003FAA0 25208300 */  or         $a0, $a0, $v1
    /* 302A4 8003FAA4 2530A200 */  or         $a2, $a1, $v0
    /* 302A8 8003FAA8 25208600 */  or         $a0, $a0, $a2
    /* 302AC 8003FAAC 38010296 */  lhu        $v0, 0x138($s0)
    /* 302B0 8003FAB0 3A010396 */  lhu        $v1, 0x13A($s0)
    /* 302B4 8003FAB4 3C010596 */  lhu        $a1, 0x13C($s0)
    /* 302B8 8003FAB8 25104400 */  or         $v0, $v0, $a0
    /* 302BC 8003FABC 25186500 */  or         $v1, $v1, $a1
    /* 302C0 8003FAC0 25104300 */  or         $v0, $v0, $v1
.size func_8003FA78, . - func_8003FA78
