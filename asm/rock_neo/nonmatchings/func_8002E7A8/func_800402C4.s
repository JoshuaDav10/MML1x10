.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800402C4
    /* 30AC4 800402C4 1C018394 */  lhu        $v1, 0x11C($a0)
    /* 30AC8 800402C8 24018294 */  lhu        $v0, 0x124($a0)
    /* 30ACC 800402CC 00000000 */  nop
    /* 30AD0 800402D0 24104300 */  and        $v0, $v0, $v1
    /* 30AD4 800402D4 0B004010 */  beqz       $v0, .L80040304
    /* 30AD8 800402D8 21100000 */   addu      $v0, $zero, $zero
    /* 30ADC 800402DC 34018294 */  lhu        $v0, 0x134($a0)
    /* 30AE0 800402E0 00000000 */  nop
    /* 30AE4 800402E4 24104300 */  and        $v0, $v0, $v1
    /* 30AE8 800402E8 05004010 */  beqz       $v0, .L80040300
    /* 30AEC 800402EC 01000224 */   addiu     $v0, $zero, 0x1
    /* 30AF0 800402F0 01000324 */  addiu      $v1, $zero, 0x1
    /* 30AF4 800402F4 090083A0 */  sb         $v1, 0x9($a0)
    /* 30AF8 800402F8 C1000108 */  j          .L80040304
    /* 30AFC 800402FC 0A0080A4 */   sh        $zero, 0xA($a0)
  .L80040300:
    /* 30B00 80040300 21100000 */  addu       $v0, $zero, $zero
  .L80040304:
    /* 30B04 80040304 0800E003 */  jr         $ra
    /* 30B08 80040308 00000000 */   nop
.size func_800402C4, . - func_800402C4
