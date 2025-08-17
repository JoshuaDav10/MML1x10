.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800406A8
    /* 30EA8 800406A8 1E018394 */  lhu        $v1, 0x11E($a0)
    /* 30EAC 800406AC 38018294 */  lhu        $v0, 0x138($a0)
    /* 30EB0 800406B0 00000000 */  nop
    /* 30EB4 800406B4 24104300 */  and        $v0, $v0, $v1
    /* 30EB8 800406B8 03004014 */  bnez       $v0, .L800406C8
    /* 30EBC 800406BC 01000224 */   addiu     $v0, $zero, 0x1
    /* 30EC0 800406C0 B5010108 */  j          .L800406D4
    /* 30EC4 800406C4 21100000 */   addu      $v0, $zero, $zero
  .L800406C8:
    /* 30EC8 800406C8 07000324 */  addiu      $v1, $zero, 0x7
    /* 30ECC 800406CC 090083A0 */  sb         $v1, 0x9($a0)
    /* 30ED0 800406D0 0A0080A4 */  sh         $zero, 0xA($a0)
  .L800406D4:
    /* 30ED4 800406D4 0800E003 */  jr         $ra
    /* 30ED8 800406D8 00000000 */   nop
.size func_800406A8, . - func_800406A8
