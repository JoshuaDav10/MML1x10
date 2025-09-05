.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80040140
    /* 30940 80040140 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 30944 80040144 1000BFAF */  sw         $ra, 0x10($sp)
    /* 30948 80040148 0A008390 */  lbu        $v1, 0xA($a0)
    /* 3094C 8004014C 02000224 */  addiu      $v0, $zero, 0x2
    /* 30950 80040150 03006214 */  bne        $v1, $v0, .L80040160
    /* 30954 80040154 00000000 */   nop
    /* 30958 80040158 D901010C */  jal        func_80040764
    /* 3095C 8004015C 00000000 */   nop
  .L80040160:
    /* 30960 80040160 1000BF8F */  lw         $ra, 0x10($sp)
    /* 30964 80040164 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 30968 80040168 0800E003 */  jr         $ra
    /* 3096C 8004016C 00000000 */   nop
.size func_80040140, . - func_80040140
