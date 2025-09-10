.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8007E3C4
    /* 6EBC4 8007E3C4 80300800 */  sll        $a2, $t0, 2
    /* 6EBC8 8007E3C8 01000825 */  addiu      $t0, $t0, 0x1
    /* 6EBCC 8007E3CC 80380800 */  sll        $a3, $t0, 2
    /* 6EBD0 8007E3D0 01000825 */  addiu      $t0, $t0, 0x1
.size func_8007E3C4, . - func_8007E3C4
