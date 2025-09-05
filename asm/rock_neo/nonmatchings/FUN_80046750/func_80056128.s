.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80056128
    /* 46928 80056128 3B008290 */  lbu        $v0, 0x3B($a0)
    /* 4692C 8005612C 6C00838C */  lw         $v1, 0x6C($a0)
    /* 46930 80056130 01004224 */  addiu      $v0, $v0, 0x1
    /* 46934 80056134 02006324 */  addiu      $v1, $v1, 0x2
    /* 46938 80056138 3B0082A0 */  sb         $v0, 0x3B($a0)
    /* 4693C 8005613C 01000224 */  addiu      $v0, $zero, 0x1
    /* 46940 80056140 0800E003 */  jr         $ra
    /* 46944 80056144 6C0083AC */   sw        $v1, 0x6C($a0)
.size func_80056128, . - func_80056128
