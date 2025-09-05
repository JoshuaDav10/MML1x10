.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80030934
    /* 21134 80030934 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 21138 80030938 00010224 */  addiu      $v0, $zero, 0x100
    /* 2113C 8003093C 00340600 */  sll        $a2, $a2, 16
    /* 21140 80030940 003C0700 */  sll        $a3, $a3, 16
    /* 21144 80030944 03340600 */  sra        $a2, $a2, 16
    /* 21148 80030948 033C0700 */  sra        $a3, $a3, 16
    /* 2114C 8003094C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 21150 80030950 5AC2000C */  jal        func_80030968
    /* 21154 80030954 1000A2AF */   sw        $v0, 0x10($sp)
    /* 21158 80030958 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2115C 8003095C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 21160 80030960 0800E003 */  jr         $ra
    /* 21164 80030964 00000000 */   nop
.size func_80030934, . - func_80030934
