.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel .L8005CFA4
    /* 4D7A4 8005CFA4 0D004292 */  lbu        $v0, 0xD($s2)
.size .L8005CFA4, . - .L8005CFA4
    /* 4D7A8 8005CFA8 00000000 */  nop
