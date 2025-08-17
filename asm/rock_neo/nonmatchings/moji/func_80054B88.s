.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054B88
    /* 45388 80054B88 0008053C */  lui        $a1, (0x8000000 >> 16)
    /* 4538C 80054B8C 0000828C */  lw         $v0, 0x0($a0)
    /* 45390 80054B90 6C00838C */  lw         $v1, 0x6C($a0)
    /* 45394 80054B94 25104500 */  or         $v0, $v0, $a1
    /* 45398 80054B98 01006324 */  addiu      $v1, $v1, 0x1
    /* 4539C 80054B9C 000082AC */  sw         $v0, 0x0($a0)
    /* 453A0 80054BA0 01000224 */  addiu      $v0, $zero, 0x1
    /* 453A4 80054BA4 0800E003 */  jr         $ra
    /* 453A8 80054BA8 6C0083AC */   sw        $v1, 0x6C($a0)
.size func_80054B88, . - func_80054B88
