.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80041B34
    /* 32334 80041B34 2800058E */  lw         $a1, 0x28($s0)
    /* 32338 80041B38 340002AE */  sw         $v0, 0x34($s0)
    /* 3233C 80041B3C 380003AE */  sw         $v1, 0x38($s0)
    /* 32340 80041B40 3C0004AE */  sw         $a0, 0x3C($s0)
    /* 32344 80041B44 400005AE */  sw         $a1, 0x40($s0)
    /* 32348 80041B48 09000292 */  lbu        $v0, 0x9($s0)
    /* 3234C 80041B4C 00000000 */  nop
    /* 32350 80041B50 09004014 */  bnez       $v0, .L80041B78
    /* 32354 80041B54 09000224 */   addiu     $v0, $zero, 0x9
    /* 32358 80041B58 0C80013C */  lui        $at, (0x800C0000 >> 16)
.size func_80041B34, . - func_80041B34
