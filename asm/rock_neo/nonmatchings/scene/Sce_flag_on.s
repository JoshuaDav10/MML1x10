.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sce_flag_on
    /* E28C 8001DA8C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* E290 8001DA90 1800B2AF */  sw         $s2, 0x18($sp)
    /* E294 8001DA94 21908000 */  addu       $s2, $a0, $zero
    /* E298 8001DA98 0C80043C */  lui        $a0, %hi(Sce_flag)
    /* E29C 8001DA9C 78E38424 */  addiu      $a0, $a0, %lo(Sce_flag)
    /* E2A0 8001DAA0 C2101200 */  srl        $v0, $s2, 3
    /* E2A4 8001DAA4 21204400 */  addu       $a0, $v0, $a0
    /* E2A8 8001DAA8 80000324 */  addiu      $v1, $zero, 0x80
    /* E2AC 8001DAAC 07004532 */  andi       $a1, $s2, 0x7
    /* E2B0 8001DAB0 2000BFAF */  sw         $ra, 0x20($sp)
    /* E2B4 8001DAB4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* E2B8 8001DAB8 1400B1AF */  sw         $s1, 0x14($sp)
    /* E2BC 8001DABC 1000B0AF */  sw         $s0, 0x10($sp)
    /* E2C0 8001DAC0 00008290 */  lbu        $v0, 0x0($a0)
    /* E2C4 8001DAC4 0718A300 */  srav       $v1, $v1, $a1
    /* E2C8 8001DAC8 25104300 */  or         $v0, $v0, $v1
    /* E2CC 8001DACC 000082A0 */  sb         $v0, 0x0($a0)
    /* E2D0 8001DAD0 00FB4226 */  addiu      $v0, $s2, -0x500
    /* E2D4 8001DAD4 2000422C */  sltiu      $v0, $v0, 0x20
    /* E2D8 8001DAD8 0C004010 */  beqz       $v0, .L8001DB0C
    /* E2DC 8001DADC 00000000 */   nop
    /* E2E0 8001DAE0 21180000 */  addu       $v1, $zero, $zero
  .L8001DAE4:
    /* E2E4 8001DAE4 0B80013C */  lui        $at, %hi(Player_work + 0x454)
    /* E2E8 8001DAE8 21082300 */  addu       $at, $at, $v1
    /* E2EC 8001DAEC 04562290 */  lbu        $v0, %lo(Player_work + 0x454)($at)
    /* E2F0 8001DAF0 00000000 */  nop
    /* E2F4 8001DAF4 21004010 */  beqz       $v0, .L8001DB7C
    /* E2F8 8001DAF8 01004226 */   addiu     $v0, $s2, 0x1
    /* E2FC 8001DAFC 01006324 */  addiu      $v1, $v1, 0x1
    /* E300 8001DB00 20006228 */  slti       $v0, $v1, 0x20
    /* E304 8001DB04 F7FF4014 */  bnez       $v0, .L8001DAE4
    /* E308 8001DB08 00000000 */   nop
  .L8001DB0C:
    /* E30C 8001DB0C 0B80133C */  lui        $s3, %hi(Player_work + 0x16C)
    /* E310 8001DB10 1C537326 */  addiu      $s3, $s3, %lo(Player_work + 0x16C)
    /* E314 8001DB14 00006282 */  lb         $v0, 0x0($s3)
    /* E318 8001DB18 00000000 */  nop
    /* E31C 8001DB1C 0F004010 */  beqz       $v0, .L8001DB5C
    /* E320 8001DB20 C6FA4226 */   addiu     $v0, $s2, -0x53A
    /* E324 8001DB24 0300422C */  sltiu      $v0, $v0, 0x3
    /* E328 8001DB28 0D004010 */  beqz       $v0, .L8001DB60
    /* E32C 8001DB2C 00FB4326 */   addiu     $v1, $s2, -0x500
    /* E330 8001DB30 9676000C */  jal        Sce_flag_test
    /* E334 8001DB34 3A050424 */   addiu     $a0, $zero, 0x53A
    /* E338 8001DB38 3B050424 */  addiu      $a0, $zero, 0x53B
    /* E33C 8001DB3C 9676000C */  jal        Sce_flag_test
    /* E340 8001DB40 21804000 */   addu      $s0, $v0, $zero
    /* E344 8001DB44 3C050424 */  addiu      $a0, $zero, 0x53C
    /* E348 8001DB48 9676000C */  jal        Sce_flag_test
    /* E34C 8001DB4C 21884000 */   addu      $s1, $v0, $zero
    /* E350 8001DB50 21801102 */  addu       $s0, $s0, $s1
    /* E354 8001DB54 21800202 */  addu       $s0, $s0, $v0
    /* E358 8001DB58 000070A2 */  sb         $s0, 0x0($s3)
  .L8001DB5C:
    /* E35C 8001DB5C 00FB4326 */  addiu      $v1, $s2, -0x500
  .L8001DB60:
    /* E360 8001DB60 8000622C */  sltiu      $v0, $v1, 0x80
    /* E364 8001DB64 40004010 */  beqz       $v0, .L8001DC68
    /* E368 8001DB68 2000622C */   sltiu     $v0, $v1, 0x20
    /* E36C 8001DB6C 08004010 */  beqz       $v0, .L8001DB90
    /* E370 8001DB70 E0FA4226 */   addiu     $v0, $s2, -0x520
    /* E374 8001DB74 18770008 */  j          .L8001DC60
    /* E378 8001DB78 00000000 */   nop
  .L8001DB7C:
    /* E37C 8001DB7C 0B80013C */  lui        $at, %hi(Player_work + 0x454)
    /* E380 8001DB80 21082300 */  addu       $at, $at, $v1
    /* E384 8001DB84 045622A0 */  sb         $v0, %lo(Player_work + 0x454)($at)
    /* E388 8001DB88 C3760008 */  j          .L8001DB0C
    /* E38C 8001DB8C 00000000 */   nop
  .L8001DB90:
    /* E390 8001DB90 2000422C */  sltiu      $v0, $v0, 0x20
    /* E394 8001DB94 28004010 */  beqz       $v0, .L8001DC38
    /* E398 8001DB98 28050224 */   addiu     $v0, $zero, 0x528
    /* E39C 8001DB9C 12004216 */  bne        $s2, $v0, .L8001DBE8
    /* E3A0 8001DBA0 3A050224 */   addiu     $v0, $zero, 0x53A
    /* E3A4 8001DBA4 A376000C */  jal        Sce_flag_on
    /* E3A8 8001DBA8 82050424 */   addiu     $a0, $zero, 0x582
    /* E3AC 8001DBAC A376000C */  jal        Sce_flag_on
    /* E3B0 8001DBB0 83050424 */   addiu     $a0, $zero, 0x583
    /* E3B4 8001DBB4 A376000C */  jal        Sce_flag_on
    /* E3B8 8001DBB8 84050424 */   addiu     $a0, $zero, 0x584
    /* E3BC 8001DBBC A376000C */  jal        Sce_flag_on
    /* E3C0 8001DBC0 85050424 */   addiu     $a0, $zero, 0x585
    /* E3C4 8001DBC4 A376000C */  jal        Sce_flag_on
    /* E3C8 8001DBC8 86050424 */   addiu     $a0, $zero, 0x586
    /* E3CC 8001DBCC A376000C */  jal        Sce_flag_on
    /* E3D0 8001DBD0 87050424 */   addiu     $a0, $zero, 0x587
    /* E3D4 8001DBD4 A376000C */  jal        Sce_flag_on
    /* E3D8 8001DBD8 C1050424 */   addiu     $a0, $zero, 0x5C1
    /* E3DC 8001DBDC A376000C */  jal        Sce_flag_on
    /* E3E0 8001DBE0 C2050424 */   addiu     $a0, $zero, 0x5C2
    /* E3E4 8001DBE4 3A050224 */  addiu      $v0, $zero, 0x53A
  .L8001DBE8:
    /* E3E8 8001DBE8 06004216 */  bne        $s2, $v0, .L8001DC04
    /* E3EC 8001DBEC 3B050224 */   addiu     $v0, $zero, 0x53B
    /* E3F0 8001DBF0 3477000C */  jal        Sce_flag_off
    /* E3F4 8001DBF4 BA050424 */   addiu     $a0, $zero, 0x5BA
    /* E3F8 8001DBF8 A376000C */  jal        Sce_flag_on
    /* E3FC 8001DBFC BB050424 */   addiu     $a0, $zero, 0x5BB
    /* E400 8001DC00 3B050224 */  addiu      $v0, $zero, 0x53B
  .L8001DC04:
    /* E404 8001DC04 06004216 */  bne        $s2, $v0, .L8001DC20
    /* E408 8001DC08 3C050224 */   addiu     $v0, $zero, 0x53C
    /* E40C 8001DC0C 3477000C */  jal        Sce_flag_off
    /* E410 8001DC10 BB050424 */   addiu     $a0, $zero, 0x5BB
    /* E414 8001DC14 A376000C */  jal        Sce_flag_on
    /* E418 8001DC18 BC050424 */   addiu     $a0, $zero, 0x5BC
    /* E41C 8001DC1C 3C050224 */  addiu      $v0, $zero, 0x53C
  .L8001DC20:
    /* E420 8001DC20 23004216 */  bne        $s2, $v0, .L8001DCB0
    /* E424 8001DC24 00000000 */   nop
    /* E428 8001DC28 3477000C */  jal        Sce_flag_off
    /* E42C 8001DC2C BC050424 */   addiu     $a0, $zero, 0x5BC
    /* E430 8001DC30 2C770008 */  j          .L8001DCB0
    /* E434 8001DC34 00000000 */   nop
  .L8001DC38:
    /* E438 8001DC38 C0FA4226 */  addiu      $v0, $s2, -0x540
    /* E43C 8001DC3C 0400422C */  sltiu      $v0, $v0, 0x4
    /* E440 8001DC40 07004014 */  bnez       $v0, .L8001DC60
    /* E444 8001DC44 BCFA4226 */   addiu     $v0, $s2, -0x544
    /* E448 8001DC48 1400422C */  sltiu      $v0, $v0, 0x14
    /* E44C 8001DC4C 18004014 */  bnez       $v0, .L8001DCB0
    /* E450 8001DC50 A8FA4226 */   addiu     $v0, $s2, -0x558
    /* E454 8001DC54 2800422C */  sltiu      $v0, $v0, 0x28
    /* E458 8001DC58 04004010 */  beqz       $v0, .L8001DC6C
    /* E45C 8001DC5C 2A000224 */   addiu     $v0, $zero, 0x2A
  .L8001DC60:
    /* E460 8001DC60 A376000C */  jal        Sce_flag_on
    /* E464 8001DC64 80004426 */   addiu     $a0, $s2, 0x80
  .L8001DC68:
    /* E468 8001DC68 2A000224 */  addiu      $v0, $zero, 0x2A
  .L8001DC6C:
    /* E46C 8001DC6C 08004216 */  bne        $s2, $v0, .L8001DC90
    /* E470 8001DC70 51000224 */   addiu     $v0, $zero, 0x51
    /* E474 8001DC74 A376000C */  jal        Sce_flag_on
    /* E478 8001DC78 80050424 */   addiu     $a0, $zero, 0x580
    /* E47C 8001DC7C A376000C */  jal        Sce_flag_on
    /* E480 8001DC80 81050424 */   addiu     $a0, $zero, 0x581
    /* E484 8001DC84 A376000C */  jal        Sce_flag_on
    /* E488 8001DC88 C3050424 */   addiu     $a0, $zero, 0x5C3
    /* E48C 8001DC8C 51000224 */  addiu      $v0, $zero, 0x51
  .L8001DC90:
    /* E490 8001DC90 07004216 */  bne        $s2, $v0, .L8001DCB0
    /* E494 8001DC94 00000000 */   nop
    /* E498 8001DC98 A376000C */  jal        Sce_flag_on
    /* E49C 8001DC9C BA050424 */   addiu     $a0, $zero, 0x5BA
    /* E4A0 8001DCA0 A376000C */  jal        Sce_flag_on
    /* E4A4 8001DCA4 88050424 */   addiu     $a0, $zero, 0x588
    /* E4A8 8001DCA8 A376000C */  jal        Sce_flag_on
    /* E4AC 8001DCAC 89050424 */   addiu     $a0, $zero, 0x589
  .L8001DCB0:
    /* E4B0 8001DCB0 2000BF8F */  lw         $ra, 0x20($sp)
    /* E4B4 8001DCB4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* E4B8 8001DCB8 1800B28F */  lw         $s2, 0x18($sp)
    /* E4BC 8001DCBC 1400B18F */  lw         $s1, 0x14($sp)
    /* E4C0 8001DCC0 1000B08F */  lw         $s0, 0x10($sp)
    /* E4C4 8001DCC4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* E4C8 8001DCC8 0800E003 */  jr         $ra
    /* E4CC 8001DCCC 00000000 */   nop
.size Sce_flag_on, . - Sce_flag_on
