.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80048390
    /* 38B90 80048390 21288000 */  addu       $a1, $a0, $zero
    /* 38B94 80048394 483D043C */  lui        $a0, (0x3D48002C >> 16)
    /* 38B98 80048398 C02E033C */  lui        $v1, (0x2EC06060 >> 16)
    /* 38B9C 8004839C 20000224 */  addiu      $v0, $zero, 0x20
    /* 38BA0 800483A0 2400A2A4 */  sh         $v0, 0x24($a1)
    /* 38BA4 800483A4 80FF0224 */  addiu      $v0, $zero, -0x80
    /* 38BA8 800483A8 0C00A2A0 */  sb         $v0, 0xC($a1)
    /* 38BAC 800483AC 0000A290 */  lbu        $v0, 0x0($a1)
    /* 38BB0 800483B0 60606334 */  ori        $v1, $v1, (0x2EC06060 & 0xFFFF)
    /* 38BB4 800483B4 1800A3AC */  sw         $v1, 0x18($a1)
    /* 38BB8 800483B8 0300A390 */  lbu        $v1, 0x3($a1)
    /* 38BBC 800483BC 2C008434 */  ori        $a0, $a0, (0x3D48002C & 0xFFFF)
    /* 38BC0 800483C0 1400A4AC */  sw         $a0, 0x14($a1)
    /* 38BC4 800483C4 0D00A0A0 */  sb         $zero, 0xD($a1)
    /* 38BC8 800483C8 22004234 */  ori        $v0, $v0, 0x22
    /* 38BCC 800483CC 15006010 */  beqz       $v1, .L80048424
    /* 38BD0 800483D0 0000A2A0 */   sb        $v0, 0x0($a1)
    /* 38BD4 800483D4 0980023C */  lui        $v0, %hi(D_8008A74C)
    /* 38BD8 800483D8 4CA74290 */  lbu        $v0, %lo(D_8008A74C)($v0)
    /* 38BDC 800483DC 0D00A380 */  lb         $v1, 0xD($a1)
    /* 38BE0 800483E0 0E00A2A0 */  sb         $v0, 0xE($a1)
    /* 38BE4 800483E4 40100300 */  sll        $v0, $v1, 1
    /* 38BE8 800483E8 21104300 */  addu       $v0, $v0, $v1
.size func_80048390, . - func_80048390
