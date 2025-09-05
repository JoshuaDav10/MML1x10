.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BD00
    /* 4C500 8005BD00 30004224 */  addiu      $v0, $v0, 0x30
    /* 4C504 8005BD04 000062AC */  sw         $v0, 0x0($v1)
    /* 4C508 8005BD08 9800828C */  lw         $v0, 0x98($a0)
    /* 4C50C 8005BD0C 9C0086AC */  sw         $a2, 0x9C($a0)
.size func_8005BD00, . - func_8005BD00
