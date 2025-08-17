.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80048CEC
    /* 394EC 80048CEC 801F023C */  lui        $v0, (0x1F800048 >> 16)
    /* 394F0 80048CF0 4800428C */  lw         $v0, (0x1F800048 & 0xFFFF)($v0)
    /* 394F4 80048CF4 40200400 */  sll        $a0, $a0, 1
    /* 394F8 80048CF8 21208200 */  addu       $a0, $a0, $v0
    /* 394FC 80048CFC 00008284 */  lh         $v0, 0x0($a0)
    /* 39500 80048D00 0800E003 */  jr         $ra
    /* 39504 80048D04 00000000 */   nop
.size func_80048CEC, . - func_80048CEC
