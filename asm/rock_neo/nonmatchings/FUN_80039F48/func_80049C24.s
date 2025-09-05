.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80049C24
    /* 3A424 80049C24 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3A428 80049C28 21288000 */  addu       $a1, $a0, $zero
    /* 3A42C 80049C2C 1400A424 */  addiu      $a0, $a1, 0x14
    /* 3A430 80049C30 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3A434 80049C34 7800A68C */  lw         $a2, 0x78($a1)
    /* 3A438 80049C38 0100A790 */  lbu        $a3, 0x1($a1)
    /* 3A43C 80049C3C 1527010C */  jal        func_80049C54
    /* 3A440 80049C40 2C00A524 */   addiu     $a1, $a1, 0x2C
    /* 3A444 80049C44 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3A448 80049C48 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3A44C 80049C4C 0800E003 */  jr         $ra
    /* 3A450 80049C50 00000000 */   nop
.size func_80049C24, . - func_80049C24
