.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80055304
    /* 45B04 80055304 72008280 */  lb         $v0, 0x72($a0)
    /* 45B08 80055308 1400838C */  lw         $v1, 0x14($a0)
    /* 45B0C 8005530C 02004224 */  addiu      $v0, $v0, 0x2
    /* 45B10 80055310 21186200 */  addu       $v1, $v1, $v0
    /* 45B14 80055314 0800E003 */  jr         $ra
    /* 45B18 80055318 140083AC */   sw        $v1, 0x14($a0)
.size func_80055304, . - func_80055304
