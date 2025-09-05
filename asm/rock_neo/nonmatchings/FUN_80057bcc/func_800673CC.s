.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800673CC
    /* 57BCC 800673CC 21300000 */  addu       $a2, $zero, $zero
    /* 57BD0 800673D0 01004224 */  addiu      $v0, $v0, 0x1
    /* 57BD4 800673D4 0268000C */  jal        Sound_call
    /* 57BD8 800673D8 060002A2 */   sb        $v0, 0x6($s0)
    /* 57BDC 800673DC E19D0108 */  j          .L80067784
    /* 57BE0 800673E0 01000224 */   addiu     $v0, $zero, 0x1
  .L800673E4:
    /* 57BE4 800673E4 01000524 */  addiu      $a1, $zero, 0x1
  .L800673E8:
    /* 57BE8 800673E8 0268000C */  jal        Sound_call
    /* 57BEC 800673EC 21300000 */   addu      $a2, $zero, $zero
    /* 57BF0 800673F0 E19D0108 */  j          .L80067784
    /* 57BF4 800673F4 01000224 */   addiu     $v0, $zero, 0x1
  .L800673F8:
    /* 57BF8 800673F8 1000028E */  lw         $v0, 0x10($s0)
.size func_800673CC, . - func_800673CC
    /* 57BFC 800673FC 00000000 */  nop
