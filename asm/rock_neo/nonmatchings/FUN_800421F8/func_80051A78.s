.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80051A78
    /* 42278 80051A78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4227C 80051A7C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 42280 80051A80 02008384 */  lh         $v1, 0x2($a0)
    /* 42284 80051A84 01000224 */  addiu      $v0, $zero, 0x1
    /* 42288 80051A88 0A006210 */  beq        $v1, $v0, .L80051AB4
    /* 4228C 80051A8C 02006228 */   slti      $v0, $v1, 0x2
    /* 42290 80051A90 27004014 */  bnez       $v0, .L80051B30
.size func_80051A78, . - func_80051A78
