.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003B360
    /* 2BB60 8003B360 2D008004 */  bltz       $a0, .L8003B418
    /* 2BB64 8003B364 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 2BB68 8003B368 0C80023C */  lui        $v0, %hi(Game_work + 0x50)
    /* 2BB6C 8003B36C 601B4280 */  lb         $v0, %lo(Game_work + 0x50)($v0)
    /* 2BB70 8003B370 0980013C */  lui        $at, %hi(D_80089F04)
    /* 2BB74 8003B374 21082200 */  addu       $at, $at, $v0
    /* 2BB78 8003B378 049F2380 */  lb         $v1, %lo(D_80089F04)($at)
    /* 2BB7C 8003B37C 00000000 */  nop
    /* 2BB80 8003B380 22006004 */  bltz       $v1, .L8003B40C
    /* 2BB84 8003B384 40100400 */   sll       $v0, $a0, 1
    /* 2BB88 8003B388 21104400 */  addu       $v0, $v0, $a0
    /* 2BB8C 8003B38C 80100200 */  sll        $v0, $v0, 2
    /* 2BB90 8003B390 1680013C */  lui        $at, %hi(D_8015C006)
    /* 2BB94 8003B394 21084100 */  addu       $at, $v0, $at
    /* 2BB98 8003B398 06C02294 */  lhu        $v0, %lo(D_8015C006)($at)
    /* 2BB9C 8003B39C 00000000 */  nop
    /* 2BBA0 8003B3A0 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* 2BBA4 8003B3A4 1B004010 */  beqz       $v0, .L8003B414
    /* 2BBA8 8003B3A8 401A0300 */   sll       $v1, $v1, 9
    /* 2BBAC 8003B3AC 0C80023C */  lui        $v0, %hi(D_800BD3B8)
    /* 2BBB0 8003B3B0 B8D34224 */  addiu      $v0, $v0, %lo(D_800BD3B8)
    /* 2BBB4 8003B3B4 21186200 */  addu       $v1, $v1, $v0
    /* 2BBB8 8003B3B8 03110400 */  sra        $v0, $a0, 4
    /* 2BBBC 8003B3BC 80100200 */  sll        $v0, $v0, 2
    /* 2BBC0 8003B3C0 21104300 */  addu       $v0, $v0, $v1
    /* 2BBC4 8003B3C4 0000438C */  lw         $v1, 0x0($v0)
    /* 2BBC8 8003B3C8 0F008230 */  andi       $v0, $a0, 0xF
    /* 2BBCC 8003B3CC 40100200 */  sll        $v0, $v0, 1
    /* 2BBD0 8003B3D0 06184300 */  srlv       $v1, $v1, $v0
    /* 2BBD4 8003B3D4 03006330 */  andi       $v1, $v1, 0x3
    /* 2BBD8 8003B3D8 01000224 */  addiu      $v0, $zero, 0x1
    /* 2BBDC 8003B3DC 0E006210 */  beq        $v1, $v0, .L8003B418
    /* 2BBE0 8003B3E0 00000000 */   nop
    /* 2BBE4 8003B3E4 0B006010 */  beqz       $v1, .L8003B414
    /* 2BBE8 8003B3E8 02000224 */   addiu     $v0, $zero, 0x2
    /* 2BBEC 8003B3EC 05006210 */  beq        $v1, $v0, .L8003B404
    /* 2BBF0 8003B3F0 03000224 */   addiu     $v0, $zero, 0x3
    /* 2BBF4 8003B3F4 08006210 */  beq        $v1, $v0, .L8003B418
    /* 2BBF8 8003B3F8 00000000 */   nop
    /* 2BBFC 8003B3FC 06ED0008 */  j          .L8003B418
    /* 2BC00 8003B400 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8003B404:
    /* 2BC04 8003B404 06ED0008 */  j          .L8003B418
    /* 2BC08 8003B408 02000224 */   addiu     $v0, $zero, 0x2
  .L8003B40C:
    /* 2BC0C 8003B40C 06ED0008 */  j          .L8003B418
    /* 2BC10 8003B410 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8003B414:
    /* 2BC14 8003B414 21100000 */  addu       $v0, $zero, $zero
  .L8003B418:
    /* 2BC18 8003B418 0800E003 */  jr         $ra
    /* 2BC1C 8003B41C 00000000 */   nop
.size func_8003B360, . - func_8003B360
