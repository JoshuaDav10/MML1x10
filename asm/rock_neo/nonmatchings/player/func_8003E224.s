.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003E224
    /* 2EA24 8003E224 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2EA28 8003E228 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2EA2C 8003E22C 21808000 */  addu       $s0, $a0, $zero
    /* 2EA30 8003E230 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2EA34 8003E234 0A000392 */  lbu        $v1, 0xA($s0)
    /* 2EA38 8003E238 00000000 */  nop
    /* 2EA3C 8003E23C 0500622C */  sltiu      $v0, $v1, 0x5
    /* 2EA40 8003E240 8F004010 */  beqz       $v0, .L8003E480
    /* 2EA44 8003E244 80100300 */   sll       $v0, $v1, 2
    /* 2EA48 8003E248 0180013C */  lui        $at, %hi(jtbl_80010BE4)
    /* 2EA4C 8003E24C 21082200 */  addu       $at, $at, $v0
    /* 2EA50 8003E250 E40B228C */  lw         $v0, %lo(jtbl_80010BE4)($at)
    /* 2EA54 8003E254 00000000 */  nop
    /* 2EA58 8003E258 08004000 */  jr         $v0
    /* 2EA5C 8003E25C 00000000 */   nop
  glabel .L8003E260
    /* 2EA60 8003E260 A7000382 */  lb         $v1, 0xA7($s0)
    /* 2EA64 8003E264 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2EA68 8003E268 100102A2 */  sb         $v0, 0x110($s0)
    /* 2EA6C 8003E26C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2EA70 8003E270 88006214 */  bne        $v1, $v0, .L8003E494
    /* 2EA74 8003E274 01000224 */   addiu     $v0, $zero, 0x1
    /* 2EA78 8003E278 740002A2 */  sb         $v0, 0x74($s0)
    /* 2EA7C 8003E27C 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2EA80 8003E280 0B000392 */  lbu        $v1, 0xB($s0)
    /* 2EA84 8003E284 440000A6 */  sh         $zero, 0x44($s0)
    /* 2EA88 8003E288 460000A6 */  sh         $zero, 0x46($s0)
    /* 2EA8C 8003E28C 01004224 */  addiu      $v0, $v0, 0x1
    /* 2EA90 8003E290 06006010 */  beqz       $v1, .L8003E2AC
    /* 2EA94 8003E294 0A0002A2 */   sb        $v0, 0xA($s0)
    /* 2EA98 8003E298 00FE0224 */  addiu      $v0, $zero, -0x200
    /* 2EA9C 8003E29C 480002A6 */  sh         $v0, 0x48($s0)
    /* 2EAA0 8003E2A0 21200002 */  addu       $a0, $s0, $zero
    /* 2EAA4 8003E2A4 AFF80008 */  j          .L8003E2BC
    /* 2EAA8 8003E2A8 18000524 */   addiu     $a1, $zero, 0x18
  .L8003E2AC:
    /* 2EAAC 8003E2AC 00020224 */  addiu      $v0, $zero, 0x200
    /* 2EAB0 8003E2B0 480002A6 */  sh         $v0, 0x48($s0)
    /* 2EAB4 8003E2B4 21200002 */  addu       $a0, $s0, $zero
    /* 2EAB8 8003E2B8 19000524 */  addiu      $a1, $zero, 0x19
  .L8003E2BC:
    /* 2EABC 8003E2BC 21300000 */  addu       $a2, $zero, $zero
    /* 2EAC0 8003E2C0 7707010C */  jal        func_80041DDC
    /* 2EAC4 8003E2C4 01000724 */   addiu     $a3, $zero, 0x1
    /* 2EAC8 8003E2C8 92000424 */  addiu      $a0, $zero, 0x92
    /* 2EACC 8003E2CC 21280000 */  addu       $a1, $zero, $zero
    /* 2EAD0 8003E2D0 0268000C */  jal        Sound_call
    /* 2EAD4 8003E2D4 21300000 */   addu      $a2, $zero, $zero
    /* 2EAD8 8003E2D8 25F90008 */  j          .L8003E494
    /* 2EADC 8003E2DC 00000000 */   nop
  glabel .L8003E2E0
    /* 2EAE0 8003E2E0 A7000382 */  lb         $v1, 0xA7($s0)
    /* 2EAE4 8003E2E4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2EAE8 8003E2E8 33006214 */  bne        $v1, $v0, .L8003E3B8
    /* 2EAEC 8003E2EC 01000224 */   addiu     $v0, $zero, 0x1
    /* 2EAF0 8003E2F0 00020224 */  addiu      $v0, $zero, 0x200
    /* 2EAF4 8003E2F4 440002A6 */  sh         $v0, 0x44($s0)
    /* 2EAF8 8003E2F8 80FF0224 */  addiu      $v0, $zero, -0x80
    /* 2EAFC 8003E2FC 460002A6 */  sh         $v0, 0x46($s0)
    /* 2EB00 8003E300 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2EB04 8003E304 0B000392 */  lbu        $v1, 0xB($s0)
    /* 2EB08 8003E308 480000A6 */  sh         $zero, 0x48($s0)
    /* 2EB0C 8003E30C 01004224 */  addiu      $v0, $v0, 0x1
    /* 2EB10 8003E310 05006010 */  beqz       $v1, .L8003E328
    /* 2EB14 8003E314 0A0002A2 */   sb        $v0, 0xA($s0)
    /* 2EB18 8003E318 03000224 */  addiu      $v0, $zero, 0x3
    /* 2EB1C 8003E31C 120102A2 */  sb         $v0, 0x112($s0)
    /* 2EB20 8003E320 CDF80008 */  j          .L8003E334
    /* 2EB24 8003E324 00FC0224 */   addiu     $v0, $zero, -0x400
  .L8003E328:
    /* 2EB28 8003E328 01000224 */  addiu      $v0, $zero, 0x1
    /* 2EB2C 8003E32C 120102A2 */  sb         $v0, 0x112($s0)
    /* 2EB30 8003E330 00040224 */  addiu      $v0, $zero, 0x400
  .L8003E334:
    /* 2EB34 8003E334 160102A6 */  sh         $v0, 0x116($s0)
    /* 2EB38 8003E338 21200002 */  addu       $a0, $s0, $zero
    /* 2EB3C 8003E33C 1A000524 */  addiu      $a1, $zero, 0x1A
    /* 2EB40 8003E340 21300000 */  addu       $a2, $zero, $zero
    /* 2EB44 8003E344 7707010C */  jal        func_80041DDC
    /* 2EB48 8003E348 01000724 */   addiu     $a3, $zero, 0x1
    /* 2EB4C 8003E34C EEF80008 */  j          .L8003E3B8
    /* 2EB50 8003E350 01000224 */   addiu     $v0, $zero, 0x1
  glabel .L8003E354
    /* 2EB54 8003E354 46000296 */  lhu        $v0, 0x46($s0)
    /* 2EB58 8003E358 A7000382 */  lb         $v1, 0xA7($s0)
    /* 2EB5C 8003E35C 30004224 */  addiu      $v0, $v0, 0x30
    /* 2EB60 8003E360 460002A6 */  sh         $v0, 0x46($s0)
    /* 2EB64 8003E364 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2EB68 8003E368 13006214 */  bne        $v1, $v0, .L8003E3B8
    /* 2EB6C 8003E36C 01000224 */   addiu     $v0, $zero, 0x1
    /* 2EB70 8003E370 74000282 */  lb         $v0, 0x74($s0)
    /* 2EB74 8003E374 00000000 */  nop
    /* 2EB78 8003E378 07004010 */  beqz       $v0, .L8003E398
    /* 2EB7C 8003E37C 100100A2 */   sb        $zero, 0x110($s0)
    /* 2EB80 8003E380 21200002 */  addu       $a0, $s0, $zero
    /* 2EB84 8003E384 1C000524 */  addiu      $a1, $zero, 0x1C
    /* 2EB88 8003E388 21300000 */  addu       $a2, $zero, $zero
    /* 2EB8C 8003E38C 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2EB90 8003E390 FBF80008 */  j          .L8003E3EC
    /* 2EB94 8003E394 01000724 */   addiu     $a3, $zero, 0x1
  .L8003E398:
    /* 2EB98 8003E398 21200002 */  addu       $a0, $s0, $zero
    /* 2EB9C 8003E39C 1B000524 */  addiu      $a1, $zero, 0x1B
    /* 2EBA0 8003E3A0 21300000 */  addu       $a2, $zero, $zero
    /* 2EBA4 8003E3A4 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2EBA8 8003E3A8 01000724 */  addiu      $a3, $zero, 0x1
    /* 2EBAC 8003E3AC 460000A6 */  sh         $zero, 0x46($s0)
    /* 2EBB0 8003E3B0 FCF80008 */  j          .L8003E3F0
    /* 2EBB4 8003E3B4 02004224 */   addiu     $v0, $v0, 0x2
  .L8003E3B8:
    /* 2EBB8 8003E3B8 20F90008 */  j          .L8003E480
    /* 2EBBC 8003E3BC 740002A2 */   sb        $v0, 0x74($s0)
  glabel .L8003E3C0
    /* 2EBC0 8003E3C0 46000296 */  lhu        $v0, 0x46($s0)
    /* 2EBC4 8003E3C4 74000382 */  lb         $v1, 0x74($s0)
    /* 2EBC8 8003E3C8 30004224 */  addiu      $v0, $v0, 0x30
    /* 2EBCC 8003E3CC 0C006014 */  bnez       $v1, .L8003E400
    /* 2EBD0 8003E3D0 460002A6 */   sh        $v0, 0x46($s0)
    /* 2EBD4 8003E3D4 21200002 */  addu       $a0, $s0, $zero
    /* 2EBD8 8003E3D8 1B000524 */  addiu      $a1, $zero, 0x1B
    /* 2EBDC 8003E3DC A4000692 */  lbu        $a2, 0xA4($s0)
    /* 2EBE0 8003E3E0 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2EBE4 8003E3E4 01000724 */  addiu      $a3, $zero, 0x1
    /* 2EBE8 8003E3E8 460000A6 */  sh         $zero, 0x46($s0)
  .L8003E3EC:
    /* 2EBEC 8003E3EC 01004224 */  addiu      $v0, $v0, 0x1
  .L8003E3F0:
    /* 2EBF0 8003E3F0 7707010C */  jal        func_80041DDC
    /* 2EBF4 8003E3F4 0A0002A2 */   sb        $v0, 0xA($s0)
    /* 2EBF8 8003E3F8 20F90008 */  j          .L8003E480
    /* 2EBFC 8003E3FC 00000000 */   nop
  .L8003E400:
    /* 2EC00 8003E400 A7000382 */  lb         $v1, 0xA7($s0)
    /* 2EC04 8003E404 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2EC08 8003E408 1D006214 */  bne        $v1, $v0, .L8003E480
    /* 2EC0C 8003E40C 21200002 */   addu      $a0, $s0, $zero
    /* 2EC10 8003E410 12000524 */  addiu      $a1, $zero, 0x12
    /* 2EC14 8003E414 21300000 */  addu       $a2, $zero, $zero
    /* 2EC18 8003E418 7707010C */  jal        func_80041DDC
    /* 2EC1C 8003E41C 01000724 */   addiu     $a3, $zero, 0x1
    /* 2EC20 8003E420 07000224 */  addiu      $v0, $zero, 0x7
    /* 2EC24 8003E424 090002A2 */  sb         $v0, 0x9($s0)
    /* 2EC28 8003E428 05000224 */  addiu      $v0, $zero, 0x5
    /* 2EC2C 8003E42C 20F90008 */  j          .L8003E480
    /* 2EC30 8003E430 0A0002A2 */   sb        $v0, 0xA($s0)
  glabel .L8003E434
    /* 2EC34 8003E434 A6000382 */  lb         $v1, 0xA6($s0)
    /* 2EC38 8003E438 01000224 */  addiu      $v0, $zero, 0x1
    /* 2EC3C 8003E43C 10006214 */  bne        $v1, $v0, .L8003E480
    /* 2EC40 8003E440 00000000 */   nop
    /* 2EC44 8003E444 0B000292 */  lbu        $v0, 0xB($s0)
    /* 2EC48 8003E448 00000000 */  nop
    /* 2EC4C 8003E44C 02004014 */  bnez       $v0, .L8003E458
    /* 2EC50 8003E450 C0000224 */   addiu     $v0, $zero, 0xC0
    /* 2EC54 8003E454 40FF0224 */  addiu      $v0, $zero, -0xC0
  .L8003E458:
    /* 2EC58 8003E458 480002A6 */  sh         $v0, 0x48($s0)
    /* 2EC5C 8003E45C 93000424 */  addiu      $a0, $zero, 0x93
    /* 2EC60 8003E460 21280000 */  addu       $a1, $zero, $zero
    /* 2EC64 8003E464 0268000C */  jal        Sound_call
    /* 2EC68 8003E468 21300000 */   addu      $a2, $zero, $zero
    /* 2EC6C 8003E46C 08000224 */  addiu      $v0, $zero, 0x8
    /* 2EC70 8003E470 090002A2 */  sb         $v0, 0x9($s0)
    /* 2EC74 8003E474 06000224 */  addiu      $v0, $zero, 0x6
    /* 2EC78 8003E478 25F90008 */  j          .L8003E494
    /* 2EC7C 8003E47C 0A0002A2 */   sb        $v0, 0xA($s0)
  .L8003E480:
    /* 2EC80 8003E480 44000586 */  lh         $a1, 0x44($s0)
    /* 2EC84 8003E484 46000686 */  lh         $a2, 0x46($s0)
    /* 2EC88 8003E488 48000786 */  lh         $a3, 0x48($s0)
    /* 2EC8C 8003E48C A407010C */  jal        func_80041E90
    /* 2EC90 8003E490 21200002 */   addu      $a0, $s0, $zero
  .L8003E494:
    /* 2EC94 8003E494 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2EC98 8003E498 1000B08F */  lw         $s0, 0x10($sp)
    /* 2EC9C 8003E49C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2ECA0 8003E4A0 0800E003 */  jr         $ra
    /* 2ECA4 8003E4A4 00000000 */   nop
.size func_8003E224, . - func_8003E224
