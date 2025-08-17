.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800405F4
    /* 30DF4 800405F4 21288000 */  addu       $a1, $a0, $zero
    /* 30DF8 800405F8 2801A294 */  lhu        $v0, 0x128($a1)
    /* 30DFC 800405FC 2A01A494 */  lhu        $a0, 0x12A($a1)
    /* 30E00 80040600 1C01A394 */  lhu        $v1, 0x11C($a1)
    /* 30E04 80040604 25104400 */  or         $v0, $v0, $a0
    /* 30E08 80040608 24186200 */  and        $v1, $v1, $v0
    /* 30E0C 8004060C 03006014 */  bnez       $v1, .L8004061C
    /* 30E10 80040610 01000224 */   addiu     $v0, $zero, 0x1
    /* 30E14 80040614 8A010108 */  j          .L80040628
    /* 30E18 80040618 21100000 */   addu      $v0, $zero, $zero
  .L8004061C:
    /* 30E1C 8004061C 04000324 */  addiu      $v1, $zero, 0x4
    /* 30E20 80040620 0900A3A0 */  sb         $v1, 0x9($a1)
    /* 30E24 80040624 0A00A0A4 */  sh         $zero, 0xA($a1)
  .L80040628:
    /* 30E28 80040628 0800E003 */  jr         $ra
    /* 30E2C 8004062C 00000000 */   nop
.size func_800405F4, . - func_800405F4
