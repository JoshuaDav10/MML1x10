.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005457C
    /* 44D7C 8005457C 3B008290 */  lbu        $v0, 0x3B($a0)
    /* 44D80 80054580 6C00838C */  lw         $v1, 0x6C($a0)
    /* 44D84 80054584 01004224 */  addiu      $v0, $v0, 0x1
    /* 44D88 80054588 01006324 */  addiu      $v1, $v1, 0x1
    /* 44D8C 8005458C 3B0082A0 */  sb         $v0, 0x3B($a0)
    /* 44D90 80054590 01000224 */  addiu      $v0, $zero, 0x1
    /* 44D94 80054594 0800E003 */  jr         $ra
    /* 44D98 80054598 6C0083AC */   sw        $v1, 0x6C($a0)
.size func_8005457C, . - func_8005457C
