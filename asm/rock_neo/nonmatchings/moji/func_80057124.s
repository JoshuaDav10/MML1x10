.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057124
    /* 47924 80057124 6C00828C */  lw         $v0, 0x6C($a0)
    /* 47928 80057128 0C80033C */  lui        $v1, %hi(Game_work + 0x1C)
    /* 4792C 8005712C 2C1B638C */  lw         $v1, %lo(Game_work + 0x1C)($v1)
    /* 47930 80057130 01004224 */  addiu      $v0, $v0, 0x1
    /* 47934 80057134 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 47938 80057138 01000224 */  addiu      $v0, $zero, 0x1
    /* 4793C 8005713C 0800E003 */  jr         $ra
    /* 47940 80057140 400083AC */   sw        $v1, 0x40($a0)
.size func_80057124, . - func_80057124
