.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80046AD0
    /* 372D0 80046AD0 6B1B4280 */  lb         $v0, 0x1B6B($v0)
    /* 372D4 80046AD4 0980033C */  lui        $v1, %hi(D_8008A678)
    /* 372D8 80046AD8 78A66324 */  addiu      $v1, $v1, %lo(D_8008A678)
    /* 372DC 80046ADC 00110200 */  sll        $v0, $v0, 4
    /* 372E0 80046AE0 21104300 */  addu       $v0, $v0, $v1
    /* 372E4 80046AE4 2110E200 */  addu       $v0, $a3, $v0
    /* 372E8 80046AE8 00004494 */  lhu        $a0, 0x0($v0)
    /* 372EC 80046AEC A50C010C */  jal        func_80043294
    /* 372F0 80046AF0 21300000 */   addu      $a2, $zero, $zero
    /* 372F4 80046AF4 C91A0108 */  j          .L80046B24
    /* 372F8 80046AF8 00000000 */   nop
  .L80046AFC:
    /* 372FC 80046AFC 0C80023C */  lui        $v0, %hi(Game_work + 0x5B)
    /* 37300 80046B00 6B1B4280 */  lb         $v0, %lo(Game_work + 0x5B)($v0)
    /* 37304 80046B04 0980033C */  lui        $v1, %hi(D_8008A680)
    /* 37308 80046B08 80A66324 */  addiu      $v1, $v1, %lo(D_8008A680)
    /* 3730C 80046B0C 00110200 */  sll        $v0, $v0, 4
    /* 37310 80046B10 21104300 */  addu       $v0, $v0, $v1
    /* 37314 80046B14 2110E200 */  addu       $v0, $a3, $v0
    /* 37318 80046B18 00004494 */  lhu        $a0, 0x0($v0)
    /* 3731C 80046B1C D00C010C */  jal        func_80043340
    /* 37320 80046B20 21280000 */   addu      $a1, $zero, $zero
  .L80046B24:
    /* 37324 80046B24 1000BF8F */  lw         $ra, 0x10($sp)
    /* 37328 80046B28 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3732C 80046B2C 0800E003 */  jr         $ra
    /* 37330 80046B30 00000000 */   nop
.size func_80046AD0, . - func_80046AD0
