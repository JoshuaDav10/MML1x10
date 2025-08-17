.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80051A78
    /* 42278 80051A78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4227C 80051A7C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 42280 80051A80 02008384 */  lh         $v1, 0x2($a0)
    /* 42284 80051A84 01000224 */  addiu      $v0, $zero, 0x1
    /* 42288 80051A88 0A006210 */  beq        $v1, $v0, .L80051AB4
    /* 4228C 80051A8C 02006228 */   slti      $v0, $v1, 0x2
    /* 42290 80051A90 27004014 */  bnez       $v0, .L80051B30
    /* 42294 80051A94 21100000 */   addu      $v0, $zero, $zero
    /* 42298 80051A98 02000224 */  addiu      $v0, $zero, 0x2
    /* 4229C 80051A9C 10006210 */  beq        $v1, $v0, .L80051AE0
    /* 422A0 80051AA0 03000224 */   addiu     $v0, $zero, 0x3
    /* 422A4 80051AA4 16006210 */  beq        $v1, $v0, .L80051B00
    /* 422A8 80051AA8 21100000 */   addu      $v0, $zero, $zero
    /* 422AC 80051AAC CC460108 */  j          .L80051B30
    /* 422B0 80051AB0 00000000 */   nop
  .L80051AB4:
    /* 422B4 80051AB4 0C80023C */  lui        $v0, %hi(Game_work + 0x52)
    /* 422B8 80051AB8 621B4280 */  lb         $v0, %lo(Game_work + 0x52)($v0)
    /* 422BC 80051ABC 00000000 */  nop
    /* 422C0 80051AC0 1B004014 */  bnez       $v0, .L80051B30
    /* 422C4 80051AC4 21100000 */   addu      $v0, $zero, $zero
    /* 422C8 80051AC8 9676000C */  jal        Sce_flag_test
    /* 422CC 80051ACC 2C000424 */   addiu     $a0, $zero, 0x2C
    /* 422D0 80051AD0 16004010 */  beqz       $v0, .L80051B2C
    /* 422D4 80051AD4 1B000424 */   addiu     $a0, $zero, 0x1B
    /* 422D8 80051AD8 C7460108 */  j          .L80051B1C
    /* 422DC 80051ADC 00000000 */   nop
  .L80051AE0:
    /* 422E0 80051AE0 9676000C */  jal        Sce_flag_test
    /* 422E4 80051AE4 28000424 */   addiu     $a0, $zero, 0x28
    /* 422E8 80051AE8 11004014 */  bnez       $v0, .L80051B30
    /* 422EC 80051AEC 21100000 */   addu      $v0, $zero, $zero
    /* 422F0 80051AF0 A376000C */  jal        Sce_flag_on
    /* 422F4 80051AF4 28000424 */   addiu     $a0, $zero, 0x28
    /* 422F8 80051AF8 C7460108 */  j          .L80051B1C
    /* 422FC 80051AFC 18000424 */   addiu     $a0, $zero, 0x18
  .L80051B00:
    /* 42300 80051B00 9676000C */  jal        Sce_flag_test
    /* 42304 80051B04 29000424 */   addiu     $a0, $zero, 0x29
    /* 42308 80051B08 09004014 */  bnez       $v0, .L80051B30
    /* 4230C 80051B0C 21100000 */   addu      $v0, $zero, $zero
    /* 42310 80051B10 A376000C */  jal        Sce_flag_on
    /* 42314 80051B14 29000424 */   addiu     $a0, $zero, 0x29
    /* 42318 80051B18 27000424 */  addiu      $a0, $zero, 0x27
  .L80051B1C:
    /* 4231C 80051B1C 7977000C */  jal        func_8001DDE4
    /* 42320 80051B20 00000000 */   nop
    /* 42324 80051B24 CC460108 */  j          .L80051B30
    /* 42328 80051B28 01000224 */   addiu     $v0, $zero, 0x1
  .L80051B2C:
    /* 4232C 80051B2C 21100000 */  addu       $v0, $zero, $zero
  .L80051B30:
    /* 42330 80051B30 1000BF8F */  lw         $ra, 0x10($sp)
    /* 42334 80051B34 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 42338 80051B38 0800E003 */  jr         $ra
    /* 4233C 80051B3C 00000000 */   nop
.size func_80051A78, . - func_80051A78
