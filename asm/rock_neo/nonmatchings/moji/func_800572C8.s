.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800572C8
    /* 47AC8 800572C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 47ACC 800572CC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 47AD0 800572D0 21808000 */  addu       $s0, $a0, $zero
    /* 47AD4 800572D4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 47AD8 800572D8 9676000C */  jal        Sce_flag_test
    /* 47ADC 800572DC EE020424 */   addiu     $a0, $zero, 0x2EE
    /* 47AE0 800572E0 11004010 */  beqz       $v0, .L80057328
    /* 47AE4 800572E4 21280000 */   addu      $a1, $zero, $zero
    /* 47AE8 800572E8 CC108293 */  lbu        $v0, %gp_rel(D_80098930)($gp)
    /* 47AEC 800572EC 00000000 */  nop
    /* 47AF0 800572F0 40100200 */  sll        $v0, $v0, 1
    /* 47AF4 800572F4 0980013C */  lui        $at, %hi(D_8008FD3C)
    /* 47AF8 800572F8 21082200 */  addu       $at, $at, $v0
    /* 47AFC 800572FC 3CFD2494 */  lhu        $a0, %lo(D_8008FD3C)($at)
    /* 47B00 80057300 21300000 */  addu       $a2, $zero, $zero
    /* 47B04 80057304 A50C010C */  jal        func_80043294
    /* 47B08 80057308 82200400 */   srl       $a0, $a0, 2
    /* 47B0C 8005730C CC108493 */  lbu        $a0, %gp_rel(D_80098930)($gp)
    /* 47B10 80057310 3477000C */  jal        Sce_flag_off
    /* 47B14 80057314 00058434 */   ori       $a0, $a0, 0x500
    /* 47B18 80057318 C884010C */  jal        Sub_screen_rb_parts_set
    /* 47B1C 8005731C 00000000 */   nop
    /* 47B20 80057320 F95C0108 */  j          .L800573E4
    /* 47B24 80057324 00000000 */   nop
  .L80057328:
    /* 47B28 80057328 CC108293 */  lbu        $v0, %gp_rel(D_80098930)($gp)
    /* 47B2C 8005732C 00000000 */  nop
    /* 47B30 80057330 40100200 */  sll        $v0, $v0, 1
    /* 47B34 80057334 0980013C */  lui        $at, %hi(D_8008FD3C)
    /* 47B38 80057338 21082200 */  addu       $at, $at, $v0
    /* 47B3C 8005733C 3CFD2494 */  lhu        $a0, %lo(D_8008FD3C)($at)
    /* 47B40 80057340 21300000 */  addu       $a2, $zero, $zero
    /* 47B44 80057344 A50C010C */  jal        func_80043294
    /* 47B48 80057348 23200400 */   negu      $a0, $a0
    /* 47B4C 8005734C CC108393 */  lbu        $v1, %gp_rel(D_80098930)($gp)
    /* 47B50 80057350 23000224 */  addiu      $v0, $zero, 0x23
    /* 47B54 80057354 0D006214 */  bne        $v1, $v0, .L8005738C
    /* 47B58 80057358 24000224 */   addiu     $v0, $zero, 0x24
    /* 47B5C 8005735C 0B80023C */  lui        $v0, %hi(Player_work + 0xB0)
    /* 47B60 80057360 60524294 */  lhu        $v0, %lo(Player_work + 0xB0)($v0)
    /* 47B64 80057364 00000000 */  nop
    /* 47B68 80057368 10004224 */  addiu      $v0, $v0, 0x10
    /* 47B6C 8005736C 0B80013C */  lui        $at, %hi(Player_work + 0xB0)
    /* 47B70 80057370 605222A4 */  sh         $v0, %lo(Player_work + 0xB0)($at)
    /* 47B74 80057374 0B80013C */  lui        $at, %hi(Player_work + 0x6E)
    /* 47B78 80057378 1E5222A4 */  sh         $v0, %lo(Player_work + 0x6E)($at)
    /* 47B7C 8005737C 9E76010C */  jal        func_8005DA78
    /* 47B80 80057380 01000424 */   addiu     $a0, $zero, 0x1
    /* 47B84 80057384 F65C0108 */  j          .L800573D8
    /* 47B88 80057388 00000000 */   nop
  .L8005738C:
    /* 47B8C 8005738C 08006214 */  bne        $v1, $v0, .L800573B0
    /* 47B90 80057390 25000224 */   addiu     $v0, $zero, 0x25
    /* 47B94 80057394 03000224 */  addiu      $v0, $zero, 0x3
    /* 47B98 80057398 0C80013C */  lui        $at, %hi(Game_work + 0x7C)
    /* 47B9C 8005739C 8C1B22A0 */  sb         $v0, %lo(Game_work + 0x7C)($at)
    /* 47BA0 800573A0 0C80013C */  lui        $at, %hi(Game_work + 0x7D)
    /* 47BA4 800573A4 8D1B22A0 */  sb         $v0, %lo(Game_work + 0x7D)($at)
    /* 47BA8 800573A8 F65C0108 */  j          .L800573D8
    /* 47BAC 800573AC 00000000 */   nop
  .L800573B0:
    /* 47BB0 800573B0 09006214 */  bne        $v1, $v0, .L800573D8
    /* 47BB4 800573B4 00000000 */   nop
    /* 47BB8 800573B8 0C80033C */  lui        $v1, %hi(Game_work + 0x7D)
    /* 47BBC 800573BC 8D1B6324 */  addiu      $v1, $v1, %lo(Game_work + 0x7D)
    /* 47BC0 800573C0 00006290 */  lbu        $v0, 0x0($v1)
    /* 47BC4 800573C4 00000000 */  nop
    /* 47BC8 800573C8 01004224 */  addiu      $v0, $v0, 0x1
    /* 47BCC 800573CC 000062A0 */  sb         $v0, 0x0($v1)
    /* 47BD0 800573D0 0C80013C */  lui        $at, %hi(Game_work + 0x7C)
    /* 47BD4 800573D4 8C1B22A0 */  sb         $v0, %lo(Game_work + 0x7C)($at)
  .L800573D8:
    /* 47BD8 800573D8 CC108493 */  lbu        $a0, %gp_rel(D_80098930)($gp)
    /* 47BDC 800573DC A376000C */  jal        Sce_flag_on
    /* 47BE0 800573E0 00058434 */   ori       $a0, $a0, 0x500
  .L800573E4:
    /* 47BE4 800573E4 6C00038E */  lw         $v1, 0x6C($s0)
    /* 47BE8 800573E8 01000224 */  addiu      $v0, $zero, 0x1
    /* 47BEC 800573EC 01006324 */  addiu      $v1, $v1, 0x1
    /* 47BF0 800573F0 6C0003AE */  sw         $v1, 0x6C($s0)
    /* 47BF4 800573F4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 47BF8 800573F8 1000B08F */  lw         $s0, 0x10($sp)
    /* 47BFC 800573FC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 47C00 80057400 0800E003 */  jr         $ra
    /* 47C04 80057404 00000000 */   nop
.size func_800572C8, . - func_800572C8
