.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A080
    /* 4A880 8005A080 81680108 */  j          .L8005A204
    /* 4A884 8005A084 710002A2 */   sb        $v0, 0x71($s0)
  .L8005A088:
    /* 4A888 8005A088 80008230 */  andi       $v0, $a0, 0x80
    /* 4A88C 8005A08C 1F004010 */  beqz       $v0, .L8005A10C
    /* 4A890 8005A090 00000000 */   nop
    /* 4A894 8005A094 0200C010 */  beqz       $a2, .L8005A0A0
    /* 4A898 8005A098 FFFFA224 */   addiu     $v0, $a1, -0x1
    /* 4A89C 8005A09C 710002A2 */  sb         $v0, 0x71($s0)
  .L8005A0A0:
    /* 4A8A0 8005A0A0 83000424 */  addiu      $a0, $zero, 0x83
    /* 4A8A4 8005A0A4 01000524 */  addiu      $a1, $zero, 0x1
    /* 4A8A8 8005A0A8 0268000C */  jal        Sound_call
    /* 4A8AC 8005A0AC 21300000 */   addu      $a2, $zero, $zero
    /* 4A8B0 8005A0B0 21280000 */  addu       $a1, $zero, $zero
    /* 4A8B4 8005A0B4 72000482 */  lb         $a0, 0x72($s0)
    /* 4A8B8 8005A0B8 71000282 */  lb         $v0, 0x71($s0)
    /* 4A8BC 8005A0BC 6C00038E */  lw         $v1, 0x6C($s0)
    /* 4A8C0 8005A0C0 23208200 */  subu       $a0, $a0, $v0
    /* 4A8C4 8005A0C4 40100400 */  sll        $v0, $a0, 1
    /* 4A8C8 8005A0C8 21104400 */  addu       $v0, $v0, $a0
    /* 4A8CC 8005A0CC 23186200 */  subu       $v1, $v1, $v0
    /* 4A8D0 8005A0D0 02006390 */  lbu        $v1, 0x2($v1)
    /* 4A8D4 8005A0D4 FFFFA230 */  andi       $v0, $a1, 0xFFFF
  .L8005A0D8:
    /* 4A8D8 8005A0D8 0980013C */  lui        $at, %hi(D_8008D028)
    /* 4A8DC 8005A0DC 21082200 */  addu       $at, $at, $v0
    /* 4A8E0 8005A0E0 28D02290 */  lbu        $v0, %lo(D_8008D028)($at)
    /* 4A8E4 8005A0E4 00000000 */  nop
    /* 4A8E8 8005A0E8 06006210 */  beq        $v1, $v0, .L8005A104
    /* 4A8EC 8005A0EC 00000000 */   nop
    /* 4A8F0 8005A0F0 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4A8F4 8005A0F4 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 4A8F8 8005A0F8 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 4A8FC 8005A0FC F6FF4014 */  bnez       $v0, .L8005A0D8
.size func_8005A080, . - func_8005A080
