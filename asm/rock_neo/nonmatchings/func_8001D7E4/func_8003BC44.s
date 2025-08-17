.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003BC44
    /* 2C444 8003BC44 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2C448 8003BC48 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C44C 8003BC4C 0C80103C */  lui        $s0, %hi(Game_work + 0x50)
    /* 2C450 8003BC50 601B1026 */  addiu      $s0, $s0, %lo(Game_work + 0x50)
    /* 2C454 8003BC54 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2C458 8003BC58 00000392 */  lbu        $v1, 0x0($s0)
    /* 2C45C 8003BC5C 00000000 */  nop
    /* 2C460 8003BC60 FBFF6224 */  addiu      $v0, $v1, -0x5
    /* 2C464 8003BC64 0200422C */  sltiu      $v0, $v0, 0x2
    /* 2C468 8003BC68 23004010 */  beqz       $v0, .L8003BCF8
    /* 2C46C 8003BC6C 00160300 */   sll       $v0, $v1, 24
    /* 2C470 8003BC70 03160200 */  sra        $v0, $v0, 24
    /* 2C474 8003BC74 05000324 */  addiu      $v1, $zero, 0x5
    /* 2C478 8003BC78 0A004314 */  bne        $v0, $v1, .L8003BCA4
    /* 2C47C 8003BC7C 00000000 */   nop
    /* 2C480 8003BC80 0980053C */  lui        $a1, %hi(D_80089F7C)
    /* 2C484 8003BC84 7C9FA58C */  lw         $a1, %lo(D_80089F7C)($a1)
    /* 2C488 8003BC88 43EF000C */  jal        func_8003BD0C
    /* 2C48C 8003BC8C E4FF0426 */   addiu     $a0, $s0, -0x1C
    /* 2C490 8003BC90 16000426 */  addiu      $a0, $s0, 0x16
    /* 2C494 8003BC94 0980053C */  lui        $a1, %hi(D_80089F80)
    /* 2C498 8003BC98 809FA58C */  lw         $a1, %lo(D_80089F80)($a1)
    /* 2C49C 8003BC9C 70EF000C */  jal        func_8003BDC0
    /* 2C4A0 8003BCA0 FF8F063C */   lui       $a2, (0x8FFF0000 >> 16)
  .L8003BCA4:
    /* 2C4A4 8003BCA4 00000382 */  lb         $v1, 0x0($s0)
    /* 2C4A8 8003BCA8 06000224 */  addiu      $v0, $zero, 0x6
    /* 2C4AC 8003BCAC 12006214 */  bne        $v1, $v0, .L8003BCF8
    /* 2C4B0 8003BCB0 00000000 */   nop
    /* 2C4B4 8003BCB4 0980053C */  lui        $a1, %hi(D_80089F84)
    /* 2C4B8 8003BCB8 849FA58C */  lw         $a1, %lo(D_80089F84)($a1)
    /* 2C4BC 8003BCBC 43EF000C */  jal        func_8003BD0C
    /* 2C4C0 8003BCC0 D8FF0426 */   addiu     $a0, $s0, -0x28
    /* 2C4C4 8003BCC4 0980053C */  lui        $a1, %hi(D_80089F88)
    /* 2C4C8 8003BCC8 889FA58C */  lw         $a1, %lo(D_80089F88)($a1)
    /* 2C4CC 8003BCCC 43EF000C */  jal        func_8003BD0C
    /* 2C4D0 8003BCD0 DCFF0426 */   addiu     $a0, $s0, -0x24
    /* 2C4D4 8003BCD4 0980053C */  lui        $a1, %hi(D_80089F8C)
    /* 2C4D8 8003BCD8 8C9FA58C */  lw         $a1, %lo(D_80089F8C)($a1)
    /* 2C4DC 8003BCDC 43EF000C */  jal        func_8003BD0C
    /* 2C4E0 8003BCE0 E0FF0426 */   addiu     $a0, $s0, -0x20
    /* 2C4E4 8003BCE4 17000426 */  addiu      $a0, $s0, 0x17
    /* 2C4E8 8003BCE8 0980053C */  lui        $a1, %hi(D_80089F90)
    /* 2C4EC 8003BCEC 909FA58C */  lw         $a1, %lo(D_80089F90)($a1)
    /* 2C4F0 8003BCF0 70EF000C */  jal        func_8003BDC0
    /* 2C4F4 8003BCF4 FF8F063C */   lui       $a2, (0x8FFF0000 >> 16)
  .L8003BCF8:
    /* 2C4F8 8003BCF8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2C4FC 8003BCFC 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C500 8003BD00 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2C504 8003BD04 0800E003 */  jr         $ra
    /* 2C508 8003BD08 00000000 */   nop
.size func_8003BC44, . - func_8003BC44
