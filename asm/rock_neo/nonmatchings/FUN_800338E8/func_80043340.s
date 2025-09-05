.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80043340
    /* 33B40 80043340 40100500 */  sll        $v0, $a1, 1
    /* 33B44 80043344 21104500 */  addu       $v0, $v0, $a1
    /* 33B48 80043348 C0190200 */  sll        $v1, $v0, 7
    /* 33B4C 8004334C 23186200 */  subu       $v1, $v1, $v0
    /* 33B50 80043350 80180300 */  sll        $v1, $v1, 2
    /* 33B54 80043354 0B80023C */  lui        $v0, %hi(Player_work)
    /* 33B58 80043358 B0514224 */  addiu      $v0, $v0, %lo(Player_work)
    /* 33B5C 8004335C 21306200 */  addu       $a2, $v1, $v0
    /* 33B60 80043360 6E00C294 */  lhu        $v0, 0x6E($a2)
    /* 33B64 80043364 B000C384 */  lh         $v1, 0xB0($a2)
    /* 33B68 80043368 21104400 */  addu       $v0, $v0, $a0
    /* 33B6C 8004336C 6E00C2A4 */  sh         $v0, 0x6E($a2)
.size func_80043340, . - func_80043340
