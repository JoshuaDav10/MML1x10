.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800542FC
    /* 44AFC 800542FC 1400828C */  lw         $v0, 0x14($a0)
    /* 44B00 80054300 00000000 */  nop
    /* 44B04 80054304 01004224 */  addiu      $v0, $v0, 0x1
    /* 44B08 80054308 0800E003 */  jr         $ra
    /* 44B0C 8005430C 140082AC */   sw        $v0, 0x14($a0)
.size func_800542FC, . - func_800542FC
