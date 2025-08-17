.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D078
    /* D878 8001D078 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* D87C 8001D07C FF008430 */  andi       $a0, $a0, 0xFF
    /* D880 8001D080 01000224 */  addiu      $v0, $zero, 0x1
    /* D884 8001D084 2000BFAF */  sw         $ra, 0x20($sp)
    /* D888 8001D088 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* D88C 8001D08C 1800B0AF */  sw         $s0, 0x18($sp)
    /* D890 8001D090 0A80013C */  lui        $at, %hi(D_80098828)
    /* D894 8001D094 288820AC */  sw         $zero, %lo(D_80098828)($at)
    /* D898 8001D098 54008214 */  bne        $a0, $v0, .L8001D1EC
    /* D89C 8001D09C 00000000 */   nop
    /* D8A0 8001D0A0 0A80043C */  lui        $a0, %hi(D_80098998)
    /* D8A4 8001D0A4 9889848C */  lw         $a0, %lo(D_80098998)($a0)
    /* D8A8 8001D0A8 0A80013C */  lui        $at, %hi(D_80098B38)
    /* D8AC 8001D0AC 21082400 */  addu       $at, $at, $a0
    /* D8B0 8001D0B0 388B2290 */  lbu        $v0, %lo(D_80098B38)($at)
    /* D8B4 8001D0B4 0A80113C */  lui        $s1, %hi(D_80098B38)
    /* D8B8 8001D0B8 388B3126 */  addiu      $s1, $s1, %lo(D_80098B38)
    /* D8BC 8001D0BC 42004014 */  bnez       $v0, .L8001D1C8
    /* D8C0 8001D0C0 80000324 */   addiu     $v1, $zero, 0x80
    /* D8C4 8001D0C4 C0220400 */  sll        $a0, $a0, 11
    /* D8C8 8001D0C8 0B80103C */  lui        $s0, %hi(D_800B5DB0)
    /* D8CC 8001D0CC B05D1026 */  addiu      $s0, $s0, %lo(D_800B5DB0)
    /* D8D0 8001D0D0 21209000 */  addu       $a0, $a0, $s0
    /* D8D4 8001D0D4 81DF010C */  jal        CdGetSector
    /* D8D8 8001D0D8 03000524 */   addiu     $a1, $zero, 0x3
    /* D8DC 8001D0DC 0A80043C */  lui        $a0, %hi(D_80098998)
    /* D8E0 8001D0E0 9889848C */  lw         $a0, %lo(D_80098998)($a0)
    /* D8E4 8001D0E4 00000000 */  nop
    /* D8E8 8001D0E8 C0220400 */  sll        $a0, $a0, 11
    /* D8EC 8001D0EC E3DF010C */  jal        CdPosToInt
    /* D8F0 8001D0F0 21209000 */   addu      $a0, $a0, $s0
    /* D8F4 8001D0F4 0A80033C */  lui        $v1, %hi(D_80098A7C)
    /* D8F8 8001D0F8 7C8A638C */  lw         $v1, %lo(D_80098A7C)($v1)
    /* D8FC 8001D0FC 00000000 */  nop
    /* D900 8001D100 05004310 */  beq        $v0, $v1, .L8001D118
    /* D904 8001D104 00020524 */   addiu     $a1, $zero, 0x200
    /* D908 8001D108 0A80023C */  lui        $v0, %hi(D_8009896C)
    /* D90C 8001D10C 6C894290 */  lbu        $v0, %lo(D_8009896C)($v0)
    /* D910 8001D110 7F740008 */  j          .L8001D1FC
    /* D914 8001D114 40004234 */   ori       $v0, $v0, 0x40
  .L8001D118:
    /* D918 8001D118 0A80043C */  lui        $a0, %hi(D_80098998)
    /* D91C 8001D11C 9889848C */  lw         $a0, %lo(D_80098998)($a0)
    /* D920 8001D120 01004224 */  addiu      $v0, $v0, 0x1
    /* D924 8001D124 0A80013C */  lui        $at, %hi(D_80098A7C)
    /* D928 8001D128 7C8A22AC */  sw         $v0, %lo(D_80098A7C)($at)
    /* D92C 8001D12C C0220400 */  sll        $a0, $a0, 11
    /* D930 8001D130 81DF010C */  jal        CdGetSector
    /* D934 8001D134 21209000 */   addu      $a0, $a0, $s0
    /* D938 8001D138 0A80023C */  lui        $v0, %hi(D_80098998)
    /* D93C 8001D13C 9889428C */  lw         $v0, %lo(D_80098998)($v0)
    /* D940 8001D140 01000324 */  addiu      $v1, $zero, 0x1
    /* D944 8001D144 21105100 */  addu       $v0, $v0, $s1
    /* D948 8001D148 000043A0 */  sb         $v1, 0x0($v0)
    /* D94C 8001D14C 0A80023C */  lui        $v0, %hi(D_80098998)
    /* D950 8001D150 9889428C */  lw         $v0, %lo(D_80098998)($v0)
    /* D954 8001D154 0A000324 */  addiu      $v1, $zero, 0xA
    /* D958 8001D158 01004224 */  addiu      $v0, $v0, 0x1
    /* D95C 8001D15C 0A80013C */  lui        $at, %hi(D_80098998)
    /* D960 8001D160 988922AC */  sw         $v0, %lo(D_80098998)($at)
    /* D964 8001D164 03004314 */  bne        $v0, $v1, .L8001D174
    /* D968 8001D168 00000000 */   nop
    /* D96C 8001D16C 0A80013C */  lui        $at, %hi(D_80098998)
    /* D970 8001D170 988920AC */  sw         $zero, %lo(D_80098998)($at)
  .L8001D174:
    /* D974 8001D174 0A80023C */  lui        $v0, %hi(D_8009881C)
    /* D978 8001D178 1C88428C */  lw         $v0, %lo(D_8009881C)($v0)
    /* D97C 8001D17C 00000000 */  nop
    /* D980 8001D180 00F84224 */  addiu      $v0, $v0, -0x800
    /* D984 8001D184 0A80013C */  lui        $at, %hi(D_8009881C)
    /* D988 8001D188 1C8822AC */  sw         $v0, %lo(D_8009881C)($at)
    /* D98C 8001D18C 2B00401C */  bgtz       $v0, .L8001D23C
    /* D990 8001D190 00000000 */   nop
    /* D994 8001D194 89DE010C */  jal        CdReadyCallback
    /* D998 8001D198 21200000 */   addu      $a0, $zero, $zero
    /* D99C 8001D19C 09000424 */  addiu      $a0, $zero, 0x9
    /* D9A0 8001D1A0 0A80063C */  lui        $a2, %hi(D_80098A98)
    /* D9A4 8001D1A4 988AC624 */  addiu      $a2, $a2, %lo(D_80098A98)
    /* D9A8 8001D1A8 9574000C */  jal        func_8001D254
    /* D9AC 8001D1AC 21280000 */   addu      $a1, $zero, $zero
    /* D9B0 8001D1B0 0280043C */  lui        $a0, %hi(func_8001CC08)
    /* D9B4 8001D1B4 08CC8424 */  addiu      $a0, $a0, %lo(func_8001CC08)
    /* D9B8 8001D1B8 83DE010C */  jal        CdSyncCallback
    /* D9BC 8001D1BC 00000000 */   nop
    /* D9C0 8001D1C0 8F740008 */  j          .L8001D23C
    /* D9C4 8001D1C4 00000000 */   nop
  .L8001D1C8:
    /* D9C8 8001D1C8 0A80023C */  lui        $v0, %hi(D_8009896C)
    /* D9CC 8001D1CC 6C894290 */  lbu        $v0, %lo(D_8009896C)($v0)
    /* D9D0 8001D1D0 0A80013C */  lui        $at, %hi(D_800988C0)
    /* D9D4 8001D1D4 C08823A0 */  sb         $v1, %lo(D_800988C0)($at)
    /* D9D8 8001D1D8 01004234 */  ori        $v0, $v0, 0x1
    /* D9DC 8001D1DC 0A80013C */  lui        $at, %hi(D_8009896C)
    /* D9E0 8001D1E0 6C8922A0 */  sb         $v0, %lo(D_8009896C)($at)
    /* D9E4 8001D1E4 84740008 */  j          .L8001D210
    /* D9E8 8001D1E8 00000000 */   nop
  .L8001D1EC:
    /* D9EC 8001D1EC 0A80023C */  lui        $v0, %hi(D_8009896C)
    /* D9F0 8001D1F0 6C894290 */  lbu        $v0, %lo(D_8009896C)($v0)
    /* D9F4 8001D1F4 00000000 */  nop
    /* D9F8 8001D1F8 04004234 */  ori        $v0, $v0, 0x4
  .L8001D1FC:
    /* D9FC 8001D1FC 0A80013C */  lui        $at, %hi(D_8009896C)
    /* DA00 8001D200 6C8922A0 */  sb         $v0, %lo(D_8009896C)($at)
    /* DA04 8001D204 80000224 */  addiu      $v0, $zero, 0x80
    /* DA08 8001D208 0A80013C */  lui        $at, %hi(D_800988C0)
    /* DA0C 8001D20C C08822A0 */  sb         $v0, %lo(D_800988C0)($at)
  .L8001D210:
    /* DA10 8001D210 89DE010C */  jal        CdReadyCallback
    /* DA14 8001D214 21200000 */   addu      $a0, $zero, $zero
    /* DA18 8001D218 0280043C */  lui        $a0, %hi(func_8001CC08)
    /* DA1C 8001D21C 08CC8424 */  addiu      $a0, $a0, %lo(func_8001CC08)
    /* DA20 8001D220 83DE010C */  jal        CdSyncCallback
    /* DA24 8001D224 00000000 */   nop
    /* DA28 8001D228 09000424 */  addiu      $a0, $zero, 0x9
    /* DA2C 8001D22C 0A80063C */  lui        $a2, %hi(D_80098A98)
    /* DA30 8001D230 988AC624 */  addiu      $a2, $a2, %lo(D_80098A98)
    /* DA34 8001D234 9574000C */  jal        func_8001D254
    /* DA38 8001D238 21280000 */   addu      $a1, $zero, $zero
  .L8001D23C:
    /* DA3C 8001D23C 2000BF8F */  lw         $ra, 0x20($sp)
    /* DA40 8001D240 1C00B18F */  lw         $s1, 0x1C($sp)
    /* DA44 8001D244 1800B08F */  lw         $s0, 0x18($sp)
    /* DA48 8001D248 2800BD27 */  addiu      $sp, $sp, 0x28
    /* DA4C 8001D24C 0800E003 */  jr         $ra
    /* DA50 8001D250 00000000 */   nop
.size func_8001D078, . - func_8001D078
