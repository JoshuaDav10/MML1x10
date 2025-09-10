.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8007E31C
    /* 6EB1C 8007E31C 28004010 */  beqz       $v0, .L8007E3C0
    /* 6EB20 8007E320 80280800 */   sll       $a1, $t0, 2
  .L8007E324:
    /* 6EB24 8007E324 01000825 */  addiu      $t0, $t0, 0x1
    /* 6EB28 8007E328 80280800 */  sll        $a1, $t0, 2
.size func_8007E31C, . - func_8007E31C
