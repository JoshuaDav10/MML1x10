.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80053008
    /* 43808 80053008 074C0108 */  j          .L8005301C
    /* 4380C 8005300C 03001024 */   addiu     $s0, $zero, 0x3
  .L80053010:
    /* 43810 80053010 02008018 */  blez       $a0, .L8005301C
    /* 43814 80053014 06001024 */   addiu     $s0, $zero, 0x6
    /* 43818 80053018 05001024 */  addiu      $s0, $zero, 0x5
.size func_80053008, . - func_80053008
