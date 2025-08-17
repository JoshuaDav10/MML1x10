.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80030CF0
    /* 214F0 80030CF0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 214F4 80030CF4 00340600 */  sll        $a2, $a2, 16
    /* 214F8 80030CF8 003C0700 */  sll        $a3, $a3, 16
    /* 214FC 80030CFC 14008424 */  addiu      $a0, $a0, 0x14
    /* 21500 80030D00 C400A524 */  addiu      $a1, $a1, 0xC4
    /* 21504 80030D04 03340600 */  sra        $a2, $a2, 16
    /* 21508 80030D08 3000A287 */  lh         $v0, 0x30($sp)
    /* 2150C 80030D0C 033C0700 */  sra        $a3, $a3, 16
    /* 21510 80030D10 1800BFAF */  sw         $ra, 0x18($sp)
    /* 21514 80030D14 4CC3000C */  jal        func_80030D30
    /* 21518 80030D18 1000A2AF */   sw        $v0, 0x10($sp)
    /* 2151C 80030D1C 00140200 */  sll        $v0, $v0, 16
    /* 21520 80030D20 1800BF8F */  lw         $ra, 0x18($sp)
    /* 21524 80030D24 03140200 */  sra        $v0, $v0, 16
    /* 21528 80030D28 0800E003 */  jr         $ra
    /* 2152C 80030D2C 2000BD27 */   addiu     $sp, $sp, 0x20
.size func_80030CF0, . - func_80030CF0
