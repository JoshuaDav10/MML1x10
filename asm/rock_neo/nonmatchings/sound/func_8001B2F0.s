.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001B2F0
    /* BAF0 8001B2F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BAF4 8001B2F4 1000BFAF */  sw         $ra, 0x10($sp)
    /* BAF8 8001B2F8 00240400 */  sll        $a0, $a0, 16
    /* BAFC 8001B2FC 88C4010C */  jal        func_80071220
    /* BB00 8001B300 03240400 */   sra       $a0, $a0, 16
    /* BB04 8001B304 1000BF8F */  lw         $ra, 0x10($sp)
    /* BB08 8001B308 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BB0C 8001B30C 0800E003 */  jr         $ra
    /* BB10 8001B310 00000000 */   nop
.size func_8001B2F0, . - func_8001B2F0
