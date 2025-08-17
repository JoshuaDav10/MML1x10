.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057D60
    /* 48560 80057D60 BE008394 */  lhu        $v1, 0xBE($a0)
    /* 48564 80057D64 00000000 */  nop
    /* 48568 80057D68 01006224 */  addiu      $v0, $v1, 0x1
    /* 4856C 80057D6C 80180300 */  sll        $v1, $v1, 2
    /* 48570 80057D70 BE0082A4 */  sh         $v0, 0xBE($a0)
    /* 48574 80057D74 1400828C */  lw         $v0, 0x14($a0)
    /* 48578 80057D78 21186400 */  addu       $v1, $v1, $a0
    /* 4857C 80057D7C 02004224 */  addiu      $v0, $v0, 0x2
    /* 48580 80057D80 180062AC */  sw         $v0, 0x18($v1)
    /* 48584 80057D84 1400828C */  lw         $v0, 0x14($a0)
    /* 48588 80057D88 00000000 */  nop
    /* 4858C 80057D8C 01004290 */  lbu        $v0, 0x1($v0)
    /* 48590 80057D90 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 48594 80057D94 21082200 */  addu       $at, $at, $v0
    /* 48598 80057D98 F8E22290 */  lbu        $v0, %lo(D_800BE2F8)($at)
    /* 4859C 80057D9C 00000000 */  nop
    /* 485A0 80057DA0 80100200 */  sll        $v0, $v0, 2
    /* 485A4 80057DA4 0980013C */  lui        $at, %hi(D_8008CE10)
    /* 485A8 80057DA8 21082200 */  addu       $at, $at, $v0
    /* 485AC 80057DAC 10CE228C */  lw         $v0, %lo(D_8008CE10)($at)
    /* 485B0 80057DB0 0800E003 */  jr         $ra
    /* 485B4 80057DB4 140082AC */   sw        $v0, 0x14($a0)
.size func_80057D60, . - func_80057D60
