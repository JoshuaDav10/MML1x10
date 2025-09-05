.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060900
    /* 51100 80060900 0D00422C */  sltiu      $v0, $v0, 0xD
    /* 51104 80060904 19004010 */  beqz       $v0, .L8006096C
    /* 51108 80060908 00000000 */   nop
    /* 5110C 8006090C 9676000C */  jal        Sce_flag_test
    /* 51110 80060910 C0044426 */   addiu     $a0, $s2, 0x4C0
    /* 51114 80060914 15004010 */  beqz       $v0, .L8006096C
    /* 51118 80060918 0200023C */   lui       $v0, (0x20000 >> 16)
    /* 5111C 8006091C 01000424 */  addiu      $a0, $zero, 0x1
    /* 51120 80060920 04000592 */  lbu        $a1, 0x4($s0)
.size func_80060900, . - func_80060900
