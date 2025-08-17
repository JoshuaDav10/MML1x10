.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003D1E0
    /* 2D9E0 8003D1E0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2D9E4 8003D1E4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2D9E8 8003D1E8 21808000 */  addu       $s0, $a0, $zero
    /* 2D9EC 8003D1EC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2D9F0 8003D1F0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2D9F4 8003D1F4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2D9F8 8003D1F8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2D9FC 8003D1FC 0A000392 */  lbu        $v1, 0xA($s0)
    /* 2DA00 8003D200 1C011296 */  lhu        $s2, 0x11C($s0)
    /* 2DA04 8003D204 1E011396 */  lhu        $s3, 0x11E($s0)
    /* 2DA08 8003D208 0600622C */  sltiu      $v0, $v1, 0x6
    /* 2DA0C 8003D20C 09014010 */  beqz       $v0, .L8003D634
    /* 2DA10 8003D210 80100300 */   sll       $v0, $v1, 2
    /* 2DA14 8003D214 0180013C */  lui        $at, %hi(jtbl_80010B8C)
    /* 2DA18 8003D218 21082200 */  addu       $at, $at, $v0
    /* 2DA1C 8003D21C 8C0B228C */  lw         $v0, %lo(jtbl_80010B8C)($at)
    /* 2DA20 8003D220 00000000 */  nop
    /* 2DA24 8003D224 08004000 */  jr         $v0
    /* 2DA28 8003D228 00000000 */   nop
  glabel .L8003D22C
    /* 2DA2C 8003D22C 21200002 */  addu       $a0, $s0, $zero
    /* 2DA30 8003D230 38000524 */  addiu      $a1, $zero, 0x38
    /* 2DA34 8003D234 21300000 */  addu       $a2, $zero, $zero
    /* 2DA38 8003D238 74010292 */  lbu        $v0, 0x174($s0)
    /* 2DA3C 8003D23C 21380000 */  addu       $a3, $zero, $zero
    /* 2DA40 8003D240 04004234 */  ori        $v0, $v0, 0x4
    /* 2DA44 8003D244 7707010C */  jal        func_80041DDC
    /* 2DA48 8003D248 740102A2 */   sb        $v0, 0x174($s0)
    /* 2DA4C 8003D24C 4A040292 */  lbu        $v0, 0x44A($s0)
    /* 2DA50 8003D250 0A000392 */  lbu        $v1, 0xA($s0)
    /* 2DA54 8003D254 01004224 */  addiu      $v0, $v0, 0x1
    /* 2DA58 8003D258 02006324 */  addiu      $v1, $v1, 0x2
    /* 2DA5C 8003D25C 4A0402A2 */  sb         $v0, 0x44A($s0)
    /* 2DA60 8003D260 8DF50008 */  j          .L8003D634
    /* 2DA64 8003D264 0A0003A2 */   sb        $v1, 0xA($s0)
  glabel .L8003D268
    /* 2DA68 8003D268 28010296 */  lhu        $v0, 0x128($s0)
    /* 2DA6C 8003D26C 00000000 */  nop
    /* 2DA70 8003D270 24104202 */  and        $v0, $s2, $v0
    /* 2DA74 8003D274 0A004010 */  beqz       $v0, .L8003D2A0
    /* 2DA78 8003D278 00000000 */   nop
    /* 2DA7C 8003D27C 86C5000C */  jal        func_80031618
    /* 2DA80 8003D280 00000000 */   nop
    /* 2DA84 8003D284 21284000 */  addu       $a1, $v0, $zero
    /* 2DA88 8003D288 0500A010 */  beqz       $a1, .L8003D2A0
    /* 2DA8C 8003D28C 01000224 */   addiu     $v0, $zero, 0x1
    /* 2DA90 8003D290 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 2DA94 8003D294 89000224 */  addiu      $v0, $zero, 0x89
    /* 2DA98 8003D298 0200A2A0 */  sb         $v0, 0x2($a1)
    /* 2DA9C 8003D29C 0300A0A0 */  sb         $zero, 0x3($a1)
  .L8003D2A0:
    /* 2DAA0 8003D2A0 2A010296 */  lhu        $v0, 0x12A($s0)
    /* 2DAA4 8003D2A4 00000000 */  nop
    /* 2DAA8 8003D2A8 24104202 */  and        $v0, $s2, $v0
    /* 2DAAC 8003D2AC 0A004010 */  beqz       $v0, .L8003D2D8
    /* 2DAB0 8003D2B0 00000000 */   nop
    /* 2DAB4 8003D2B4 86C5000C */  jal        func_80031618
    /* 2DAB8 8003D2B8 00000000 */   nop
    /* 2DABC 8003D2BC 21284000 */  addu       $a1, $v0, $zero
    /* 2DAC0 8003D2C0 0500A010 */  beqz       $a1, .L8003D2D8
    /* 2DAC4 8003D2C4 01000324 */   addiu     $v1, $zero, 0x1
    /* 2DAC8 8003D2C8 89000224 */  addiu      $v0, $zero, 0x89
    /* 2DACC 8003D2CC 0000A3A0 */  sb         $v1, 0x0($a1)
    /* 2DAD0 8003D2D0 0200A2A0 */  sb         $v0, 0x2($a1)
    /* 2DAD4 8003D2D4 0300A3A0 */  sb         $v1, 0x3($a1)
  .L8003D2D8:
    /* 2DAD8 8003D2D8 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2DADC 8003D2DC 00000000 */  nop
    /* 2DAE0 8003D2E0 01004224 */  addiu      $v0, $v0, 0x1
    /* 2DAE4 8003D2E4 0A0002A2 */  sb         $v0, 0xA($s0)
  glabel .L8003D2E8
    /* 2DAE8 8003D2E8 A6000282 */  lb         $v0, 0xA6($s0)
    /* 2DAEC 8003D2EC 00000000 */  nop
    /* 2DAF0 8003D2F0 06004014 */  bnez       $v0, .L8003D30C
    /* 2DAF4 8003D2F4 03000224 */   addiu     $v0, $zero, 0x3
    /* 2DAF8 8003D2F8 4A040292 */  lbu        $v0, 0x44A($s0)
    /* 2DAFC 8003D2FC 00000000 */  nop
    /* 2DB00 8003D300 01004224 */  addiu      $v0, $v0, 0x1
    /* 2DB04 8003D304 8DF50008 */  j          .L8003D634
    /* 2DB08 8003D308 4A0402A2 */   sb        $v0, 0x44A($s0)
  .L8003D30C:
    /* 2DB0C 8003D30C 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 2DB10 8003D310 40030224 */  addiu      $v0, $zero, 0x340
    /* 2DB14 8003D314 440002A6 */  sh         $v0, 0x44($s0)
  glabel .L8003D318
    /* 2DB18 8003D318 A7000382 */  lb         $v1, 0xA7($s0)
    /* 2DB1C 8003D31C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2DB20 8003D320 07006210 */  beq        $v1, $v0, .L8003D340
    /* 2DB24 8003D324 21200002 */   addu      $a0, $s0, $zero
    /* 2DB28 8003D328 44000586 */  lh         $a1, 0x44($s0)
    /* 2DB2C 8003D32C 21300000 */  addu       $a2, $zero, $zero
    /* 2DB30 8003D330 A407010C */  jal        func_80041E90
    /* 2DB34 8003D334 21380000 */   addu      $a3, $zero, $zero
    /* 2DB38 8003D338 8DF50008 */  j          .L8003D634
    /* 2DB3C 8003D33C 00000000 */   nop
  .L8003D340:
    /* 2DB40 8003D340 8C000424 */  addiu      $a0, $zero, 0x8C
    /* 2DB44 8003D344 21280000 */  addu       $a1, $zero, $zero
    /* 2DB48 8003D348 0268000C */  jal        Sound_call
    /* 2DB4C 8003D34C 21300000 */   addu      $a2, $zero, $zero
    /* 2DB50 8003D350 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2DB54 8003D354 00000000 */  nop
    /* 2DB58 8003D358 01004224 */  addiu      $v0, $v0, 0x1
    /* 2DB5C 8003D35C 0A0002A2 */  sb         $v0, 0xA($s0)
  glabel .L8003D360
    /* 2DB60 8003D360 24010396 */  lhu        $v1, 0x124($s0)
    /* 2DB64 8003D364 26010296 */  lhu        $v0, 0x126($s0)
    /* 2DB68 8003D368 00000000 */  nop
    /* 2DB6C 8003D36C 25106200 */  or         $v0, $v1, $v0
    /* 2DB70 8003D370 24104202 */  and        $v0, $s2, $v0
    /* 2DB74 8003D374 22004010 */  beqz       $v0, .L8003D400
    /* 2DB78 8003D378 24107200 */   and       $v0, $v1, $s2
    /* 2DB7C 8003D37C 09004010 */  beqz       $v0, .L8003D3A4
    /* 2DB80 8003D380 21200002 */   addu      $a0, $s0, $zero
    /* 2DB84 8003D384 10000524 */  addiu      $a1, $zero, 0x10
    /* 2DB88 8003D388 1108010C */  jal        func_80042044
    /* 2DB8C 8003D38C 10000624 */   addiu     $a2, $zero, 0x10
    /* 2DB90 8003D390 21884000 */  addu       $s1, $v0, $zero
    /* 2DB94 8003D394 00040224 */  addiu      $v0, $zero, 0x400
    /* 2DB98 8003D398 440002A6 */  sh         $v0, 0x44($s0)
    /* 2DB9C 8003D39C 08F50008 */  j          .L8003D420
    /* 2DBA0 8003D3A0 C0000224 */   addiu     $v0, $zero, 0xC0
  .L8003D3A4:
    /* 2DBA4 8003D3A4 20000524 */  addiu      $a1, $zero, 0x20
    /* 2DBA8 8003D3A8 1108010C */  jal        func_80042044
    /* 2DBAC 8003D3AC 20000624 */   addiu     $a2, $zero, 0x20
    /* 2DBB0 8003D3B0 21884000 */  addu       $s1, $v0, $zero
    /* 2DBB4 8003D3B4 80020224 */  addiu      $v0, $zero, 0x280
    /* 2DBB8 8003D3B8 440002A6 */  sh         $v0, 0x44($s0)
    /* 2DBBC 8003D3BC 40010224 */  addiu      $v0, $zero, 0x140
    /* 2DBC0 8003D3C0 86C5000C */  jal        func_80031618
    /* 2DBC4 8003D3C4 480002A6 */   sh        $v0, 0x48($s0)
    /* 2DBC8 8003D3C8 21284000 */  addu       $a1, $v0, $zero
    /* 2DBCC 8003D3CC 0300A010 */  beqz       $a1, .L8003D3DC
    /* 2DBD0 8003D3D0 21200002 */   addu      $a0, $s0, $zero
    /* 2DBD4 8003D3D4 4A09010C */  jal        func_80042528
    /* 2DBD8 8003D3D8 01000624 */   addiu     $a2, $zero, 0x1
  .L8003D3DC:
    /* 2DBDC 8003D3DC 86C5000C */  jal        func_80031618
    /* 2DBE0 8003D3E0 00000000 */   nop
    /* 2DBE4 8003D3E4 21284000 */  addu       $a1, $v0, $zero
    /* 2DBE8 8003D3E8 0E00A010 */  beqz       $a1, .L8003D424
    /* 2DBEC 8003D3EC 21200002 */   addu      $a0, $s0, $zero
    /* 2DBF0 8003D3F0 4A09010C */  jal        func_80042528
    /* 2DBF4 8003D3F4 02000624 */   addiu     $a2, $zero, 0x2
    /* 2DBF8 8003D3F8 09F50008 */  j          .L8003D424
    /* 2DBFC 8003D3FC 00000000 */   nop
  .L8003D400:
    /* 2DC00 8003D400 21200002 */  addu       $a0, $s0, $zero
    /* 2DC04 8003D404 18000524 */  addiu      $a1, $zero, 0x18
    /* 2DC08 8003D408 1108010C */  jal        func_80042044
    /* 2DC0C 8003D40C 18000624 */   addiu     $a2, $zero, 0x18
    /* 2DC10 8003D410 21884000 */  addu       $s1, $v0, $zero
    /* 2DC14 8003D414 40030224 */  addiu      $v0, $zero, 0x340
    /* 2DC18 8003D418 440002A6 */  sh         $v0, 0x44($s0)
    /* 2DC1C 8003D41C 00010224 */  addiu      $v0, $zero, 0x100
  .L8003D420:
    /* 2DC20 8003D420 480002A6 */  sh         $v0, 0x48($s0)
  .L8003D424:
    /* 2DC24 8003D424 2C010296 */  lhu        $v0, 0x12C($s0)
    /* 2DC28 8003D428 2E010496 */  lhu        $a0, 0x12E($s0)
    /* 2DC2C 8003D42C 00000000 */  nop
    /* 2DC30 8003D430 25104400 */  or         $v0, $v0, $a0
    /* 2DC34 8003D434 24184202 */  and        $v1, $s2, $v0
    /* 2DC38 8003D438 20006010 */  beqz       $v1, .L8003D4BC
    /* 2DC3C 8003D43C 00000000 */   nop
    /* 2DC40 8003D440 1E006210 */  beq        $v1, $v0, .L8003D4BC
    /* 2DC44 8003D444 24109200 */   and       $v0, $a0, $s2
    /* 2DC48 8003D448 0F004010 */  beqz       $v0, .L8003D488
    /* 2DC4C 8003D44C 00000000 */   nop
    /* 2DC50 8003D450 02002016 */  bnez       $s1, .L8003D45C
    /* 2DC54 8003D454 00000000 */   nop
    /* 2DC58 8003D458 01001124 */  addiu      $s1, $zero, 0x1
  .L8003D45C:
    /* 2DC5C 8003D45C 48000296 */  lhu        $v0, 0x48($s0)
    /* 2DC60 8003D460 28010396 */  lhu        $v1, 0x128($s0)
    /* 2DC64 8003D464 2A010496 */  lhu        $a0, 0x12A($s0)
    /* 2DC68 8003D468 23100200 */  negu       $v0, $v0
    /* 2DC6C 8003D46C 25186400 */  or         $v1, $v1, $a0
    /* 2DC70 8003D470 24184302 */  and        $v1, $s2, $v1
    /* 2DC74 8003D474 12006014 */  bnez       $v1, .L8003D4C0
    /* 2DC78 8003D478 480002A6 */   sh        $v0, 0x48($s0)
    /* 2DC7C 8003D47C 40000224 */  addiu      $v0, $zero, 0x40
    /* 2DC80 8003D480 30F50008 */  j          .L8003D4C0
    /* 2DC84 8003D484 B40002A6 */   sh        $v0, 0xB4($s0)
  .L8003D488:
    /* 2DC88 8003D488 02002016 */  bnez       $s1, .L8003D494
    /* 2DC8C 8003D48C 00000000 */   nop
    /* 2DC90 8003D490 02001124 */  addiu      $s1, $zero, 0x2
  .L8003D494:
    /* 2DC94 8003D494 28010296 */  lhu        $v0, 0x128($s0)
    /* 2DC98 8003D498 2A010396 */  lhu        $v1, 0x12A($s0)
    /* 2DC9C 8003D49C 00000000 */  nop
    /* 2DCA0 8003D4A0 25104300 */  or         $v0, $v0, $v1
    /* 2DCA4 8003D4A4 24104202 */  and        $v0, $s2, $v0
    /* 2DCA8 8003D4A8 06004014 */  bnez       $v0, .L8003D4C4
    /* 2DCAC 8003D4AC 01000224 */   addiu     $v0, $zero, 0x1
    /* 2DCB0 8003D4B0 C0FF0224 */  addiu      $v0, $zero, -0x40
    /* 2DCB4 8003D4B4 30F50008 */  j          .L8003D4C0
    /* 2DCB8 8003D4B8 B40002A6 */   sh        $v0, 0xB4($s0)
  .L8003D4BC:
    /* 2DCBC 8003D4BC 480000A6 */  sh         $zero, 0x48($s0)
  .L8003D4C0:
    /* 2DCC0 8003D4C0 01000224 */  addiu      $v0, $zero, 0x1
  .L8003D4C4:
    /* 2DCC4 8003D4C4 12002212 */  beq        $s1, $v0, .L8003D510
    /* 2DCC8 8003D4C8 0200222A */   slti      $v0, $s1, 0x2
    /* 2DCCC 8003D4CC 05004010 */  beqz       $v0, .L8003D4E4
    /* 2DCD0 8003D4D0 00000000 */   nop
    /* 2DCD4 8003D4D4 08002012 */  beqz       $s1, .L8003D4F8
    /* 2DCD8 8003D4D8 21200002 */   addu      $a0, $s0, $zero
    /* 2DCDC 8003D4DC 58F50008 */  j          .L8003D560
    /* 2DCE0 8003D4E0 00000000 */   nop
  .L8003D4E4:
    /* 2DCE4 8003D4E4 02000224 */  addiu      $v0, $zero, 0x2
    /* 2DCE8 8003D4E8 11002212 */  beq        $s1, $v0, .L8003D530
    /* 2DCEC 8003D4EC 21200002 */   addu      $a0, $s0, $zero
    /* 2DCF0 8003D4F0 58F50008 */  j          .L8003D560
    /* 2DCF4 8003D4F4 00000000 */   nop
  .L8003D4F8:
    /* 2DCF8 8003D4F8 39000524 */  addiu      $a1, $zero, 0x39
    /* 2DCFC 8003D4FC 21300000 */  addu       $a2, $zero, $zero
    /* 2DD00 8003D500 7707010C */  jal        func_80041DDC
    /* 2DD04 8003D504 21380000 */   addu      $a3, $zero, $zero
    /* 2DD08 8003D508 55F50008 */  j          .L8003D554
    /* 2DD0C 8003D50C 8F000424 */   addiu     $a0, $zero, 0x8F
  .L8003D510:
    /* 2DD10 8003D510 21200002 */  addu       $a0, $s0, $zero
    /* 2DD14 8003D514 3C000524 */  addiu      $a1, $zero, 0x3C
    /* 2DD18 8003D518 21300000 */  addu       $a2, $zero, $zero
    /* 2DD1C 8003D51C 7707010C */  jal        func_80041DDC
    /* 2DD20 8003D520 21380000 */   addu      $a3, $zero, $zero
    /* 2DD24 8003D524 28010296 */  lhu        $v0, 0x128($s0)
    /* 2DD28 8003D528 53F50008 */  j          .L8003D54C
    /* 2DD2C 8003D52C 24104202 */   and       $v0, $s2, $v0
  .L8003D530:
    /* 2DD30 8003D530 3D000524 */  addiu      $a1, $zero, 0x3D
    /* 2DD34 8003D534 21300000 */  addu       $a2, $zero, $zero
    /* 2DD38 8003D538 7707010C */  jal        func_80041DDC
    /* 2DD3C 8003D53C 21380000 */   addu      $a3, $zero, $zero
    /* 2DD40 8003D540 2A010296 */  lhu        $v0, 0x12A($s0)
    /* 2DD44 8003D544 00000000 */  nop
    /* 2DD48 8003D548 24104202 */  and        $v0, $s2, $v0
  .L8003D54C:
    /* 2DD4C 8003D54C 04004010 */  beqz       $v0, .L8003D560
    /* 2DD50 8003D550 8F000424 */   addiu     $a0, $zero, 0x8F
  .L8003D554:
    /* 2DD54 8003D554 21280000 */  addu       $a1, $zero, $zero
    /* 2DD58 8003D558 0268000C */  jal        Sound_call
    /* 2DD5C 8003D55C 21300000 */   addu      $a2, $zero, $zero
  .L8003D560:
    /* 2DD60 8003D560 21200002 */  addu       $a0, $s0, $zero
    /* 2DD64 8003D564 44000586 */  lh         $a1, 0x44($s0)
    /* 2DD68 8003D568 48000786 */  lh         $a3, 0x48($s0)
    /* 2DD6C 8003D56C A407010C */  jal        func_80041E90
    /* 2DD70 8003D570 21300000 */   addu      $a2, $zero, $zero
    /* 2DD74 8003D574 34010296 */  lhu        $v0, 0x134($s0)
    /* 2DD78 8003D578 01000324 */  addiu      $v1, $zero, 0x1
    /* 2DD7C 8003D57C 24104202 */  and        $v0, $s2, $v0
    /* 2DD80 8003D580 06004010 */  beqz       $v0, .L8003D59C
    /* 2DD84 8003D584 4D0403A2 */   sb        $v1, 0x44D($s0)
    /* 2DD88 8003D588 6B010292 */  lbu        $v0, 0x16B($s0)
    /* 2DD8C 8003D58C 00000000 */  nop
    /* 2DD90 8003D590 02004230 */  andi       $v0, $v0, 0x2
    /* 2DD94 8003D594 27004014 */  bnez       $v0, .L8003D634
    /* 2DD98 8003D598 00000000 */   nop
  .L8003D59C:
    /* 2DD9C 8003D59C 8E000424 */  addiu      $a0, $zero, 0x8E
    /* 2DDA0 8003D5A0 21280000 */  addu       $a1, $zero, $zero
    /* 2DDA4 8003D5A4 0268000C */  jal        Sound_call
    /* 2DDA8 8003D5A8 21300000 */   addu      $a2, $zero, $zero
    /* 2DDAC 8003D5AC 8F000424 */  addiu      $a0, $zero, 0x8F
    /* 2DDB0 8003D5B0 21280000 */  addu       $a1, $zero, $zero
    /* 2DDB4 8003D5B4 0268000C */  jal        Sound_call
    /* 2DDB8 8003D5B8 21300000 */   addu      $a2, $zero, $zero
    /* 2DDBC 8003D5BC 21200002 */  addu       $a0, $s0, $zero
    /* 2DDC0 8003D5C0 3A000524 */  addiu      $a1, $zero, 0x3A
    /* 2DDC4 8003D5C4 21300000 */  addu       $a2, $zero, $zero
    /* 2DDC8 8003D5C8 7707010C */  jal        func_80041DDC
    /* 2DDCC 8003D5CC 21380000 */   addu      $a3, $zero, $zero
    /* 2DDD0 8003D5D0 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2DDD4 8003D5D4 00000000 */  nop
    /* 2DDD8 8003D5D8 01004224 */  addiu      $v0, $v0, 0x1
    /* 2DDDC 8003D5DC 8DF50008 */  j          .L8003D634
    /* 2DDE0 8003D5E0 0A0002A2 */   sb        $v0, 0xA($s0)
  glabel .L8003D5E4
    /* 2DDE4 8003D5E4 21200002 */  addu       $a0, $s0, $zero
    /* 2DDE8 8003D5E8 20000524 */  addiu      $a1, $zero, 0x20
    /* 2DDEC 8003D5EC 44000296 */  lhu        $v0, 0x44($s0)
    /* 2DDF0 8003D5F0 20000624 */  addiu      $a2, $zero, 0x20
    /* 2DDF4 8003D5F4 D8FF4224 */  addiu      $v0, $v0, -0x28
    /* 2DDF8 8003D5F8 1108010C */  jal        func_80042044
    /* 2DDFC 8003D5FC 440002A6 */   sh        $v0, 0x44($s0)
    /* 2DE00 8003D600 21200002 */  addu       $a0, $s0, $zero
    /* 2DE04 8003D604 21300000 */  addu       $a2, $zero, $zero
    /* 2DE08 8003D608 44000586 */  lh         $a1, 0x44($s0)
    /* 2DE0C 8003D60C A407010C */  jal        func_80041E90
    /* 2DE10 8003D610 21380000 */   addu      $a3, $zero, $zero
    /* 2DE14 8003D614 A7000382 */  lb         $v1, 0xA7($s0)
    /* 2DE18 8003D618 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2DE1C 8003D61C 05006214 */  bne        $v1, $v0, .L8003D634
    /* 2DE20 8003D620 00000000 */   nop
    /* 2DE24 8003D624 090000A2 */  sb         $zero, 0x9($s0)
    /* 2DE28 8003D628 0A0000A6 */  sh         $zero, 0xA($s0)
    /* 2DE2C 8003D62C 440000A6 */  sh         $zero, 0x44($s0)
    /* 2DE30 8003D630 4A0400A2 */  sb         $zero, 0x44A($s0)
  .L8003D634:
    /* 2DE34 8003D634 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2DE38 8003D638 00000000 */  nop
    /* 2DE3C 8003D63C FDFF4224 */  addiu      $v0, $v0, -0x3
    /* 2DE40 8003D640 0200422C */  sltiu      $v0, $v0, 0x2
    /* 2DE44 8003D644 1D004010 */  beqz       $v0, .L8003D6BC
    /* 2DE48 8003D648 00000000 */   nop
    /* 2DE4C 8003D64C 2A010296 */  lhu        $v0, 0x12A($s0)
    /* 2DE50 8003D650 00000000 */  nop
    /* 2DE54 8003D654 24106202 */  and        $v0, $s3, $v0
    /* 2DE58 8003D658 0A004010 */  beqz       $v0, .L8003D684
    /* 2DE5C 8003D65C 00000000 */   nop
    /* 2DE60 8003D660 86C5000C */  jal        func_80031618
    /* 2DE64 8003D664 00000000 */   nop
    /* 2DE68 8003D668 21284000 */  addu       $a1, $v0, $zero
    /* 2DE6C 8003D66C 0500A010 */  beqz       $a1, .L8003D684
    /* 2DE70 8003D670 01000324 */   addiu     $v1, $zero, 0x1
    /* 2DE74 8003D674 89000224 */  addiu      $v0, $zero, 0x89
    /* 2DE78 8003D678 0000A3A0 */  sb         $v1, 0x0($a1)
    /* 2DE7C 8003D67C 0200A2A0 */  sb         $v0, 0x2($a1)
    /* 2DE80 8003D680 0300A3A0 */  sb         $v1, 0x3($a1)
  .L8003D684:
    /* 2DE84 8003D684 28010296 */  lhu        $v0, 0x128($s0)
    /* 2DE88 8003D688 00000000 */  nop
    /* 2DE8C 8003D68C 24106202 */  and        $v0, $s3, $v0
    /* 2DE90 8003D690 0A004010 */  beqz       $v0, .L8003D6BC
    /* 2DE94 8003D694 00000000 */   nop
    /* 2DE98 8003D698 86C5000C */  jal        func_80031618
    /* 2DE9C 8003D69C 00000000 */   nop
    /* 2DEA0 8003D6A0 21284000 */  addu       $a1, $v0, $zero
    /* 2DEA4 8003D6A4 0500A010 */  beqz       $a1, .L8003D6BC
    /* 2DEA8 8003D6A8 01000224 */   addiu     $v0, $zero, 0x1
    /* 2DEAC 8003D6AC 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 2DEB0 8003D6B0 89000224 */  addiu      $v0, $zero, 0x89
    /* 2DEB4 8003D6B4 0200A2A0 */  sb         $v0, 0x2($a1)
    /* 2DEB8 8003D6B8 0300A0A0 */  sb         $zero, 0x3($a1)
  .L8003D6BC:
    /* 2DEBC 8003D6BC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2DEC0 8003D6C0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2DEC4 8003D6C4 1800B28F */  lw         $s2, 0x18($sp)
    /* 2DEC8 8003D6C8 1400B18F */  lw         $s1, 0x14($sp)
    /* 2DECC 8003D6CC 1000B08F */  lw         $s0, 0x10($sp)
    /* 2DED0 8003D6D0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2DED4 8003D6D4 0800E003 */  jr         $ra
    /* 2DED8 8003D6D8 00000000 */   nop
.size func_8003D1E0, . - func_8003D1E0
