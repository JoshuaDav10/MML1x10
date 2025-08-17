.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80012FA4
    /* 37A4 80012FA4 1F80023C */  lui        $v0, (0x801F8100 >> 16)
    /* 37A8 80012FA8 00814234 */  ori        $v0, $v0, (0x801F8100 & 0xFFFF)
    /* 37AC 80012FAC C0210400 */  sll        $a0, $a0, 7
    /* 37B0 80012FB0 21208200 */  addu       $a0, $a0, $v0
    /* 37B4 80012FB4 00008294 */  lhu        $v0, 0x0($a0)
    /* 37B8 80012FB8 00000000 */  nop
    /* 37BC 80012FBC 40004234 */  ori        $v0, $v0, 0x40
    /* 37C0 80012FC0 0800E003 */  jr         $ra
    /* 37C4 80012FC4 000082A4 */   sh        $v0, 0x0($a0)
.size func_80012FA4, . - func_80012FA4
