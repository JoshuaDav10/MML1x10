.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057B40
    /* 48340 80057B40 02004224 */  addiu      $v0, $v0, 0x2
    /* 48344 80057B44 180062AC */  sw         $v0, 0x18($v1)
    /* 48348 80057B48 1400828C */  lw         $v0, 0x14($a0)
    /* 4834C 80057B4C 00000000 */  nop
    /* 48350 80057B50 01004290 */  lbu        $v0, 0x1($v0)
    /* 48354 80057B54 00000000 */  nop
    /* 48358 80057B58 80100200 */  sll        $v0, $v0, 2
    /* 4835C 80057B5C 0980013C */  lui        $at, %hi(D_8008CBA4)
    /* 48360 80057B60 21082200 */  addu       $at, $at, $v0
    /* 48364 80057B64 A4CB228C */  lw         $v0, %lo(D_8008CBA4)($at)
    /* 48368 80057B68 0800E003 */  jr         $ra
    /* 4836C 80057B6C 140082AC */   sw        $v0, 0x14($a0)
.size func_80057B40, . - func_80057B40
