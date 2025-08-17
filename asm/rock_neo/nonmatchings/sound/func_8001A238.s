.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001A238
    /* AA38 8001A238 21180000 */  addu       $v1, $zero, $zero
    /* AA3C 8001A23C 21280000 */  addu       $a1, $zero, $zero
  .L8001A240:
    /* AA40 8001A240 0A80013C */  lui        $at, %hi(D_80098AD0)
    /* AA44 8001A244 21082500 */  addu       $at, $at, $a1
    /* AA48 8001A248 D08A2290 */  lbu        $v0, %lo(D_80098AD0)($at)
    /* AA4C 8001A24C 00000000 */  nop
    /* AA50 8001A250 06004410 */  beq        $v0, $a0, .L8001A26C
    /* AA54 8001A254 21106000 */   addu      $v0, $v1, $zero
    /* AA58 8001A258 01006324 */  addiu      $v1, $v1, 0x1
    /* AA5C 8001A25C 05006228 */  slti       $v0, $v1, 0x5
    /* AA60 8001A260 F7FF4014 */  bnez       $v0, .L8001A240
    /* AA64 8001A264 0800A524 */   addiu     $a1, $a1, 0x8
    /* AA68 8001A268 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L8001A26C:
    /* AA6C 8001A26C 0800E003 */  jr         $ra
    /* AA70 8001A270 00000000 */   nop
.size func_8001A238, . - func_8001A238
