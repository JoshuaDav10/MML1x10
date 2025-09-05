.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80041914
    /* 32114 80041914 23107100 */  subu       $v0, $v1, $s1
    /* 32118 80041918 6E0002A6 */  sh         $v0, 0x6E($s0)
    /* 3211C 8004191C 00140200 */  sll        $v0, $v0, 16
    /* 32120 80041920 0700401C */  bgtz       $v0, .L80041940
    /* 32124 80041924 00000000 */   nop
.size func_80041914, . - func_80041914
