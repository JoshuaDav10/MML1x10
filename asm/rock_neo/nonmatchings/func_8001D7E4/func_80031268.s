.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80031268
    /* 21A68 80031268 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 21A6C 8003126C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 21A70 80031270 0000A684 */  lh         $a2, 0x0($a1)
    /* 21A74 80031274 00008284 */  lh         $v0, 0x0($a0)
    /* 21A78 80031278 0400A384 */  lh         $v1, 0x4($a1)
    /* 21A7C 8003127C 04008584 */  lh         $a1, 0x4($a0)
    /* 21A80 80031280 2320C200 */  subu       $a0, $a2, $v0
    /* 21A84 80031284 EAEF010C */  jal        ratan2
    /* 21A88 80031288 23286500 */   subu      $a1, $v1, $a1
    /* 21A8C 8003128C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 21A90 80031290 00084224 */  addiu      $v0, $v0, 0x800
    /* 21A94 80031294 0800E003 */  jr         $ra
    /* 21A98 80031298 1800BD27 */   addiu     $sp, $sp, 0x18
.size func_80031268, . - func_80031268
