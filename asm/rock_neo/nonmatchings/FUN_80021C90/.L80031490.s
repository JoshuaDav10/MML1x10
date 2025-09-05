.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L80031490
    /* 21C90 80031490 0800E003 */  jr         $ra
    /* 21C94 80031494 00000000 */   nop
.size .L80031490, . - .L80031490
