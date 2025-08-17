.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800406DC
    /* 30EDC 800406DC 1E018394 */  lhu        $v1, 0x11E($a0)
    /* 30EE0 800406E0 38018294 */  lhu        $v0, 0x138($a0)
    /* 30EE4 800406E4 00000000 */  nop
    /* 30EE8 800406E8 24104300 */  and        $v0, $v0, $v1
    /* 30EEC 800406EC 03004014 */  bnez       $v0, .L800406FC
    /* 30EF0 800406F0 01000224 */   addiu     $v0, $zero, 0x1
    /* 30EF4 800406F4 C2010108 */  j          .L80040708
    /* 30EF8 800406F8 21100000 */   addu      $v0, $zero, $zero
  .L800406FC:
    /* 30EFC 800406FC 08000324 */  addiu      $v1, $zero, 0x8
    /* 30F00 80040700 090083A0 */  sb         $v1, 0x9($a0)
    /* 30F04 80040704 0A0080A4 */  sh         $zero, 0xA($a0)
  .L80040708:
    /* 30F08 80040708 0800E003 */  jr         $ra
    /* 30F0C 8004070C 00000000 */   nop
.size func_800406DC, . - func_800406DC
