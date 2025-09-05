.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80045238
    /* 35A38 80045238 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 35A3C 8004523C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 35A40 80045240 08008290 */  lbu        $v0, 0x8($a0)
    /* 35A44 80045244 00000000 */  nop
    /* 35A48 80045248 80100200 */  sll        $v0, $v0, 2
    /* 35A4C 8004524C 0980013C */  lui        $at, %hi(D_8008A290)
    /* 35A50 80045250 21082200 */  addu       $at, $at, $v0
    /* 35A54 80045254 90A2228C */  lw         $v0, %lo(D_8008A290)($at)
    /* 35A58 80045258 00000000 */  nop
    /* 35A5C 8004525C 09F84000 */  jalr       $v0
    /* 35A60 80045260 00000000 */   nop
    /* 35A64 80045264 1000BF8F */  lw         $ra, 0x10($sp)
    /* 35A68 80045268 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 35A6C 8004526C 0800E003 */  jr         $ra
    /* 35A70 80045270 00000000 */   nop
.size func_80045238, . - func_80045238
