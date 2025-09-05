.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054410
    /* 44C10 80054410 01008290 */  lbu        $v0, 0x1($a0)
    /* 44C14 80054414 00008390 */  lbu        $v1, 0x0($a0)
    /* 44C18 80054418 00120200 */  sll        $v0, $v0, 8
    /* 44C1C 8005441C 0800E003 */  jr         $ra
    /* 44C20 80054420 25106200 */   or        $v0, $v1, $v0
.size func_80054410, . - func_80054410
