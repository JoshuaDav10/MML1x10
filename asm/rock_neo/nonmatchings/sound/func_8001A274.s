.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001A274
    /* AA74 8001A274 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* AA78 8001A278 21408000 */  addu       $t0, $a0, $zero
    /* AA7C 8001A27C FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* AA80 8001A280 3800A48F */  lw         $a0, 0x38($sp)
    /* AA84 8001A284 C0110500 */  sll        $v0, $a1, 7
    /* AA88 8001A288 1400B1AF */  sw         $s1, 0x14($sp)
    /* AA8C 8001A28C 21884500 */  addu       $s1, $v0, $a1
    /* AA90 8001A290 1800B2AF */  sw         $s2, 0x18($sp)
    /* AA94 8001A294 2190C000 */  addu       $s2, $a2, $zero
    /* AA98 8001A298 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* AA9C 8001A29C 2198E000 */  addu       $s3, $a3, $zero
    /* AAA0 8001A2A0 2400BFAF */  sw         $ra, 0x24($sp)
    /* AAA4 8001A2A4 2000B4AF */  sw         $s4, 0x20($sp)
    /* AAA8 8001A2A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* AAAC 8001A2AC 00000391 */  lbu        $v1, 0x0($t0)
    /* AAB0 8001A2B0 00000000 */  nop
    /* AAB4 8001A2B4 06006010 */  beqz       $v1, .L8001A2D0
    /* AAB8 8001A2B8 21A08000 */   addu      $s4, $a0, $zero
    /* AABC 8001A2BC 01000224 */  addiu      $v0, $zero, 0x1
    /* AAC0 8001A2C0 43006210 */  beq        $v1, $v0, .L8001A3D0
    /* AAC4 8001A2C4 00140400 */   sll       $v0, $a0, 16
    /* AAC8 8001A2C8 4A690008 */  j          .L8001A528
    /* AACC 8001A2CC 00000000 */   nop
  .L8001A2D0:
    /* AAD0 8001A2D0 0400038D */  lw         $v1, 0x4($t0)
    /* AAD4 8001A2D4 00000000 */  nop
    /* AAD8 8001A2D8 0D006018 */  blez       $v1, .L8001A310
    /* AADC 8001A2DC FFFF2432 */   andi      $a0, $s1, 0xFFFF
    /* AAE0 8001A2E0 FFFF6330 */  andi       $v1, $v1, 0xFFFF
    /* AAE4 8001A2E4 80000224 */  addiu      $v0, $zero, 0x80
    /* AAE8 8001A2E8 23104300 */  subu       $v0, $v0, $v1
    /* AAEC 8001A2EC 18008200 */  mult       $a0, $v0
    /* AAF0 8001A2F0 12100000 */  mflo       $v0
    /* AAF4 8001A2F4 02004104 */  bgez       $v0, .L8001A300
    /* AAF8 8001A2F8 00000000 */   nop
    /* AAFC 8001A2FC 7F004224 */  addiu      $v0, $v0, 0x7F
  .L8001A300:
    /* AB00 8001A300 C3110200 */  sra        $v0, $v0, 7
    /* AB04 8001A304 000042A6 */  sh         $v0, 0x0($s2)
    /* AB08 8001A308 D0680008 */  j          .L8001A340
    /* AB0C 8001A30C 000071A6 */   sh        $s1, 0x0($s3)
  .L8001A310:
    /* AB10 8001A310 000051A6 */  sh         $s1, 0x0($s2)
    /* AB14 8001A314 0400028D */  lw         $v0, 0x4($t0)
    /* AB18 8001A318 FFFF2332 */  andi       $v1, $s1, 0xFFFF
    /* AB1C 8001A31C 80004224 */  addiu      $v0, $v0, 0x80
    /* AB20 8001A320 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* AB24 8001A324 18006200 */  mult       $v1, $v0
    /* AB28 8001A328 12100000 */  mflo       $v0
    /* AB2C 8001A32C 02004104 */  bgez       $v0, .L8001A338
    /* AB30 8001A330 00000000 */   nop
    /* AB34 8001A334 7F004224 */  addiu      $v0, $v0, 0x7F
  .L8001A338:
    /* AB38 8001A338 C3110200 */  sra        $v0, $v0, 7
    /* AB3C 8001A33C 000062A6 */  sh         $v0, 0x0($s3)
  .L8001A340:
    /* AB40 8001A340 0C80023C */  lui        $v0, %hi(Game_work + 0x58)
    /* AB44 8001A344 681B4280 */  lb         $v0, %lo(Game_work + 0x58)($v0)
    /* AB48 8001A348 00000000 */  nop
    /* AB4C 8001A34C 0B004010 */  beqz       $v0, .L8001A37C
    /* AB50 8001A350 80000424 */   addiu     $a0, $zero, 0x80
    /* AB54 8001A354 00004496 */  lhu        $a0, 0x0($s2)
    /* AB58 8001A358 00006396 */  lhu        $v1, 0x0($s3)
    /* AB5C 8001A35C 00000000 */  nop
    /* AB60 8001A360 2B106400 */  sltu       $v0, $v1, $a0
    /* AB64 8001A364 03004010 */  beqz       $v0, .L8001A374
    /* AB68 8001A368 00000000 */   nop
    /* AB6C 8001A36C DE680008 */  j          .L8001A378
    /* AB70 8001A370 000064A6 */   sh        $a0, 0x0($s3)
  .L8001A374:
    /* AB74 8001A374 000043A6 */  sh         $v1, 0x0($s2)
  .L8001A378:
    /* AB78 8001A378 80000424 */  addiu      $a0, $zero, 0x80
  .L8001A37C:
    /* AB7C 8001A37C 0800028D */  lw         $v0, 0x8($t0)
    /* AB80 8001A380 00004396 */  lhu        $v1, 0x0($s2)
    /* AB84 8001A384 23108200 */  subu       $v0, $a0, $v0
    /* AB88 8001A388 18006200 */  mult       $v1, $v0
    /* AB8C 8001A38C 12100000 */  mflo       $v0
    /* AB90 8001A390 02004104 */  bgez       $v0, .L8001A39C
    /* AB94 8001A394 00000000 */   nop
    /* AB98 8001A398 7F004224 */  addiu      $v0, $v0, 0x7F
  .L8001A39C:
    /* AB9C 8001A39C C3110200 */  sra        $v0, $v0, 7
    /* ABA0 8001A3A0 000042A6 */  sh         $v0, 0x0($s2)
    /* ABA4 8001A3A4 0800028D */  lw         $v0, 0x8($t0)
    /* ABA8 8001A3A8 00006396 */  lhu        $v1, 0x0($s3)
    /* ABAC 8001A3AC 23108200 */  subu       $v0, $a0, $v0
    /* ABB0 8001A3B0 18006200 */  mult       $v1, $v0
    /* ABB4 8001A3B4 12100000 */  mflo       $v0
    /* ABB8 8001A3B8 02004104 */  bgez       $v0, .L8001A3C4
    /* ABBC 8001A3BC 00000000 */   nop
    /* ABC0 8001A3C0 7F004224 */  addiu      $v0, $v0, 0x7F
  .L8001A3C4:
    /* ABC4 8001A3C4 C3110200 */  sra        $v0, $v0, 7
    /* ABC8 8001A3C8 4A690008 */  j          .L8001A528
    /* ABCC 8001A3CC 000062A6 */   sh        $v0, 0x0($s3)
  .L8001A3D0:
    /* ABD0 8001A3D0 04004014 */  bnez       $v0, .L8001A3E4
    /* ABD4 8001A3D4 00000000 */   nop
    /* ABD8 8001A3D8 000071A6 */  sh         $s1, 0x0($s3)
    /* ABDC 8001A3DC 86690008 */  j          .L8001A618
    /* ABE0 8001A3E0 000051A6 */   sh        $s1, 0x0($s2)
  .L8001A3E4:
    /* ABE4 8001A3E4 0A80023C */  lui        $v0, %hi(p_Player_work)
    /* ABE8 8001A3E8 508A428C */  lw         $v0, %lo(p_Player_work)($v0)
    /* ABEC 8001A3EC 04000685 */  lh         $a2, 0x4($t0)
    /* ABF0 8001A3F0 08000785 */  lh         $a3, 0x8($t0)
    /* ABF4 8001A3F4 14004484 */  lh         $a0, 0x14($v0)
    /* ABF8 8001A3F8 18004584 */  lh         $a1, 0x18($v0)
    /* ABFC 8001A3FC 0F7A000C */  jal        func_8001E83C
    /* AC00 8001A400 00000000 */   nop
    /* AC04 8001A404 0A80033C */  lui        $v1, %hi(p_Player_work)
    /* AC08 8001A408 508A638C */  lw         $v1, %lo(p_Player_work)($v1)
    /* AC0C 8001A40C 00000000 */  nop
    /* AC10 8001A410 56006384 */  lh         $v1, 0x56($v1)
    /* AC14 8001A414 00000000 */  nop
    /* AC18 8001A418 23806200 */  subu       $s0, $v1, $v0
    /* AC1C 8001A41C FF0F1032 */  andi       $s0, $s0, 0xFFF
    /* AC20 8001A420 8CE8010C */  jal        ccos
    /* AC24 8001A424 21200002 */   addu      $a0, $s0, $zero
    /* AC28 8001A428 C0110200 */  sll        $v0, $v0, 7
    /* AC2C 8001A42C 031B0200 */  sra        $v1, $v0, 12
    /* AC30 8001A430 02006104 */  bgez       $v1, .L8001A43C
    /* AC34 8001A434 0008022A */   slti      $v0, $s0, 0x800
    /* AC38 8001A438 23180300 */  negu       $v1, $v1
  .L8001A43C:
    /* AC3C 8001A43C 09004010 */  beqz       $v0, .L8001A464
    /* AC40 8001A440 FFFF2232 */   andi      $v0, $s1, 0xFFFF
    /* AC44 8001A444 18004300 */  mult       $v0, $v1
    /* AC48 8001A448 12100000 */  mflo       $v0
    /* AC4C 8001A44C 02004104 */  bgez       $v0, .L8001A458
    /* AC50 8001A450 000051A6 */   sh        $s1, 0x0($s2)
    /* AC54 8001A454 7F004224 */  addiu      $v0, $v0, 0x7F
  .L8001A458:
    /* AC58 8001A458 C3110200 */  sra        $v0, $v0, 7
    /* AC5C 8001A45C 21690008 */  j          .L8001A484
    /* AC60 8001A460 000062A6 */   sh        $v0, 0x0($s3)
  .L8001A464:
    /* AC64 8001A464 18004300 */  mult       $v0, $v1
    /* AC68 8001A468 12100000 */  mflo       $v0
    /* AC6C 8001A46C 02004104 */  bgez       $v0, .L8001A478
    /* AC70 8001A470 00000000 */   nop
    /* AC74 8001A474 7F004224 */  addiu      $v0, $v0, 0x7F
  .L8001A478:
    /* AC78 8001A478 C3110200 */  sra        $v0, $v0, 7
    /* AC7C 8001A47C 000042A6 */  sh         $v0, 0x0($s2)
    /* AC80 8001A480 000071A6 */  sh         $s1, 0x0($s3)
  .L8001A484:
    /* AC84 8001A484 0C80023C */  lui        $v0, %hi(Game_work + 0x58)
    /* AC88 8001A488 681B4280 */  lb         $v0, %lo(Game_work + 0x58)($v0)
    /* AC8C 8001A48C 00000000 */  nop
    /* AC90 8001A490 0B004010 */  beqz       $v0, .L8001A4C0
    /* AC94 8001A494 00141400 */   sll       $v0, $s4, 16
    /* AC98 8001A498 00004496 */  lhu        $a0, 0x0($s2)
    /* AC9C 8001A49C 00006396 */  lhu        $v1, 0x0($s3)
    /* ACA0 8001A4A0 00000000 */  nop
    /* ACA4 8001A4A4 2B106400 */  sltu       $v0, $v1, $a0
    /* ACA8 8001A4A8 03004010 */  beqz       $v0, .L8001A4B8
    /* ACAC 8001A4AC 00000000 */   nop
    /* ACB0 8001A4B0 2F690008 */  j          .L8001A4BC
    /* ACB4 8001A4B4 000064A6 */   sh        $a0, 0x0($s3)
  .L8001A4B8:
    /* ACB8 8001A4B8 000043A6 */  sh         $v1, 0x0($s2)
  .L8001A4BC:
    /* ACBC 8001A4BC 00141400 */  sll        $v0, $s4, 16
  .L8001A4C0:
    /* ACC0 8001A4C0 03140200 */  sra        $v0, $v0, 16
    /* ACC4 8001A4C4 88130424 */  addiu      $a0, $zero, 0x1388
    /* ACC8 8001A4C8 00004396 */  lhu        $v1, 0x0($s2)
    /* ACCC 8001A4CC 23208200 */  subu       $a0, $a0, $v0
    /* ACD0 8001A4D0 18006400 */  mult       $v1, $a0
    /* ACD4 8001A4D4 12180000 */  mflo       $v1
    /* ACD8 8001A4D8 DB68053C */  lui        $a1, (0x68DB8BAD >> 16)
    /* ACDC 8001A4DC AD8BA534 */  ori        $a1, $a1, (0x68DB8BAD & 0xFFFF)
    /* ACE0 8001A4E0 18006500 */  mult       $v1, $a1
    /* ACE4 8001A4E4 C31F0300 */  sra        $v1, $v1, 31
    /* ACE8 8001A4E8 10480000 */  mfhi       $t1
    /* ACEC 8001A4EC C3120900 */  sra        $v0, $t1, 11
    /* ACF0 8001A4F0 23104300 */  subu       $v0, $v0, $v1
    /* ACF4 8001A4F4 000042A6 */  sh         $v0, 0x0($s2)
    /* ACF8 8001A4F8 00006296 */  lhu        $v0, 0x0($s3)
    /* ACFC 8001A4FC 00000000 */  nop
    /* AD00 8001A500 18004400 */  mult       $v0, $a0
    /* AD04 8001A504 12100000 */  mflo       $v0
    /* AD08 8001A508 00000000 */  nop
    /* AD0C 8001A50C 00000000 */  nop
    /* AD10 8001A510 18004500 */  mult       $v0, $a1
    /* AD14 8001A514 C3170200 */  sra        $v0, $v0, 31
    /* AD18 8001A518 10480000 */  mfhi       $t1
    /* AD1C 8001A51C C31A0900 */  sra        $v1, $t1, 11
    /* AD20 8001A520 23186200 */  subu       $v1, $v1, $v0
    /* AD24 8001A524 000063A6 */  sh         $v1, 0x0($s3)
  .L8001A528:
    /* AD28 8001A528 0B80053C */  lui        $a1, %hi(D_800AD148)
    /* AD2C 8001A52C 48D1A524 */  addiu      $a1, $a1, %lo(D_800AD148)
    /* AD30 8001A530 00004396 */  lhu        $v1, 0x0($s2)
    /* AD34 8001A534 0000A284 */  lh         $v0, 0x0($a1)
    /* AD38 8001A538 00000000 */  nop
    /* AD3C 8001A53C 18006200 */  mult       $v1, $v0
    /* AD40 8001A540 12180000 */  mflo       $v1
    /* AD44 8001A544 0281043C */  lui        $a0, (0x81020409 >> 16)
    /* AD48 8001A548 09048434 */  ori        $a0, $a0, (0x81020409 & 0xFFFF)
    /* AD4C 8001A54C 18006400 */  mult       $v1, $a0
    /* AD50 8001A550 10480000 */  mfhi       $t1
    /* AD54 8001A554 21102301 */  addu       $v0, $t1, $v1
    /* AD58 8001A558 83110200 */  sra        $v0, $v0, 6
    /* AD5C 8001A55C C31F0300 */  sra        $v1, $v1, 31
    /* AD60 8001A560 23104300 */  subu       $v0, $v0, $v1
    /* AD64 8001A564 000042A6 */  sh         $v0, 0x0($s2)
    /* AD68 8001A568 00006296 */  lhu        $v0, 0x0($s3)
    /* AD6C 8001A56C 0000A384 */  lh         $v1, 0x0($a1)
    /* AD70 8001A570 00000000 */  nop
    /* AD74 8001A574 18004300 */  mult       $v0, $v1
    /* AD78 8001A578 12100000 */  mflo       $v0
    /* AD7C 8001A57C 00000000 */  nop
    /* AD80 8001A580 00000000 */  nop
    /* AD84 8001A584 18004400 */  mult       $v0, $a0
    /* AD88 8001A588 10480000 */  mfhi       $t1
    /* AD8C 8001A58C 21182201 */  addu       $v1, $t1, $v0
    /* AD90 8001A590 83190300 */  sra        $v1, $v1, 6
    /* AD94 8001A594 C3170200 */  sra        $v0, $v0, 31
    /* AD98 8001A598 23186200 */  subu       $v1, $v1, $v0
    /* AD9C 8001A59C 000063A6 */  sh         $v1, 0x0($s3)
    /* ADA0 8001A5A0 00004296 */  lhu        $v0, 0x0($s2)
    /* ADA4 8001A5A4 0B80033C */  lui        $v1, %hi(D_800AD150)
    /* ADA8 8001A5A8 50D16384 */  lh         $v1, %lo(D_800AD150)($v1)
    /* ADAC 8001A5AC 00000000 */  nop
    /* ADB0 8001A5B0 18004300 */  mult       $v0, $v1
    /* ADB4 8001A5B4 12100000 */  mflo       $v0
    /* ADB8 8001A5B8 00000000 */  nop
    /* ADBC 8001A5BC 00000000 */  nop
    /* ADC0 8001A5C0 18004400 */  mult       $v0, $a0
    /* ADC4 8001A5C4 10480000 */  mfhi       $t1
    /* ADC8 8001A5C8 21182201 */  addu       $v1, $t1, $v0
    /* ADCC 8001A5CC 83190300 */  sra        $v1, $v1, 6
    /* ADD0 8001A5D0 C3170200 */  sra        $v0, $v0, 31
    /* ADD4 8001A5D4 23186200 */  subu       $v1, $v1, $v0
    /* ADD8 8001A5D8 000043A6 */  sh         $v1, 0x0($s2)
    /* ADDC 8001A5DC 00006296 */  lhu        $v0, 0x0($s3)
    /* ADE0 8001A5E0 0B80033C */  lui        $v1, %hi(D_800AD150)
    /* ADE4 8001A5E4 50D16384 */  lh         $v1, %lo(D_800AD150)($v1)
    /* ADE8 8001A5E8 00000000 */  nop
    /* ADEC 8001A5EC 18004300 */  mult       $v0, $v1
    /* ADF0 8001A5F0 12100000 */  mflo       $v0
    /* ADF4 8001A5F4 00000000 */  nop
    /* ADF8 8001A5F8 00000000 */  nop
    /* ADFC 8001A5FC 18004400 */  mult       $v0, $a0
    /* AE00 8001A600 10480000 */  mfhi       $t1
    /* AE04 8001A604 21182201 */  addu       $v1, $t1, $v0
    /* AE08 8001A608 83190300 */  sra        $v1, $v1, 6
    /* AE0C 8001A60C C3170200 */  sra        $v0, $v0, 31
    /* AE10 8001A610 23186200 */  subu       $v1, $v1, $v0
    /* AE14 8001A614 000063A6 */  sh         $v1, 0x0($s3)
  .L8001A618:
    /* AE18 8001A618 2400BF8F */  lw         $ra, 0x24($sp)
    /* AE1C 8001A61C 2000B48F */  lw         $s4, 0x20($sp)
    /* AE20 8001A620 1C00B38F */  lw         $s3, 0x1C($sp)
    /* AE24 8001A624 1800B28F */  lw         $s2, 0x18($sp)
    /* AE28 8001A628 1400B18F */  lw         $s1, 0x14($sp)
    /* AE2C 8001A62C 1000B08F */  lw         $s0, 0x10($sp)
    /* AE30 8001A630 2800BD27 */  addiu      $sp, $sp, 0x28
    /* AE34 8001A634 0800E003 */  jr         $ra
    /* AE38 8001A638 00000000 */   nop
.size func_8001A274, . - func_8001A274
