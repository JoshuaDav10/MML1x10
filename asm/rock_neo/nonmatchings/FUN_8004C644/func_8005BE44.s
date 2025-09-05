.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BE44
    /* 4C644 8005BE44 040062A0 */  sb         $v0, 0x4($v1)
    /* 4C648 8005BE48 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C64C 8005BE4C 0000C290 */  lbu        $v0, 0x0($a2)
    /* 4C650 8005BE50 00000000 */  nop
    /* 4C654 8005BE54 050062A0 */  sb         $v0, 0x5($v1)
    /* 4C658 8005BE58 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C65C 8005BE5C 0000C290 */  lbu        $v0, 0x0($a2)
    /* 4C660 8005BE60 00000000 */  nop
    /* 4C664 8005BE64 060062A0 */  sb         $v0, 0x6($v1)
    /* 4C668 8005BE68 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C66C 8005BE6C 0000E290 */  lbu        $v0, 0x0($a3)
    /* 4C670 8005BE70 00000000 */  nop
    /* 4C674 8005BE74 0C0062A0 */  sb         $v0, 0xC($v1)
    /* 4C678 8005BE78 A000838C */  lw         $v1, 0xA0($a0)
    /* 4C67C 8005BE7C 0000E290 */  lbu        $v0, 0x0($a3)
.size func_8005BE44, . - func_8005BE44
