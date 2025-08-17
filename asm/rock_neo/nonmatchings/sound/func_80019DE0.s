.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80019DE0
    /* A5E0 80019DE0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A5E4 80019DE4 1800BFAF */  sw         $ra, 0x18($sp)
    /* A5E8 80019DE8 65AD010C */  jal        func_8006B594
    /* A5EC 80019DEC 00000000 */   nop
    /* A5F0 80019DF0 0C80043C */  lui        $a0, %hi(D_800C1010)
    /* A5F4 80019DF4 10108424 */  addiu      $a0, $a0, %lo(D_800C1010)
    /* A5F8 80019DF8 04000524 */  addiu      $a1, $zero, 0x4
    /* A5FC 80019DFC 99C0010C */  jal        SsSetTableSize
    /* A600 80019E00 04000624 */   addiu     $a2, $zero, 0x4
    /* A604 80019E04 0FC1010C */  jal        SsSetTickMode
    /* A608 80019E08 01000424 */   addiu     $a0, $zero, 0x1
    /* A60C 80019E0C 21200000 */  addu       $a0, $zero, $zero
    /* A610 80019E10 21280000 */  addu       $a1, $zero, $zero
    /* A614 80019E14 0C80023C */  lui        $v0, %hi(D_800BE4F8)
    /* A618 80019E18 F8E44224 */  addiu      $v0, $v0, %lo(D_800BE4F8)
    /* A61C 80019E1C 7F000324 */  addiu      $v1, $zero, 0x7F
    /* A620 80019E20 0A80013C */  lui        $at, %hi(D_80098938)
    /* A624 80019E24 388922AC */  sw         $v0, %lo(D_80098938)($at)
    /* A628 80019E28 40000224 */  addiu      $v0, $zero, 0x40
    /* A62C 80019E2C 0B80013C */  lui        $at, %hi(D_800AD148)
    /* A630 80019E30 48D122A4 */  sh         $v0, %lo(D_800AD148)($at)
    /* A634 80019E34 64000224 */  addiu      $v0, $zero, 0x64
    /* A638 80019E38 0B80013C */  lui        $at, %hi(D_800AD14A)
    /* A63C 80019E3C 4AD122A4 */  sh         $v0, %lo(D_800AD14A)($at)
    /* A640 80019E40 04000224 */  addiu      $v0, $zero, 0x4
    /* A644 80019E44 0A80013C */  lui        $at, %hi(D_80098840)
    /* A648 80019E48 408822A0 */  sb         $v0, %lo(D_80098840)($at)
    /* A64C 80019E4C 0F000224 */  addiu      $v0, $zero, 0xF
    /* A650 80019E50 0A80013C */  lui        $at, %hi(D_80098788)
    /* A654 80019E54 888720A0 */  sb         $zero, %lo(D_80098788)($at)
    /* A658 80019E58 0A80013C */  lui        $at, %hi(D_80098958)
    /* A65C 80019E5C 588920AC */  sw         $zero, %lo(D_80098958)($at)
    /* A660 80019E60 0B80013C */  lui        $at, %hi(D_800AD144)
    /* A664 80019E64 44D123A4 */  sh         $v1, %lo(D_800AD144)($at)
    /* A668 80019E68 0B80013C */  lui        $at, %hi(D_800AD146)
    /* A66C 80019E6C 46D123A4 */  sh         $v1, %lo(D_800AD146)($at)
    /* A670 80019E70 0B80013C */  lui        $at, %hi(D_800AD152)
    /* A674 80019E74 52D123A4 */  sh         $v1, %lo(D_800AD152)($at)
    /* A678 80019E78 0B80013C */  lui        $at, %hi(D_800AD150)
    /* A67C 80019E7C 50D123A4 */  sh         $v1, %lo(D_800AD150)($at)
    /* A680 80019E80 0B80013C */  lui        $at, %hi(D_800AD14E)
    /* A684 80019E84 4ED123A4 */  sh         $v1, %lo(D_800AD14E)($at)
    /* A688 80019E88 0B80013C */  lui        $at, %hi(D_800AD14C)
    /* A68C 80019E8C 4CD123A4 */  sh         $v1, %lo(D_800AD14C)($at)
    /* A690 80019E90 0B80013C */  lui        $at, %hi(D_800AD158)
    /* A694 80019E94 58D122A0 */  sb         $v0, %lo(D_800AD158)($at)
    /* A698 80019E98 0B80013C */  lui        $at, %hi(D_800AD159)
    /* A69C 80019E9C 59D120A0 */  sb         $zero, %lo(D_800AD159)($at)
    /* A6A0 80019EA0 23B9010C */  jal        SsSetSerialAttr
    /* A6A4 80019EA4 01000624 */   addiu     $a2, $zero, 0x1
    /* A6A8 80019EA8 21200000 */  addu       $a0, $zero, $zero
    /* A6AC 80019EAC 7F000524 */  addiu      $a1, $zero, 0x7F
    /* A6B0 80019EB0 5AC0010C */  jal        SsSetSerialVol
    /* A6B4 80019EB4 7F000624 */   addiu     $a2, $zero, 0x7F
    /* A6B8 80019EB8 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* A6BC 80019EBC FF000424 */  addiu      $a0, $zero, 0xFF
    /* A6C0 80019EC0 21180000 */  addu       $v1, $zero, $zero
    /* A6C4 80019EC4 0880023C */  lui        $v0, %hi(D_800821F8)
    /* A6C8 80019EC8 F8214224 */  addiu      $v0, $v0, %lo(D_800821F8)
    /* A6CC 80019ECC 0B80013C */  lui        $at, %hi(D_800AD15A)
    /* A6D0 80019ED0 5AD120A0 */  sb         $zero, %lo(D_800AD15A)($at)
    /* A6D4 80019ED4 0B80013C */  lui        $at, %hi(D_800AD160)
    /* A6D8 80019ED8 60D120AC */  sw         $zero, %lo(D_800AD160)($at)
    /* A6DC 80019EDC 0B80013C */  lui        $at, %hi(D_800AD15C)
    /* A6E0 80019EE0 5CD122AC */  sw         $v0, %lo(D_800AD15C)($at)
  .L80019EE4:
    /* A6E4 80019EE4 0C80013C */  lui        $at, %hi(Game_work + 0x1B8)
    /* A6E8 80019EE8 21082300 */  addu       $at, $at, $v1
    /* A6EC 80019EEC C81C25A4 */  sh         $a1, %lo(Game_work + 0x1B8)($at)
    /* A6F0 80019EF0 0C80013C */  lui        $at, %hi(Game_work + 0x1BA)
    /* A6F4 80019EF4 21082300 */  addu       $at, $at, $v1
    /* A6F8 80019EF8 CA1C24A0 */  sb         $a0, %lo(Game_work + 0x1BA)($at)
    /* A6FC 80019EFC 08006324 */  addiu      $v1, $v1, 0x8
    /* A700 80019F00 28006228 */  slti       $v0, $v1, 0x28
    /* A704 80019F04 F7FF4014 */  bnez       $v0, .L80019EE4
    /* A708 80019F08 00000000 */   nop
    /* A70C 80019F0C FFFF0524 */  addiu      $a1, $zero, -0x1
    /* A710 80019F10 FF000424 */  addiu      $a0, $zero, 0xFF
    /* A714 80019F14 21180000 */  addu       $v1, $zero, $zero
  .L80019F18:
    /* A718 80019F18 0A80013C */  lui        $at, %hi(D_80098AFA)
    /* A71C 80019F1C 21082300 */  addu       $at, $at, $v1
    /* A720 80019F20 FA8A25A0 */  sb         $a1, %lo(D_80098AFA)($at)
    /* A724 80019F24 0A80013C */  lui        $at, %hi(D_80098AD0)
    /* A728 80019F28 21082300 */  addu       $at, $at, $v1
    /* A72C 80019F2C D08A24A0 */  sb         $a0, %lo(D_80098AD0)($at)
    /* A730 80019F30 08006324 */  addiu      $v1, $v1, 0x8
    /* A734 80019F34 20006228 */  slti       $v0, $v1, 0x20
    /* A738 80019F38 F7FF4014 */  bnez       $v0, .L80019F18
    /* A73C 80019F3C 00000000 */   nop
    /* A740 80019F40 1000A427 */  addiu      $a0, $sp, 0x10
    /* A744 80019F44 0B80023C */  lui        $v0, %hi(Player_work)
    /* A748 80019F48 B0514224 */  addiu      $v0, $v0, %lo(Player_work)
    /* A74C 80019F4C 0A80013C */  lui        $at, %hi(p_Player_work)
    /* A750 80019F50 508A22AC */  sw         $v0, %lo(p_Player_work)($at)
    /* A754 80019F54 01000224 */  addiu      $v0, $zero, 0x1
    /* A758 80019F58 1000A2AF */  sw         $v0, 0x10($sp)
    /* A75C 80019F5C 65A6010C */  jal        SpuSetEnv
    /* A760 80019F60 1400A0AF */   sw        $zero, 0x14($sp)
    /* A764 80019F64 1BBB010C */  jal        SsStart
    /* A768 80019F68 00000000 */   nop
    /* A76C 80019F6C 0A80023C */  lui        $v0, %hi(D_80098958)
    /* A770 80019F70 5889428C */  lw         $v0, %lo(D_80098958)($v0)
    /* A774 80019F74 00000000 */  nop
    /* A778 80019F78 01004234 */  ori        $v0, $v0, 0x1
    /* A77C 80019F7C 0A80013C */  lui        $at, %hi(D_80098958)
    /* A780 80019F80 588922AC */  sw         $v0, %lo(D_80098958)($at)
    /* A784 80019F84 1800BF8F */  lw         $ra, 0x18($sp)
    /* A788 80019F88 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A78C 80019F8C 0800E003 */  jr         $ra
    /* A790 80019F90 00000000 */   nop
.size func_80019DE0, . - func_80019DE0
