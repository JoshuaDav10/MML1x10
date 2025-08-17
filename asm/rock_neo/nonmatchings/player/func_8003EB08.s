.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003EB08
    /* 2F308 8003EB08 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2F30C 8003EB0C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2F310 8003EB10 21808000 */  addu       $s0, $a0, $zero
    /* 2F314 8003EB14 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2F318 8003EB18 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2F31C 8003EB1C 0A000392 */  lbu        $v1, 0xA($s0)
    /* 2F320 8003EB20 1C011196 */  lhu        $s1, 0x11C($s0)
    /* 2F324 8003EB24 0700622C */  sltiu      $v0, $v1, 0x7
    /* 2F328 8003EB28 C9004010 */  beqz       $v0, .L8003EE50
    /* 2F32C 8003EB2C 80100300 */   sll       $v0, $v1, 2
    /* 2F330 8003EB30 0180013C */  lui        $at, %hi(jtbl_80010C34)
    /* 2F334 8003EB34 21082200 */  addu       $at, $at, $v0
    /* 2F338 8003EB38 340C228C */  lw         $v0, %lo(jtbl_80010C34)($at)
    /* 2F33C 8003EB3C 00000000 */  nop
    /* 2F340 8003EB40 08004000 */  jr         $v0
    /* 2F344 8003EB44 00000000 */   nop
  glabel .L8003EB48
    /* 2F348 8003EB48 E808010C */  jal        Pl00_shot_enable_off
    /* 2F34C 8003EB4C 21200002 */   addu      $a0, $s0, $zero
    /* 2F350 8003EB50 21200002 */  addu       $a0, $s0, $zero
    /* 2F354 8003EB54 1D000524 */  addiu      $a1, $zero, 0x1D
    /* 2F358 8003EB58 21300000 */  addu       $a2, $zero, $zero
    /* 2F35C 8003EB5C 7707010C */  jal        func_80041DDC
    /* 2F360 8003EB60 21380000 */   addu      $a3, $zero, $zero
    /* 2F364 8003EB64 9F000424 */  addiu      $a0, $zero, 0x9F
    /* 2F368 8003EB68 21280000 */  addu       $a1, $zero, $zero
    /* 2F36C 8003EB6C 0268000C */  jal        Sound_call
    /* 2F370 8003EB70 21300000 */   addu      $a2, $zero, $zero
    /* 2F374 8003EB74 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2F378 8003EB78 4A0400A2 */  sb         $zero, 0x44A($s0)
    /* 2F37C 8003EB7C B40000A6 */  sh         $zero, 0xB4($s0)
    /* 2F380 8003EB80 66FB0008 */  j          .L8003ED98
    /* 2F384 8003EB84 4D0400A2 */   sb        $zero, 0x44D($s0)
  glabel .L8003EB88
    /* 2F388 8003EB88 A7000382 */  lb         $v1, 0xA7($s0)
    /* 2F38C 8003EB8C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2F390 8003EB90 AF006214 */  bne        $v1, $v0, .L8003EE50
    /* 2F394 8003EB94 21200002 */   addu      $a0, $s0, $zero
    /* 2F398 8003EB98 1E000524 */  addiu      $a1, $zero, 0x1E
    /* 2F39C 8003EB9C 21300000 */  addu       $a2, $zero, $zero
    /* 2F3A0 8003EBA0 7707010C */  jal        func_80041DDC
    /* 2F3A4 8003EBA4 21380000 */   addu      $a3, $zero, $zero
    /* 2F3A8 8003EBA8 65FB0008 */  j          .L8003ED94
    /* 2F3AC 8003EBAC 00000000 */   nop
  glabel .L8003EBB0
    /* 2F3B0 8003EBB0 26010296 */  lhu        $v0, 0x126($s0)
    /* 2F3B4 8003EBB4 00000000 */  nop
    /* 2F3B8 8003EBB8 24102202 */  and        $v0, $s1, $v0
    /* 2F3BC 8003EBBC 03004010 */  beqz       $v0, .L8003EBCC
    /* 2F3C0 8003EBC0 06000224 */   addiu     $v0, $zero, 0x6
    /* 2F3C4 8003EBC4 94FB0008 */  j          .L8003EE50
    /* 2F3C8 8003EBC8 0A0002A2 */   sb        $v0, 0xA($s0)
  .L8003EBCC:
    /* 2F3CC 8003EBCC 1700028A */  lwl        $v0, 0x17($s0)
    /* 2F3D0 8003EBD0 1400029A */  lwr        $v0, 0x14($s0)
    /* 2F3D4 8003EBD4 1B00038A */  lwl        $v1, 0x1B($s0)
    /* 2F3D8 8003EBD8 1800039A */  lwr        $v1, 0x18($s0)
    /* 2F3DC 8003EBDC 1300A2AB */  swl        $v0, 0x13($sp)
    /* 2F3E0 8003EBE0 1000A2BB */  swr        $v0, 0x10($sp)
    /* 2F3E4 8003EBE4 1700A3AB */  swl        $v1, 0x17($sp)
    /* 2F3E8 8003EBE8 1400A3BB */  swr        $v1, 0x14($sp)
    /* 2F3EC 8003EBEC 56000286 */  lh         $v0, 0x56($s0)
    /* 2F3F0 8003EBF0 16010386 */  lh         $v1, 0x116($s0)
    /* 2F3F4 8003EBF4 00000000 */  nop
    /* 2F3F8 8003EBF8 23104300 */  subu       $v0, $v0, $v1
    /* 2F3FC 8003EBFC 00024224 */  addiu      $v0, $v0, 0x200
    /* 2F400 8003EC00 831A0200 */  sra        $v1, $v0, 10
    /* 2F404 8003EC04 01006230 */  andi       $v0, $v1, 0x1
    /* 2F408 8003EC08 0F004010 */  beqz       $v0, .L8003EC48
    /* 2F40C 8003EC0C 02006230 */   andi      $v0, $v1, 0x2
    /* 2F410 8003EC10 06004010 */  beqz       $v0, .L8003EC2C
    /* 2F414 8003EC14 00000000 */   nop
    /* 2F418 8003EC18 7800028E */  lw         $v0, 0x78($s0)
    /* 2F41C 8003EC1C 1000A397 */  lhu        $v1, 0x10($sp)
    /* 2F420 8003EC20 02004294 */  lhu        $v0, 0x2($v0)
    /* 2F424 8003EC24 0FFB0008 */  j          .L8003EC3C
    /* 2F428 8003EC28 01006324 */   addiu     $v1, $v1, 0x1
  .L8003EC2C:
    /* 2F42C 8003EC2C 7800028E */  lw         $v0, 0x78($s0)
    /* 2F430 8003EC30 1000A397 */  lhu        $v1, 0x10($sp)
    /* 2F434 8003EC34 00004294 */  lhu        $v0, 0x0($v0)
    /* 2F438 8003EC38 FFFF6324 */  addiu      $v1, $v1, -0x1
  .L8003EC3C:
    /* 2F43C 8003EC3C 21104300 */  addu       $v0, $v0, $v1
    /* 2F440 8003EC40 1FFB0008 */  j          .L8003EC7C
    /* 2F444 8003EC44 1000A2A7 */   sh        $v0, 0x10($sp)
  .L8003EC48:
    /* 2F448 8003EC48 06004010 */  beqz       $v0, .L8003EC64
    /* 2F44C 8003EC4C 00000000 */   nop
    /* 2F450 8003EC50 7800028E */  lw         $v0, 0x78($s0)
    /* 2F454 8003EC54 1400A397 */  lhu        $v1, 0x14($sp)
    /* 2F458 8003EC58 06004294 */  lhu        $v0, 0x6($v0)
    /* 2F45C 8003EC5C 1DFB0008 */  j          .L8003EC74
    /* 2F460 8003EC60 01006324 */   addiu     $v1, $v1, 0x1
  .L8003EC64:
    /* 2F464 8003EC64 7800028E */  lw         $v0, 0x78($s0)
    /* 2F468 8003EC68 1400A397 */  lhu        $v1, 0x14($sp)
    /* 2F46C 8003EC6C 04004294 */  lhu        $v0, 0x4($v0)
    /* 2F470 8003EC70 FFFF6324 */  addiu      $v1, $v1, -0x1
  .L8003EC74:
    /* 2F474 8003EC74 21104300 */  addu       $v0, $v0, $v1
    /* 2F478 8003EC78 1400A2A7 */  sh         $v0, 0x14($sp)
  .L8003EC7C:
    /* 2F47C 8003EC7C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2F480 8003EC80 1200A297 */  lhu        $v0, 0x12($sp)
    /* 2F484 8003EC84 21280000 */  addu       $a1, $zero, $zero
    /* 2F488 8003EC88 68FF4224 */  addiu      $v0, $v0, -0x98
    /* 2F48C 8003EC8C 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 2F490 8003EC90 01000792 */  lbu        $a3, 0x1($s0)
    /* 2F494 8003EC94 A923010C */  jal        func_80048EA4
    /* 2F498 8003EC98 21300000 */   addu      $a2, $zero, $zero
    /* 2F49C 8003EC9C 16000486 */  lh         $a0, 0x16($s0)
    /* 2F4A0 8003ECA0 98004324 */  addiu      $v1, $v0, 0x98
    /* 2F4A4 8003ECA4 23108300 */  subu       $v0, $a0, $v1
    /* 2F4A8 8003ECA8 05004004 */  bltz       $v0, .L8003ECC0
    /* 2F4AC 8003ECAC 20004228 */   slti      $v0, $v0, 0x20
    /* 2F4B0 8003ECB0 07004014 */  bnez       $v0, .L8003ECD0
    /* 2F4B4 8003ECB4 00140300 */   sll       $v0, $v1, 16
    /* 2F4B8 8003ECB8 92FB0008 */  j          .L8003EE48
    /* 2F4BC 8003ECBC 00000000 */   nop
  .L8003ECC0:
    /* 2F4C0 8003ECC0 23106400 */  subu       $v0, $v1, $a0
    /* 2F4C4 8003ECC4 20004228 */  slti       $v0, $v0, 0x20
    /* 2F4C8 8003ECC8 5F004010 */  beqz       $v0, .L8003EE48
    /* 2F4CC 8003ECCC 00140300 */   sll       $v0, $v1, 16
  .L8003ECD0:
    /* 2F4D0 8003ECD0 160003A6 */  sh         $v1, 0x16($s0)
    /* 2F4D4 8003ECD4 200002AE */  sw         $v0, 0x20($s0)
    /* 2F4D8 8003ECD8 24010296 */  lhu        $v0, 0x124($s0)
    /* 2F4DC 8003ECDC 00000000 */  nop
    /* 2F4E0 8003ECE0 24102202 */  and        $v0, $s1, $v0
    /* 2F4E4 8003ECE4 5A004010 */  beqz       $v0, .L8003EE50
    /* 2F4E8 8003ECE8 21200002 */   addu      $a0, $s0, $zero
    /* 2F4EC 8003ECEC 1F000524 */  addiu      $a1, $zero, 0x1F
    /* 2F4F0 8003ECF0 21300000 */  addu       $a2, $zero, $zero
    /* 2F4F4 8003ECF4 0A008390 */  lbu        $v1, 0xA($a0)
    /* 2F4F8 8003ECF8 02000224 */  addiu      $v0, $zero, 0x2
    /* 2F4FC 8003ECFC 750082A0 */  sb         $v0, 0x75($a0)
    /* 2F500 8003ED00 740082A0 */  sb         $v0, 0x74($a0)
    /* 2F504 8003ED04 16008294 */  lhu        $v0, 0x16($a0)
    /* 2F508 8003ED08 2E008894 */  lhu        $t0, 0x2E($a0)
    /* 2F50C 8003ED0C 21380000 */  addu       $a3, $zero, $zero
    /* 2F510 8003ED10 760080A0 */  sb         $zero, 0x76($a0)
    /* 2F514 8003ED14 440080A4 */  sh         $zero, 0x44($a0)
    /* 2F518 8003ED18 480080A4 */  sh         $zero, 0x48($a0)
    /* 2F51C 8003ED1C 01006324 */  addiu      $v1, $v1, 0x1
    /* 2F520 8003ED20 23104800 */  subu       $v0, $v0, $t0
    /* 2F524 8003ED24 40110200 */  sll        $v0, $v0, 5
    /* 2F528 8003ED28 70FF4224 */  addiu      $v0, $v0, -0x90
    /* 2F52C 8003ED2C 0A0083A0 */  sb         $v1, 0xA($a0)
    /* 2F530 8003ED30 7707010C */  jal        func_80041DDC
    /* 2F534 8003ED34 460082A4 */   sh        $v0, 0x46($a0)
    /* 2F538 8003ED38 94FB0008 */  j          .L8003EE50
    /* 2F53C 8003ED3C 00000000 */   nop
  glabel .L8003ED40
    /* 2F540 8003ED40 21200002 */  addu       $a0, $s0, $zero
    /* 2F544 8003ED44 21280000 */  addu       $a1, $zero, $zero
    /* 2F548 8003ED48 46000686 */  lh         $a2, 0x46($s0)
    /* 2F54C 8003ED4C A407010C */  jal        func_80041E90
    /* 2F550 8003ED50 21380000 */   addu      $a3, $zero, $zero
    /* 2F554 8003ED54 A6000382 */  lb         $v1, 0xA6($s0)
    /* 2F558 8003ED58 01000224 */  addiu      $v0, $zero, 0x1
    /* 2F55C 8003ED5C 0D006210 */  beq        $v1, $v0, .L8003ED94
    /* 2F560 8003ED60 00000000 */   nop
    /* 2F564 8003ED64 94FB0008 */  j          .L8003EE50
    /* 2F568 8003ED68 00000000 */   nop
  glabel .L8003ED6C
    /* 2F56C 8003ED6C 21200002 */  addu       $a0, $s0, $zero
    /* 2F570 8003ED70 50000224 */  addiu      $v0, $zero, 0x50
    /* 2F574 8003ED74 440002A6 */  sh         $v0, 0x44($s0)
    /* 2F578 8003ED78 44000586 */  lh         $a1, 0x44($s0)
    /* 2F57C 8003ED7C 50FE0224 */  addiu      $v0, $zero, -0x1B0
    /* 2F580 8003ED80 460002A6 */  sh         $v0, 0x46($s0)
    /* 2F584 8003ED84 46000686 */  lh         $a2, 0x46($s0)
    /* 2F588 8003ED88 21380000 */  addu       $a3, $zero, $zero
    /* 2F58C 8003ED8C A407010C */  jal        func_80041E90
    /* 2F590 8003ED90 480000A6 */   sh        $zero, 0x48($s0)
  .L8003ED94:
    /* 2F594 8003ED94 0A000292 */  lbu        $v0, 0xA($s0)
  .L8003ED98:
    /* 2F598 8003ED98 00000000 */  nop
    /* 2F59C 8003ED9C 01004224 */  addiu      $v0, $v0, 0x1
    /* 2F5A0 8003EDA0 94FB0008 */  j          .L8003EE50
    /* 2F5A4 8003EDA4 0A0002A2 */   sb        $v0, 0xA($s0)
  glabel .L8003EDA8
    /* 2F5A8 8003EDA8 21200002 */  addu       $a0, $s0, $zero
    /* 2F5AC 8003EDAC 21380000 */  addu       $a3, $zero, $zero
    /* 2F5B0 8003EDB0 46000296 */  lhu        $v0, 0x46($s0)
    /* 2F5B4 8003EDB4 44000586 */  lh         $a1, 0x44($s0)
    /* 2F5B8 8003EDB8 30004224 */  addiu      $v0, $v0, 0x30
    /* 2F5BC 8003EDBC 00340200 */  sll        $a2, $v0, 16
    /* 2F5C0 8003EDC0 03340600 */  sra        $a2, $a2, 16
    /* 2F5C4 8003EDC4 A407010C */  jal        func_80041E90
    /* 2F5C8 8003EDC8 460002A6 */   sh        $v0, 0x46($s0)
    /* 2F5CC 8003EDCC 74000282 */  lb         $v0, 0x74($s0)
    /* 2F5D0 8003EDD0 00000000 */  nop
    /* 2F5D4 8003EDD4 0D004014 */  bnez       $v0, .L8003EE0C
    /* 2F5D8 8003EDD8 21200002 */   addu      $a0, $s0, $zero
    /* 2F5DC 8003EDDC 13000524 */  addiu      $a1, $zero, 0x13
    /* 2F5E0 8003EDE0 21300000 */  addu       $a2, $zero, $zero
    /* 2F5E4 8003EDE4 7707010C */  jal        func_80041DDC
    /* 2F5E8 8003EDE8 01000724 */   addiu     $a3, $zero, 0x1
    /* 2F5EC 8003EDEC 93000424 */  addiu      $a0, $zero, 0x93
    /* 2F5F0 8003EDF0 21280000 */  addu       $a1, $zero, $zero
    /* 2F5F4 8003EDF4 0268000C */  jal        Sound_call
    /* 2F5F8 8003EDF8 21300000 */   addu      $a2, $zero, $zero
    /* 2F5FC 8003EDFC 08000224 */  addiu      $v0, $zero, 0x8
    /* 2F600 8003EE00 090002A2 */  sb         $v0, 0x9($s0)
    /* 2F604 8003EE04 06000224 */  addiu      $v0, $zero, 0x6
    /* 2F608 8003EE08 0A0002A2 */  sb         $v0, 0xA($s0)
  .L8003EE0C:
    /* 2F60C 8003EE0C A7000382 */  lb         $v1, 0xA7($s0)
    /* 2F610 8003EE10 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2F614 8003EE14 0C006210 */  beq        $v1, $v0, .L8003EE48
    /* 2F618 8003EE18 00000000 */   nop
    /* 2F61C 8003EE1C 94FB0008 */  j          .L8003EE50
    /* 2F620 8003EE20 00000000 */   nop
  glabel .L8003EE24
    /* 2F624 8003EE24 21200002 */  addu       $a0, $s0, $zero
    /* 2F628 8003EE28 21300000 */  addu       $a2, $zero, $zero
    /* 2F62C 8003EE2C D6FF0224 */  addiu      $v0, $zero, -0x2A
    /* 2F630 8003EE30 440002A6 */  sh         $v0, 0x44($s0)
    /* 2F634 8003EE34 44000586 */  lh         $a1, 0x44($s0)
    /* 2F638 8003EE38 21380000 */  addu       $a3, $zero, $zero
    /* 2F63C 8003EE3C 460000A6 */  sh         $zero, 0x46($s0)
    /* 2F640 8003EE40 A407010C */  jal        func_80041E90
    /* 2F644 8003EE44 480000A6 */   sh        $zero, 0x48($s0)
  .L8003EE48:
    /* 2F648 8003EE48 9AFB000C */  jal        func_8003EE68
    /* 2F64C 8003EE4C 21200002 */   addu      $a0, $s0, $zero
  .L8003EE50:
    /* 2F650 8003EE50 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2F654 8003EE54 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2F658 8003EE58 1800B08F */  lw         $s0, 0x18($sp)
    /* 2F65C 8003EE5C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2F660 8003EE60 0800E003 */  jr         $ra
    /* 2F664 8003EE64 00000000 */   nop
.size func_8003EB08, . - func_8003EB08
