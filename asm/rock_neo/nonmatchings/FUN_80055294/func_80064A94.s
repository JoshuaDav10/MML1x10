.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80064A94
    /* 55294 80064A94 A1DA010C */  jal        VSync
    /* 55298 80064A98 1000B0AF */   sw        $s0, 0x10($sp)
  .L80064A9C:
    /* 5529C 80064A9C 7B92010C */  jal        func_800649EC
    /* 552A0 80064AA0 00811200 */   sll       $s0, $s2, 4
    /* 552A4 80064AA4 04FF010C */  jal        _card_info
    /* 552A8 80064AA8 21200002 */   addu      $a0, $s0, $zero
    /* 552AC 80064AAC 4792010C */  jal        func_8006491C
    /* 552B0 80064AB0 00000000 */   nop
    /* 552B4 80064AB4 21184000 */  addu       $v1, $v0, $zero
    /* 552B8 80064AB8 03000224 */  addiu      $v0, $zero, 0x3
    /* 552BC 80064ABC 21006210 */  beq        $v1, $v0, .L80064B44
    /* 552C0 80064AC0 01001124 */   addiu     $s1, $zero, 0x1
    /* 552C4 80064AC4 03007114 */  bne        $v1, $s1, .L80064AD4
    /* 552C8 80064AC8 02000224 */   addiu     $v0, $zero, 0x2
    /* 552CC 80064ACC D1920108 */  j          .L80064B44
    /* 552D0 80064AD0 01000224 */   addiu     $v0, $zero, 0x1
  .L80064AD4:
    /* 552D4 80064AD4 0B006214 */  bne        $v1, $v0, .L80064B04
    /* 552D8 80064AD8 00000000 */   nop
    /* 552DC 80064ADC 8D92010C */  jal        func_80064A34
    /* 552E0 80064AE0 00000000 */   nop
    /* 552E4 80064AE4 14FF010C */  jal        _card_clear
    /* 552E8 80064AE8 21200002 */   addu      $a0, $s0, $zero
    /* 552EC 80064AEC EBFF5114 */  bne        $v0, $s1, .L80064A9C
    /* 552F0 80064AF0 00000000 */   nop
    /* 552F4 80064AF4 6192010C */  jal        func_80064984
    /* 552F8 80064AF8 00000000 */   nop
.size func_80064A94, . - func_80064A94
