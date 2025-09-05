.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059A80
    /* 4A280 80059A80 21286002 */  addu       $a1, $s3, $zero
    /* 4A284 80059A84 21204002 */  addu       $a0, $s2, $zero
    /* 4A288 80059A88 21286002 */  addu       $a1, $s3, $zero
    /* 4A28C 80059A8C 0B4E010C */  jal        MojiTaskExec
    /* 4A290 80059A90 21302002 */   addu      $a2, $s1, $zero
    /* 4A294 80059A94 C9660108 */  j          .L80059B24
    /* 4A298 80059A98 21100000 */   addu      $v0, $zero, $zero
  .L80059A9C:
    /* 4A29C 80059A9C 38118393 */  lbu        $v1, %gp_rel(D_8009899C)($gp)
    /* 4A2A0 80059AA0 00000000 */  nop
    /* 4A2A4 80059AA4 11006010 */  beqz       $v1, .L80059AEC
    /* 4A2A8 80059AA8 00000000 */   nop
    /* 4A2AC 80059AAC 70118293 */  lbu        $v0, %gp_rel(D_800989D4)($gp)
    /* 4A2B0 80059AB0 00000000 */  nop
    /* 4A2B4 80059AB4 2B106200 */  sltu       $v0, $v1, $v0
    /* 4A2B8 80059AB8 06004010 */  beqz       $v0, .L80059AD4
    /* 4A2BC 80059ABC 21200000 */   addu      $a0, $zero, $zero
    /* 4A2C0 80059AC0 0200053C */  lui        $a1, (0x20018 >> 16)
    /* 4A2C4 80059AC4 F08F010C */  jal        func_80063FC0
    /* 4A2C8 80059AC8 1800A534 */   ori       $a1, $a1, (0x20018 & 0xFFFF)
    /* 4A2CC 80059ACC C1660108 */  j          .L80059B04
    /* 4A2D0 80059AD0 01000424 */   addiu     $a0, $zero, 0x1
  .L80059AD4:
    /* 4A2D4 80059AD4 05006010 */  beqz       $v1, .L80059AEC
    /* 4A2D8 80059AD8 0200053C */   lui       $a1, (0x20018 >> 16)
    /* 4A2DC 80059ADC F08F010C */  jal        func_80063FC0
    /* 4A2E0 80059AE0 1800A534 */   ori       $a1, $a1, (0x20018 & 0xFFFF)
    /* 4A2E4 80059AE4 C9660108 */  j          .L80059B24
    /* 4A2E8 80059AE8 21100000 */   addu      $v0, $zero, $zero
  .L80059AEC:
    /* 4A2EC 80059AEC 38118293 */  lbu        $v0, %gp_rel(D_8009899C)($gp)
    /* 4A2F0 80059AF0 70118393 */  lbu        $v1, %gp_rel(D_800989D4)($gp)
    /* 4A2F4 80059AF4 00000000 */  nop
    /* 4A2F8 80059AF8 2B104300 */  sltu       $v0, $v0, $v1
    /* 4A2FC 80059AFC 08004010 */  beqz       $v0, .L80059B20
.size func_80059A80, . - func_80059A80
