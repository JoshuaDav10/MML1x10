.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002AEE4
    /* 1B6E4 8002AEE4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1B6E8 8002AEE8 21708000 */  addu       $t6, $a0, $zero
    /* 1B6EC 8002AEEC 2160A000 */  addu       $t4, $a1, $zero
    /* 1B6F0 8002AEF0 00060F3C */  lui        $t7, (0x6000000 >> 16)
    /* 1B6F4 8002AEF4 FF00183C */  lui        $t8, (0xFF0000 >> 16)
.size func_8002AEE4, . - func_8002AEE4
