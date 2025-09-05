.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80045048
    /* 35848 80045048 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 3584C 8004504C 0B0082A0 */  sb         $v0, 0xB($a0)
    /* 35850 80045050 FF004230 */  andi       $v0, $v0, 0xFF
    /* 35854 80045054 03004014 */  bnez       $v0, .L80045064
    /* 35858 80045058 00000000 */   nop
    /* 3585C 8004505C 62C6000C */  jal        func_80031988
    /* 35860 80045060 000080A0 */   sb        $zero, 0x0($a0)
  .L80045064:
    /* 35864 80045064 1000BF8F */  lw         $ra, 0x10($sp)
    /* 35868 80045068 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3586C 8004506C 0800E003 */  jr         $ra
    /* 35870 80045070 00000000 */   nop
.size func_80045048, . - func_80045048
