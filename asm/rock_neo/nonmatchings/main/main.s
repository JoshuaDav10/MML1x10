.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel main
    /* 2490 80011C90 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2494 80011C94 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 2498 80011C98 1800B2AF */  sw         $s2, 0x18($sp)
    /* 249C 80011C9C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 24A0 80011CA0 FE9F010C */  jal        __main
    /* 24A4 80011CA4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 24A8 80011CA8 0000828F */  lw         $v0, %gp_rel(func_80097864)($gp)
    /* 24AC 80011CAC 00000000 */  nop
    /* 24B0 80011CB0 03004014 */  bnez       $v0, .L80011CC0
    /* 24B4 80011CB4 00000000 */   nop
    /* 24B8 80011CB8 4E4A000C */  jal        func_80012938
    /* 24BC 80011CBC 00000000 */   nop
  .L80011CC0:
    /* 24C0 80011CC0 C147000C */  jal        idk_Init_system_maybe
    /* 24C4 80011CC4 801F123C */   lui       $s2, (0x1F800001 >> 16)
    /* 24C8 80011CC8 0180053C */  lui        $a1, %hi(func_800131FC)
    /* 24CC 80011CCC FC31A524 */  addiu      $a1, $a1, %lo(func_800131FC)
    /* 24D0 80011CD0 844B000C */  jal        func_80012E10
    /* 24D4 80011CD4 21200000 */   addu      $a0, $zero, $zero
    /* 24D8 80011CD8 01005236 */  ori        $s2, $s2, (0x1F800001 & 0xFFFF)
    /* 24DC 80011CDC 801F103C */  lui        $s0, (0x1F800000 >> 16)
    /* 24E0 80011CE0 0A80113C */  lui        $s1, %hi(D_800A4D40)
    /* 24E4 80011CE4 404D3126 */  addiu      $s1, $s1, %lo(D_800A4D40)
  .L80011CE8:
    /* 24E8 80011CE8 00004392 */  lbu        $v1, 0x0($s2)
  .L80011CEC:
    /* 24EC 80011CEC 0A80023C */  lui        $v0, %hi(idk_framecounter_maybe)
    /* 24F0 80011CF0 8888428C */  lw         $v0, %lo(idk_framecounter_maybe)($v0)
    /* 24F4 80011CF4 00000000 */  nop
    /* 24F8 80011CF8 2B104300 */  sltu       $v0, $v0, $v1
    /* 24FC 80011CFC FBFF4014 */  bnez       $v0, .L80011CEC
    /* 2500 80011D00 00000000 */   nop
    /* 2504 80011D04 01000424 */  addiu      $a0, $zero, 0x1
    /* 2508 80011D08 0A80013C */  lui        $at, %hi(idk_framecounter_maybe)
    /* 250C 80011D0C 888820AC */  sw         $zero, %lo(idk_framecounter_maybe)($at)
    /* 2510 80011D10 A1DA010C */  jal        VSync
    /* 2514 80011D14 00000000 */   nop
    /* 2518 80011D18 0E80013C */  lui        $at, %hi(D_800D9BD0)
    /* 251C 80011D1C D09B22AC */  sw         $v0, %lo(D_800D9BD0)($at)
    /* 2520 80011D20 0E80013C */  lui        $at, %hi(D_800D9BCC)
    /* 2524 80011D24 CC9B22AC */  sw         $v0, %lo(D_800D9BCC)($at)
    /* 2528 80011D28 0BF4010C */  jal        DrawSync
    /* 252C 80011D2C 01000424 */   addiu     $a0, $zero, 0x1
    /* 2530 80011D30 21200000 */  addu       $a0, $zero, $zero
    /* 2534 80011D34 2C1282AF */  sw         $v0, %gp_rel(D_80098A90)($gp)
    /* 2538 80011D38 0BF4010C */  jal        DrawSync
    /* 253C 80011D3C 00000000 */   nop
    /* 2540 80011D40 DBF2010C */  jal        ResetGraph
    /* 2544 80011D44 01000424 */   addiu     $a0, $zero, 0x1
    /* 2548 80011D48 28128293 */  lbu        $v0, %gp_rel(D_80098A8C)($gp)
    /* 254C 80011D4C 00000000 */  nop
    /* 2550 80011D50 09004014 */  bnez       $v0, .L80011D78
    /* 2554 80011D54 00000000 */   nop
    /* 2558 80011D58 0A80043C */  lui        $a0, %hi(D_80098934)
    /* 255C 80011D5C 3489848C */  lw         $a0, %lo(D_80098934)($a0)
    /* 2560 80011D60 3EF6010C */  jal        PutDispEnv
    /* 2564 80011D64 00000000 */   nop
    /* 2568 80011D68 0A80043C */  lui        $a0, %hi(D_80098934)
    /* 256C 80011D6C 3489848C */  lw         $a0, %lo(D_80098934)($a0)
    /* 2570 80011D70 A8F5010C */  jal        PutDrawEnv
    /* 2574 80011D74 14008424 */   addiu     $a0, $a0, 0x14
  .L80011D78:
    /* 2578 80011D78 CD5D000C */  jal        func_80017734
    /* 257C 80011D7C 00000000 */   nop
    /* 2580 80011D80 0A80023C */  lui        $v0, %hi(D_80098810)
    /* 2584 80011D84 1088428C */  lw         $v0, %lo(D_80098810)($v0)
    /* 2588 80011D88 00000000 */  nop
    /* 258C 80011D8C 05004014 */  bnez       $v0, .L80011DA4
    /* 2590 80011D90 00000000 */   nop
    /* 2594 80011D94 0A80043C */  lui        $a0, %hi(D_80098934)
    /* 2598 80011D98 3489848C */  lw         $a0, %lo(D_80098934)($a0)
    /* 259C 80011D9C 8BF5010C */  jal        DrawOTag
    /* 25A0 80011DA0 8C008424 */   addiu     $a0, $a0, 0x8C
  .L80011DA4:
    /* 25A4 80011DA4 A648000C */  jal        func_80012298
    /* 25A8 80011DA8 00000000 */   nop
    /* 25AC 80011DAC 08000524 */  addiu      $a1, $zero, 0x8
    /* 25B0 80011DB0 00000692 */  lbu        $a2, (0x1F800000 & 0xFFFF)($s0)
    /* 25B4 80011DB4 0C80033C */  lui        $v1, %hi(D_800C0C48)
    /* 25B8 80011DB8 480C6324 */  addiu      $v1, $v1, %lo(D_800C0C48)
    /* 25BC 80011DBC 0100C638 */  xori       $a2, $a2, 0x1
    /* 25C0 80011DC0 C0100600 */  sll        $v0, $a2, 3
    /* 25C4 80011DC4 21104600 */  addu       $v0, $v0, $a2
    /* 25C8 80011DC8 00110200 */  sll        $v0, $v0, 4
    /* 25CC 80011DCC 21104300 */  addu       $v0, $v0, $v1
    /* 25D0 80011DD0 000006A2 */  sb         $a2, (0x1F800000 & 0xFFFF)($s0)
    /* 25D4 80011DD4 80330600 */  sll        $a2, $a2, 14
    /* 25D8 80011DD8 2130D100 */  addu       $a2, $a2, $s1
    /* 25DC 80011DDC 0A80013C */  lui        $at, %hi(D_80098934)
    /* 25E0 80011DE0 348922AC */  sw         $v0, %lo(D_80098934)($at)
    /* 25E4 80011DE4 801F013C */  lui        $at, (0x1F80003C >> 16)
    /* 25E8 80011DE8 3C0026AC */  sw         $a2, (0x1F80003C & 0xFFFF)($at)
    /* 25EC 80011DEC 4DF5010C */  jal        ClearOTagR
    /* 25F0 80011DF0 70004424 */   addiu     $a0, $v0, 0x70
    /* 25F4 80011DF4 00000492 */  lbu        $a0, (0x1F800000 & 0xFFFF)($s0)
    /* 25F8 80011DF8 00100524 */  addiu      $a1, $zero, 0x1000
    /* 25FC 80011DFC 80230400 */  sll        $a0, $a0, 14
    /* 2600 80011E00 4DF5010C */  jal        ClearOTagR
    /* 2604 80011E04 21209100 */   addu      $a0, $a0, $s1
    /* 2608 80011E08 00020524 */  addiu      $a1, $zero, 0x200
    /* 260C 80011E0C 00000292 */  lbu        $v0, (0x1F800000 & 0xFFFF)($s0)
    /* 2610 80011E10 0A80043C */  lui        $a0, %hi(D_8009BF88)
    /* 2614 80011E14 88BF8424 */  addiu      $a0, $a0, %lo(D_8009BF88)
    /* 2618 80011E18 C0120200 */  sll        $v0, $v0, 11
    /* 261C 80011E1C 4DF5010C */  jal        ClearOTagR
    /* 2620 80011E20 21204400 */   addu      $a0, $v0, $a0
    /* 2624 80011E24 00020524 */  addiu      $a1, $zero, 0x200
    /* 2628 80011E28 00000292 */  lbu        $v0, (0x1F800000 & 0xFFFF)($s0)
    /* 262C 80011E2C 0A80043C */  lui        $a0, %hi(D_8009AE48)
    /* 2630 80011E30 48AE8424 */  addiu      $a0, $a0, %lo(D_8009AE48)
    /* 2634 80011E34 C0120200 */  sll        $v0, $v0, 11
    /* 2638 80011E38 4DF5010C */  jal        ClearOTagR
    /* 263C 80011E3C 21204400 */   addu      $a0, $v0, $a0
    /* 2640 80011E40 0880043C */  lui        $a0, %hi(D_800806EC)
    /* 2644 80011E44 EC068424 */  addiu      $a0, $a0, %lo(D_800806EC)
    /* 2648 80011E48 0A80033C */  lui        $v1, %hi(D_80098864)
    /* 264C 80011E4C 6488638C */  lw         $v1, %lo(D_80098864)($v1)
    /* 2650 80011E50 00000292 */  lbu        $v0, (0x1F800000 & 0xFFFF)($s0)
    /* 2654 80011E54 C0180300 */  sll        $v1, $v1, 3
    /* 2658 80011E58 21186400 */  addu       $v1, $v1, $a0
    /* 265C 80011E5C 80100200 */  sll        $v0, $v0, 2
    /* 2660 80011E60 21104300 */  addu       $v0, $v0, $v1
    /* 2664 80011E64 0000428C */  lw         $v0, 0x0($v0)
    /* 2668 80011E68 801F013C */  lui        $at, (0x1F800070 >> 16)
    /* 266C 80011E6C 700022AC */  sw         $v0, (0x1F800070 & 0xFFFF)($at)
    /* 2670 80011E70 204B000C */  jal        func_80012C80
    /* 2674 80011E74 00000000 */   nop
    /* 2678 80011E78 4468000C */  jal        func_8001A110
    /* 267C 80011E7C 00000000 */   nop
    /* 2680 80011E80 5772000C */  jal        func_8001C95C
    /* 2684 80011E84 00000000 */   nop
    /* 2688 80011E88 EA80000C */  jal        func_800203A8
    /* 268C 80011E8C 00000000 */   nop
    /* 2690 80011E90 D04E010C */  jal        func_80053B40
    /* 2694 80011E94 00000000 */   nop
    /* 2698 80011E98 1890010C */  jal        func_80064060
    /* 269C 80011E9C 00000000 */   nop
    /* 26A0 80011EA0 0BF4010C */  jal        DrawSync
    /* 26A4 80011EA4 21200000 */   addu      $a0, $zero, $zero
    /* 26A8 80011EA8 C95E000C */  jal        func_80017B24
    /* 26AC 80011EAC 00000000 */   nop
    /* 26B0 80011EB0 3F5E000C */  jal        func_800178FC
    /* 26B4 80011EB4 00000000 */   nop
    /* 26B8 80011EB8 0000828F */  lw         $v0, %gp_rel(func_80097864)($gp)
    /* 26BC 80011EBC 00000000 */  nop
    /* 26C0 80011EC0 03004010 */  beqz       $v0, .L80011ED0
    /* 26C4 80011EC4 801F033C */   lui       $v1, (0x1F800002 >> 16)
    /* 26C8 80011EC8 0D000100 */  break      1
    /* 26CC 80011ECC 801F033C */  lui        $v1, (0x1F800002 >> 16)
  .L80011ED0:
    /* 26D0 80011ED0 02006334 */  ori        $v1, $v1, (0x1F800002 & 0xFFFF)
    /* 26D4 80011ED4 00006294 */  lhu        $v0, 0x0($v1)
    /* 26D8 80011ED8 00000000 */  nop
    /* 26DC 80011EDC 01004224 */  addiu      $v0, $v0, 0x1
    /* 26E0 80011EE0 3A470008 */  j          .L80011CE8
    /* 26E4 80011EE4 000062A4 */   sh        $v0, 0x0($v1)
    /* 26E8 80011EE8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 26EC 80011EEC 1800B28F */  lw         $s2, 0x18($sp)
    /* 26F0 80011EF0 1400B18F */  lw         $s1, 0x14($sp)
    /* 26F4 80011EF4 1000B08F */  lw         $s0, 0x10($sp)
    /* 26F8 80011EF8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 26FC 80011EFC 0800E003 */  jr         $ra
    /* 2700 80011F00 00000000 */   nop
.size main, . - main
