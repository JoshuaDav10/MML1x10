.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80013890
    /* 4090 80013890 000080A0 */  sb         $zero, 0x0($a0)
    /* 4094 80013894 0800E003 */  jr         $ra
    /* 4098 80013898 010080A0 */   sb        $zero, 0x1($a0)
.size func_80013890, . - func_80013890
