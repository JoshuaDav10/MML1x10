.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004495C
    /* 3515C 8004495C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 35160 80044960 1000BFAF */  sw         $ra, 0x10($sp)
    /* 35164 80044964 08008290 */  lbu        $v0, 0x8($a0)
    /* 35168 80044968 00000000 */  nop
    /* 3516C 8004496C 80100200 */  sll        $v0, $v0, 2
    /* 35170 80044970 0980013C */  lui        $at, %hi(D_8008A220)
    /* 35174 80044974 21082200 */  addu       $at, $at, $v0
    /* 35178 80044978 20A2228C */  lw         $v0, %lo(D_8008A220)($at)
    /* 3517C 8004497C 00000000 */  nop
    /* 35180 80044980 09F84000 */  jalr       $v0
    /* 35184 80044984 00000000 */   nop
    /* 35188 80044988 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3518C 8004498C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 35190 80044990 0800E003 */  jr         $ra
    /* 35194 80044994 00000000 */   nop
.size func_8004495C, . - func_8004495C
