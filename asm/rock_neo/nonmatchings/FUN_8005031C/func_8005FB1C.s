.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005FB1C
    /* 5031C 8005FB1C 21082200 */  addu       $at, $at, $v0
    /* 50320 8005FB20 F4DA2490 */  lbu        $a0, -0x250C($at)
    /* 50324 8005FB24 9676000C */  jal        Sce_flag_test
    /* 50328 8005FB28 20058424 */   addiu     $a0, $a0, 0x520
    /* 5032C 8005FB2C 0B004010 */  beqz       $v0, .L8005FB5C
.size func_8005FB1C, . - func_8005FB1C
