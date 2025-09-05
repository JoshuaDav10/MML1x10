.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80050A90
    /* 41290 80050A90 801F023C */  lui        $v0, (0x1F8000D4 >> 16)
    /* 41294 80050A94 D4004284 */  lh         $v0, (0x1F8000D4 & 0xFFFF)($v0)
    /* 41298 80050A98 00000000 */  nop
    /* 4129C 80050A9C 2B180200 */  sltu       $v1, $zero, $v0
    /* 412A0 80050AA0 14006010 */  beqz       $v1, .L80050AF4
    /* 412A4 80050AA4 00000000 */   nop
    /* 412A8 80050AA8 04008284 */  lh         $v0, 0x4($a0)
    /* 412AC 80050AAC 00000000 */  nop
    /* 412B0 80050AB0 09004018 */  blez       $v0, .L80050AD8
    /* 412B4 80050AB4 00000000 */   nop
    /* 412B8 80050AB8 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 412BC 80050ABC FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 412C0 80050AC0 00000000 */  nop
    /* 412C4 80050AC4 08004230 */  andi       $v0, $v0, 0x8
    /* 412C8 80050AC8 0A004010 */  beqz       $v0, .L80050AF4
    /* 412CC 80050ACC 01006330 */   andi      $v1, $v1, 0x1
    /* 412D0 80050AD0 BD420108 */  j          .L80050AF4
    /* 412D4 80050AD4 21180000 */   addu      $v1, $zero, $zero
  .L80050AD8:
    /* 412D8 80050AD8 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 412DC 80050ADC FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 412E0 80050AE0 00000000 */  nop
    /* 412E4 80050AE4 04004230 */  andi       $v0, $v0, 0x4
    /* 412E8 80050AE8 02004010 */  beqz       $v0, .L80050AF4
    /* 412EC 80050AEC 01006330 */   andi      $v1, $v1, 0x1
    /* 412F0 80050AF0 21180000 */  addu       $v1, $zero, $zero
  .L80050AF4:
    /* 412F4 80050AF4 0800E003 */  jr         $ra
    /* 412F8 80050AF8 21106000 */   addu      $v0, $v1, $zero
.size func_80050A90, . - func_80050A90
