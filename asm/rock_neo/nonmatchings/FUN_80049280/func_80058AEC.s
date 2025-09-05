.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058AEC
    /* 492EC 80058AEC 21288000 */  addu       $a1, $a0, $zero
    /* 492F0 80058AF0 0000A38C */  lw         $v1, 0x0($a1)
    /* 492F4 80058AF4 0001043C */  lui        $a0, (0x1000000 >> 16)
    /* 492F8 80058AF8 24106400 */  and        $v0, $v1, $a0
    /* 492FC 80058AFC 08004014 */  bnez       $v0, .L80058B20
.size func_80058AEC, . - func_80058AEC
