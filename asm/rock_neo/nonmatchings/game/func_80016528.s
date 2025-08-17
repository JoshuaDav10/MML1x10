.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80016528
    /* 6D28 80016528 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6D2C 8001652C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6D30 80016530 21808000 */  addu       $s0, $a0, $zero
    /* 6D34 80016534 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6D38 80016538 01000382 */  lb         $v1, 0x1($s0)
    /* 6D3C 8001653C 00000000 */  nop
    /* 6D40 80016540 06006010 */  beqz       $v1, .L8001655C
    /* 6D44 80016544 00000000 */   nop
    /* 6D48 80016548 01000224 */  addiu      $v0, $zero, 0x1
    /* 6D4C 8001654C 1A006210 */  beq        $v1, $v0, .L800165B8
    /* 6D50 80016550 00000000 */   nop
    /* 6D54 80016554 8A590008 */  j          .L80016628
    /* 6D58 80016558 00000000 */   nop
  .L8001655C:
    /* 6D5C 8001655C CF77010C */  jal        func_8005DF3C
    /* 6D60 80016560 00000000 */   nop
    /* 6D64 80016564 0B80023C */  lui        $v0, %hi(Player_work + 0xBD)
    /* 6D68 80016568 6D524290 */  lbu        $v0, %lo(Player_work + 0xBD)($v0)
    /* 6D6C 8001656C 00000000 */  nop
    /* 6D70 80016570 40004234 */  ori        $v0, $v0, 0x40
    /* 6D74 80016574 0B80013C */  lui        $at, %hi(Player_work + 0xBD)
    /* 6D78 80016578 6D5222A0 */  sb         $v0, %lo(Player_work + 0xBD)($at)
    /* 6D7C 8001657C 8C4E010C */  jal        MojiTaskKill
    /* 6D80 80016580 00000000 */   nop
    /* 6D84 80016584 BC8F010C */  jal        func_80063EF0
    /* 6D88 80016588 00000000 */   nop
    /* 6D8C 8001658C 0C5F000C */  jal        func_80017C30
    /* 6D90 80016590 21200000 */   addu      $a0, $zero, $zero
    /* 6D94 80016594 BC6C000C */  jal        func_8001B2F0
    /* 6D98 80016598 10000424 */   addiu     $a0, $zero, 0x10
    /* 6D9C 8001659C BC6C000C */  jal        func_8001B2F0
    /* 6DA0 800165A0 16000424 */   addiu     $a0, $zero, 0x16
    /* 6DA4 800165A4 BC6C000C */  jal        func_8001B2F0
    /* 6DA8 800165A8 17000424 */   addiu     $a0, $zero, 0x17
    /* 6DAC 800165AC 01000292 */  lbu        $v0, 0x1($s0)
    /* 6DB0 800165B0 89590008 */  j          .L80016624
    /* 6DB4 800165B4 01004224 */   addiu     $v0, $v0, 0x1
  .L800165B8:
    /* 6DB8 800165B8 D377010C */  jal        func_8005DF4C
    /* 6DBC 800165BC 00000000 */   nop
    /* 6DC0 800165C0 0C80033C */  lui        $v1, %hi(D_800C0C2A)
    /* 6DC4 800165C4 2A0C6394 */  lhu        $v1, %lo(D_800C0C2A)($v1)
    /* 6DC8 800165C8 00000000 */  nop
    /* 6DCC 800165CC 01006230 */  andi       $v0, $v1, 0x1
    /* 6DD0 800165D0 03004014 */  bnez       $v0, .L800165E0
    /* 6DD4 800165D4 00106230 */   andi      $v0, $v1, 0x1000
    /* 6DD8 800165D8 13004010 */  beqz       $v0, .L80016628
    /* 6DDC 800165DC 00000000 */   nop
  .L800165E0:
    /* 6DE0 800165E0 0B80043C */  lui        $a0, %hi(Player_work)
    /* 6DE4 800165E4 B0518424 */  addiu      $a0, $a0, %lo(Player_work)
    /* 6DE8 800165E8 2489010C */  jal        Sub_screen_sound_reinit
    /* 6DEC 800165EC 00000000 */   nop
    /* 6DF0 800165F0 0B80023C */  lui        $v0, %hi(Player_work + 0xBD)
    /* 6DF4 800165F4 6D524290 */  lbu        $v0, %lo(Player_work + 0xBD)($v0)
    /* 6DF8 800165F8 00000000 */  nop
    /* 6DFC 800165FC BF004230 */  andi       $v0, $v0, 0xBF
    /* 6E00 80016600 0B80013C */  lui        $at, %hi(Player_work + 0xBD)
    /* 6E04 80016604 6D5222A0 */  sb         $v0, %lo(Player_work + 0xBD)($at)
    /* 6E08 80016608 8C4E010C */  jal        MojiTaskKill
    /* 6E0C 8001660C 00000000 */   nop
    /* 6E10 80016610 CA8F010C */  jal        Game_logo_kill
    /* 6E14 80016614 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 6E18 80016618 03000224 */  addiu      $v0, $zero, 0x3
    /* 6E1C 8001661C 000002A2 */  sb         $v0, 0x0($s0)
    /* 6E20 80016620 01000224 */  addiu      $v0, $zero, 0x1
  .L80016624:
    /* 6E24 80016624 010002A2 */  sb         $v0, 0x1($s0)
  .L80016628:
    /* 6E28 80016628 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6E2C 8001662C 1000B08F */  lw         $s0, 0x10($sp)
    /* 6E30 80016630 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6E34 80016634 0800E003 */  jr         $ra
    /* 6E38 80016638 00000000 */   nop
.size func_80016528, . - func_80016528
