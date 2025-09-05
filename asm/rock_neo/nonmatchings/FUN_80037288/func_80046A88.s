.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80046A88
    /* 37288 80046A88 26004014 */  bnez       $v0, .L80046B24
    /* 3728C 80046A8C 00000000 */   nop
    /* 37290 80046A90 0B80023C */  lui        $v0, %hi(Player_work + 0x16)
    /* 37294 80046A94 C6514284 */  lh         $v0, %lo(Player_work + 0x16)($v0)
    /* 37298 80046A98 3A00A384 */  lh         $v1, 0x3A($a1)
    /* 3729C 80046A9C 00000000 */  nop
    /* 372A0 80046AA0 23104300 */  subu       $v0, $v0, $v1
    /* 372A4 80046AA4 21104600 */  addu       $v0, $v0, $a2
    /* 372A8 80046AA8 96000325 */  addiu      $v1, $t0, 0x96
    /* 372AC 80046AAC 2B186200 */  sltu       $v1, $v1, $v0
    /* 372B0 80046AB0 1C006014 */  bnez       $v1, .L80046B24
    /* 372B4 80046AB4 05000224 */   addiu     $v0, $zero, 0x5
    /* 372B8 80046AB8 0300A390 */  lbu        $v1, 0x3($a1)
    /* 372BC 80046ABC 00000000 */  nop
    /* 372C0 80046AC0 0E006014 */  bnez       $v1, .L80046AFC
    /* 372C4 80046AC4 0800A2A0 */   sb        $v0, 0x8($a1)
    /* 372C8 80046AC8 21280000 */  addu       $a1, $zero, $zero
    /* 372CC 80046ACC 0C80023C */  lui        $v0, (0x800C0000 >> 16)
.size func_80046A88, . - func_80046A88
