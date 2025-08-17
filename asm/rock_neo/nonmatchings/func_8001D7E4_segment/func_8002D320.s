.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002D320
    /* 1DB20 8002D320 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1DB24 8002D324 2148C000 */  addu       $t1, $a2, $zero
    /* 1DB28 8002D328 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 1DB2C 8002D32C 80180200 */  sll        $v1, $v0, 2
    /* 1DB30 8002D330 21186200 */  addu       $v1, $v1, $v0
    /* 1DB34 8002D334 7000878C */  lw         $a3, 0x70($a0)
    /* 1DB38 8002D338 80180300 */  sll        $v1, $v1, 2
    /* 1DB3C 8002D33C 21186700 */  addu       $v1, $v1, $a3
    /* 1DB40 8002D340 1400688C */  lw         $t0, 0x14($v1)
    /* 1DB44 8002D344 022C0500 */  srl        $a1, $a1, 16
    /* 1DB48 8002D348 FF000631 */  andi       $a2, $t0, 0xFF
    /* 1DB4C 8002D34C 02220800 */  srl        $a0, $t0, 8
    /* 1DB50 8002D350 40100600 */  sll        $v0, $a2, 1
    /* 1DB54 8002D354 21304600 */  addu       $a2, $v0, $a2
    /* 1DB58 8002D358 FF008430 */  andi       $a0, $a0, 0xFF
    /* 1DB5C 8002D35C 40100400 */  sll        $v0, $a0, 1
    /* 1DB60 8002D360 21504400 */  addu       $t2, $v0, $a0
    /* 1DB64 8002D364 80100500 */  sll        $v0, $a1, 2
    /* 1DB68 8002D368 21104500 */  addu       $v0, $v0, $a1
    /* 1DB6C 8002D36C 80100200 */  sll        $v0, $v0, 2
    /* 1DB70 8002D370 21104700 */  addu       $v0, $v0, $a3
    /* 1DB74 8002D374 1800648C */  lw         $a0, 0x18($v1)
    /* 1DB78 8002D378 1800458C */  lw         $a1, 0x18($v0)
    /* 1DB7C 8002D37C 1C00678C */  lw         $a3, 0x1C($v1)
    /* 1DB80 8002D380 1C004B8C */  lw         $t3, 0x1C($v0)
    /* 1DB84 8002D384 0D00C010 */  beqz       $a2, .L8002D3BC
    /* 1DB88 8002D388 21400000 */   addu      $t0, $zero, $zero
    /* 1DB8C 8002D38C 2118A000 */  addu       $v1, $a1, $zero
  .L8002D390:
    /* 1DB90 8002D390 0000628C */  lw         $v0, 0x0($v1)
    /* 1DB94 8002D394 03000825 */  addiu      $t0, $t0, 0x3
    /* 1DB98 8002D398 21104900 */  addu       $v0, $v0, $t1
    /* 1DB9C 8002D39C 000082AC */  sw         $v0, 0x0($a0)
    /* 1DBA0 8002D3A0 0400628C */  lw         $v0, 0x4($v1)
    /* 1DBA4 8002D3A4 0C006324 */  addiu      $v1, $v1, 0xC
    /* 1DBA8 8002D3A8 21104900 */  addu       $v0, $v0, $t1
    /* 1DBAC 8002D3AC 040082AC */  sw         $v0, 0x4($a0)
    /* 1DBB0 8002D3B0 2B100601 */  sltu       $v0, $t0, $a2
    /* 1DBB4 8002D3B4 F6FF4014 */  bnez       $v0, .L8002D390
    /* 1DBB8 8002D3B8 0C008424 */   addiu     $a0, $a0, 0xC
  .L8002D3BC:
    /* 1DBBC 8002D3BC 0E004011 */  beqz       $t2, .L8002D3F8
    /* 1DBC0 8002D3C0 21400000 */   addu      $t0, $zero, $zero
    /* 1DBC4 8002D3C4 2120E000 */  addu       $a0, $a3, $zero
    /* 1DBC8 8002D3C8 21186001 */  addu       $v1, $t3, $zero
  .L8002D3CC:
    /* 1DBCC 8002D3CC 0000628C */  lw         $v0, 0x0($v1)
    /* 1DBD0 8002D3D0 03000825 */  addiu      $t0, $t0, 0x3
    /* 1DBD4 8002D3D4 21104900 */  addu       $v0, $v0, $t1
    /* 1DBD8 8002D3D8 000082AC */  sw         $v0, 0x0($a0)
    /* 1DBDC 8002D3DC 0400628C */  lw         $v0, 0x4($v1)
    /* 1DBE0 8002D3E0 0C006324 */  addiu      $v1, $v1, 0xC
    /* 1DBE4 8002D3E4 21104900 */  addu       $v0, $v0, $t1
    /* 1DBE8 8002D3E8 040082AC */  sw         $v0, 0x4($a0)
    /* 1DBEC 8002D3EC 2B100A01 */  sltu       $v0, $t0, $t2
    /* 1DBF0 8002D3F0 F6FF4014 */  bnez       $v0, .L8002D3CC
    /* 1DBF4 8002D3F4 0C008424 */   addiu     $a0, $a0, 0xC
  .L8002D3F8:
    /* 1DBF8 8002D3F8 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 1DBFC 8002D3FC 0800E003 */  jr         $ra
    /* 1DC00 8002D400 00000000 */   nop
.size func_8002D320, . - func_8002D320
