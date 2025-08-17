.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002FA10
    /* 20210 8002FA10 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 20214 8002FA14 1000BFAF */  sw         $ra, 0x10($sp)
    /* 20218 8002FA18 2130A000 */  addu       $a2, $a1, $zero
    /* 2021C 8002FA1C 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 20220 8002FA20 8EBE000C */  jal        func_8002FA38
    /* 20224 8002FA24 0020A534 */   ori       $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 20228 8002FA28 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2022C 8002FA2C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 20230 8002FA30 0800E003 */  jr         $ra
    /* 20234 8002FA34 00000000 */   nop
.size func_8002FA10, . - func_8002FA10
