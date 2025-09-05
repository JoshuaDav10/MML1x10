.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057A00
    /* 48200 80057A00 2128A200 */  addu       $a1, $a1, $v0
    /* 48204 80057A04 140086AC */  sw         $a2, 0x14($a0)
    /* 48208 80057A08 01000424 */  addiu      $a0, $zero, 0x1
    /* 4820C 80057A0C C46F010C */  jal        func_8005BF10
    /* 48210 80057A10 40280500 */   sll       $a1, $a1, 1
    /* 48214 80057A14 1000BF8F */  lw         $ra, 0x10($sp)
    /* 48218 80057A18 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4821C 80057A1C 0800E003 */  jr         $ra
    /* 48220 80057A20 00000000 */   nop
.size func_80057A00, . - func_80057A00
