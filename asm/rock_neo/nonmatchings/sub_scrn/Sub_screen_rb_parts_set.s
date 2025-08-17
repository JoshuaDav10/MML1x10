.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sub_screen_rb_parts_set
    /* 51B20 80061320 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 51B24 80061324 26050424 */  addiu      $a0, $zero, 0x526
    /* 51B28 80061328 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 51B2C 8006132C 9676000C */  jal        Sce_flag_test
    /* 51B30 80061330 1800B0AF */   sw        $s0, 0x18($sp)
    /* 51B34 80061334 0B80103C */  lui        $s0, %hi(Player_work)
    /* 51B38 80061338 B0511026 */  addiu      $s0, $s0, %lo(Player_work)
    /* 51B3C 8006133C 02004010 */  beqz       $v0, .L80061348
    /* 51B40 80061340 02000624 */   addiu     $a2, $zero, 0x2
    /* 51B44 80061344 03000624 */  addiu      $a2, $zero, 0x3
  .L80061348:
    /* 51B48 80061348 0B80013C */  lui        $at, %hi(Player_work + 0x4FC)
    /* 51B4C 8006134C AC5620A0 */  sb         $zero, %lo(Player_work + 0x4FC)($at)
    /* 51B50 80061350 0B80013C */  lui        $at, %hi(Player_work + 0x4FD)
    /* 51B54 80061354 AD5620A0 */  sb         $zero, %lo(Player_work + 0x4FD)($at)
    /* 51B58 80061358 0B80013C */  lui        $at, %hi(Player_work + 0x4FE)
    /* 51B5C 8006135C AE5620A0 */  sb         $zero, %lo(Player_work + 0x4FE)($at)
    /* 51B60 80061360 0B80013C */  lui        $at, %hi(Player_work + 0x4FF)
    /* 51B64 80061364 AF5620A0 */  sb         $zero, %lo(Player_work + 0x4FF)($at)
    /* 51B68 80061368 2700C010 */  beqz       $a2, .L80061408
    /* 51B6C 8006136C 21280000 */   addu      $a1, $zero, $zero
    /* 51B70 80061370 21100502 */  addu       $v0, $s0, $a1
  .L80061374:
    /* 51B74 80061374 50044490 */  lbu        $a0, 0x450($v0)
    /* 51B78 80061378 00000000 */  nop
    /* 51B7C 8006137C 1E008010 */  beqz       $a0, .L800613F8
    /* 51B80 80061380 FFFF8424 */   addiu     $a0, $a0, -0x1
    /* 51B84 80061384 C0200400 */  sll        $a0, $a0, 3
    /* 51B88 80061388 FC040292 */  lbu        $v0, 0x4FC($s0)
    /* 51B8C 8006138C 0980013C */  lui        $at, %hi(Rock_buster_parts_tbl)
    /* 51B90 80061390 21082400 */  addu       $at, $at, $a0
    /* 51B94 80061394 64FE2390 */  lbu        $v1, %lo(Rock_buster_parts_tbl)($at)
    /* 51B98 80061398 00000000 */  nop
    /* 51B9C 8006139C 21104300 */  addu       $v0, $v0, $v1
    /* 51BA0 800613A0 FC0402A2 */  sb         $v0, 0x4FC($s0)
    /* 51BA4 800613A4 FD040292 */  lbu        $v0, 0x4FD($s0)
    /* 51BA8 800613A8 0980013C */  lui        $at, %hi(D_8008FE65)
    /* 51BAC 800613AC 21082400 */  addu       $at, $at, $a0
    /* 51BB0 800613B0 65FE2390 */  lbu        $v1, %lo(D_8008FE65)($at)
    /* 51BB4 800613B4 00000000 */  nop
    /* 51BB8 800613B8 21104300 */  addu       $v0, $v0, $v1
    /* 51BBC 800613BC FD0402A2 */  sb         $v0, 0x4FD($s0)
    /* 51BC0 800613C0 FE040292 */  lbu        $v0, 0x4FE($s0)
    /* 51BC4 800613C4 0980013C */  lui        $at, %hi(D_8008FE66)
    /* 51BC8 800613C8 21082400 */  addu       $at, $at, $a0
    /* 51BCC 800613CC 66FE2390 */  lbu        $v1, %lo(D_8008FE66)($at)
    /* 51BD0 800613D0 00000000 */  nop
    /* 51BD4 800613D4 21104300 */  addu       $v0, $v0, $v1
    /* 51BD8 800613D8 FE0402A2 */  sb         $v0, 0x4FE($s0)
    /* 51BDC 800613DC FF040292 */  lbu        $v0, 0x4FF($s0)
    /* 51BE0 800613E0 0980013C */  lui        $at, %hi(D_8008FE67)
    /* 51BE4 800613E4 21082400 */  addu       $at, $at, $a0
    /* 51BE8 800613E8 67FE2390 */  lbu        $v1, %lo(D_8008FE67)($at)
    /* 51BEC 800613EC 00000000 */  nop
    /* 51BF0 800613F0 21104300 */  addu       $v0, $v0, $v1
    /* 51BF4 800613F4 FF0402A2 */  sb         $v0, 0x4FF($s0)
  .L800613F8:
    /* 51BF8 800613F8 0100A524 */  addiu      $a1, $a1, 0x1
    /* 51BFC 800613FC 2A10A600 */  slt        $v0, $a1, $a2
    /* 51C00 80061400 DCFF4014 */  bnez       $v0, .L80061374
    /* 51C04 80061404 21100502 */   addu      $v0, $s0, $a1
  .L80061408:
    /* 51C08 80061408 FC040282 */  lb         $v0, 0x4FC($s0)
    /* 51C0C 8006140C 00000000 */  nop
    /* 51C10 80061410 08004228 */  slti       $v0, $v0, 0x8
    /* 51C14 80061414 02004014 */  bnez       $v0, .L80061420
    /* 51C18 80061418 07000224 */   addiu     $v0, $zero, 0x7
    /* 51C1C 8006141C FC0402A2 */  sb         $v0, 0x4FC($s0)
  .L80061420:
    /* 51C20 80061420 FD040282 */  lb         $v0, 0x4FD($s0)
    /* 51C24 80061424 00000000 */  nop
    /* 51C28 80061428 08004228 */  slti       $v0, $v0, 0x8
    /* 51C2C 8006142C 02004014 */  bnez       $v0, .L80061438
    /* 51C30 80061430 07000224 */   addiu     $v0, $zero, 0x7
    /* 51C34 80061434 FD0402A2 */  sb         $v0, 0x4FD($s0)
  .L80061438:
    /* 51C38 80061438 FE040282 */  lb         $v0, 0x4FE($s0)
    /* 51C3C 8006143C 00000000 */  nop
    /* 51C40 80061440 08004228 */  slti       $v0, $v0, 0x8
    /* 51C44 80061444 02004014 */  bnez       $v0, .L80061450
    /* 51C48 80061448 07000224 */   addiu     $v0, $zero, 0x7
    /* 51C4C 8006144C FE0402A2 */  sb         $v0, 0x4FE($s0)
  .L80061450:
    /* 51C50 80061450 FF040282 */  lb         $v0, 0x4FF($s0)
    /* 51C54 80061454 00000000 */  nop
    /* 51C58 80061458 08004228 */  slti       $v0, $v0, 0x8
    /* 51C5C 8006145C 02004014 */  bnez       $v0, .L80061468
    /* 51C60 80061460 07000224 */   addiu     $v0, $zero, 0x7
    /* 51C64 80061464 FF0402A2 */  sb         $v0, 0x4FF($s0)
  .L80061468:
    /* 51C68 80061468 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 51C6C 8006146C 1800B08F */  lw         $s0, 0x18($sp)
    /* 51C70 80061470 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 51C74 80061474 0800E003 */  jr         $ra
    /* 51C78 80061478 00000000 */   nop
.size Sub_screen_rb_parts_set, . - Sub_screen_rb_parts_set
