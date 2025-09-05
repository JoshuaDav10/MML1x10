.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80043294
    /* 33A94 80043294 2800A014 */  bnez       $a1, .L80043338
    /* 33A98 80043298 00000000 */   nop
    /* 33A9C 8004329C 0C008018 */  blez       $a0, .L800432D0
    /* 33AA0 800432A0 0F00053C */   lui       $a1, (0xF423F >> 16)
    /* 33AA4 800432A4 0C80033C */  lui        $v1, %hi(Game_work + 0x1C)
    /* 33AA8 800432A8 2C1B6324 */  addiu      $v1, $v1, %lo(Game_work + 0x1C)
    /* 33AAC 800432AC 0000628C */  lw         $v0, 0x0($v1)
    /* 33AB0 800432B0 3F42A534 */  ori        $a1, $a1, (0xF423F & 0xFFFF)
    /* 33AB4 800432B4 21104400 */  addu       $v0, $v0, $a0
    /* 33AB8 800432B8 000062AC */  sw         $v0, 0x0($v1)
    /* 33ABC 800432BC 2B10A200 */  sltu       $v0, $a1, $v0
    /* 33AC0 800432C0 1D004010 */  beqz       $v0, .L80043338
    /* 33AC4 800432C4 00000000 */   nop
    /* 33AC8 800432C8 CE0C0108 */  j          .L80043338
    /* 33ACC 800432CC 000065AC */   sw        $a1, 0x0($v1)
  .L800432D0:
    /* 33AD0 800432D0 0F00033C */  lui        $v1, (0xF423F >> 16)
    /* 33AD4 800432D4 0C80053C */  lui        $a1, %hi(Game_work + 0x1C)
    /* 33AD8 800432D8 2C1BA524 */  addiu      $a1, $a1, %lo(Game_work + 0x1C)
    /* 33ADC 800432DC 0000A28C */  lw         $v0, 0x0($a1)
    /* 33AE0 800432E0 3F426334 */  ori        $v1, $v1, (0xF423F & 0xFFFF)
    /* 33AE4 800432E4 21104400 */  addu       $v0, $v0, $a0
    /* 33AE8 800432E8 2B186200 */  sltu       $v1, $v1, $v0
    /* 33AEC 800432EC 02006010 */  beqz       $v1, .L800432F8
    /* 33AF0 800432F0 0000A2AC */   sw        $v0, 0x0($a1)
    /* 33AF4 800432F4 0000A0AC */  sw         $zero, 0x0($a1)
  .L800432F8:
    /* 33AF8 800432F8 0900C010 */  beqz       $a2, .L80043320
    /* 33AFC 800432FC 00000000 */   nop
    /* 33B00 80043300 0C80023C */  lui        $v0, %hi(Game_work + 0x24)
    /* 33B04 80043304 341B428C */  lw         $v0, %lo(Game_work + 0x24)($v0)
    /* 33B08 80043308 00000000 */  nop
    /* 33B0C 8004330C 23104400 */  subu       $v0, $v0, $a0
    /* 33B10 80043310 0C80013C */  lui        $at, %hi(Game_work + 0x24)
    /* 33B14 80043314 341B22AC */  sw         $v0, %lo(Game_work + 0x24)($at)
    /* 33B18 80043318 CE0C0108 */  j          .L80043338
    /* 33B1C 8004331C 00000000 */   nop
  .L80043320:
    /* 33B20 80043320 0C80023C */  lui        $v0, %hi(Game_work + 0x20)
    /* 33B24 80043324 301B428C */  lw         $v0, %lo(Game_work + 0x20)($v0)
    /* 33B28 80043328 00000000 */  nop
    /* 33B2C 8004332C 23104400 */  subu       $v0, $v0, $a0
    /* 33B30 80043330 0C80013C */  lui        $at, %hi(Game_work + 0x20)
    /* 33B34 80043334 301B22AC */  sw         $v0, %lo(Game_work + 0x20)($at)
  .L80043338:
    /* 33B38 80043338 0800E003 */  jr         $ra
    /* 33B3C 8004333C 00000000 */   nop
.size func_80043294, . - func_80043294
