.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sub_screen_back_ground_set
    /* 52B68 80062368 00E1023C */  lui        $v0, (0xE100000D >> 16)
    /* 52B6C 8006236C 0D004234 */  ori        $v0, $v0, (0xE100000D & 0xFFFF)
    /* 52B70 80062370 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* 52B74 80062374 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* 52B78 80062378 21500000 */  addu       $t2, $zero, $zero
    /* 52B7C 8006237C FF000E3C */  lui        $t6, (0xFFFFFF >> 16)
    /* 52B80 80062380 FFFFCE35 */  ori        $t6, $t6, (0xFFFFFF & 0xFFFF)
    /* 52B84 80062384 00040F3C */  lui        $t7, (0x4000000 >> 16)
    /* 52B88 80062388 80640D3C */  lui        $t5, (0x64808080 >> 16)
    /* 52B8C 8006238C 8080AD35 */  ori        $t5, $t5, (0x64808080 & 0xFFFF)
    /* 52B90 80062390 801F0C3C */  lui        $t4, (0x1F800002 >> 16)
    /* 52B94 80062394 02008C35 */  ori        $t4, $t4, (0x1F800002 & 0xFFFF)
    /* 52B98 80062398 773E0B3C */  lui        $t3, (0x3E7788C0 >> 16)
    /* 52B9C 8006239C C0886B35 */  ori        $t3, $t3, (0x3E7788C0 & 0xFFFF)
    /* 52BA0 800623A0 C0FF0824 */  addiu      $t0, $zero, -0x40
    /* 52BA4 800623A4 801F073C */  lui        $a3, (0x1F800070 >> 16)
    /* 52BA8 800623A8 7000E78C */  lw         $a3, (0x1F800070 & 0xFFFF)($a3)
    /* 52BAC 800623AC 0002043C */  lui        $a0, (0x2000000 >> 16)
    /* 52BB0 800623B0 0400E2AC */  sw         $v0, 0x4($a3)
    /* 52BB4 800623B4 1400E224 */  addiu      $v0, $a3, 0x14
    /* 52BB8 800623B8 24184300 */  and        $v1, $v0, $v1
    /* 52BBC 800623BC 25186400 */  or         $v1, $v1, $a0
    /* 52BC0 800623C0 21C0E000 */  addu       $t8, $a3, $zero
    /* 52BC4 800623C4 0000E4AC */  sw         $a0, 0x0($a3)
    /* 52BC8 800623C8 0800E0AC */  sw         $zero, 0x8($a3)
    /* 52BCC 800623CC 0000E3AC */  sw         $v1, 0x0($a3)
    /* 52BD0 800623D0 21384000 */  addu       $a3, $v0, $zero
  .L800623D4:
    /* 52BD4 800623D4 21300000 */  addu       $a2, $zero, $zero
    /* 52BD8 800623D8 4000093C */  lui        $t1, (0x400040 >> 16)
    /* 52BDC 800623DC 40002935 */  ori        $t1, $t1, (0x400040 & 0xFFFF)
    /* 52BE0 800623E0 C0FF0524 */  addiu      $a1, $zero, -0x40
  .L800623E4:
    /* 52BE4 800623E4 1400E424 */  addiu      $a0, $a3, 0x14
    /* 52BE8 800623E8 24108E00 */  and        $v0, $a0, $t6
    /* 52BEC 800623EC 25104F00 */  or         $v0, $v0, $t7
    /* 52BF0 800623F0 0000E2AC */  sw         $v0, 0x0($a3)
    /* 52BF4 800623F4 0400EDAC */  sw         $t5, 0x4($a3)
    /* 52BF8 800623F8 00008395 */  lhu        $v1, 0x0($t4)
    /* 52BFC 800623FC 0100C624 */  addiu      $a2, $a2, 0x1
    /* 52C00 80062400 0C00EBAC */  sw         $t3, 0xC($a3)
    /* 52C04 80062404 1000E9AC */  sw         $t1, 0x10($a3)
    /* 52C08 80062408 3F006330 */  andi       $v1, $v1, 0x3F
    /* 52C0C 8006240C 2110A300 */  addu       $v0, $a1, $v1
    /* 52C10 80062410 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 52C14 80062414 21180301 */  addu       $v1, $t0, $v1
    /* 52C18 80062418 001C0300 */  sll        $v1, $v1, 16
    /* 52C1C 8006241C 25104300 */  or         $v0, $v0, $v1
    /* 52C20 80062420 0800E2AC */  sw         $v0, 0x8($a3)
    /* 52C24 80062424 21388000 */  addu       $a3, $a0, $zero
    /* 52C28 80062428 0700C228 */  slti       $v0, $a2, 0x7
    /* 52C2C 8006242C EDFF4014 */  bnez       $v0, .L800623E4
    /* 52C30 80062430 4000A524 */   addiu     $a1, $a1, 0x40
    /* 52C34 80062434 01004A25 */  addiu      $t2, $t2, 0x1
    /* 52C38 80062438 05004229 */  slti       $v0, $t2, 0x5
    /* 52C3C 8006243C E5FF4014 */  bnez       $v0, .L800623D4
    /* 52C40 80062440 40000825 */   addiu     $t0, $t0, 0x40
    /* 52C44 80062444 FF00043C */  lui        $a0, (0xFFFFFF >> 16)
    /* 52C48 80062448 FFFF8434 */  ori        $a0, $a0, (0xFFFFFF & 0xFFFF)
    /* 52C4C 8006244C ECFFE38C */  lw         $v1, -0x14($a3)
    /* 52C50 80062450 0A80053C */  lui        $a1, %hi(D_80098934)
    /* 52C54 80062454 3489A58C */  lw         $a1, %lo(D_80098934)($a1)
    /* 52C58 80062458 00FF063C */  lui        $a2, (0xFF000000 >> 16)
    /* 52C5C 8006245C 801F013C */  lui        $at, (0x1F800070 >> 16)
    /* 52C60 80062460 700027AC */  sw         $a3, (0x1F800070 & 0xFFFF)($at)
    /* 52C64 80062464 8C00A28C */  lw         $v0, 0x8C($a1)
    /* 52C68 80062468 24186600 */  and        $v1, $v1, $a2
    /* 52C6C 8006246C 24104400 */  and        $v0, $v0, $a0
    /* 52C70 80062470 25186200 */  or         $v1, $v1, $v0
    /* 52C74 80062474 ECFFE3AC */  sw         $v1, -0x14($a3)
    /* 52C78 80062478 8C00A28C */  lw         $v0, 0x8C($a1)
    /* 52C7C 8006247C 24200403 */  and        $a0, $t8, $a0
    /* 52C80 80062480 24104600 */  and        $v0, $v0, $a2
    /* 52C84 80062484 25104400 */  or         $v0, $v0, $a0
    /* 52C88 80062488 0800E003 */  jr         $ra
    /* 52C8C 8006248C 8C00A2AC */   sw        $v0, 0x8C($a1)
.size Sub_screen_back_ground_set, . - Sub_screen_back_ground_set
