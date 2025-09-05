.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A784
    /* 4AF84 8005A784 71000292 */  lbu        $v0, 0x71($s0)
    /* 4AF88 8005A788 00000000 */  nop
    /* 4AF8C 8005A78C 790002A2 */  sb         $v0, 0x79($s0)
    /* 4AF90 8005A790 FF000224 */  addiu      $v0, $zero, 0xFF
  .L8005A794:
    /* 4AF94 8005A794 ED0F82A3 */  sb         $v0, %gp_rel(D_80098851)($gp)
    /* 4AF98 8005A798 116A0108 */  j          .L8005A844
    /* 4AF9C 8005A79C 21100000 */   addu      $v0, $zero, $zero
  .L8005A7A0:
    /* 4AFA0 8005A7A0 71000292 */  lbu        $v0, 0x71($s0)
    /* 4AFA4 8005A7A4 38118393 */  lbu        $v1, %gp_rel(D_8009899C)($gp)
    /* 4AFA8 8005A7A8 00000000 */  nop
    /* 4AFAC 8005A7AC 21104300 */  addu       $v0, $v0, $v1
    /* 4AFB0 8005A7B0 ED0F82A3 */  sb         $v0, %gp_rel(D_80098851)($gp)
    /* 4AFB4 8005A7B4 116A0108 */  j          .L8005A844
    /* 4AFB8 8005A7B8 21100000 */   addu      $v0, $zero, $zero
  .L8005A7BC:
    /* 4AFBC 8005A7BC 38118393 */  lbu        $v1, %gp_rel(D_8009899C)($gp)
    /* 4AFC0 8005A7C0 00000000 */  nop
    /* 4AFC4 8005A7C4 11006010 */  beqz       $v1, .L8005A80C
    /* 4AFC8 8005A7C8 00000000 */   nop
    /* 4AFCC 8005A7CC 70118293 */  lbu        $v0, %gp_rel(D_800989D4)($gp)
    /* 4AFD0 8005A7D0 00000000 */  nop
    /* 4AFD4 8005A7D4 2B106200 */  sltu       $v0, $v1, $v0
    /* 4AFD8 8005A7D8 06004010 */  beqz       $v0, .L8005A7F4
    /* 4AFDC 8005A7DC 21200000 */   addu      $a0, $zero, $zero
    /* 4AFE0 8005A7E0 0200053C */  lui        $a1, (0x20018 >> 16)
    /* 4AFE4 8005A7E4 F08F010C */  jal        func_80063FC0
    /* 4AFE8 8005A7E8 1800A534 */   ori       $a1, $a1, (0x20018 & 0xFFFF)
    /* 4AFEC 8005A7EC 096A0108 */  j          .L8005A824
    /* 4AFF0 8005A7F0 01000424 */   addiu     $a0, $zero, 0x1
  .L8005A7F4:
    /* 4AFF4 8005A7F4 05006010 */  beqz       $v1, .L8005A80C
    /* 4AFF8 8005A7F8 0200053C */   lui       $a1, (0x20000 >> 16)
    /* 4AFFC 8005A7FC F08F010C */  jal        func_80063FC0
.size func_8005A784, . - func_8005A784
