.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003129C
    /* 21A9C 8003129C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 21AA0 800312A0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 21AA4 800312A4 21888000 */  addu       $s1, $a0, $zero
    /* 21AA8 800312A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 21AAC 800312AC 2180A000 */  addu       $s0, $a1, $zero
    /* 21AB0 800312B0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 21AB4 800312B4 00000286 */  lh         $v0, 0x0($s0)
    /* 21AB8 800312B8 00002386 */  lh         $v1, 0x0($s1)
    /* 21ABC 800312BC 00000000 */  nop
    /* 21AC0 800312C0 23104300 */  subu       $v0, $v0, $v1
    /* 21AC4 800312C4 18004200 */  mult       $v0, $v0
    /* 21AC8 800312C8 04000286 */  lh         $v0, 0x4($s0)
    /* 21ACC 800312CC 04002386 */  lh         $v1, 0x4($s1)
    /* 21AD0 800312D0 12200000 */  mflo       $a0
    /* 21AD4 800312D4 23104300 */  subu       $v0, $v0, $v1
    /* 21AD8 800312D8 00000000 */  nop
    /* 21ADC 800312DC 18004200 */  mult       $v0, $v0
    /* 21AE0 800312E0 12180000 */  mflo       $v1
    /* 21AE4 800312E4 5EE9010C */  jal        SquareRoot0
    /* 21AE8 800312E8 21208300 */   addu      $a0, $a0, $v1
    /* 21AEC 800312EC 02000386 */  lh         $v1, 0x2($s0)
    /* 21AF0 800312F0 02002586 */  lh         $a1, 0x2($s1)
    /* 21AF4 800312F4 21204000 */  addu       $a0, $v0, $zero
    /* 21AF8 800312F8 EAEF010C */  jal        ratan2
    /* 21AFC 800312FC 23286500 */   subu      $a1, $v1, $a1
    /* 21B00 80031300 00100324 */  addiu      $v1, $zero, 0x1000
    /* 21B04 80031304 23186200 */  subu       $v1, $v1, $v0
    /* 21B08 80031308 FF0F6230 */  andi       $v0, $v1, 0xFFF
    /* 21B0C 8003130C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 21B10 80031310 1400B18F */  lw         $s1, 0x14($sp)
    /* 21B14 80031314 1000B08F */  lw         $s0, 0x10($sp)
    /* 21B18 80031318 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 21B1C 8003131C 0800E003 */  jr         $ra
    /* 21B20 80031320 00000000 */   nop
.size func_8003129C, . - func_8003129C
