.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800545DC
    /* 44DDC 800545DC 0001053C */  lui        $a1, (0x1000000 >> 16)
    /* 44DE0 800545E0 24106500 */  and        $v0, $v1, $a1
    /* 44DE4 800545E4 09004014 */  bnez       $v0, .L8005460C
    /* 44DE8 800545E8 0010023C */   lui       $v0, (0x10000000 >> 16)
    /* 44DEC 800545EC 6C00048E */  lw         $a0, 0x6C($s0)
    /* 44DF0 800545F0 25106500 */  or         $v0, $v1, $a1
    /* 44DF4 800545F4 000002AE */  sw         $v0, 0x0($s0)
    /* 44DF8 800545F8 0451010C */  jal        func_80054410
    /* 44DFC 800545FC 01008424 */   addiu     $a0, $a0, 0x1
.size func_800545DC, . - func_800545DC
