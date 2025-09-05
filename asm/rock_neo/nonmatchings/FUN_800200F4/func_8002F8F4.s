.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002F8F4
    /* 200F4 8002F8F4 21104300 */  addu       $v0, $v0, $v1
    /* 200F8 8002F8F8 300082A4 */  sh         $v0, 0x30($a0)
    /* 200FC 8002F8FC 0000A284 */  lh         $v0, 0x0($a1)
    /* 20100 8002F900 3400838C */  lw         $v1, 0x34($a0)
    /* 20104 8002F904 00140200 */  sll        $v0, $v0, 16
    /* 20108 8002F908 21186200 */  addu       $v1, $v1, $v0
    /* 2010C 8002F90C 340083AC */  sw         $v1, 0x34($a0)
    /* 20110 8002F910 0400A284 */  lh         $v0, 0x4($a1)
    /* 20114 8002F914 3C00838C */  lw         $v1, 0x3C($a0)
    /* 20118 8002F918 00140200 */  sll        $v0, $v0, 16
    /* 2011C 8002F91C 21186200 */  addu       $v1, $v1, $v0
    /* 20120 8002F920 0800E003 */  jr         $ra
    /* 20124 8002F924 3C0083AC */   sw        $v1, 0x3C($a0)
.size func_8002F8F4, . - func_8002F8F4
