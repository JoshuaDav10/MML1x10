.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003DA34
    /* 2E234 8003DA34 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2E238 8003DA38 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2E23C 8003DA3C 21808000 */  addu       $s0, $a0, $zero
    /* 2E240 8003DA40 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2E244 8003DA44 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2E248 8003DA48 0A000392 */  lbu        $v1, 0xA($s0)
    /* 2E24C 8003DA4C 1C011196 */  lhu        $s1, 0x11C($s0)
    /* 2E250 8003DA50 0700622C */  sltiu      $v0, $v1, 0x7
    /* 2E254 8003DA54 7B004010 */  beqz       $v0, .L8003DC44
    /* 2E258 8003DA58 80100300 */   sll       $v0, $v1, 2
    /* 2E25C 8003DA5C 0180013C */  lui        $at, %hi(jtbl_80010BA4)
    /* 2E260 8003DA60 21082200 */  addu       $at, $at, $v0
    /* 2E264 8003DA64 A40B228C */  lw         $v0, %lo(jtbl_80010BA4)($at)
    /* 2E268 8003DA68 00000000 */  nop
    /* 2E26C 8003DA6C 08004000 */  jr         $v0
    /* 2E270 8003DA70 00000000 */   nop
  glabel .L8003DA74
    /* 2E274 8003DA74 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2E278 8003DA78 48010396 */  lhu        $v1, 0x148($s0)
    /* 2E27C 8003DA7C 120100A2 */  sb         $zero, 0x112($s0)
    /* 2E280 8003DA80 160100A6 */  sh         $zero, 0x116($s0)
    /* 2E284 8003DA84 B40000A6 */  sh         $zero, 0xB4($s0)
    /* 2E288 8003DA88 01004224 */  addiu      $v0, $v0, 0x1
    /* 2E28C 8003DA8C 24187100 */  and        $v1, $v1, $s1
    /* 2E290 8003DA90 02006014 */  bnez       $v1, .L8003DA9C
    /* 2E294 8003DA94 0A0002A2 */   sb        $v0, 0xA($s0)
    /* 2E298 8003DA98 480000A6 */  sh         $zero, 0x48($s0)
  .L8003DA9C:
    /* 2E29C 8003DA9C E808010C */  jal        Pl00_shot_enable_off
    /* 2E2A0 8003DAA0 21200002 */   addu      $a0, $s0, $zero
    /* 2E2A4 8003DAA4 21200002 */  addu       $a0, $s0, $zero
    /* 2E2A8 8003DAA8 10000524 */  addiu      $a1, $zero, 0x10
    /* 2E2AC 8003DAAC 21300000 */  addu       $a2, $zero, $zero
    /* 2E2B0 8003DAB0 7707010C */  jal        func_80041DDC
    /* 2E2B4 8003DAB4 01000724 */   addiu     $a3, $zero, 0x1
    /* 2E2B8 8003DAB8 11F70008 */  j          .L8003DC44
    /* 2E2BC 8003DABC 00000000 */   nop
  glabel .L8003DAC0
    /* 2E2C0 8003DAC0 A7000382 */  lb         $v1, 0xA7($s0)
    /* 2E2C4 8003DAC4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2E2C8 8003DAC8 5E006214 */  bne        $v1, $v0, .L8003DC44
    /* 2E2CC 8003DACC 01000224 */   addiu     $v0, $zero, 0x1
    /* 2E2D0 8003DAD0 740002A2 */  sb         $v0, 0x74($s0)
    /* 2E2D4 8003DAD4 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2E2D8 8003DAD8 AC000492 */  lbu        $a0, 0xAC($s0)
    /* 2E2DC 8003DADC 6B010392 */  lbu        $v1, 0x16B($s0)
    /* 2E2E0 8003DAE0 01004224 */  addiu      $v0, $v0, 0x1
    /* 2E2E4 8003DAE4 01006330 */  andi       $v1, $v1, 0x1
    /* 2E2E8 8003DAE8 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 2E2EC 8003DAEC 03006010 */  beqz       $v1, .L8003DAFC
    /* 2E2F0 8003DAF0 AD0004A2 */   sb        $a0, 0xAD($s0)
    /* 2E2F4 8003DAF4 C0F60008 */  j          .L8003DB00
    /* 2E2F8 8003DAF8 E0FC0224 */   addiu     $v0, $zero, -0x320
  .L8003DAFC:
    /* 2E2FC 8003DAFC 40FE0224 */  addiu      $v0, $zero, -0x1C0
  .L8003DB00:
    /* 2E300 8003DB00 460002A6 */  sh         $v0, 0x46($s0)
    /* 2E304 8003DB04 F208010C */  jal        Pl00_shot_enable_on
    /* 2E308 8003DB08 21200002 */   addu      $a0, $s0, $zero
    /* 2E30C 8003DB0C 21200002 */  addu       $a0, $s0, $zero
    /* 2E310 8003DB10 11000524 */  addiu      $a1, $zero, 0x11
    /* 2E314 8003DB14 21300000 */  addu       $a2, $zero, $zero
    /* 2E318 8003DB18 7707010C */  jal        func_80041DDC
    /* 2E31C 8003DB1C 01000724 */   addiu     $a3, $zero, 0x1
    /* 2E320 8003DB20 21200002 */  addu       $a0, $s0, $zero
    /* 2E324 8003DB24 1AF8000C */  jal        func_8003E068
    /* 2E328 8003DB28 21280000 */   addu      $a1, $zero, $zero
    /* 2E32C 8003DB2C 92000424 */  addiu      $a0, $zero, 0x92
    /* 2E330 8003DB30 21280000 */  addu       $a1, $zero, $zero
    /* 2E334 8003DB34 0268000C */  jal        Sound_call
    /* 2E338 8003DB38 21300000 */   addu      $a2, $zero, $zero
    /* 2E33C 8003DB3C 11F70008 */  j          .L8003DC44
    /* 2E340 8003DB40 00000000 */   nop
  glabel .L8003DB44
    /* 2E344 8003DB44 12010582 */  lb         $a1, 0x112($s0)
    /* 2E348 8003DB48 1AF8000C */  jal        func_8003E068
    /* 2E34C 8003DB4C 21200002 */   addu      $a0, $s0, $zero
    /* 2E350 8003DB50 38010296 */  lhu        $v0, 0x138($s0)
    /* 2E354 8003DB54 00000000 */  nop
    /* 2E358 8003DB58 24105100 */  and        $v0, $v0, $s1
    /* 2E35C 8003DB5C 0F004010 */  beqz       $v0, .L8003DB9C
    /* 2E360 8003DB60 00000000 */   nop
    /* 2E364 8003DB64 46000296 */  lhu        $v0, 0x46($s0)
    /* 2E368 8003DB68 00000000 */  nop
    /* 2E36C 8003DB6C 30004224 */  addiu      $v0, $v0, 0x30
    /* 2E370 8003DB70 460002A6 */  sh         $v0, 0x46($s0)
    /* 2E374 8003DB74 00140200 */  sll        $v0, $v0, 16
    /* 2E378 8003DB78 32004004 */  bltz       $v0, .L8003DC44
    /* 2E37C 8003DB7C 21200002 */   addu      $a0, $s0, $zero
    /* 2E380 8003DB80 12000524 */  addiu      $a1, $zero, 0x12
    /* 2E384 8003DB84 21300000 */  addu       $a2, $zero, $zero
    /* 2E388 8003DB88 7707010C */  jal        func_80041DDC
    /* 2E38C 8003DB8C 01000724 */   addiu     $a3, $zero, 0x1
    /* 2E390 8003DB90 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2E394 8003DB94 FFF60008 */  j          .L8003DBFC
    /* 2E398 8003DB98 02004224 */   addiu     $v0, $v0, 0x2
  .L8003DB9C:
    /* 2E39C 8003DB9C 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2E3A0 8003DBA0 00000000 */  nop
    /* 2E3A4 8003DBA4 01004224 */  addiu      $v0, $v0, 0x1
    /* 2E3A8 8003DBA8 11F70008 */  j          .L8003DC44
    /* 2E3AC 8003DBAC 0A0002A2 */   sb        $v0, 0xA($s0)
  glabel .L8003DBB0
    /* 2E3B0 8003DBB0 12010582 */  lb         $a1, 0x112($s0)
    /* 2E3B4 8003DBB4 1AF8000C */  jal        func_8003E068
    /* 2E3B8 8003DBB8 21200002 */   addu      $a0, $s0, $zero
    /* 2E3BC 8003DBBC 46000286 */  lh         $v0, 0x46($s0)
    /* 2E3C0 8003DBC0 00000000 */  nop
    /* 2E3C4 8003DBC4 21184000 */  addu       $v1, $v0, $zero
    /* 2E3C8 8003DBC8 23100200 */  negu       $v0, $v0
    /* 2E3CC 8003DBCC 41024228 */  slti       $v0, $v0, 0x241
    /* 2E3D0 8003DBD0 03004014 */  bnez       $v0, .L8003DBE0
    /* 2E3D4 8003DBD4 12000524 */   addiu     $a1, $zero, 0x12
    /* 2E3D8 8003DBD8 10F70008 */  j          .L8003DC40
    /* 2E3DC 8003DBDC 40026224 */   addiu     $v0, $v1, 0x240
  .L8003DBE0:
    /* 2E3E0 8003DBE0 21200002 */  addu       $a0, $s0, $zero
    /* 2E3E4 8003DBE4 21300000 */  addu       $a2, $zero, $zero
    /* 2E3E8 8003DBE8 7707010C */  jal        func_80041DDC
    /* 2E3EC 8003DBEC 01000724 */   addiu     $a3, $zero, 0x1
    /* 2E3F0 8003DBF0 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2E3F4 8003DBF4 460000A6 */  sh         $zero, 0x46($s0)
    /* 2E3F8 8003DBF8 02004224 */  addiu      $v0, $v0, 0x2
  .L8003DBFC:
    /* 2E3FC 8003DBFC 11F70008 */  j          .L8003DC44
    /* 2E400 8003DC00 0A0002A2 */   sb        $v0, 0xA($s0)
  glabel .L8003DC04
    /* 2E404 8003DC04 21200002 */  addu       $a0, $s0, $zero
    /* 2E408 8003DC08 12000524 */  addiu      $a1, $zero, 0x12
    /* 2E40C 8003DC0C 21300000 */  addu       $a2, $zero, $zero
    /* 2E410 8003DC10 7707010C */  jal        func_80041DDC
    /* 2E414 8003DC14 01000724 */   addiu     $a3, $zero, 0x1
    /* 2E418 8003DC18 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2E41C 8003DC1C 00000000 */  nop
    /* 2E420 8003DC20 01004224 */  addiu      $v0, $v0, 0x1
    /* 2E424 8003DC24 0A0002A2 */  sb         $v0, 0xA($s0)
  glabel .L8003DC28
    /* 2E428 8003DC28 12010582 */  lb         $a1, 0x112($s0)
    /* 2E42C 8003DC2C 1AF8000C */  jal        func_8003E068
    /* 2E430 8003DC30 21200002 */   addu      $a0, $s0, $zero
    /* 2E434 8003DC34 46000296 */  lhu        $v0, 0x46($s0)
    /* 2E438 8003DC38 00000000 */  nop
    /* 2E43C 8003DC3C 30004224 */  addiu      $v0, $v0, 0x30
  .L8003DC40:
    /* 2E440 8003DC40 460002A6 */  sh         $v0, 0x46($s0)
  glabel .L8003DC44
    /* 2E444 8003DC44 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2E448 8003DC48 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2E44C 8003DC4C 1800B08F */  lw         $s0, 0x18($sp)
    /* 2E450 8003DC50 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2E454 8003DC54 0800E003 */  jr         $ra
    /* 2E458 8003DC58 00000000 */   nop
.size func_8003DA34, . - func_8003DA34
