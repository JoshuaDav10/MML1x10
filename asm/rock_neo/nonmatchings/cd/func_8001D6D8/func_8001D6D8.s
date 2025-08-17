.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D6D8
    /* DED8 8001D6D8 21488000 */  addu       $t1, $a0, $zero
    /* DEDC 8001D6DC 0A80043C */  lui        $a0, %hi(unknown_Cd_strucptr)
    /* DEE0 8001D6E0 A489848C */  lw         $a0, %lo(unknown_Cd_strucptr)($a0)
    /* DEE4 8001D6E4 0A80073C */  lui        $a3, %hi(D_800A3A40 + 0x10)
    /* DEE8 8001D6E8 503AE724 */  addiu      $a3, $a3, %lo(D_800A3A40 + 0x10)
    /* DEEC 8001D6EC 2B10E400 */  sltu       $v0, $a3, $a0
    /* DEF0 8001D6F0 24004010 */  beqz       $v0, .L8001D784
    /* DEF4 8001D6F4 00000000 */   nop
    /* DEF8 8001D6F8 07000A24 */  addiu      $t2, $zero, 0x7
  .L8001D6FC:
    /* DEFC 8001D6FC 0000E28C */  lw         $v0, 0x0($a3)
    /* DF00 8001D700 00000000 */  nop
    /* DF04 8001D704 19004A14 */  bne        $v0, $t2, .L8001D76C
    /* DF08 8001D708 1000E324 */   addiu     $v1, $a3, 0x10
    /* DF0C 8001D70C 21408000 */  addu       $t0, $a0, $zero
    /* DF10 8001D710 2B106800 */  sltu       $v0, $v1, $t0
    /* DF14 8001D714 0F004010 */  beqz       $v0, .L8001D754
    /* DF18 8001D718 2130E000 */   addu      $a2, $a3, $zero
    /* DF1C 8001D71C 21286000 */  addu       $a1, $v1, $zero
  .L8001D720:
    /* DF20 8001D720 0000A28C */  lw         $v0, 0x0($a1)
    /* DF24 8001D724 00000000 */  nop
    /* DF28 8001D728 0000C2AC */  sw         $v0, 0x0($a2)
    /* DF2C 8001D72C 0400A28C */  lw         $v0, 0x4($a1)
    /* DF30 8001D730 0800A38C */  lw         $v1, 0x8($a1)
    /* DF34 8001D734 0C00A48C */  lw         $a0, 0xC($a1)
    /* DF38 8001D738 F4FFA2AC */  sw         $v0, -0xC($a1)
    /* DF3C 8001D73C F8FFA3AC */  sw         $v1, -0x8($a1)
    /* DF40 8001D740 FCFFA4AC */  sw         $a0, -0x4($a1)
    /* DF44 8001D744 1000A524 */  addiu      $a1, $a1, 0x10
    /* DF48 8001D748 2B10A800 */  sltu       $v0, $a1, $t0
    /* DF4C 8001D74C F4FF4014 */  bnez       $v0, .L8001D720
    /* DF50 8001D750 1000C624 */   addiu     $a2, $a2, 0x10
  .L8001D754:
    /* DF54 8001D754 0A80023C */  lui        $v0, %hi(unknown_Cd_strucptr)
    /* DF58 8001D758 A489428C */  lw         $v0, %lo(unknown_Cd_strucptr)($v0)
    /* DF5C 8001D75C 00000000 */  nop
    /* DF60 8001D760 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* DF64 8001D764 0A80013C */  lui        $at, %hi(unknown_Cd_strucptr)
    /* DF68 8001D768 A48922AC */  sw         $v0, %lo(unknown_Cd_strucptr)($at)
  .L8001D76C:
    /* DF6C 8001D76C 0A80043C */  lui        $a0, %hi(unknown_Cd_strucptr)
    /* DF70 8001D770 A489848C */  lw         $a0, %lo(unknown_Cd_strucptr)($a0)
    /* DF74 8001D774 1000E724 */  addiu      $a3, $a3, 0x10
    /* DF78 8001D778 2B10E400 */  sltu       $v0, $a3, $a0
    /* DF7C 8001D77C DFFF4014 */  bnez       $v0, .L8001D6FC
    /* DF80 8001D780 00000000 */   nop
  .L8001D784:
    /* DF84 8001D784 0A80023C */  lui        $v0, %hi(unknown_Cd_strucptr)
    /* DF88 8001D788 A489428C */  lw         $v0, %lo(unknown_Cd_strucptr)($v0)
    /* DF8C 8001D78C 07000324 */  addiu      $v1, $zero, 0x7
    /* DF90 8001D790 000043AC */  sw         $v1, 0x0($v0)
    /* DF94 8001D794 080049AC */  sw         $t1, 0x8($v0)
    /* DF98 8001D798 10004224 */  addiu      $v0, $v0, 0x10
    /* DF9C 8001D79C 0A80013C */  lui        $at, %hi(unknown_Cd_strucptr)
    /* DFA0 8001D7A0 A48922AC */  sw         $v0, %lo(unknown_Cd_strucptr)($at)
    /* DFA4 8001D7A4 0800E003 */  jr         $ra
    /* DFA8 8001D7A8 00000000 */   nop
.size func_8001D6D8, . - func_8001D6D8
