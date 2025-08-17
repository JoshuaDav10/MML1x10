.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80019A70
    /* A270 80019A70 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A274 80019A74 1000BFAF */  sw         $ra, 0x10($sp)
    /* A278 80019A78 9676000C */  jal        Sce_flag_test
    /* A27C 80019A7C E1010424 */   addiu     $a0, $zero, 0x1E1
    /* A280 80019A80 02004014 */  bnez       $v0, .L80019A8C
    /* A284 80019A84 25000224 */   addiu     $v0, $zero, 0x25
    /* A288 80019A88 30000224 */  addiu      $v0, $zero, 0x30
  .L80019A8C:
    /* A28C 80019A8C 0880013C */  lui        $at, %hi(D_800822D6)
    /* A290 80019A90 D62222A4 */  sh         $v0, %lo(D_800822D6)($at)
    /* A294 80019A94 1000BF8F */  lw         $ra, 0x10($sp)
    /* A298 80019A98 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A29C 80019A9C 0800E003 */  jr         $ra
    /* A2A0 80019AA0 00000000 */   nop
.size func_80019A70, . - func_80019A70
