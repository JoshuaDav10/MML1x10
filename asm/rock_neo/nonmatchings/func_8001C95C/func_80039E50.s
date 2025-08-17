.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80039E50
    /* 2A650 80039E50 02000224 */  addiu      $v0, $zero, 0x2
    /* 2A654 80039E54 0A80013C */  lui        $at, %hi(D_800A3959)
    /* 2A658 80039E58 593922A0 */  sb         $v0, %lo(D_800A3959)($at)
    /* 2A65C 80039E5C 40000224 */  addiu      $v0, $zero, 0x40
    /* 2A660 80039E60 0A80013C */  lui        $at, %hi(D_800A3962)
    /* 2A664 80039E64 623922A0 */  sb         $v0, %lo(D_800A3962)($at)
    /* 2A668 80039E68 0A80053C */  lui        $a1, %hi(D_800A39A0)
    /* 2A66C 80039E6C A039A524 */  addiu      $a1, $a1, %lo(D_800A39A0)
    /* 2A670 80039E70 0A80043C */  lui        $a0, %hi(D_800A39C0)
    /* 2A674 80039E74 C0398424 */  addiu      $a0, $a0, %lo(D_800A39C0)
    /* 2A678 80039E78 0000A28C */  lw         $v0, 0x0($a1)
    /* 2A67C 80039E7C 0400A38C */  lw         $v1, 0x4($a1)
    /* 2A680 80039E80 000082AC */  sw         $v0, 0x0($a0)
    /* 2A684 80039E84 040083AC */  sw         $v1, 0x4($a0)
    /* 2A688 80039E88 0800A28C */  lw         $v0, 0x8($a1)
    /* 2A68C 80039E8C 0C00A38C */  lw         $v1, 0xC($a1)
    /* 2A690 80039E90 080082AC */  sw         $v0, 0x8($a0)
    /* 2A694 80039E94 0C0083AC */  sw         $v1, 0xC($a0)
    /* 2A698 80039E98 00020324 */  addiu      $v1, $zero, 0x200
    /* 2A69C 80039E9C C80483AF */  sw         $v1, %gp_rel(D_80097D2C)($gp)
    /* 2A6A0 80039EA0 0A80013C */  lui        $at, %hi(D_800A3994)
    /* 2A6A4 80039EA4 943923AC */  sw         $v1, %lo(D_800A3994)($at)
    /* 2A6A8 80039EA8 0A80033C */  lui        $v1, %hi(D_800A3964)
    /* 2A6AC 80039EAC 6439638C */  lw         $v1, %lo(D_800A3964)($v1)
    /* 2A6B0 80039EB0 96000224 */  addiu      $v0, $zero, 0x96
    /* 2A6B4 80039EB4 0A80013C */  lui        $at, %hi(D_800A39B4)
    /* 2A6B8 80039EB8 B43922AC */  sw         $v0, %lo(D_800A39B4)($at)
    /* 2A6BC 80039EBC 30000224 */  addiu      $v0, $zero, 0x30
    /* 2A6C0 80039EC0 0A80013C */  lui        $at, %hi(D_800A399C)
    /* 2A6C4 80039EC4 9C3922AC */  sw         $v0, %lo(D_800A399C)($at)
    /* 2A6C8 80039EC8 FCFF0224 */  addiu      $v0, $zero, -0x4
    /* 2A6CC 80039ECC 0A80013C */  lui        $at, %hi(D_800A3961)
    /* 2A6D0 80039ED0 613922A0 */  sb         $v0, %lo(D_800A3961)($at)
    /* 2A6D4 80039ED4 0A80023C */  lui        $v0, %hi(D_800A3968)
    /* 2A6D8 80039ED8 6839428C */  lw         $v0, %lo(D_800A3968)($v0)
    /* 2A6DC 80039EDC 0B80043C */  lui        $a0, %hi(Player_work + 0x14)
    /* 2A6E0 80039EE0 C4518484 */  lh         $a0, %lo(Player_work + 0x14)($a0)
    /* 2A6E4 80039EE4 FF0F4530 */  andi       $a1, $v0, 0xFFF
    /* 2A6E8 80039EE8 0A80013C */  lui        $at, %hi(D_800A397C)
    /* 2A6EC 80039EEC 7C3923AC */  sw         $v1, %lo(D_800A397C)($at)
    /* 2A6F0 80039EF0 0A80033C */  lui        $v1, %hi(D_800A396C)
    /* 2A6F4 80039EF4 6C39638C */  lw         $v1, %lo(D_800A396C)($v1)
    /* 2A6F8 80039EF8 0B80023C */  lui        $v0, %hi(Player_work + 0x16)
    /* 2A6FC 80039EFC C6514284 */  lh         $v0, %lo(Player_work + 0x16)($v0)
    /* 2A700 80039F00 0A80013C */  lui        $at, %hi(D_800A39E0)
    /* 2A704 80039F04 E03924AC */  sw         $a0, %lo(D_800A39E0)($at)
    /* 2A708 80039F08 0B80043C */  lui        $a0, %hi(Player_work + 0x18)
    /* 2A70C 80039F0C C8518484 */  lh         $a0, %lo(Player_work + 0x18)($a0)
    /* 2A710 80039F10 0B80013C */  lui        $at, %hi(Player_work + 0x44D)
    /* 2A714 80039F14 FD5520A0 */  sb         $zero, %lo(Player_work + 0x44D)($at)
    /* 2A718 80039F18 0A80013C */  lui        $at, %hi(D_800A3980)
    /* 2A71C 80039F1C 803925AC */  sw         $a1, %lo(D_800A3980)($at)
    /* 2A720 80039F20 0A80013C */  lui        $at, %hi(D_800A3984)
    /* 2A724 80039F24 843923AC */  sw         $v1, %lo(D_800A3984)($at)
    /* 2A728 80039F28 0B80033C */  lui        $v1, %hi(Player_work + 0x56)
    /* 2A72C 80039F2C 06526384 */  lh         $v1, %lo(Player_work + 0x56)($v1)
    /* 2A730 80039F30 6AFF4224 */  addiu      $v0, $v0, -0x96
    /* 2A734 80039F34 0A80013C */  lui        $at, %hi(D_800A39E4)
    /* 2A738 80039F38 E43922AC */  sw         $v0, %lo(D_800A39E4)($at)
    /* 2A73C 80039F3C 0A80013C */  lui        $at, %hi(D_800A39E8)
    /* 2A740 80039F40 E83924AC */  sw         $a0, %lo(D_800A39E8)($at)
    /* 2A744 80039F44 00086324 */  addiu      $v1, $v1, 0x800
    /* 2A748 80039F48 FF0F6430 */  andi       $a0, $v1, 0xFFF
    /* 2A74C 80039F4C 2A108500 */  slt        $v0, $a0, $a1
    /* 2A750 80039F50 0A80013C */  lui        $at, %hi(D_800A3998)
    /* 2A754 80039F54 983924AC */  sw         $a0, %lo(D_800A3998)($at)
    /* 2A758 80039F58 0A004010 */  beqz       $v0, .L80039F84
    /* 2A75C 80039F5C 2318A400 */   subu      $v1, $a1, $a0
    /* 2A760 80039F60 00F0A224 */  addiu      $v0, $a1, -0x1000
    /* 2A764 80039F64 23108200 */  subu       $v0, $a0, $v0
    /* 2A768 80039F68 2A104300 */  slt        $v0, $v0, $v1
    /* 2A76C 80039F6C 0D004010 */  beqz       $v0, .L80039FA4
    /* 2A770 80039F70 00108224 */   addiu     $v0, $a0, 0x1000
    /* 2A774 80039F74 0A80013C */  lui        $at, %hi(D_800A3998)
    /* 2A778 80039F78 983922AC */  sw         $v0, %lo(D_800A3998)($at)
    /* 2A77C 80039F7C E9E70008 */  j          .L80039FA4
    /* 2A780 80039F80 00000000 */   nop
  .L80039F84:
    /* 2A784 80039F84 23188500 */  subu       $v1, $a0, $a1
    /* 2A788 80039F88 00F08224 */  addiu      $v0, $a0, -0x1000
    /* 2A78C 80039F8C 2310A200 */  subu       $v0, $a1, $v0
    /* 2A790 80039F90 2A104300 */  slt        $v0, $v0, $v1
    /* 2A794 80039F94 03004010 */  beqz       $v0, .L80039FA4
    /* 2A798 80039F98 0010A224 */   addiu     $v0, $a1, 0x1000
    /* 2A79C 80039F9C 0A80013C */  lui        $at, %hi(D_800A3980)
    /* 2A7A0 80039FA0 803922AC */  sw         $v0, %lo(D_800A3980)($at)
  .L80039FA4:
    /* 2A7A4 80039FA4 0800E003 */  jr         $ra
    /* 2A7A8 80039FA8 00000000 */   nop
.size func_80039E50, . - func_80039E50
