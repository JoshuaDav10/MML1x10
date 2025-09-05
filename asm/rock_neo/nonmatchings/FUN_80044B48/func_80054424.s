.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054424
    /* 44C24 80054424 01008290 */  lbu        $v0, 0x1($a0)
    /* 44C28 80054428 00008590 */  lbu        $a1, 0x0($a0)
    /* 44C2C 8005442C 02008390 */  lbu        $v1, 0x2($a0)
    /* 44C30 80054430 00120200 */  sll        $v0, $v0, 8
    /* 44C34 80054434 2128A200 */  addu       $a1, $a1, $v0
    /* 44C38 80054438 001C0300 */  sll        $v1, $v1, 16
    /* 44C3C 8005443C 03008290 */  lbu        $v0, 0x3($a0)
    /* 44C40 80054440 2128A300 */  addu       $a1, $a1, $v1
    /* 44C44 80054444 00160200 */  sll        $v0, $v0, 24
    /* 44C48 80054448 0800E003 */  jr         $ra
    /* 44C4C 8005444C 2110A200 */   addu      $v0, $a1, $v0
.size func_80054424, . - func_80054424
