.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054B9C
    /* 4539C 80054B9C 000082AC */  sw         $v0, 0x0($a0)
    /* 453A0 80054BA0 01000224 */  addiu      $v0, $zero, 0x1
.size func_80054B9C, . - func_80054B9C
