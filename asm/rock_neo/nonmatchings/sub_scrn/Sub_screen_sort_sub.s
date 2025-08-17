.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sub_screen_sort_sub
    /* 51B04 80061304 21288500 */  addu       $a1, $a0, $a1
    /* 51B08 80061308 21208600 */  addu       $a0, $a0, $a2
    /* 51B0C 8006130C 54048290 */  lbu        $v0, 0x454($a0)
    /* 51B10 80061310 5404A390 */  lbu        $v1, 0x454($a1)
    /* 51B14 80061314 5404A2A0 */  sb         $v0, 0x454($a1)
    /* 51B18 80061318 0800E003 */  jr         $ra
    /* 51B1C 8006131C 540483A0 */   sb        $v1, 0x454($a0)
.size Sub_screen_sort_sub, . - Sub_screen_sort_sub
