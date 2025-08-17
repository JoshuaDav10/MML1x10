.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80012FC8
    /* 37C8 80012FC8 1F80023C */  lui        $v0, (0x801F8100 >> 16)
    /* 37CC 80012FCC 00814234 */  ori        $v0, $v0, (0x801F8100 & 0xFFFF)
    /* 37D0 80012FD0 C0210400 */  sll        $a0, $a0, 7
    /* 37D4 80012FD4 21208200 */  addu       $a0, $a0, $v0
    /* 37D8 80012FD8 00008294 */  lhu        $v0, 0x0($a0)
    /* 37DC 80012FDC 00000000 */  nop
    /* 37E0 80012FE0 BFFF4230 */  andi       $v0, $v0, 0xFFBF
    /* 37E4 80012FE4 0800E003 */  jr         $ra
    /* 37E8 80012FE8 000082A4 */   sh        $v0, 0x0($a0)
.size func_80012FC8, . - func_80012FC8
