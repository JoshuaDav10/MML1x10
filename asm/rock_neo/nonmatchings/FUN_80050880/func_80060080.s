.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060080
    /* 50880 80060080 21300000 */  addu       $a2, $zero, $zero
  .L80060084:
    /* 50884 80060084 02000292 */  lbu        $v0, 0x2($s0)
    /* 50888 80060088 00000000 */  nop
    /* 5088C 8006008C 01004224 */  addiu      $v0, $v0, 0x1
    /* 50890 80060090 2E800108 */  j          .L800600B8
    /* 50894 80060094 020002A2 */   sb        $v0, 0x2($s0)
  .L80060098:
    /* 50898 80060098 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 5089C 8006009C 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 508A0 800600A0 00000000 */  nop
    /* 508A4 800600A4 24104300 */  and        $v0, $v0, $v1
    /* 508A8 800600A8 03004014 */  bnez       $v0, .L800600B8
    /* 508AC 800600AC 02000224 */   addiu     $v0, $zero, 0x2
    /* 508B0 800600B0 010002A2 */  sb         $v0, 0x1($s0)
    /* 508B4 800600B4 020000A2 */  sb         $zero, 0x2($s0)
  .L800600B8:
    /* 508B8 800600B8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 508BC 800600BC 1000B08F */  lw         $s0, 0x10($sp)
    /* 508C0 800600C0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 508C4 800600C4 0800E003 */  jr         $ra
    /* 508C8 800600C8 00000000 */   nop
.size func_80060080, . - func_80060080
