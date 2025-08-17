.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003BE40
    /* 2C640 8003BE40 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2C644 8003BE44 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2C648 8003BE48 21288000 */  addu       $a1, $a0, $zero
    /* 2C64C 8003BE4C 0B80043C */  lui        $a0, %hi(Player_work)
    /* 2C650 8003BE50 B0518424 */  addiu      $a0, $a0, %lo(Player_work)
    /* 2C654 8003BE54 9BEF000C */  jal        func_8003BE6C
    /* 2C658 8003BE58 00000000 */   nop
    /* 2C65C 8003BE5C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2C660 8003BE60 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2C664 8003BE64 0800E003 */  jr         $ra
    /* 2C668 8003BE68 00000000 */   nop
.size func_8003BE40, . - func_8003BE40
