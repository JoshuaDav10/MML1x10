.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040380
    /* 30B80 80040380 21288000 */  addu       $a1, $a0, $zero
    /* 30B84 80040384 1C01A394 */  lhu        $v1, 0x11C($a1)
    /* 30B88 80040388 2401A294 */  lhu        $v0, 0x124($a1)
    /* 30B8C 8004038C 00000000 */  nop
    /* 30B90 80040390 24104300 */  and        $v0, $v0, $v1
    /* 30B94 80040394 0D004010 */  beqz       $v0, .L800403CC
    /* 30B98 80040398 21100000 */   addu      $v0, $zero, $zero
    /* 30B9C 8004039C 3401A294 */  lhu        $v0, 0x134($a1)
    /* 30BA0 800403A0 00000000 */  nop
    /* 30BA4 800403A4 24104300 */  and        $v0, $v0, $v1
    /* 30BA8 800403A8 08004014 */  bnez       $v0, .L800403CC
    /* 30BAC 800403AC 21100000 */   addu      $v0, $zero, $zero
    /* 30BB0 800403B0 01000224 */  addiu      $v0, $zero, 0x1
    /* 30BB4 800403B4 1201A490 */  lbu        $a0, 0x112($a1)
    /* 30BB8 800403B8 02000324 */  addiu      $v1, $zero, 0x2
    /* 30BBC 800403BC 0900A3A0 */  sb         $v1, 0x9($a1)
    /* 30BC0 800403C0 0A00A0A4 */  sh         $zero, 0xA($a1)
    /* 30BC4 800403C4 1201A0A0 */  sb         $zero, 0x112($a1)
    /* 30BC8 800403C8 1301A4A0 */  sb         $a0, 0x113($a1)
  .L800403CC:
    /* 30BCC 800403CC 0800E003 */  jr         $ra
    /* 30BD0 800403D0 00000000 */   nop
.size func_80040380, . - func_80040380
