.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80056488
    /* 46C88 80056488 80100200 */  sll        $v0, $v0, 2
    /* 46C8C 8005648C 0980013C */  lui        $at, %hi(D_8008CACC)
    /* 46C90 80056490 21082200 */  addu       $at, $at, $v0
    /* 46C94 80056494 CCCA258C */  lw         $a1, %lo(D_8008CACC)($at)
    /* 46C98 80056498 FF000624 */  addiu      $a2, $zero, 0xFF
  .L8005649C:
    /* 46C9C 8005649C 0B4E010C */  jal        MojiTaskExec
    /* 46CA0 800564A0 00000000 */   nop
  .L800564A4:
    /* 46CA4 800564A4 1400028E */  lw         $v0, 0x14($s0)
    /* 46CA8 800564A8 00000000 */  nop
    /* 46CAC 800564AC 03004224 */  addiu      $v0, $v0, 0x3
    /* 46CB0 800564B0 140002AE */  sw         $v0, 0x14($s0)
    /* 46CB4 800564B4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 46CB8 800564B8 1000B08F */  lw         $s0, 0x10($sp)
    /* 46CBC 800564BC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 46CC0 800564C0 0800E003 */  jr         $ra
    /* 46CC4 800564C4 00000000 */   nop
.size func_80056488, . - func_80056488
