.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005DCDC
    /* 4E4DC 8005DCDC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4E4E0 8005DCE0 0A80053C */  lui        $a1, %hi(D_80098038)
    /* 4E4E4 8005DCE4 3880A524 */  addiu      $a1, $a1, %lo(D_80098038)
    /* 4E4E8 8005DCE8 0300A288 */  lwl        $v0, 0x3($a1)
    /* 4E4EC 8005DCEC 0000A298 */  lwr        $v0, 0x0($a1)
    /* 4E4F0 8005DCF0 0700A388 */  lwl        $v1, 0x7($a1)
    /* 4E4F4 8005DCF4 0400A398 */  lwr        $v1, 0x4($a1)
    /* 4E4F8 8005DCF8 0800A480 */  lb         $a0, 0x8($a1)
    /* 4E4FC 8005DCFC 0300A2AB */  swl        $v0, 0x3($sp)
    /* 4E500 8005DD00 0000A2BB */  swr        $v0, 0x0($sp)
    /* 4E504 8005DD04 0700A3AB */  swl        $v1, 0x7($sp)
    /* 4E508 8005DD08 0400A3BB */  swr        $v1, 0x4($sp)
    /* 4E50C 8005DD0C 0800A4A3 */  sb         $a0, 0x8($sp)
    /* 4E510 8005DD10 A007828F */  lw         $v0, %gp_rel(D_80098004)($gp)
    /* 4E514 8005DD14 0A80063C */  lui        $a2, %hi(D_80098044)
    /* 4E518 8005DD18 4480C624 */  addiu      $a2, $a2, %lo(D_80098044)
    /* 4E51C 8005DD1C 0300C388 */  lwl        $v1, 0x3($a2)
    /* 4E520 8005DD20 0000C398 */  lwr        $v1, 0x0($a2)
    /* 4E524 8005DD24 0700C488 */  lwl        $a0, 0x7($a2)
    /* 4E528 8005DD28 0400C498 */  lwr        $a0, 0x4($a2)
    /* 4E52C 8005DD2C 0800C580 */  lb         $a1, 0x8($a2)
    /* 4E530 8005DD30 1300A3AB */  swl        $v1, 0x13($sp)
    /* 4E534 8005DD34 1000A3BB */  swr        $v1, 0x10($sp)
.size func_8005DCDC, . - func_8005DCDC
