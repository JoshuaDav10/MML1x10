.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel idk_Init_system_maybe
    /* 2704 80011F04 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2708 80011F08 2000BFAF */  sw         $ra, 0x20($sp)
    /* 270C 80011F0C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2710 80011F10 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2714 80011F14 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2718 80011F18 1ADB010C */  jal        ResetCallback
    /* 271C 80011F1C 1000B0AF */   sw        $s0, 0x10($sp)
    /* 2720 80011F20 F96C000C */  jal        func_8001B3E4
    /* 2724 80011F24 00000000 */   nop
    /* 2728 80011F28 DBF2010C */  jal        ResetGraph
    /* 272C 80011F2C 03000424 */   addiu     $a0, $zero, 0x3
    /* 2730 80011F30 01000224 */  addiu      $v0, $zero, 0x1
    /* 2734 80011F34 281282A3 */  sb         $v0, %gp_rel(D_80098A8C)($gp)
    /* 2738 80011F38 D2DD010C */  jal        func_80077748
    /* 273C 80011F3C 21200000 */   addu      $a0, $zero, $zero
    /* 2740 80011F40 3CE9010C */  jal        InitGeom
    /* 2744 80011F44 00000000 */   nop
    /* 2748 80011F48 A0000424 */  addiu      $a0, $zero, 0xA0
    /* 274C 80011F4C 46EC010C */  jal        func_8007B118
    /* 2750 80011F50 78000524 */   addiu     $a1, $zero, 0x78
    /* 2754 80011F54 4EEC010C */  jal        func_8007B138
    /* 2758 80011F58 80010424 */   addiu     $a0, $zero, 0x180
    /* 275C 80011F5C 0C80113C */  lui        $s1, %hi(D_800C0C00)
    /* 2760 80011F60 000C3126 */  addiu      $s1, $s1, %lo(D_800C0C00)
    /* 2764 80011F64 21202002 */  addu       $a0, $s1, $zero
    /* 2768 80011F68 F35D000C */  jal        func_800177CC
    /* 276C 80011F6C C8042526 */   addiu     $a1, $s1, 0x4C8
    /* 2770 80011F70 0C80103C */  lui        $s0, %hi(D_800C0D68)
    /* 2774 80011F74 680D1026 */  addiu      $s0, $s0, %lo(D_800C0D68)
    /* 2778 80011F78 21200002 */  addu       $a0, $s0, $zero
    /* 277C 80011F7C F35D000C */  jal        func_800177CC
    /* 2780 80011F80 C8040526 */   addiu     $a1, $s0, 0x4C8
    /* 2784 80011F84 0C80043C */  lui        $a0, %hi(D_800C0FC0)
    /* 2788 80011F88 C00F8424 */  addiu      $a0, $a0, %lo(D_800C0FC0)
    /* 278C 80011F8C F35D000C */  jal        func_800177CC
    /* 2790 80011F90 C8048524 */   addiu     $a1, $a0, 0x4C8
    /* 2794 80011F94 21202002 */  addu       $a0, $s1, $zero
    /* 2798 80011F98 08000524 */  addiu      $a1, $zero, 0x8
    /* 279C 80011F9C 21300002 */  addu       $a2, $s0, $zero
    /* 27A0 80011FA0 9500020C */  jal        InitPAD
    /* 27A4 80011FA4 08000724 */   addiu     $a3, $zero, 0x8
    /* 27A8 80011FA8 01400224 */  addiu      $v0, $zero, 0x4001
    /* 27AC 80011FAC 0C80013C */  lui        $at, %hi(D_800C0C34)
    /* 27B0 80011FB0 340C22AC */  sw         $v0, %lo(D_800C0C34)($at)
    /* 27B4 80011FB4 0C80013C */  lui        $at, %hi(D_800C0D9C)
    /* 27B8 80011FB8 9C0D22AC */  sw         $v0, %lo(D_800C0D9C)($at)
    /* 27BC 80011FBC BC00020C */  jal        StartPAD
    /* 27C0 80011FC0 21880000 */   addu      $s1, $zero, $zero
    /* 27C4 80011FC4 E791010C */  jal        func_8006479C
    /* 27C8 80011FC8 00000000 */   nop
    /* 27CC 80011FCC 7867000C */  jal        func_80019DE0
    /* 27D0 80011FD0 00000000 */   nop
    /* 27D4 80011FD4 0000020C */  jal        ChangeClearPAD
    /* 27D8 80011FD8 21200000 */   addu      $a0, $zero, $zero
    /* 27DC 80011FDC 2A48000C */  jal        func_800120A8
    /* 27E0 80011FE0 00000000 */   nop
    /* 27E4 80011FE4 F14A000C */  jal        func_80012BC4
    /* 27E8 80011FE8 00000000 */   nop
    /* 27EC 80011FEC 0180043C */  lui        $a0, %hi(vsync_cb)
    /* 27F0 80011FF0 FC238424 */  addiu      $a0, $a0, %lo(vsync_cb)
    /* 27F4 80011FF4 0C80023C */  lui        $v0, %hi(D_800C0C48)
    /* 27F8 80011FF8 480C4224 */  addiu      $v0, $v0, %lo(D_800C0C48)
    /* 27FC 80011FFC 0A80013C */  lui        $at, %hi(D_80098934)
    /* 2800 80012000 348922AC */  sw         $v0, %lo(D_80098934)($at)
    /* 2804 80012004 02000224 */  addiu      $v0, $zero, 0x2
    /* 2808 80012008 0E80013C */  lui        $at, %hi(D_800D9B00)
    /* 280C 8001200C 009B20AC */  sw         $zero, %lo(D_800D9B00)($at)
    /* 2810 80012010 801F013C */  lui        $at, (0x1F800000 >> 16)
    /* 2814 80012014 000020A0 */  sb         $zero, (0x1F800000 & 0xFFFF)($at)
    /* 2818 80012018 801F013C */  lui        $at, (0x1F800001 >> 16)
    /* 281C 8001201C 010022A0 */  sb         $v0, (0x1F800001 & 0xFFFF)($at)
    /* 2820 80012020 3EDB010C */  jal        VSyncCallback
    /* 2824 80012024 00000000 */   nop
    /* 2828 80012028 0C80133C */  lui        $s3, %hi(D_800BAEB0)
    /* 282C 8001202C B0AE7326 */  addiu      $s3, $s3, %lo(D_800BAEB0)
    /* 2830 80012030 0C80123C */  lui        $s2, %hi(D_800BBCF8)
    /* 2834 80012034 F8BC5226 */  addiu      $s2, $s2, %lo(D_800BBCF8)
    /* 2838 80012038 0A80013C */  lui        $at, %hi(D_80098824)
    /* 283C 8001203C 248820AC */  sw         $zero, %lo(D_80098824)($at)
    /* 2840 80012040 0A80013C */  lui        $at, %hi(D_80098864)
    /* 2844 80012044 648820AC */  sw         $zero, %lo(D_80098864)($at)
  .L80012048:
    /* 2848 80012048 4BE8010C */  jal        rcos
    /* 284C 8001204C 21202002 */   addu      $a0, $s1, $zero
    /* 2850 80012050 21202002 */  addu       $a0, $s1, $zero
    /* 2854 80012054 83811100 */  sra        $s0, $s1, 6
    /* 2858 80012058 40801000 */  sll        $s0, $s0, 1
    /* 285C 8001205C 21181302 */  addu       $v1, $s0, $s3
    /* 2860 80012060 18E8010C */  jal        rsin
    /* 2864 80012064 000062A4 */   sh        $v0, 0x0($v1)
    /* 2868 80012068 40003126 */  addiu      $s1, $s1, 0x40
    /* 286C 8001206C 21801202 */  addu       $s0, $s0, $s2
    /* 2870 80012070 000002A6 */  sh         $v0, 0x0($s0)
    /* 2874 80012074 0010222A */  slti       $v0, $s1, 0x1000
    /* 2878 80012078 F3FF4014 */  bnez       $v0, .L80012048
    /* 287C 8001207C 00000000 */   nop
    /* 2880 80012080 DF80000C */  jal        func_8002037C
    /* 2884 80012084 00000000 */   nop
    /* 2888 80012088 2000BF8F */  lw         $ra, 0x20($sp)
    /* 288C 8001208C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2890 80012090 1800B28F */  lw         $s2, 0x18($sp)
    /* 2894 80012094 1400B18F */  lw         $s1, 0x14($sp)
    /* 2898 80012098 1000B08F */  lw         $s0, 0x10($sp)
    /* 289C 8001209C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 28A0 800120A0 0800E003 */  jr         $ra
    /* 28A4 800120A4 00000000 */   nop
.size idk_Init_system_maybe, . - idk_Init_system_maybe
