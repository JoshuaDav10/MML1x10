.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800322A8
    /* 22AA8 800322A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 22AAC 800322AC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 22AB0 800322B0 21808000 */  addu       $s0, $a0, $zero
    /* 22AB4 800322B4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 22AB8 800322B8 9000038E */  lw         $v1, 0x90($s0)
    /* 22ABC 800322BC 80100500 */  sll        $v0, $a1, 2
    /* 22AC0 800322C0 21104300 */  addu       $v0, $v0, $v1
    /* 22AC4 800322C4 0000428C */  lw         $v0, 0x0($v0)
    /* 22AC8 800322C8 C0300600 */  sll        $a2, $a2, 3
    /* 22ACC 800322CC AC0005A2 */  sb         $a1, 0xAC($s0)
    /* 22AD0 800322D0 940002AE */  sw         $v0, 0x94($s0)
    /* 22AD4 800322D4 21104600 */  addu       $v0, $v0, $a2
    /* 22AD8 800322D8 980002AE */  sw         $v0, 0x98($s0)
    /* 22ADC 800322DC 0000428C */  lw         $v0, 0x0($v0)
    /* 22AE0 800322E0 8ACE000C */  jal        func_80033A28
    /* 22AE4 800322E4 A40002AE */   sw        $v0, 0xA4($s0)
    /* 22AE8 800322E8 1BCD000C */  jal        func_8003346C
    /* 22AEC 800322EC 21200002 */   addu      $a0, $s0, $zero
    /* 22AF0 800322F0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 22AF4 800322F4 1000B08F */  lw         $s0, 0x10($sp)
    /* 22AF8 800322F8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 22AFC 800322FC 0800E003 */  jr         $ra
    /* 22B00 80032300 00000000 */   nop
.size func_800322A8, . - func_800322A8
