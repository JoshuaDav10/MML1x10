.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sce_flag_test
    /* E258 8001DA58 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* E25C 8001DA5C 07008530 */  andi       $a1, $a0, 0x7
    /* E260 8001DA60 C2200400 */  srl        $a0, $a0, 3
    /* E264 8001DA64 80000324 */  addiu      $v1, $zero, 0x80
    /* E268 8001DA68 0C80013C */  lui        $at, %hi(Sce_flag)
    /* E26C 8001DA6C 21082400 */  addu       $at, $at, $a0
    /* E270 8001DA70 78E32290 */  lbu        $v0, %lo(Sce_flag)($at)
    /* E274 8001DA74 0718A300 */  srav       $v1, $v1, $a1
    /* E278 8001DA78 24104300 */  and        $v0, $v0, $v1
    /* E27C 8001DA7C 2B100200 */  sltu       $v0, $zero, $v0
    /* E280 8001DA80 0800BD27 */  addiu      $sp, $sp, 0x8
    /* E284 8001DA84 0800E003 */  jr         $ra
    /* E288 8001DA88 00000000 */   nop
.size Sce_flag_test, . - Sce_flag_test
