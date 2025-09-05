.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005CCF4
    /* 4D4F4 8005CCF4 B412828F */  lw         $v0, %gp_rel(D_80098B18)($gp)
    /* 4D4F8 8005CCF8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 4D4FC 8005CCFC 3400BFAF */  sw         $ra, 0x34($sp)
    /* 4D500 8005CD00 3000B6AF */  sw         $s6, 0x30($sp)
    /* 4D504 8005CD04 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 4D508 8005CD08 2800B4AF */  sw         $s4, 0x28($sp)
    /* 4D50C 8005CD0C 2400B3AF */  sw         $s3, 0x24($sp)
    /* 4D510 8005CD10 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4D514 8005CD14 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4D518 8005CD18 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4D51C 8005CD1C 02004234 */  ori        $v0, $v0, 0x2
    /* 4D520 8005CD20 B41282AF */  sw         $v0, %gp_rel(D_80098B18)($gp)
    /* 4D524 8005CD24 0E008290 */  lbu        $v0, 0xE($a0)
    /* 4D528 8005CD28 0B80103C */  lui        $s0, %hi(Player_work)
    /* 4D52C 8005CD2C B0511026 */  addiu      $s0, $s0, %lo(Player_work)
    /* 4D530 8005CD30 05004010 */  beqz       $v0, .L8005CD48
    /* 4D534 8005CD34 18011624 */   addiu     $s6, $zero, 0x118
    /* 4D538 8005CD38 14009684 */  lh         $s6, 0x14($a0)
    /* 4D53C 8005CD3C 16009484 */  lh         $s4, 0x16($a0)
    /* 4D540 8005CD40 53730108 */  j          .L8005CD4C
    /* 4D544 8005CD44 00000000 */   nop
  .L8005CD48:
    /* 4D548 8005CD48 BE001424 */  addiu      $s4, $zero, 0xBE
  .L8005CD4C:
    /* 4D54C 8005CD4C 0D008290 */  lbu        $v0, 0xD($a0)
    /* 4D550 8005CD50 00000000 */  nop
    /* 4D554 8005CD54 02004010 */  beqz       $v0, .L8005CD60
    /* 4D558 8005CD58 21A80000 */   addu      $s5, $zero, $zero
    /* 4D55C 8005CD5C 1A009584 */  lh         $s5, 0x1A($a0)
  .L8005CD60:
    /* 4D560 8005CD60 0980043C */  lui        $a0, %hi(D_8008D610)
    /* 4D564 8005CD64 10D68424 */  addiu      $a0, $a0, %lo(D_8008D610)
    /* 4D568 8005CD68 2198C002 */  addu       $s3, $s6, $zero
    /* 4D56C 8005CD6C 21286002 */  addu       $a1, $s3, $zero
    /* 4D570 8005CD70 21308002 */  addu       $a2, $s4, $zero
    /* 4D574 8005CD74 A674010C */  jal        func_8005D298
    /* 4D578 8005CD78 21380000 */   addu      $a3, $zero, $zero
    /* 4D57C 8005CD7C 0980063C */  lui        $a2, %hi(D_80089EAC)
    /* 4D580 8005CD80 AC9EC624 */  addiu      $a2, $a2, %lo(D_80089EAC)
    /* 4D584 8005CD84 FF7F0724 */  addiu      $a3, $zero, 0x7FFF
    /* 4D588 8005CD88 70010482 */  lb         $a0, 0x170($s0)
    /* 4D58C 8005CD8C 00000000 */  nop
    /* 4D590 8005CD90 C0280400 */  sll        $a1, $a0, 3
    /* 4D594 8005CD94 21280502 */  addu       $a1, $s0, $a1
    /* 4D598 8005CD98 80180400 */  sll        $v1, $a0, 2
    /* 4D59C 8005CD9C 21186600 */  addu       $v1, $v1, $a2
    /* 4D5A0 8005CDA0 F504A280 */  lb         $v0, 0x4F5($a1)
    /* 4D5A4 8005CDA4 0000638C */  lw         $v1, 0x0($v1)
    /* 4D5A8 8005CDA8 C0100200 */  sll        $v0, $v0, 3
    /* 4D5AC 8005CDAC 21104300 */  addu       $v0, $v0, $v1
    /* 4D5B0 8005CDB0 02005284 */  lh         $s2, 0x2($v0)
    /* 4D5B4 8005CDB4 40100400 */  sll        $v0, $a0, 1
    /* 4D5B8 8005CDB8 21104400 */  addu       $v0, $v0, $a0
    /* 4D5BC 8005CDBC 80100200 */  sll        $v0, $v0, 2
    /* 4D5C0 8005CDC0 FA04A384 */  lh         $v1, 0x4FA($a1)
    /* 4D5C4 8005CDC4 0980013C */  lui        $at, %hi(D_80089A8C)
    /* 4D5C8 8005CDC8 21082200 */  addu       $at, $at, $v0
    /* 4D5CC 8005CDCC 8C9A2490 */  lbu        $a0, %lo(D_80089A8C)($at)
    /* 4D5D0 8005CDD0 01000224 */  addiu      $v0, $zero, 0x1
    /* 4D5D4 8005CDD4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 4D5D8 8005CDD8 04108200 */  sllv       $v0, $v0, $a0
    /* 4D5DC 8005CDDC 03140200 */  sra        $v0, $v0, 16
    /* 4D5E0 8005CDE0 21186200 */  addu       $v1, $v1, $v0
    /* 4D5E4 8005CDE4 001C0300 */  sll        $v1, $v1, 16
    /* 4D5E8 8005CDE8 09004716 */  bne        $s2, $a3, .L8005CE10
    /* 4D5EC 8005CDEC 07188300 */   srav      $v1, $v1, $a0
    /* 4D5F0 8005CDF0 0980043C */  lui        $a0, %hi(D_8008D674)
    /* 4D5F4 8005CDF4 74D68424 */  addiu      $a0, $a0, %lo(D_8008D674)
    /* 4D5F8 8005CDF8 21286002 */  addu       $a1, $s3, $zero
    /* 4D5FC 8005CDFC 21309502 */  addu       $a2, $s4, $s5
    /* 4D600 8005CE00 00340600 */  sll        $a2, $a2, 16
    /* 4D604 8005CE04 03340600 */  sra        $a2, $a2, 16
    /* 4D608 8005CE08 A9730108 */  j          .L8005CEA4
    /* 4D60C 8005CE0C 21380000 */   addu      $a3, $zero, $zero
  .L8005CE10:
    /* 4D610 8005CE10 00141200 */  sll        $v0, $s2, 16
    /* 4D614 8005CE14 17006010 */  beqz       $v1, .L8005CE74
    /* 4D618 8005CE18 07908200 */   srav      $s2, $v0, $a0
    /* 4D61C 8005CE1C 0980113C */  lui        $s1, %hi(D_8008D638)
    /* 4D620 8005CE20 38D63126 */  addiu      $s1, $s1, %lo(D_8008D638)
    /* 4D624 8005CE24 21202002 */  addu       $a0, $s1, $zero
    /* 4D628 8005CE28 21286002 */  addu       $a1, $s3, $zero
    /* 4D62C 8005CE2C 21809502 */  addu       $s0, $s4, $s5
    /* 4D630 8005CE30 23800302 */  subu       $s0, $s0, $v1
    /* 4D634 8005CE34 01000626 */  addiu      $a2, $s0, 0x1
    /* 4D638 8005CE38 00340600 */  sll        $a2, $a2, 16
    /* 4D63C 8005CE3C 03340600 */  sra        $a2, $a2, 16
    /* 4D640 8005CE40 FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 4D644 8005CE44 0980073C */  lui        $a3, %hi(D_8008D640)
    /* 4D648 8005CE48 40D6E794 */  lhu        $a3, %lo(D_8008D640)($a3)
    /* 4D64C 8005CE4C 00120200 */  sll        $v0, $v0, 8
    /* 4D650 8005CE50 2538E200 */  or         $a3, $a3, $v0
    /* 4D654 8005CE54 A674010C */  jal        func_8005D298
    /* 4D658 8005CE58 FFFFE730 */   andi      $a3, $a3, 0xFFFF
    /* 4D65C 8005CE5C 14002426 */  addiu      $a0, $s1, 0x14
    /* 4D660 8005CE60 21286002 */  addu       $a1, $s3, $zero
    /* 4D664 8005CE64 00841000 */  sll        $s0, $s0, 16
    /* 4D668 8005CE68 03341000 */  sra        $a2, $s0, 16
    /* 4D66C 8005CE6C A674010C */  jal        func_8005D298
.size func_8005CCF4, . - func_8005CCF4
