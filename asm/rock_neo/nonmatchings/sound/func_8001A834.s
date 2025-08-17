.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001A834
    /* B034 8001A834 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* B038 8001A838 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* B03C 8001A83C 21988000 */  addu       $s3, $a0, $zero
    /* B040 8001A840 1400B1AF */  sw         $s1, 0x14($sp)
    /* B044 8001A844 2188A000 */  addu       $s1, $a1, $zero
    /* B048 8001A848 2400BFAF */  sw         $ra, 0x24($sp)
    /* B04C 8001A84C 2000B4AF */  sw         $s4, 0x20($sp)
    /* B050 8001A850 1800B2AF */  sw         $s2, 0x18($sp)
    /* B054 8001A854 1000B0AF */  sw         $s0, 0x10($sp)
    /* B058 8001A858 03006292 */  lbu        $v0, 0x3($s3)
    /* B05C 8001A85C 01001024 */  addiu      $s0, $zero, 0x1
    /* B060 8001A860 1F005230 */  andi       $s2, $v0, 0x1F
    /* B064 8001A864 48AA010C */  jal        SpuGetKeyStatus
    /* B068 8001A868 04205002 */   sllv      $a0, $s0, $s2
    /* B06C 8001A86C 21A04000 */  addu       $s4, $v0, $zero
    /* B070 8001A870 09009016 */  bne        $s4, $s0, .L8001A898
    /* B074 8001A874 00000000 */   nop
    /* B078 8001A878 02006292 */  lbu        $v0, 0x2($s3)
    /* B07C 8001A87C 0A80013C */  lui        $at, %hi(D_80098B48)
    /* B080 8001A880 21083200 */  addu       $at, $at, $s2
    /* B084 8001A884 488B2390 */  lbu        $v1, %lo(D_80098B48)($at)
    /* B088 8001A888 0F004230 */  andi       $v0, $v0, 0xF
    /* B08C 8001A88C 2B104300 */  sltu       $v0, $v0, $v1
    /* B090 8001A890 2C004014 */  bnez       $v0, .L8001A944
    /* B094 8001A894 21100000 */   addu      $v0, $zero, $zero
  .L8001A898:
    /* B098 8001A898 00003092 */  lbu        $s0, 0x0($s1)
    /* B09C 8001A89C 01000224 */  addiu      $v0, $zero, 0x1
    /* B0A0 8001A8A0 28000216 */  bne        $s0, $v0, .L8001A944
    /* B0A4 8001A8A4 00000000 */   nop
    /* B0A8 8001A8A8 0A80043C */  lui        $a0, %hi(p_Player_work)
    /* B0AC 8001A8AC 508A848C */  lw         $a0, %lo(p_Player_work)($a0)
    /* B0B0 8001A8B0 04002286 */  lh         $v0, 0x4($s1)
    /* B0B4 8001A8B4 14008384 */  lh         $v1, 0x14($a0)
    /* B0B8 8001A8B8 00000000 */  nop
    /* B0BC 8001A8BC 23186200 */  subu       $v1, $v1, $v0
    /* B0C0 8001A8C0 18006300 */  mult       $v1, $v1
    /* B0C4 8001A8C4 18008484 */  lh         $a0, 0x18($a0)
    /* B0C8 8001A8C8 08002286 */  lh         $v0, 0x8($s1)
    /* B0CC 8001A8CC 12180000 */  mflo       $v1
    /* B0D0 8001A8D0 23208200 */  subu       $a0, $a0, $v0
    /* B0D4 8001A8D4 00000000 */  nop
    /* B0D8 8001A8D8 18008400 */  mult       $a0, $a0
    /* B0DC 8001A8DC 12200000 */  mflo       $a0
    /* B0E0 8001A8E0 5EE9010C */  jal        SquareRoot0
    /* B0E4 8001A8E4 21206400 */   addu      $a0, $v1, $a0
    /* B0E8 8001A8E8 21204000 */  addu       $a0, $v0, $zero
    /* B0EC 8001A8EC 88138228 */  slti       $v0, $a0, 0x1388
    /* B0F0 8001A8F0 0E004010 */  beqz       $v0, .L8001A92C
    /* B0F4 8001A8F4 00000000 */   nop
    /* B0F8 8001A8F8 0E009016 */  bne        $s4, $s0, .L8001A934
    /* B0FC 8001A8FC 40101200 */   sll       $v0, $s2, 1
    /* B100 8001A900 02006292 */  lbu        $v0, 0x2($s3)
    /* B104 8001A904 0A80013C */  lui        $at, %hi(D_80098B48)
    /* B108 8001A908 21083200 */  addu       $at, $at, $s2
    /* B10C 8001A90C 488B2390 */  lbu        $v1, %lo(D_80098B48)($at)
    /* B110 8001A910 0F004230 */  andi       $v0, $v0, 0xF
    /* B114 8001A914 2B186200 */  sltu       $v1, $v1, $v0
    /* B118 8001A918 06006014 */  bnez       $v1, .L8001A934
    /* B11C 8001A91C 40101200 */   sll       $v0, $s2, 1
    /* B120 8001A920 B90B8228 */  slti       $v0, $a0, 0xBB9
    /* B124 8001A924 03004014 */  bnez       $v0, .L8001A934
    /* B128 8001A928 40101200 */   sll       $v0, $s2, 1
  .L8001A92C:
    /* B12C 8001A92C 516A0008 */  j          .L8001A944
    /* B130 8001A930 21100000 */   addu      $v0, $zero, $zero
  .L8001A934:
    /* B134 8001A934 0C80013C */  lui        $at, %hi(Game_work + 0x1E0)
    /* B138 8001A938 21082200 */  addu       $at, $at, $v0
    /* B13C 8001A93C F01C24A4 */  sh         $a0, %lo(Game_work + 0x1E0)($at)
    /* B140 8001A940 01000224 */  addiu      $v0, $zero, 0x1
  .L8001A944:
    /* B144 8001A944 2400BF8F */  lw         $ra, 0x24($sp)
    /* B148 8001A948 2000B48F */  lw         $s4, 0x20($sp)
    /* B14C 8001A94C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* B150 8001A950 1800B28F */  lw         $s2, 0x18($sp)
    /* B154 8001A954 1400B18F */  lw         $s1, 0x14($sp)
    /* B158 8001A958 1000B08F */  lw         $s0, 0x10($sp)
    /* B15C 8001A95C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* B160 8001A960 0800E003 */  jr         $ra
    /* B164 8001A964 00000000 */   nop
.size func_8001A834, . - func_8001A834
