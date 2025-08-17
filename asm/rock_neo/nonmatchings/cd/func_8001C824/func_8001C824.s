.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001C824
    /* D024 8001C824 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* D028 8001C828 0A80033C */  lui        $v1, %hi(D_800989C4)
    /* D02C 8001C82C C489638C */  lw         $v1, %lo(D_800989C4)($v1)
    /* D030 8001C830 01000224 */  addiu      $v0, $zero, 0x1
    /* D034 8001C834 16006210 */  beq        $v1, $v0, .L8001C890
    /* D038 8001C838 1800BFAF */   sw        $ra, 0x18($sp)
    /* D03C 8001C83C 07006010 */  beqz       $v1, .L8001C85C
    /* D040 8001C840 02000224 */   addiu     $v0, $zero, 0x2
    /* D044 8001C844 2F006210 */  beq        $v1, $v0, .L8001C904
    /* D048 8001C848 03000224 */   addiu     $v0, $zero, 0x3
    /* D04C 8001C84C 3D006210 */  beq        $v1, $v0, .L8001C944
    /* D050 8001C850 00000000 */   nop
    /* D054 8001C854 53720008 */  j          .L8001C94C
    /* D058 8001C858 00000000 */   nop
  .L8001C85C:
    /* D05C 8001C85C 0A80023C */  lui        $v0, %hi(D_80098964)
    /* D060 8001C860 64894290 */  lbu        $v0, %lo(D_80098964)($v0)
    /* D064 8001C864 00000000 */  nop
    /* D068 8001C868 03004014 */  bnez       $v0, .L8001C878
    /* D06C 8001C86C 00000000 */   nop
    /* D070 8001C870 DF72000C */  jal        func_8001CB7C
    /* D074 8001C874 00000000 */   nop
  .L8001C878:
    /* D078 8001C878 0A80023C */  lui        $v0, %hi(D_800989C4)
    /* D07C 8001C87C C489428C */  lw         $v0, %lo(D_800989C4)($v0)
    /* D080 8001C880 00000000 */  nop
    /* D084 8001C884 01004224 */  addiu      $v0, $v0, 0x1
    /* D088 8001C888 0A80013C */  lui        $at, %hi(D_800989C4)
    /* D08C 8001C88C C48922AC */  sw         $v0, %lo(D_800989C4)($at)
  .L8001C890:
    /* D090 8001C890 0A80023C */  lui        $v0, %hi(D_80098964)
    /* D094 8001C894 64894290 */  lbu        $v0, %lo(D_80098964)($v0)
    /* D098 8001C898 00000000 */  nop
    /* D09C 8001C89C 2B004010 */  beqz       $v0, .L8001C94C
    /* D0A0 8001C8A0 00000000 */   nop
    /* D0A4 8001C8A4 0280043C */  lui        $a0, %hi(func_8001C7F0)
    /* D0A8 8001C8A8 F0C78424 */  addiu      $a0, $a0, %lo(func_8001C7F0)
    /* D0AC 8001C8AC 0A80013C */  lui        $at, %hi(D_800988D0)
    /* D0B0 8001C8B0 D08820A0 */  sb         $zero, %lo(D_800988D0)($at)
    /* D0B4 8001C8B4 83DE010C */  jal        CdSyncCallback
    /* D0B8 8001C8B8 00000000 */   nop
    /* D0BC 8001C8BC 0A80023C */  lui        $v0, %hi(D_80098A84)
    /* D0C0 8001C8C0 848A428C */  lw         $v0, %lo(D_80098A84)($v0)
    /* D0C4 8001C8C4 00000000 */  nop
    /* D0C8 8001C8C8 0800448C */  lw         $a0, 0x8($v0)
    /* D0CC 8001C8CC A2DF010C */  jal        CdIntToPos
    /* D0D0 8001C8D0 1000A527 */   addiu     $a1, $sp, 0x10
    /* D0D4 8001C8D4 16000424 */  addiu      $a0, $zero, 0x16
    /* D0D8 8001C8D8 0A80063C */  lui        $a2, %hi(D_80098A98)
    /* D0DC 8001C8DC 988AC624 */  addiu      $a2, $a2, %lo(D_80098A98)
    /* D0E0 8001C8E0 9574000C */  jal        func_8001D254
    /* D0E4 8001C8E4 1000A527 */   addiu     $a1, $sp, 0x10
    /* D0E8 8001C8E8 0A80023C */  lui        $v0, %hi(D_800989C4)
    /* D0EC 8001C8EC C489428C */  lw         $v0, %lo(D_800989C4)($v0)
    /* D0F0 8001C8F0 0A80013C */  lui        $at, %hi(D_80098828)
    /* D0F4 8001C8F4 288820AC */  sw         $zero, %lo(D_80098828)($at)
    /* D0F8 8001C8F8 01004224 */  addiu      $v0, $v0, 0x1
    /* D0FC 8001C8FC 0A80013C */  lui        $at, %hi(D_800989C4)
    /* D100 8001C900 C48922AC */  sw         $v0, %lo(D_800989C4)($at)
  .L8001C904:
    /* D104 8001C904 0A80023C */  lui        $v0, %hi(D_80098828)
    /* D108 8001C908 2888428C */  lw         $v0, %lo(D_80098828)($v0)
    /* D10C 8001C90C 96000324 */  addiu      $v1, $zero, 0x96
    /* D110 8001C910 01004224 */  addiu      $v0, $v0, 0x1
    /* D114 8001C914 0A80013C */  lui        $at, %hi(D_80098828)
    /* D118 8001C918 288822AC */  sw         $v0, %lo(D_80098828)($at)
    /* D11C 8001C91C 0B004314 */  bne        $v0, $v1, .L8001C94C
    /* D120 8001C920 00000000 */   nop
    /* D124 8001C924 0A80023C */  lui        $v0, %hi(D_8009896C)
    /* D128 8001C928 6C894290 */  lbu        $v0, %lo(D_8009896C)($v0)
    /* D12C 8001C92C 00000000 */  nop
    /* D130 8001C930 02004234 */  ori        $v0, $v0, 0x2
    /* D134 8001C934 0A80013C */  lui        $at, %hi(D_8009896C)
    /* D138 8001C938 6C8922A0 */  sb         $v0, %lo(D_8009896C)($at)
    /* D13C 8001C93C 53720008 */  j          .L8001C94C
    /* D140 8001C940 00000000 */   nop
  .L8001C944:
    /* D144 8001C944 AB72000C */  jal        func_8001CAAC
    /* D148 8001C948 00000000 */   nop
  .L8001C94C:
    /* D14C 8001C94C 1800BF8F */  lw         $ra, 0x18($sp)
    /* D150 8001C950 2000BD27 */  addiu      $sp, $sp, 0x20
    /* D154 8001C954 0800E003 */  jr         $ra
    /* D158 8001C958 00000000 */   nop
.size func_8001C824, . - func_8001C824
