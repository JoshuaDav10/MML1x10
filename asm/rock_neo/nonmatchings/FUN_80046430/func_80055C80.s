.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80055C80
    /* 46480 80055C80 6C00858C */  lw         $a1, 0x6C($a0)
    /* 46484 80055C84 00000000 */  nop
    /* 46488 80055C88 0100A290 */  lbu        $v0, 0x1($a1)
    /* 4648C 80055C8C 00000000 */  nop
    /* 46490 80055C90 80100200 */  sll        $v0, $v0, 2
    /* 46494 80055C94 0980013C */  lui        $at, %hi(D_8008D0D4)
    /* 46498 80055C98 21082200 */  addu       $at, $at, $v0
    /* 4649C 80055C9C D4D0238C */  lw         $v1, %lo(D_8008D0D4)($at)
    /* 464A0 80055CA0 0200A290 */  lbu        $v0, 0x2($a1)
    /* 464A4 80055CA4 00000000 */  nop
    /* 464A8 80055CA8 000062A0 */  sb         $v0, 0x0($v1)
    /* 464AC 80055CAC 6C00828C */  lw         $v0, 0x6C($a0)
    /* 464B0 80055CB0 00000000 */  nop
    /* 464B4 80055CB4 03004224 */  addiu      $v0, $v0, 0x3
    /* 464B8 80055CB8 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 464BC 80055CBC 0800E003 */  jr         $ra
    /* 464C0 80055CC0 01000224 */   addiu     $v0, $zero, 0x1
.size func_80055C80, . - func_80055C80
