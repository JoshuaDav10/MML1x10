.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A858
    /* 4B058 8005A858 10008294 */  lhu        $v0, 0x10($a0)
    /* 4B05C 8005A85C 1400838C */  lw         $v1, 0x14($a0)
    /* 4B060 8005A860 0C004224 */  addiu      $v0, $v0, 0xC
    /* 4B064 8005A864 01006324 */  addiu      $v1, $v1, 0x1
    /* 4B068 8005A868 100082A4 */  sh         $v0, 0x10($a0)
    /* 4B06C 8005A86C 0800E003 */  jr         $ra
    /* 4B070 8005A870 140083AC */   sw        $v1, 0x14($a0)
.size func_8005A858, . - func_8005A858
