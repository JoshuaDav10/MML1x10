.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80039D38
    /* 2A538 80039D38 0A80053C */  lui        $a1, %hi(D_800A39C0)
    /* 2A53C 80039D3C C039A524 */  addiu      $a1, $a1, %lo(D_800A39C0)
    /* 2A540 80039D40 00008384 */  lh         $v1, 0x0($a0)
    /* 2A544 80039D44 0000A28C */  lw         $v0, 0x0($a1)
    /* 2A548 80039D48 00000000 */  nop
    /* 2A54C 80039D4C 21104300 */  addu       $v0, $v0, $v1
    /* 2A550 80039D50 0000A2AC */  sw         $v0, 0x0($a1)
    /* 2A554 80039D54 02008384 */  lh         $v1, 0x2($a0)
    /* 2A558 80039D58 0A80023C */  lui        $v0, %hi(D_800A39C4)
    /* 2A55C 80039D5C C439428C */  lw         $v0, %lo(D_800A39C4)($v0)
    /* 2A560 80039D60 00000000 */  nop
    /* 2A564 80039D64 21104300 */  addu       $v0, $v0, $v1
    /* 2A568 80039D68 0A80013C */  lui        $at, %hi(D_800A39C4)
    /* 2A56C 80039D6C C43922AC */  sw         $v0, %lo(D_800A39C4)($at)
    /* 2A570 80039D70 04008384 */  lh         $v1, 0x4($a0)
    /* 2A574 80039D74 0A80023C */  lui        $v0, %hi(D_800A39C8)
    /* 2A578 80039D78 C839428C */  lw         $v0, %lo(D_800A39C8)($v0)
    /* 2A57C 80039D7C 00000000 */  nop
    /* 2A580 80039D80 21104300 */  addu       $v0, $v0, $v1
    /* 2A584 80039D84 0A80013C */  lui        $at, %hi(D_800A39C8)
    /* 2A588 80039D88 C83922AC */  sw         $v0, %lo(D_800A39C8)($at)
    /* 2A58C 80039D8C 00008384 */  lh         $v1, 0x0($a0)
    /* 2A590 80039D90 0A80023C */  lui        $v0, %hi(D_800A39E0)
    /* 2A594 80039D94 E039428C */  lw         $v0, %lo(D_800A39E0)($v0)
    /* 2A598 80039D98 00000000 */  nop
    /* 2A59C 80039D9C 21104300 */  addu       $v0, $v0, $v1
    /* 2A5A0 80039DA0 0A80013C */  lui        $at, %hi(D_800A39E0)
    /* 2A5A4 80039DA4 E03922AC */  sw         $v0, %lo(D_800A39E0)($at)
    /* 2A5A8 80039DA8 02008384 */  lh         $v1, 0x2($a0)
    /* 2A5AC 80039DAC 0A80023C */  lui        $v0, %hi(D_800A39E4)
    /* 2A5B0 80039DB0 E439428C */  lw         $v0, %lo(D_800A39E4)($v0)
    /* 2A5B4 80039DB4 00000000 */  nop
    /* 2A5B8 80039DB8 21104300 */  addu       $v0, $v0, $v1
    /* 2A5BC 80039DBC 0A80013C */  lui        $at, %hi(D_800A39E4)
    /* 2A5C0 80039DC0 E43922AC */  sw         $v0, %lo(D_800A39E4)($at)
    /* 2A5C4 80039DC4 04008384 */  lh         $v1, 0x4($a0)
    /* 2A5C8 80039DC8 0A80023C */  lui        $v0, %hi(D_800A39E8)
    /* 2A5CC 80039DCC E839428C */  lw         $v0, %lo(D_800A39E8)($v0)
    /* 2A5D0 80039DD0 00000000 */  nop
    /* 2A5D4 80039DD4 21104300 */  addu       $v0, $v0, $v1
    /* 2A5D8 80039DD8 0A80013C */  lui        $at, %hi(D_800A39E8)
    /* 2A5DC 80039DDC E83922AC */  sw         $v0, %lo(D_800A39E8)($at)
    /* 2A5E0 80039DE0 0800E003 */  jr         $ra
    /* 2A5E4 80039DE4 00000000 */   nop
.size func_80039D38, . - func_80039D38
