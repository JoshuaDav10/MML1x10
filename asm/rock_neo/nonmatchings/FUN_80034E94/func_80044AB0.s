.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80044AB0
    /* 352B0 80044AB0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 352B4 80044AB4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 352B8 80044AB8 08008290 */  lbu        $v0, 0x8($a0)
    /* 352BC 80044ABC 00000000 */  nop
    /* 352C0 80044AC0 80100200 */  sll        $v0, $v0, 2
    /* 352C4 80044AC4 0980013C */  lui        $at, %hi(D_8008A250)
    /* 352C8 80044AC8 21082200 */  addu       $at, $at, $v0
    /* 352CC 80044ACC 50A2228C */  lw         $v0, %lo(D_8008A250)($at)
    /* 352D0 80044AD0 00000000 */  nop
    /* 352D4 80044AD4 09F84000 */  jalr       $v0
    /* 352D8 80044AD8 00000000 */   nop
    /* 352DC 80044ADC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 352E0 80044AE0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 352E4 80044AE4 0800E003 */  jr         $ra
    /* 352E8 80044AE8 00000000 */   nop
.size func_80044AB0, . - func_80044AB0
