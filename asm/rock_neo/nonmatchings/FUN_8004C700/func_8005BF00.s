.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005BF00
    /* 4C700 8005BF00 C4FF4014 */  bnez       $v0, .L8005BE14
    /* 4C704 8005BF04 04008424 */   addiu     $a0, $a0, 0x4
    /* 4C708 8005BF08 0800E003 */  jr         $ra
    /* 4C70C 8005BF0C 00000000 */   nop
.size func_8005BF00, . - func_8005BF00
