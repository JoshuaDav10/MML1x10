.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C86C
    /* 4D06C 8005C86C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4D070 8005C870 04008290 */  lbu        $v0, 0x4($a0)
    /* 4D074 8005C874 00000000 */  nop
    /* 4D078 8005C878 80100200 */  sll        $v0, $v0, 2
    /* 4D07C 8005C87C 0980013C */  lui        $at, %hi(D_8008D7C0)
    /* 4D080 8005C880 21082200 */  addu       $at, $at, $v0
    /* 4D084 8005C884 C0D7228C */  lw         $v0, %lo(D_8008D7C0)($at)
    /* 4D088 8005C888 00000000 */  nop
    /* 4D08C 8005C88C 09F84000 */  jalr       $v0
    /* 4D090 8005C890 00000000 */   nop
    /* 4D094 8005C894 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4D098 8005C898 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4D09C 8005C89C 0800E003 */  jr         $ra
    /* 4D0A0 8005C8A0 00000000 */   nop
.size func_8005C86C, . - func_8005C86C
