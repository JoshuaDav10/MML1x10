.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800459A0
    /* 361A0 800459A0 D8FF0224 */  addiu      $v0, $zero, -0x28
    /* 361A4 800459A4 2E0082A4 */  sh         $v0, 0x2E($a0)
    /* 361A8 800459A8 08008290 */  lbu        $v0, 0x8($a0)
    /* 361AC 800459AC 05000324 */  addiu      $v1, $zero, 0x5
    /* 361B0 800459B0 340083A4 */  sh         $v1, 0x34($a0)
    /* 361B4 800459B4 01004224 */  addiu      $v0, $v0, 0x1
    /* 361B8 800459B8 0800E003 */  jr         $ra
    /* 361BC 800459BC 080082A0 */   sb        $v0, 0x8($a0)
.size func_800459A0, . - func_800459A0
