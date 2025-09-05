.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005DD38
    /* 4E538 8005DD38 1700A4AB */  swl        $a0, 0x17($sp)
    /* 4E53C 8005DD3C 1400A4BB */  swr        $a0, 0x14($sp)
    /* 4E540 8005DD40 1800A5A3 */  sb         $a1, 0x18($sp)
    /* 4E544 8005DD44 01004230 */  andi       $v0, $v0, 0x1
    /* 4E548 8005DD48 34004010 */  beqz       $v0, .L8005DE1C
    /* 4E54C 8005DD4C 80000D24 */   addiu     $t5, $zero, 0x80
.size func_8005DD38, . - func_8005DD38
