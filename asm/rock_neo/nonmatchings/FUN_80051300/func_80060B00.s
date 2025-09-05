.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060B00
    /* 51300 80060B00 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 51304 80060B04 1000B0AF */  sw         $s0, 0x10($sp)
    /* 51308 80060B08 21808000 */  addu       $s0, $a0, $zero
    /* 5130C 80060B0C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 51310 80060B10 01000382 */  lb         $v1, 0x1($s0)
    /* 51314 80060B14 01000224 */  addiu      $v0, $zero, 0x1
    /* 51318 80060B18 14006210 */  beq        $v1, $v0, .L80060B6C
    /* 5131C 80060B1C 02006228 */   slti      $v0, $v1, 0x2
    /* 51320 80060B20 05004010 */  beqz       $v0, .L80060B38
    /* 51324 80060B24 00000000 */   nop
    /* 51328 80060B28 0A006010 */  beqz       $v1, .L80060B54
    /* 5132C 80060B2C 21100000 */   addu      $v0, $zero, $zero
    /* 51330 80060B30 17830108 */  j          .L80060C5C
    /* 51334 80060B34 00000000 */   nop
  .L80060B38:
    /* 51338 80060B38 02000224 */  addiu      $v0, $zero, 0x2
    /* 5133C 80060B3C 18006210 */  beq        $v1, $v0, .L80060BA0
    /* 51340 80060B40 03000224 */   addiu     $v0, $zero, 0x3
    /* 51344 80060B44 3F006210 */  beq        $v1, $v0, .L80060C44
    /* 51348 80060B48 21100000 */   addu      $v0, $zero, $zero
    /* 5134C 80060B4C 17830108 */  j          .L80060C5C
    /* 51350 80060B50 00000000 */   nop
  .L80060B54:
    /* 51354 80060B54 8C4E010C */  jal        MojiTaskKill
    /* 51358 80060B58 00000000 */   nop
    /* 5135C 80060B5C CA8F010C */  jal        Game_logo_kill
    /* 51360 80060B60 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 51364 80060B64 06830108 */  j          .L80060C18
    /* 51368 80060B68 CC000424 */   addiu     $a0, $zero, 0xCC
  .L80060B6C:
    /* 5136C 80060B6C 0E76000C */  jal        Cd_read_sync2
    /* 51370 80060B70 00000000 */   nop
.size func_80060B00, . - func_80060B00
