.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D494
    /* DC94 8001D494 01000224 */  addiu      $v0, $zero, 0x1
    /* DC98 8001D498 3000A214 */  bne        $a1, $v0, .L8001D55C
    /* DC9C 8001D49C 21688000 */   addu      $t5, $a0, $zero
    /* DCA0 8001D4A0 0A80033C */  lui        $v1, %hi(unknown_Cd_strucptr)
    /* DCA4 8001D4A4 A489638C */  lw         $v1, %lo(unknown_Cd_strucptr)($v1)
    /* DCA8 8001D4A8 0A80093C */  lui        $t1, %hi(D_800A3A40 + 0x10)
    /* DCAC 8001D4AC 503A2925 */  addiu      $t1, $t1, %lo(D_800A3A40 + 0x10)
    /* DCB0 8001D4B0 2B102301 */  sltu       $v0, $t1, $v1
    /* DCB4 8001D4B4 29004010 */  beqz       $v0, .L8001D55C
    /* DCB8 8001D4B8 00000000 */   nop
    /* DCBC 8001D4BC 02000E24 */  addiu      $t6, $zero, 0x2
    /* DCC0 8001D4C0 01000C24 */  addiu      $t4, $zero, 0x1
    /* DCC4 8001D4C4 10002A25 */  addiu      $t2, $t1, 0x10
  .L8001D4C8:
    /* DCC8 8001D4C8 0000228D */  lw         $v0, 0x0($t1)
    /* DCCC 8001D4CC 00000000 */  nop
    /* DCD0 8001D4D0 1C004E14 */  bne        $v0, $t6, .L8001D544
    /* DCD4 8001D4D4 00000000 */   nop
    /* DCD8 8001D4D8 F8FF428D */  lw         $v0, -0x8($t2)
    /* DCDC 8001D4DC 00000000 */  nop
    /* DCE0 8001D4E0 18004C14 */  bne        $v0, $t4, .L8001D544
    /* DCE4 8001D4E4 2B104301 */   sltu      $v0, $t2, $v1
    /* DCE8 8001D4E8 21586000 */  addu       $t3, $v1, $zero
    /* DCEC 8001D4EC 0F004010 */  beqz       $v0, .L8001D52C
    /* DCF0 8001D4F0 21402001 */   addu      $t0, $t1, $zero
    /* DCF4 8001D4F4 10002725 */  addiu      $a3, $t1, 0x10
  .L8001D4F8:
    /* DCF8 8001D4F8 0000E28C */  lw         $v0, 0x0($a3)
    /* DCFC 8001D4FC 00000000 */  nop
    /* DD00 8001D500 000002AD */  sw         $v0, 0x0($t0)
    /* DD04 8001D504 0400E28C */  lw         $v0, 0x4($a3)
    /* DD08 8001D508 0800E38C */  lw         $v1, 0x8($a3)
    /* DD0C 8001D50C 0C00E48C */  lw         $a0, 0xC($a3)
    /* DD10 8001D510 F4FFE2AC */  sw         $v0, -0xC($a3)
    /* DD14 8001D514 F8FFE3AC */  sw         $v1, -0x8($a3)
    /* DD18 8001D518 FCFFE4AC */  sw         $a0, -0x4($a3)
    /* DD1C 8001D51C 1000E724 */  addiu      $a3, $a3, 0x10
    /* DD20 8001D520 2B10EB00 */  sltu       $v0, $a3, $t3
    /* DD24 8001D524 F4FF4014 */  bnez       $v0, .L8001D4F8
    /* DD28 8001D528 10000825 */   addiu     $t0, $t0, 0x10
  .L8001D52C:
    /* DD2C 8001D52C 0A80023C */  lui        $v0, %hi(unknown_Cd_strucptr)
    /* DD30 8001D530 A489428C */  lw         $v0, %lo(unknown_Cd_strucptr)($v0)
    /* DD34 8001D534 00000000 */  nop
    /* DD38 8001D538 F0FF4224 */  addiu      $v0, $v0, -0x10
    /* DD3C 8001D53C 0A80013C */  lui        $at, %hi(unknown_Cd_strucptr)
    /* DD40 8001D540 A48922AC */  sw         $v0, %lo(unknown_Cd_strucptr)($at)
  .L8001D544:
    /* DD44 8001D544 0A80033C */  lui        $v1, %hi(unknown_Cd_strucptr)
    /* DD48 8001D548 A489638C */  lw         $v1, %lo(unknown_Cd_strucptr)($v1)
    /* DD4C 8001D54C 10002925 */  addiu      $t1, $t1, 0x10
    /* DD50 8001D550 2B102301 */  sltu       $v0, $t1, $v1
    /* DD54 8001D554 DCFF4014 */  bnez       $v0, .L8001D4C8
    /* DD58 8001D558 10004A25 */   addiu     $t2, $t2, 0x10
  .L8001D55C:
    /* DD5C 8001D55C 0A80023C */  lui        $v0, %hi(unknown_Cd_strucptr)
    /* DD60 8001D560 A489428C */  lw         $v0, %lo(unknown_Cd_strucptr)($v0)
    /* DD64 8001D564 02000324 */  addiu      $v1, $zero, 0x2
    /* DD68 8001D568 000043AC */  sw         $v1, 0x0($v0)
    /* DD6C 8001D56C 04004DAC */  sw         $t5, 0x4($v0)
    /* DD70 8001D570 080045AC */  sw         $a1, 0x8($v0)
    /* DD74 8001D574 0C0046AC */  sw         $a2, 0xC($v0)
    /* DD78 8001D578 10004224 */  addiu      $v0, $v0, 0x10
    /* DD7C 8001D57C 0A80013C */  lui        $at, %hi(unknown_Cd_strucptr)
    /* DD80 8001D580 A48922AC */  sw         $v0, %lo(unknown_Cd_strucptr)($at)
    /* DD84 8001D584 0800E003 */  jr         $ra
    /* DD88 8001D588 00000000 */   nop
.size func_8001D494, . - func_8001D494
