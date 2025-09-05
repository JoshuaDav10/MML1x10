.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L800596F4
    /* 49EF4 800596F4 1400828C */  lw         $v0, 0x14($a0)
    /* 49EF8 800596F8 00000000 */  nop
    /* 49EFC 800596FC 02004290 */  lbu        $v0, 0x2($v0)
    /* 49F00 80059700 0B80013C */  lui        $at, %hi(Player_work + 0x450)
    /* 49F04 80059704 21082200 */  addu       $at, $at, $v0
    /* 49F08 80059708 00562280 */  lb         $v0, %lo(Player_work + 0x450)($at)
    /* 49F0C 8005970C 00000000 */  nop
    /* 49F10 80059710 80100200 */  sll        $v0, $v0, 2
.size .L800596F4, . - .L800596F4
