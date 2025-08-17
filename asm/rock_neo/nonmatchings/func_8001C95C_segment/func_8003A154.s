.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003A154
    /* 2A954 8003A154 0A80023C */  lui        $v0, %hi(D_800A3968)
    /* 2A958 8003A158 6839428C */  lw         $v0, %lo(D_800A3968)($v0)
    /* 2A95C 8003A15C FF0F8430 */  andi       $a0, $a0, 0xFFF
    /* 2A960 8003A160 FF0F4730 */  andi       $a3, $v0, 0xFFF
    /* 2A964 8003A164 2A108700 */  slt        $v0, $a0, $a3
    /* 2A968 8003A168 12004010 */  beqz       $v0, .L8003A1B4
    /* 2A96C 8003A16C 2340E400 */   subu      $t0, $a3, $a0
    /* 2A970 8003A170 00F0E224 */  addiu      $v0, $a3, -0x1000
    /* 2A974 8003A174 23188200 */  subu       $v1, $a0, $v0
    /* 2A978 8003A178 2A106800 */  slt        $v0, $v1, $t0
    /* 2A97C 8003A17C 07004010 */  beqz       $v0, .L8003A19C
    /* 2A980 8003A180 2A10C300 */   slt       $v0, $a2, $v1
    /* 2A984 8003A184 22004014 */  bnez       $v0, .L8003A210
    /* 2A988 8003A188 23108600 */   subu      $v0, $a0, $a2
    /* 2A98C 8003A18C 2110E500 */  addu       $v0, $a3, $a1
    /* 2A990 8003A190 00108324 */  addiu      $v1, $a0, 0x1000
    /* 2A994 8003A194 77E80008 */  j          .L8003A1DC
    /* 2A998 8003A198 2A186200 */   slt       $v1, $v1, $v0
  .L8003A19C:
    /* 2A99C 8003A19C 2A10C800 */  slt        $v0, $a2, $t0
    /* 2A9A0 8003A1A0 1B004014 */  bnez       $v0, .L8003A210
    /* 2A9A4 8003A1A4 21108600 */   addu      $v0, $a0, $a2
    /* 2A9A8 8003A1A8 2310E500 */  subu       $v0, $a3, $a1
    /* 2A9AC 8003A1AC 77E80008 */  j          .L8003A1DC
    /* 2A9B0 8003A1B0 2A184400 */   slt       $v1, $v0, $a0
  .L8003A1B4:
    /* 2A9B4 8003A1B4 23408700 */  subu       $t0, $a0, $a3
    /* 2A9B8 8003A1B8 00F08924 */  addiu      $t1, $a0, -0x1000
    /* 2A9BC 8003A1BC 2318E900 */  subu       $v1, $a3, $t1
    /* 2A9C0 8003A1C0 2A106800 */  slt        $v0, $v1, $t0
    /* 2A9C4 8003A1C4 09004010 */  beqz       $v0, .L8003A1EC
    /* 2A9C8 8003A1C8 2A10C300 */   slt       $v0, $a2, $v1
    /* 2A9CC 8003A1CC 10004014 */  bnez       $v0, .L8003A210
    /* 2A9D0 8003A1D0 21108600 */   addu      $v0, $a0, $a2
    /* 2A9D4 8003A1D4 2310E500 */  subu       $v0, $a3, $a1
    /* 2A9D8 8003A1D8 2A184900 */  slt        $v1, $v0, $t1
  .L8003A1DC:
    /* 2A9DC 8003A1DC 0C006010 */  beqz       $v1, .L8003A210
    /* 2A9E0 8003A1E0 00000000 */   nop
    /* 2A9E4 8003A1E4 84E80008 */  j          .L8003A210
    /* 2A9E8 8003A1E8 21108000 */   addu      $v0, $a0, $zero
  .L8003A1EC:
    /* 2A9EC 8003A1EC 2A10C800 */  slt        $v0, $a2, $t0
    /* 2A9F0 8003A1F0 07004014 */  bnez       $v0, .L8003A210
    /* 2A9F4 8003A1F4 23108600 */   subu      $v0, $a0, $a2
    /* 2A9F8 8003A1F8 21108000 */  addu       $v0, $a0, $zero
    /* 2A9FC 8003A1FC 2128E500 */  addu       $a1, $a3, $a1
    /* 2AA00 8003A200 2A184500 */  slt        $v1, $v0, $a1
    /* 2AA04 8003A204 02006014 */  bnez       $v1, .L8003A210
    /* 2AA08 8003A208 00000000 */   nop
    /* 2AA0C 8003A20C 2110A000 */  addu       $v0, $a1, $zero
  .L8003A210:
    /* 2AA10 8003A210 0800E003 */  jr         $ra
    /* 2AA14 8003A214 00000000 */   nop
.size func_8003A154, . - func_8003A154
