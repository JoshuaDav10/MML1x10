.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sce_flag_off
    /* E4D0 8001DCD0 21288000 */  addu       $a1, $a0, $zero
    /* E4D4 8001DCD4 0C80043C */  lui        $a0, %hi(Sce_flag)
    /* E4D8 8001DCD8 78E38424 */  addiu      $a0, $a0, %lo(Sce_flag)
    /* E4DC 8001DCDC C2100500 */  srl        $v0, $a1, 3
    /* E4E0 8001DCE0 21204400 */  addu       $a0, $v0, $a0
    /* E4E4 8001DCE4 80000324 */  addiu      $v1, $zero, 0x80
    /* E4E8 8001DCE8 0700A230 */  andi       $v0, $a1, 0x7
    /* E4EC 8001DCEC 07184300 */  srav       $v1, $v1, $v0
    /* E4F0 8001DCF0 00008290 */  lbu        $v0, 0x0($a0)
    /* E4F4 8001DCF4 27180300 */  nor        $v1, $zero, $v1
    /* E4F8 8001DCF8 24104300 */  and        $v0, $v0, $v1
    /* E4FC 8001DCFC 000082A0 */  sb         $v0, 0x0($a0)
    /* E500 8001DD00 00FBA224 */  addiu      $v0, $a1, -0x500
    /* E504 8001DD04 2000422C */  sltiu      $v0, $v0, 0x20
    /* E508 8001DD08 1D004010 */  beqz       $v0, .L8001DD80
    /* E50C 8001DD0C 00000000 */   nop
    /* E510 8001DD10 01FBA424 */  addiu      $a0, $a1, -0x4FF
    /* E514 8001DD14 0B80033C */  lui        $v1, %hi(Player_work + 0x454)
    /* E518 8001DD18 04566324 */  addiu      $v1, $v1, %lo(Player_work + 0x454)
    /* E51C 8001DD1C 20006624 */  addiu      $a2, $v1, 0x20
  .L8001DD20:
    /* E520 8001DD20 00006290 */  lbu        $v0, 0x0($v1)
    /* E524 8001DD24 00000000 */  nop
    /* E528 8001DD28 03004414 */  bne        $v0, $a0, .L8001DD38
    /* E52C 8001DD2C 00000000 */   nop
    /* E530 8001DD30 52770008 */  j          .L8001DD48
    /* E534 8001DD34 000060A0 */   sb        $zero, 0x0($v1)
  .L8001DD38:
    /* E538 8001DD38 01006324 */  addiu      $v1, $v1, 0x1
    /* E53C 8001DD3C 2A106600 */  slt        $v0, $v1, $a2
    /* E540 8001DD40 F7FF4014 */  bnez       $v0, .L8001DD20
    /* E544 8001DD44 00000000 */   nop
  .L8001DD48:
    /* E548 8001DD48 01FBA424 */  addiu      $a0, $a1, -0x4FF
    /* E54C 8001DD4C 0B80033C */  lui        $v1, %hi(Player_work + 0x450)
    /* E550 8001DD50 00566324 */  addiu      $v1, $v1, %lo(Player_work + 0x450)
    /* E554 8001DD54 03006524 */  addiu      $a1, $v1, 0x3
  .L8001DD58:
    /* E558 8001DD58 00006290 */  lbu        $v0, 0x0($v1)
    /* E55C 8001DD5C 00000000 */  nop
    /* E560 8001DD60 03004414 */  bne        $v0, $a0, .L8001DD70
    /* E564 8001DD64 00000000 */   nop
    /* E568 8001DD68 60770008 */  j          .L8001DD80
    /* E56C 8001DD6C 000060A0 */   sb        $zero, 0x0($v1)
  .L8001DD70:
    /* E570 8001DD70 01006324 */  addiu      $v1, $v1, 0x1
    /* E574 8001DD74 2A106500 */  slt        $v0, $v1, $a1
    /* E578 8001DD78 F7FF4014 */  bnez       $v0, .L8001DD58
    /* E57C 8001DD7C 00000000 */   nop
  .L8001DD80:
    /* E580 8001DD80 0800E003 */  jr         $ra
    /* E584 8001DD84 00000000 */   nop
.size Sce_flag_off, . - Sce_flag_off
