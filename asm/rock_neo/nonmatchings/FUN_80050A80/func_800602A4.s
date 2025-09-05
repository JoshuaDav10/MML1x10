.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800602A4
    /* 50AA4 800602A4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 50AA8 800602A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 50AAC 800602AC 21808000 */  addu       $s0, $a0, $zero
    /* 50AB0 800602B0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 50AB4 800602B4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 50AB8 800602B8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 50ABC 800602BC 06000382 */  lb         $v1, 0x6($s0)
    /* 50AC0 800602C0 00000000 */  nop
    /* 50AC4 800602C4 60006010 */  beqz       $v1, .L80060448
    /* 50AC8 800602C8 21C8A000 */   addu      $t9, $a1, $zero
    /* 50ACC 800602CC 11000592 */  lbu        $a1, 0x11($s0)
    /* 50AD0 800602D0 10000292 */  lbu        $v0, 0x10($s0)
    /* 50AD4 800602D4 00000000 */  nop
    /* 50AD8 800602D8 2310A200 */  subu       $v0, $a1, $v0
    /* 50ADC 800602DC 18004300 */  mult       $v0, $v1
    /* 50AE0 800602E0 14000492 */  lbu        $a0, 0x14($s0)
    /* 50AE4 800602E4 13000292 */  lbu        $v0, 0x13($s0)
    /* 50AE8 800602E8 12700000 */  mflo       $t6
    /* 50AEC 800602EC 06000382 */  lb         $v1, 0x6($s0)
    /* 50AF0 800602F0 23108200 */  subu       $v0, $a0, $v0
    /* 50AF4 800602F4 18004300 */  mult       $v0, $v1
    /* 50AF8 800602F8 19000992 */  lbu        $t1, 0x19($s0)
    /* 50AFC 800602FC 18000292 */  lbu        $v0, 0x18($s0)
.size func_800602A4, . - func_800602A4
