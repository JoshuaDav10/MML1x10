.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060C70
    /* 51470 80060C70 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 51474 80060C74 1000B0AF */  sw         $s0, 0x10($sp)
    /* 51478 80060C78 1400BFAF */  sw         $ra, 0x14($sp)
    /* 5147C 80060C7C 8387010C */  jal        Sub_screen_basic_param_set
    /* 51480 80060C80 21808000 */   addu      $s0, $a0, $zero
    /* 51484 80060C84 01000382 */  lb         $v1, 0x1($s0)
    /* 51488 80060C88 01000224 */  addiu      $v0, $zero, 0x1
    /* 5148C 80060C8C 10006210 */  beq        $v1, $v0, .L80060CD0
    /* 51490 80060C90 02006228 */   slti      $v0, $v1, 0x2
    /* 51494 80060C94 05004010 */  beqz       $v0, .L80060CAC
    /* 51498 80060C98 00000000 */   nop
    /* 5149C 80060C9C 08006010 */  beqz       $v1, .L80060CC0
    /* 514A0 80060CA0 21100000 */   addu      $v0, $zero, $zero
    /* 514A4 80060CA4 69830108 */  j          .L80060DA4
    /* 514A8 80060CA8 00000000 */   nop
  .L80060CAC:
    /* 514AC 80060CAC 02000224 */  addiu      $v0, $zero, 0x2
    /* 514B0 80060CB0 18006210 */  beq        $v1, $v0, .L80060D14
    /* 514B4 80060CB4 0040023C */   lui       $v0, (0x40000000 >> 16)
    /* 514B8 80060CB8 69830108 */  j          .L80060DA4
    /* 514BC 80060CBC 21100000 */   addu      $v0, $zero, $zero
  .L80060CC0:
    /* 514C0 80060CC0 0980053C */  lui        $a1, %hi(D_8008CE78)
    /* 514C4 80060CC4 78CEA58C */  lw         $a1, %lo(D_8008CE78)($a1)
    /* 514C8 80060CC8 3E830108 */  j          .L80060CF8
    /* 514CC 80060CCC 21200000 */   addu      $a0, $zero, $zero
  .L80060CD0:
    /* 514D0 80060CD0 0A80033C */  lui        $v1, %hi(Moji_flag)
    /* 514D4 80060CD4 588A638C */  lw         $v1, %lo(Moji_flag)($v1)
    /* 514D8 80060CD8 0040023C */  lui        $v0, (0x40000000 >> 16)
    /* 514DC 80060CDC 24106200 */  and        $v0, $v1, $v0
    /* 514E0 80060CE0 2F004010 */  beqz       $v0, .L80060DA0
    /* 514E4 80060CE4 FF006230 */   andi      $v0, $v1, 0xFF
    /* 514E8 80060CE8 12004014 */  bnez       $v0, .L80060D34
    /* 514EC 80060CEC 21200000 */   addu      $a0, $zero, $zero
    /* 514F0 80060CF0 0980053C */  lui        $a1, %hi(D_8008CE84)
    /* 514F4 80060CF4 84CEA58C */  lw         $a1, %lo(D_8008CE84)($a1)
  .L80060CF8:
    /* 514F8 80060CF8 0B4E010C */  jal        MojiTaskExec
    /* 514FC 80060CFC FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 51500 80060D00 01000292 */  lbu        $v0, 0x1($s0)
    /* 51504 80060D04 00000000 */  nop
    /* 51508 80060D08 01004224 */  addiu      $v0, $v0, 0x1
    /* 5150C 80060D0C 68830108 */  j          .L80060DA0
    /* 51510 80060D10 010002A2 */   sb        $v0, 0x1($s0)
  .L80060D14:
    /* 51514 80060D14 0A80033C */  lui        $v1, %hi(Moji_flag)
    /* 51518 80060D18 588A638C */  lw         $v1, %lo(Moji_flag)($v1)
    /* 5151C 80060D1C 00000000 */  nop
    /* 51520 80060D20 24106200 */  and        $v0, $v1, $v0
    /* 51524 80060D24 1E004010 */  beqz       $v0, .L80060DA0
    /* 51528 80060D28 FF006230 */   andi      $v0, $v1, 0xFF
    /* 5152C 80060D2C 03004010 */  beqz       $v0, .L80060D3C
    /* 51530 80060D30 00000000 */   nop
  .L80060D34:
    /* 51534 80060D34 68830108 */  j          .L80060DA0
    /* 51538 80060D38 000000AE */   sw        $zero, 0x0($s0)
  .L80060D3C:
    /* 5153C 80060D3C 8C4E010C */  jal        MojiTaskKill
    /* 51540 80060D40 00000000 */   nop
    /* 51544 80060D44 EA8E010C */  jal        func_80063BA8
    /* 51548 80060D48 00000000 */   nop
    /* 5154C 80060D4C BC8F010C */  jal        func_80063EF0
    /* 51550 80060D50 00000000 */   nop
    /* 51554 80060D54 7A99010C */  jal        func_800665E8
    /* 51558 80060D58 00000000 */   nop
    /* 5155C 80060D5C C56C000C */  jal        func_8001B314
    /* 51560 80060D60 00000000 */   nop
    /* 51564 80060D64 CF6C000C */  jal        func_8001B33C
    /* 51568 80060D68 00000000 */   nop
    /* 5156C 80060D6C 21200000 */  addu       $a0, $zero, $zero
    /* 51570 80060D70 01000524 */  addiu      $a1, $zero, 0x1
    /* 51574 80060D74 2575000C */  jal        func_8001D494
    /* 51578 80060D78 21300000 */   addu      $a2, $zero, $zero
    /* 5157C 80060D7C 3477000C */  jal        Sce_flag_off
    /* 51580 80060D80 FE010424 */   addiu     $a0, $zero, 0x1FE
    /* 51584 80060D84 01000224 */  addiu      $v0, $zero, 0x1
    /* 51588 80060D88 0A80013C */  lui        $at, %hi(Code800133D8_work)
    /* 5158C 80060D8C A88A22A4 */  sh         $v0, %lo(Code800133D8_work)($at)
    /* 51590 80060D90 0180043C */  lui        $a0, %hi(func_80013420)
    /* 51594 80060D94 20348424 */  addiu      $a0, $a0, %lo(func_80013420)
    /* 51598 80060D98 DE4B000C */  jal        func_80012F78
    /* 5159C 80060D9C 00000000 */   nop
  .L80060DA0:
    /* 515A0 80060DA0 21100000 */  addu       $v0, $zero, $zero
  .L80060DA4:
    /* 515A4 80060DA4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 515A8 80060DA8 1000B08F */  lw         $s0, 0x10($sp)
    /* 515AC 80060DAC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 515B0 80060DB0 0800E003 */  jr         $ra
    /* 515B4 80060DB4 00000000 */   nop
.size func_80060C70, . - func_80060C70
