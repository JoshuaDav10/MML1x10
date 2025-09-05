.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004569C
    /* 35E9C 8004569C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 35EA0 800456A0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 35EA4 800456A4 08008290 */  lbu        $v0, 0x8($a0)
    /* 35EA8 800456A8 00000000 */  nop
    /* 35EAC 800456AC 80100200 */  sll        $v0, $v0, 2
    /* 35EB0 800456B0 0980013C */  lui        $at, %hi(D_8008A358)
    /* 35EB4 800456B4 21082200 */  addu       $at, $at, $v0
    /* 35EB8 800456B8 58A3228C */  lw         $v0, %lo(D_8008A358)($at)
    /* 35EBC 800456BC 00000000 */  nop
    /* 35EC0 800456C0 09F84000 */  jalr       $v0
    /* 35EC4 800456C4 00000000 */   nop
    /* 35EC8 800456C8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 35ECC 800456CC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 35ED0 800456D0 0800E003 */  jr         $ra
    /* 35ED4 800456D4 00000000 */   nop
.size func_8004569C, . - func_8004569C
