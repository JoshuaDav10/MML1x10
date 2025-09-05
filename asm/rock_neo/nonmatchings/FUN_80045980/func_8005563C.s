.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005563C
    /* 45E3C 8005563C 0020053C */  lui        $a1, (0x20000000 >> 16)
    /* 45E40 80055640 0000828C */  lw         $v0, 0x0($a0)
    /* 45E44 80055644 6C00838C */  lw         $v1, 0x6C($a0)
    /* 45E48 80055648 25104500 */  or         $v0, $v0, $a1
    /* 45E4C 8005564C 01006324 */  addiu      $v1, $v1, 0x1
    /* 45E50 80055650 000082AC */  sw         $v0, 0x0($a0)
    /* 45E54 80055654 01000224 */  addiu      $v0, $zero, 0x1
    /* 45E58 80055658 0800E003 */  jr         $ra
    /* 45E5C 8005565C 6C0083AC */   sw        $v1, 0x6C($a0)
.size func_8005563C, . - func_8005563C
