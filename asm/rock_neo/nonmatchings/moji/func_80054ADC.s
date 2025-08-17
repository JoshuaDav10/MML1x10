.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054ADC
    /* 452DC 80054ADC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 452E0 80054AE0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 452E4 80054AE4 0000838C */  lw         $v1, 0x0($a0)
    /* 452E8 80054AE8 0002023C */  lui        $v0, (0x2000000 >> 16)
    /* 452EC 80054AEC 24106200 */  and        $v0, $v1, $v0
    /* 452F0 80054AF0 06004010 */  beqz       $v0, .L80054B0C
    /* 452F4 80054AF4 00000000 */   nop
    /* 452F8 80054AF8 FFFD023C */  lui        $v0, (0xFDFFFFFF >> 16)
    /* 452FC 80054AFC FFFF4234 */  ori        $v0, $v0, (0xFDFFFFFF & 0xFFFF)
    /* 45300 80054B00 24106200 */  and        $v0, $v1, $v0
    /* 45304 80054B04 000082AC */  sw         $v0, 0x0($a0)
    /* 45308 80054B08 7D0080A0 */  sb         $zero, 0x7D($a0)
  .L80054B0C:
    /* 4530C 80054B0C 6C00828C */  lw         $v0, 0x6C($a0)
    /* 45310 80054B10 00000000 */  nop
    /* 45314 80054B14 01004290 */  lbu        $v0, 0x1($v0)
    /* 45318 80054B18 00000000 */  nop
    /* 4531C 80054B1C 7C0082A0 */  sb         $v0, 0x7C($a0)
    /* 45320 80054B20 80100200 */  sll        $v0, $v0, 2
    /* 45324 80054B24 0980013C */  lui        $at, %hi(D_8008AAC0)
    /* 45328 80054B28 21082200 */  addu       $at, $at, $v0
    /* 4532C 80054B2C C0AA228C */  lw         $v0, %lo(D_8008AAC0)($at)
    /* 45330 80054B30 00000000 */  nop
    /* 45334 80054B34 09F84000 */  jalr       $v0
    /* 45338 80054B38 00000000 */   nop
    /* 4533C 80054B3C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 45340 80054B40 21100000 */  addu       $v0, $zero, $zero
    /* 45344 80054B44 0800E003 */  jr         $ra
    /* 45348 80054B48 1800BD27 */   addiu     $sp, $sp, 0x18
.size func_80054ADC, . - func_80054ADC
