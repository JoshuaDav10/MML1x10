.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002F9EC
    /* 201EC 8002F9EC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 201F0 8002F9F0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 201F4 8002F9F4 2130A000 */  addu       $a2, $a1, $zero
    /* 201F8 8002F9F8 8EBE000C */  jal        func_8002FA38
    /* 201FC 8002F9FC 1980053C */   lui       $a1, (0x80190000 >> 16)
    /* 20200 8002FA00 1000BF8F */  lw         $ra, 0x10($sp)
    /* 20204 8002FA04 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 20208 8002FA08 0800E003 */  jr         $ra
    /* 2020C 8002FA0C 00000000 */   nop
.size func_8002F9EC, . - func_8002F9EC
