.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057BB8
    /* 483B8 80057BB8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 483BC 80057BBC 21808000 */  addu       $s0, $a0, $zero
.size func_80057BB8, . - func_80057BB8
