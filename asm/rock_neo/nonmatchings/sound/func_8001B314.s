.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001B314
    /* BB14 8001B314 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BB18 8001B318 1000BFAF */  sw         $ra, 0x10($sp)
    /* BB1C 8001B31C FF00053C */  lui        $a1, (0xFF8000 >> 16)
    /* BB20 8001B320 0080A534 */  ori        $a1, $a1, (0xFF8000 & 0xFFFF)
    /* BB24 8001B324 C9A9010C */  jal        SpuSetKey
    /* BB28 8001B328 21200000 */   addu      $a0, $zero, $zero
    /* BB2C 8001B32C 1000BF8F */  lw         $ra, 0x10($sp)
    /* BB30 8001B330 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BB34 8001B334 0800E003 */  jr         $ra
    /* BB38 8001B338 00000000 */   nop
.size func_8001B314, . - func_8001B314
