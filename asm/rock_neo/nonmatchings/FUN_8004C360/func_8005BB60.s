.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BB60
    /* 4C360 8005BB60 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4C364 8005BB64 7D00C5A0 */  sb         $a1, 0x7D($a2)
    /* 4C368 8005BB68 23100200 */  negu       $v0, $v0
    /* 4C36C 8005BB6C 8E00C2A4 */  sh         $v0, 0x8E($a2)
    /* 4C370 8005BB70 0000C28C */  lw         $v0, 0x0($a2)
    /* 4C374 8005BB74 23180300 */  negu       $v1, $v1
    /* 4C378 8005BB78 9000C3A4 */  sh         $v1, 0x90($a2)
    /* 4C37C 8005BB7C 0012033C */  lui        $v1, (0x12000000 >> 16)
.size func_8005BB60, . - func_8005BB60
