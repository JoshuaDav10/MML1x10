.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80045038
    /* 35838 80045038 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3583C 8004503C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 35840 80045040 0B008290 */  lbu        $v0, 0xB($a0)
.size func_80045038, . - func_80045038
    /* 35844 80045044 00000000 */  nop
