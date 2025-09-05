.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Pl00_shot_enable_on
    /* 32BC8 800423C8 75018290 */  lbu        $v0, 0x175($a0)
.size Pl00_shot_enable_on, . - Pl00_shot_enable_on
    /* 32BCC 800423CC 00000000 */  nop
