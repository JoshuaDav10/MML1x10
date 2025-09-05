.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800403D4
    /* 30BD4 800403D4 0C80023C */  lui        $v0, %hi(Scene_work)
    /* 30BD8 800403D8 484C4290 */  lbu        $v0, %lo(Scene_work)($v0)
    /* 30BDC 800403DC 00000000 */  nop
    /* 30BE0 800403E0 03004014 */  bnez       $v0, .L800403F0
    /* 30BE4 800403E4 21308000 */   addu      $a2, $a0, $zero
    /* 30BE8 800403E8 0400A014 */  bnez       $a1, .L800403FC
    /* 30BEC 800403EC 00000000 */   nop
  .L800403F0:
    /* 30BF0 800403F0 1C01C494 */  lhu        $a0, 0x11C($a2)
    /* 30BF4 800403F4 00010108 */  j          .L80040400
    /* 30BF8 800403F8 00000000 */   nop
  .L800403FC:
    /* 30BFC 800403FC 1E01C494 */  lhu        $a0, 0x11E($a2)
  .L80040400:
    /* 30C00 80040400 2C01C594 */  lhu        $a1, 0x12C($a2)
    /* 30C04 80040404 2E01C294 */  lhu        $v0, 0x12E($a2)
    /* 30C08 80040408 00000000 */  nop
    /* 30C0C 8004040C 2510A200 */  or         $v0, $a1, $v0
    /* 30C10 80040410 24188200 */  and        $v1, $a0, $v0
    /* 30C14 80040414 11006210 */  beq        $v1, $v0, .L8004045C
.size func_800403D4, . - func_800403D4
