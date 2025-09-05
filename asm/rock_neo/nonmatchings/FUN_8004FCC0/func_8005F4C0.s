.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005F4C0
    /* 4FCC0 8005F4C0 02004224 */  addiu      $v0, $v0, 0x2
    /* 4FCC4 8005F4C4 7D7D0108 */  j          .L8005F5F4
    /* 4FCC8 8005F4C8 020002A2 */   sb        $v0, 0x2($s0)
  .L8005F4CC:
    /* 4FCCC 8005F4CC 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4FCD0 8005F4D0 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4FCD4 8005F4D4 0B4E010C */  jal        MojiTaskExec
    /* 4FCD8 8005F4D8 42000624 */   addiu     $a2, $zero, 0x42
    /* 4FCDC 8005F4DC 707D0108 */  j          .L8005F5C0
    /* 4FCE0 8005F4E0 00000000 */   nop
  .L8005F4E4:
    /* 4FCE4 8005F4E4 0A80033C */  lui        $v1, %hi(Moji_flag)
    /* 4FCE8 8005F4E8 588A638C */  lw         $v1, %lo(Moji_flag)($v1)
    /* 4FCEC 8005F4EC 0040023C */  lui        $v0, (0x40000000 >> 16)
    /* 4FCF0 8005F4F0 24106200 */  and        $v0, $v1, $v0
    /* 4FCF4 8005F4F4 3F004010 */  beqz       $v0, .L8005F5F4
    /* 4FCF8 8005F4F8 FF006230 */   andi      $v0, $v1, 0xFF
    /* 4FCFC 8005F4FC 30004014 */  bnez       $v0, .L8005F5C0
    /* 4FD00 8005F500 00000000 */   nop
    /* 4FD04 8005F504 0B80023C */  lui        $v0, %hi(Player_work + 0x6E)
    /* 4FD08 8005F508 1E524294 */  lhu        $v0, %lo(Player_work + 0x6E)($v0)
    /* 4FD0C 8005F50C 0B80033C */  lui        $v1, %hi(Player_work + 0xB0)
    /* 4FD10 8005F510 60526384 */  lh         $v1, %lo(Player_work + 0xB0)($v1)
    /* 4FD14 8005F514 F0004230 */  andi       $v0, $v0, 0xF0
    /* 4FD18 8005F518 23186200 */  subu       $v1, $v1, $v0
    /* 4FD1C 8005F51C 0C80023C */  lui        $v0, %hi(Game_work + 0x7C)
    /* 4FD20 8005F520 8C1B4290 */  lbu        $v0, %lo(Game_work + 0x7C)($v0)
    /* 4FD24 8005F524 03190300 */  sra        $v1, $v1, 4
    /* 4FD28 8005F528 2A104300 */  slt        $v0, $v0, $v1
    /* 4FD2C 8005F52C 12004010 */  beqz       $v0, .L8005F578
    /* 4FD30 8005F530 21200000 */   addu      $a0, $zero, $zero
    /* 4FD34 8005F534 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4FD38 8005F538 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4FD3C 8005F53C 0B4E010C */  jal        MojiTaskExec
    /* 4FD40 8005F540 44000624 */   addiu     $a2, $zero, 0x44
    /* 4FD44 8005F544 0B80023C */  lui        $v0, %hi(Player_work + 0x6E)
    /* 4FD48 8005F548 1E524294 */  lhu        $v0, %lo(Player_work + 0x6E)($v0)
    /* 4FD4C 8005F54C 0C80033C */  lui        $v1, %hi(Game_work + 0x7C)
    /* 4FD50 8005F550 8C1B6390 */  lbu        $v1, %lo(Game_work + 0x7C)($v1)
    /* 4FD54 8005F554 0C80013C */  lui        $at, %hi(Game_work + 0x7C)
    /* 4FD58 8005F558 8C1B20A0 */  sb         $zero, %lo(Game_work + 0x7C)($at)
    /* 4FD5C 8005F55C F0004230 */  andi       $v0, $v0, 0xF0
    /* 4FD60 8005F560 00190300 */  sll        $v1, $v1, 4
    /* 4FD64 8005F564 21104300 */  addu       $v0, $v0, $v1
    /* 4FD68 8005F568 0B80013C */  lui        $at, %hi(Player_work + 0x6E)
    /* 4FD6C 8005F56C 1E5222A4 */  sh         $v0, %lo(Player_work + 0x6E)($at)
    /* 4FD70 8005F570 707D0108 */  j          .L8005F5C0
    /* 4FD74 8005F574 00000000 */   nop
  .L8005F578:
    /* 4FD78 8005F578 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 4FD7C 8005F57C 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 4FD80 8005F580 0B4E010C */  jal        MojiTaskExec
    /* 4FD84 8005F584 43000624 */   addiu     $a2, $zero, 0x43
    /* 4FD88 8005F588 0B80023C */  lui        $v0, %hi(Player_work + 0x6E)
    /* 4FD8C 8005F58C 1E524294 */  lhu        $v0, %lo(Player_work + 0x6E)($v0)
    /* 4FD90 8005F590 0B80043C */  lui        $a0, %hi(Player_work + 0xB0)
    /* 4FD94 8005F594 60528484 */  lh         $a0, %lo(Player_work + 0xB0)($a0)
    /* 4FD98 8005F598 0C80033C */  lui        $v1, %hi(Game_work + 0x7C)
    /* 4FD9C 8005F59C 8C1B6390 */  lbu        $v1, %lo(Game_work + 0x7C)($v1)
    /* 4FDA0 8005F5A0 F0004230 */  andi       $v0, $v0, 0xF0
    /* 4FDA4 8005F5A4 23108200 */  subu       $v0, $a0, $v0
    /* 4FDA8 8005F5A8 03110200 */  sra        $v0, $v0, 4
    /* 4FDAC 8005F5AC 23186200 */  subu       $v1, $v1, $v0
    /* 4FDB0 8005F5B0 0C80013C */  lui        $at, %hi(Game_work + 0x7C)
    /* 4FDB4 8005F5B4 8C1B23A0 */  sb         $v1, %lo(Game_work + 0x7C)($at)
    /* 4FDB8 8005F5B8 0B80013C */  lui        $at, %hi(Player_work + 0x6E)
    /* 4FDBC 8005F5BC 1E5224A4 */  sh         $a0, %lo(Player_work + 0x6E)($at)
  .L8005F5C0:
    /* 4FDC0 8005F5C0 02000292 */  lbu        $v0, 0x2($s0)
    /* 4FDC4 8005F5C4 00000000 */  nop
    /* 4FDC8 8005F5C8 01004224 */  addiu      $v0, $v0, 0x1
    /* 4FDCC 8005F5CC 7D7D0108 */  j          .L8005F5F4
    /* 4FDD0 8005F5D0 020002A2 */   sb        $v0, 0x2($s0)
  .L8005F5D4:
    /* 4FDD4 8005F5D4 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 4FDD8 8005F5D8 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 4FDDC 8005F5DC 00000000 */  nop
    /* 4FDE0 8005F5E0 24104300 */  and        $v0, $v0, $v1
    /* 4FDE4 8005F5E4 03004014 */  bnez       $v0, .L8005F5F4
    /* 4FDE8 8005F5E8 02000224 */   addiu     $v0, $zero, 0x2
    /* 4FDEC 8005F5EC 010002A2 */  sb         $v0, 0x1($s0)
    /* 4FDF0 8005F5F0 020000A2 */  sb         $zero, 0x2($s0)
  .L8005F5F4:
    /* 4FDF4 8005F5F4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4FDF8 8005F5F8 1800B08F */  lw         $s0, 0x18($sp)
    /* 4FDFC 8005F5FC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4FE00 8005F600 0800E003 */  jr         $ra
    /* 4FE04 8005F604 00000000 */   nop
.size func_8005F4C0, . - func_8005F4C0
