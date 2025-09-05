.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004B1E0
    /* 3B9E0 8004B1E0 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 3B9E4 8004B1E4 5800BEAF */  sw         $fp, 0x58($sp)
    /* 3B9E8 8004B1E8 21F08000 */  addu       $fp, $a0, $zero
    /* 3B9EC 8004B1EC 00800234 */  ori        $v0, $zero, 0x8000
    /* 3B9F0 8004B1F0 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 3B9F4 8004B1F4 5400B7AF */  sw         $s7, 0x54($sp)
    /* 3B9F8 8004B1F8 5000B6AF */  sw         $s6, 0x50($sp)
    /* 3B9FC 8004B1FC 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 3BA00 8004B200 4800B4AF */  sw         $s4, 0x48($sp)
    /* 3BA04 8004B204 4400B3AF */  sw         $s3, 0x44($sp)
    /* 3BA08 8004B208 4000B2AF */  sw         $s2, 0x40($sp)
    /* 3BA0C 8004B20C 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 3BA10 8004B210 3800B0AF */  sw         $s0, 0x38($sp)
    /* 3BA14 8004B214 2000A5AF */  sw         $a1, 0x20($sp)
    /* 3BA18 8004B218 1800A2A7 */  sh         $v0, 0x18($sp)
    /* 3BA1C 8004B21C 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 3BA20 8004B220 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 3BA24 8004B224 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 3BA28 8004B228 0000C297 */  lhu        $v0, 0x0($fp)
    /* 3BA2C 8004B22C 00000000 */  nop
    /* 3BA30 8004B230 FF014230 */  andi       $v0, $v0, 0x1FF
    /* 3BA34 8004B234 01014228 */  slti       $v0, $v0, 0x101
    /* 3BA38 8004B238 02004014 */  bnez       $v0, .L8004B244
    /* 3BA3C 8004B23C 007E0224 */   addiu     $v0, $zero, 0x7E00
    /* 3BA40 8004B240 00820234 */  ori        $v0, $zero, 0x8200
  .L8004B244:
    /* 3BA44 8004B244 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* 3BA48 8004B248 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 3BA4C 8004B24C 0400C297 */  lhu        $v0, 0x4($fp)
    /* 3BA50 8004B250 00000000 */  nop
    /* 3BA54 8004B254 FF014230 */  andi       $v0, $v0, 0x1FF
    /* 3BA58 8004B258 01014228 */  slti       $v0, $v0, 0x101
    /* 3BA5C 8004B25C 02004014 */  bnez       $v0, .L8004B268
    /* 3BA60 8004B260 007E0224 */   addiu     $v0, $zero, 0x7E00
    /* 3BA64 8004B264 00820234 */  ori        $v0, $zero, 0x8200
  .L8004B268:
    /* 3BA68 8004B268 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* 3BA6C 8004B26C 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* 3BA70 8004B270 21A00000 */  addu       $s4, $zero, $zero
    /* 3BA74 8004B274 21B00000 */  addu       $s6, $zero, $zero
    /* 3BA78 8004B278 801F073C */  lui        $a3, (0x1F800118 >> 16)
    /* 3BA7C 8004B27C 1801E734 */  ori        $a3, $a3, (0x1F800118 & 0xFFFF)
    /* 3BA80 8004B280 2800A7AF */  sw         $a3, 0x28($sp)
    /* 3BA84 8004B284 801F173C */  lui        $s7, (0x1F800118 >> 16)
    /* 3BA88 8004B288 1801F736 */  ori        $s7, $s7, (0x1F800118 & 0xFFFF)
    /* 3BA8C 8004B28C 80181600 */  sll        $v1, $s6, 2
  .L8004B290:
    /* 3BA90 8004B290 1000A227 */  addiu      $v0, $sp, 0x10
    /* 3BA94 8004B294 21204300 */  addu       $a0, $v0, $v1
    /* 3BA98 8004B298 0000C387 */  lh         $v1, 0x0($fp)
    /* 3BA9C 8004B29C 00008294 */  lhu        $v0, 0x0($a0)
    /* 3BAA0 8004B2A0 801F063C */  lui        $a2, (0x1F800044 >> 16)
    /* 3BAA4 8004B2A4 4400C694 */  lhu        $a2, (0x1F800044 & 0xFFFF)($a2)
    /* 3BAA8 8004B2A8 21186200 */  addu       $v1, $v1, $v0
    /* 3BAAC 8004B2AC 801F023C */  lui        $v0, (0x1F800040 >> 16)
    /* 3BAB0 8004B2B0 40004290 */  lbu        $v0, (0x1F800040 & 0xFFFF)($v0)
    /* 3BAB4 8004B2B4 431A0300 */  sra        $v1, $v1, 9
    /* 3BAB8 8004B2B8 23286200 */  subu       $a1, $v1, $v0
    /* 3BABC 8004B2BC 2B10A600 */  sltu       $v0, $a1, $a2
    /* 3BAC0 8004B2C0 32004010 */  beqz       $v0, .L8004B38C
    /* 3BAC4 8004B2C4 21108002 */   addu      $v0, $s4, $zero
    /* 3BAC8 8004B2C8 0400C387 */  lh         $v1, 0x4($fp)
    /* 3BACC 8004B2CC 02008294 */  lhu        $v0, 0x2($a0)
    /* 3BAD0 8004B2D0 801F043C */  lui        $a0, (0x1F800041 >> 16)
    /* 3BAD4 8004B2D4 41008490 */  lbu        $a0, (0x1F800041 & 0xFFFF)($a0)
    /* 3BAD8 8004B2D8 21186200 */  addu       $v1, $v1, $v0
    /* 3BADC 8004B2DC 431A0300 */  sra        $v1, $v1, 9
    /* 3BAE0 8004B2E0 801F023C */  lui        $v0, (0x1F800046 >> 16)
    /* 3BAE4 8004B2E4 46004294 */  lhu        $v0, (0x1F800046 & 0xFFFF)($v0)
    /* 3BAE8 8004B2E8 23186400 */  subu       $v1, $v1, $a0
    /* 3BAEC 8004B2EC 2B106200 */  sltu       $v0, $v1, $v0
    /* 3BAF0 8004B2F0 25004010 */  beqz       $v0, .L8004B388
    /* 3BAF4 8004B2F4 18006600 */   mult      $v1, $a2
    /* 3BAF8 8004B2F8 12380000 */  mflo       $a3
    /* 3BAFC 8004B2FC 21A8A700 */  addu       $s5, $a1, $a3
    /* 3BB00 8004B300 3B23010C */  jal        func_80048CEC
    /* 3BB04 8004B304 2120A002 */   addu      $a0, $s5, $zero
    /* 3BB08 8004B308 21984000 */  addu       $s3, $v0, $zero
    /* 3BB0C 8004B30C 05006016 */  bnez       $s3, .L8004B324
    /* 3BB10 8004B310 21880000 */   addu      $s1, $zero, $zero
    /* 3BB14 8004B314 2000A78F */  lw         $a3, 0x20($sp)
    /* 3BB18 8004B318 00000000 */  nop
    /* 3BB1C 8004B31C 1600E010 */  beqz       $a3, .L8004B378
    /* 3BB20 8004B320 00000000 */   nop
  .L8004B324:
    /* 3BB24 8004B324 0F00801A */  blez       $s4, .L8004B364
    /* 3BB28 8004B328 21900000 */   addu      $s2, $zero, $zero
    /* 3BB2C 8004B32C 2800B08F */  lw         $s0, 0x28($sp)
  .L8004B330:
    /* 3BB30 8004B330 0800601A */  blez       $s3, .L8004B354
    /* 3BB34 8004B334 00000000 */   nop
    /* 3BB38 8004B338 00000486 */  lh         $a0, 0x0($s0)
    /* 3BB3C 8004B33C 3B23010C */  jal        func_80048CEC
    /* 3BB40 8004B340 00000000 */   nop
    /* 3BB44 8004B344 03006216 */  bne        $s3, $v0, .L8004B354
    /* 3BB48 8004B348 00000000 */   nop
    /* 3BB4C 8004B34C D92C0108 */  j          .L8004B364
    /* 3BB50 8004B350 01001224 */   addiu     $s2, $zero, 0x1
  .L8004B354:
    /* 3BB54 8004B354 01003126 */  addiu      $s1, $s1, 0x1
    /* 3BB58 8004B358 2A103402 */  slt        $v0, $s1, $s4
    /* 3BB5C 8004B35C F4FF4014 */  bnez       $v0, .L8004B330
    /* 3BB60 8004B360 02001026 */   addiu     $s0, $s0, 0x2
  .L8004B364:
    /* 3BB64 8004B364 04004016 */  bnez       $s2, .L8004B378
    /* 3BB68 8004B368 00000000 */   nop
    /* 3BB6C 8004B36C 0000F5A6 */  sh         $s5, 0x0($s7)
    /* 3BB70 8004B370 0200F726 */  addiu      $s7, $s7, 0x2
    /* 3BB74 8004B374 01009426 */  addiu      $s4, $s4, 0x1
  .L8004B378:
    /* 3BB78 8004B378 0100D626 */  addiu      $s6, $s6, 0x1
    /* 3BB7C 8004B37C 0400C22A */  slti       $v0, $s6, 0x4
    /* 3BB80 8004B380 C3FF4014 */  bnez       $v0, .L8004B290
    /* 3BB84 8004B384 80181600 */   sll       $v1, $s6, 2
  .L8004B388:
    /* 3BB88 8004B388 21108002 */  addu       $v0, $s4, $zero
  .L8004B38C:
    /* 3BB8C 8004B38C 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 3BB90 8004B390 5800BE8F */  lw         $fp, 0x58($sp)
    /* 3BB94 8004B394 5400B78F */  lw         $s7, 0x54($sp)
    /* 3BB98 8004B398 5000B68F */  lw         $s6, 0x50($sp)
    /* 3BB9C 8004B39C 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 3BBA0 8004B3A0 4800B48F */  lw         $s4, 0x48($sp)
    /* 3BBA4 8004B3A4 4400B38F */  lw         $s3, 0x44($sp)
    /* 3BBA8 8004B3A8 4000B28F */  lw         $s2, 0x40($sp)
    /* 3BBAC 8004B3AC 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 3BBB0 8004B3B0 3800B08F */  lw         $s0, 0x38($sp)
    /* 3BBB4 8004B3B4 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 3BBB8 8004B3B8 0800E003 */  jr         $ra
    /* 3BBBC 8004B3BC 00000000 */   nop
.size func_8004B1E0, . - func_8004B1E0
