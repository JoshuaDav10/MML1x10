.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058A80
    /* 49280 80058A80 1F1A033C */  lui        $v1, (0x1A1F58D1 >> 16)
    /* 49284 80058A84 D1586334 */  ori        $v1, $v1, (0x1A1F58D1 & 0xFFFF)
    /* 49288 80058A88 0C80023C */  lui        $v0, %hi(Moji_work)
    /* 4928C 80058A8C B8B64224 */  addiu      $v0, $v0, %lo(Moji_work)
    /* 49290 80058A90 23100202 */  subu       $v0, $s0, $v0
    /* 49294 80058A94 18004300 */  mult       $v0, $v1
    /* 49298 80058A98 0200023C */  lui        $v0, (0x20000 >> 16)
    /* 4929C 80058A9C CC12838F */  lw         $v1, %gp_rel(Moji_flag3)($gp)
    /* 492A0 80058AA0 12380000 */  mflo       $a3
    /* 492A4 80058AA4 83200700 */  sra        $a0, $a3, 2
    /* 492A8 80058AA8 04108200 */  sllv       $v0, $v0, $a0
    /* 492AC 80058AAC 25186200 */  or         $v1, $v1, $v0
    /* 492B0 80058AB0 CC1283AF */  sw         $v1, %gp_rel(Moji_flag3)($gp)
  .L80058AB4:
    /* 492B4 80058AB4 73000292 */  lbu        $v0, 0x73($s0)
    /* 492B8 80058AB8 78000392 */  lbu        $v1, 0x78($s0)
    /* 492BC 80058ABC 1400048E */  lw         $a0, 0x14($s0)
    /* 492C0 80058AC0 01004224 */  addiu      $v0, $v0, 0x1
    /* 492C4 80058AC4 50006324 */  addiu      $v1, $v1, 0x50
    /* 492C8 80058AC8 05008424 */  addiu      $a0, $a0, 0x5
    /* 492CC 80058ACC 780003A2 */  sb         $v1, 0x78($s0)
    /* 492D0 80058AD0 730002A2 */  sb         $v0, 0x73($s0)
    /* 492D4 80058AD4 140004AE */  sw         $a0, 0x14($s0)
    /* 492D8 80058AD8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 492DC 80058ADC 1000B08F */  lw         $s0, 0x10($sp)
    /* 492E0 80058AE0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 492E4 80058AE4 0800E003 */  jr         $ra
    /* 492E8 80058AE8 00000000 */   nop
.size func_80058A80, . - func_80058A80
