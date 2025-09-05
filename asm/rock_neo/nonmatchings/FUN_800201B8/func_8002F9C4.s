.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002F9C4
    /* 201C4 8002F9C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 201C8 8002F9C8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 201CC 8002F9CC 2130A000 */  addu       $a2, $a1, $zero
    /* 201D0 8002F9D0 1680053C */  lui        $a1, (0x8016C000 >> 16)
    /* 201D4 8002F9D4 8EBE000C */  jal        func_8002FA38
    /* 201D8 8002F9D8 00C0A534 */   ori       $a1, $a1, (0x8016C000 & 0xFFFF)
.size func_8002F9C4, . - func_8002F9C4
