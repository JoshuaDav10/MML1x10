.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80055660
    /* 45E60 80055660 FFDF053C */  lui        $a1, (0xDFFFFFFF >> 16)
    /* 45E64 80055664 FFFFA534 */  ori        $a1, $a1, (0xDFFFFFFF & 0xFFFF)
    /* 45E68 80055668 0000828C */  lw         $v0, 0x0($a0)
    /* 45E6C 8005566C 6C00838C */  lw         $v1, 0x6C($a0)
    /* 45E70 80055670 24104500 */  and        $v0, $v0, $a1
    /* 45E74 80055674 01006324 */  addiu      $v1, $v1, 0x1
    /* 45E78 80055678 000082AC */  sw         $v0, 0x0($a0)
    /* 45E7C 8005567C 01000224 */  addiu      $v0, $zero, 0x1
    /* 45E80 80055680 0800E003 */  jr         $ra
    /* 45E84 80055684 6C0083AC */   sw        $v1, 0x6C($a0)
.size func_80055660, . - func_80055660
