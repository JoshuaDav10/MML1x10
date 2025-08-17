.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003C2D8
    /* 2CAD8 8003C2D8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2CADC 8003C2DC 2800B0AF */  sw         $s0, 0x28($sp)
    /* 2CAE0 8003C2E0 0B80103C */  lui        $s0, %hi(Player_work)
    /* 2CAE4 8003C2E4 B0511026 */  addiu      $s0, $s0, %lo(Player_work)
    /* 2CAE8 8003C2E8 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 2CAEC 8003C2EC 00000282 */  lb         $v0, 0x0($s0)
    /* 2CAF0 8003C2F0 0B80033C */  lui        $v1, %hi(Player_work + 0x6)
    /* 2CAF4 8003C2F4 B6516390 */  lbu        $v1, %lo(Player_work + 0x6)($v1)
    /* 2CAF8 8003C2F8 00000000 */  nop
    /* 2CAFC 8003C2FC 24104300 */  and        $v0, $v0, $v1
    /* 2CB00 8003C300 01004230 */  andi       $v0, $v0, 0x1
    /* 2CB04 8003C304 1B004010 */  beqz       $v0, .L8003C374
    /* 2CB08 8003C308 00000000 */   nop
    /* 2CB0C 8003C30C 3BF1000C */  jal        func_8003C4EC
    /* 2CB10 8003C310 21200002 */   addu      $a0, $s0, $zero
    /* 2CB14 8003C314 0B80023C */  lui        $v0, %hi(Player_work + 0x449)
    /* 2CB18 8003C318 F9554280 */  lb         $v0, %lo(Player_work + 0x449)($v0)
    /* 2CB1C 8003C31C 00000000 */  nop
    /* 2CB20 8003C320 14004014 */  bnez       $v0, .L8003C374
    /* 2CB24 8003C324 00000000 */   nop
    /* 2CB28 8003C328 0B80023C */  lui        $v0, %hi(Player_work + 0x110)
    /* 2CB2C 8003C32C C0524280 */  lb         $v0, %lo(Player_work + 0x110)($v0)
    /* 2CB30 8003C330 00000000 */  nop
    /* 2CB34 8003C334 0F004014 */  bnez       $v0, .L8003C374
    /* 2CB38 8003C338 E8030426 */   addiu     $a0, $s0, 0x3E8
    /* 2CB3C 8003C33C 20000524 */  addiu      $a1, $zero, 0x20
    /* 2CB40 8003C340 21300000 */  addu       $a2, $zero, $zero
    /* 2CB44 8003C344 21380000 */  addu       $a3, $zero, $zero
    /* 2CB48 8003C348 0B80033C */  lui        $v1, %hi(Player_work + 0x1)
    /* 2CB4C 8003C34C B1516390 */  lbu        $v1, %lo(Player_work + 0x1)($v1)
    /* 2CB50 8003C350 88010226 */  addiu      $v0, $s0, 0x188
    /* 2CB54 8003C354 1400A2AF */  sw         $v0, 0x14($sp)
    /* 2CB58 8003C358 0002023C */  lui        $v0, (0x2000000 >> 16)
    /* 2CB5C 8003C35C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 2CB60 8003C360 8000023C */  lui        $v0, (0x800000 >> 16)
    /* 2CB64 8003C364 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 2CB68 8003C368 2000A0AF */  sw         $zero, 0x20($sp)
    /* 2CB6C 8003C36C 6FD0000C */  jal        func_800341BC
    /* 2CB70 8003C370 1000A3AF */   sw        $v1, 0x10($sp)
  .L8003C374:
    /* 2CB74 8003C374 0B80103C */  lui        $s0, %hi(Player_work2)
    /* 2CB78 8003C378 A4571026 */  addiu      $s0, $s0, %lo(Player_work2)
    /* 2CB7C 8003C37C 00000282 */  lb         $v0, 0x0($s0)
    /* 2CB80 8003C380 0B80033C */  lui        $v1, %hi(Player_work2 + 0x6)
    /* 2CB84 8003C384 AA576390 */  lbu        $v1, %lo(Player_work2 + 0x6)($v1)
    /* 2CB88 8003C388 00000000 */  nop
    /* 2CB8C 8003C38C 24104300 */  and        $v0, $v0, $v1
    /* 2CB90 8003C390 01004230 */  andi       $v0, $v0, 0x1
    /* 2CB94 8003C394 1B004010 */  beqz       $v0, .L8003C404
    /* 2CB98 8003C398 00000000 */   nop
    /* 2CB9C 8003C39C 3BF1000C */  jal        func_8003C4EC
    /* 2CBA0 8003C3A0 21200002 */   addu      $a0, $s0, $zero
    /* 2CBA4 8003C3A4 0B80023C */  lui        $v0, %hi(Player_work2 + 0x449)
    /* 2CBA8 8003C3A8 ED5B4280 */  lb         $v0, %lo(Player_work2 + 0x449)($v0)
    /* 2CBAC 8003C3AC 00000000 */  nop
    /* 2CBB0 8003C3B0 14004014 */  bnez       $v0, .L8003C404
    /* 2CBB4 8003C3B4 00000000 */   nop
    /* 2CBB8 8003C3B8 0B80023C */  lui        $v0, %hi(Player_work2 + 0x110)
    /* 2CBBC 8003C3BC B4584280 */  lb         $v0, %lo(Player_work2 + 0x110)($v0)
    /* 2CBC0 8003C3C0 00000000 */  nop
    /* 2CBC4 8003C3C4 0F004014 */  bnez       $v0, .L8003C404
    /* 2CBC8 8003C3C8 E8030426 */   addiu     $a0, $s0, 0x3E8
    /* 2CBCC 8003C3CC 20000524 */  addiu      $a1, $zero, 0x20
    /* 2CBD0 8003C3D0 21300000 */  addu       $a2, $zero, $zero
    /* 2CBD4 8003C3D4 00200724 */  addiu      $a3, $zero, 0x2000
    /* 2CBD8 8003C3D8 0B80033C */  lui        $v1, %hi(Player_work2 + 0x1)
    /* 2CBDC 8003C3DC A5576390 */  lbu        $v1, %lo(Player_work2 + 0x1)($v1)
    /* 2CBE0 8003C3E0 88010226 */  addiu      $v0, $s0, 0x188
    /* 2CBE4 8003C3E4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 2CBE8 8003C3E8 0002023C */  lui        $v0, (0x2000000 >> 16)
    /* 2CBEC 8003C3EC 1800A2AF */  sw         $v0, 0x18($sp)
    /* 2CBF0 8003C3F0 8000023C */  lui        $v0, (0x800000 >> 16)
    /* 2CBF4 8003C3F4 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 2CBF8 8003C3F8 2000A0AF */  sw         $zero, 0x20($sp)
    /* 2CBFC 8003C3FC 6FD0000C */  jal        func_800341BC
    /* 2CC00 8003C400 1000A3AF */   sw        $v1, 0x10($sp)
  .L8003C404:
    /* 2CC04 8003C404 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 2CC08 8003C408 2800B08F */  lw         $s0, 0x28($sp)
    /* 2CC0C 8003C40C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2CC10 8003C410 0800E003 */  jr         $ra
    /* 2CC14 8003C414 00000000 */   nop
.size func_8003C2D8, . - func_8003C2D8
