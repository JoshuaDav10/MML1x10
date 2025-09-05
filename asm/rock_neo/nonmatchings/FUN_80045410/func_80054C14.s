.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054C14
    /* 45414 80054C14 8100A214 */  bne        $a1, $v0, .L80054E1C
    /* 45418 80054C18 780000A2 */   sb        $zero, 0x78($s0)
    /* 4541C 80054C1C 0000028E */  lw         $v0, 0x0($s0)
    /* 45420 80054C20 C000033C */  lui        $v1, (0xC00000 >> 16)
    /* 45424 80054C24 24104300 */  and        $v0, $v0, $v1
.size func_80054C14, . - func_80054C14
