.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002DC84
    /* 1E484 8002DC84 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1E488 8002DC88 21108000 */  addu       $v0, $a0, $zero
    /* 1E48C 8002DC8C 80300600 */  sll        $a2, $a2, 2
    /* 1E490 8002DC90 2130C500 */  addu       $a2, $a2, $a1
    /* 1E494 8002DC94 FF00043C */  lui        $a0, (0xFFFFFF >> 16)
    /* 1E498 8002DC98 C0380700 */  sll        $a3, $a3, 3
    /* 1E49C 8002DC9C 1800C88C */  lw         $t0, 0x18($a2)
    /* 1E4A0 8002DCA0 0400E724 */  addiu      $a3, $a3, 0x4
    /* 1E4A4 8002DCA4 0000068D */  lw         $a2, 0x0($t0)
    /* 1E4A8 8002DCA8 FFFF8434 */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
    /* 1E4AC 8002DCAC FF00C330 */  andi       $v1, $a2, 0xFF
    /* 1E4B0 8002DCB0 80180300 */  sll        $v1, $v1, 2
    /* 1E4B4 8002DCB4 21180301 */  addu       $v1, $t0, $v1
    /* 1E4B8 8002DCB8 21406700 */  addu       $t0, $v1, $a3
    /* 1E4BC 8002DCBC 0000A6AF */  sw         $a2, 0x0($sp)
    /* 1E4C0 8002DCC0 0000038D */  lw         $v1, 0x0($t0)
    /* 1E4C4 8002DCC4 0080053C */  lui        $a1, (0x80000000 >> 16)
    /* 1E4C8 8002DCC8 24186400 */  and        $v1, $v1, $a0
    /* 1E4CC 8002DCCC 25186500 */  or         $v1, $v1, $a1
    /* 1E4D0 8002DCD0 0800A3AF */  sw         $v1, 0x8($sp)
    /* 1E4D4 8002DCD4 0400068D */  lw         $a2, 0x4($t0)
    /* 1E4D8 8002DCD8 00000000 */  nop
    /* 1E4DC 8002DCDC 021E0600 */  srl        $v1, $a2, 24
    /* 1E4E0 8002DCE0 2420C400 */  and        $a0, $a2, $a0
    /* 1E4E4 8002DCE4 25208500 */  or         $a0, $a0, $a1
    /* 1E4E8 8002DCE8 0400A3AF */  sw         $v1, 0x4($sp)
    /* 1E4EC 8002DCEC 0C00A4AF */  sw         $a0, 0xC($sp)
    /* 1E4F0 8002DCF0 0000A38F */  lw         $v1, 0x0($sp)
    /* 1E4F4 8002DCF4 0400A48F */  lw         $a0, 0x4($sp)
    /* 1E4F8 8002DCF8 0800A58F */  lw         $a1, 0x8($sp)
    /* 1E4FC 8002DCFC 0C00A68F */  lw         $a2, 0xC($sp)
    /* 1E500 8002DD00 000043AC */  sw         $v1, 0x0($v0)
    /* 1E504 8002DD04 040044AC */  sw         $a0, 0x4($v0)
    /* 1E508 8002DD08 080045AC */  sw         $a1, 0x8($v0)
    /* 1E50C 8002DD0C 0C0046AC */  sw         $a2, 0xC($v0)
    /* 1E510 8002DD10 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 1E514 8002DD14 0800E003 */  jr         $ra
    /* 1E518 8002DD18 00000000 */   nop
.size func_8002DC84, . - func_8002DC84
