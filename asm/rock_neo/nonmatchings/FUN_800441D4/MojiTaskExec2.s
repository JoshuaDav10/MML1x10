.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel MojiTaskExec2
    /* 44208 80053A08 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4420C 80053A0C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 44210 80053A10 FF00A630 */  andi       $a2, $a1, 0xFF
    /* 44214 80053A14 1580053C */  lui        $a1, (0x80153000 >> 16)
    /* 44218 80053A18 0B4E010C */  jal        MojiTaskExec
    /* 4421C 80053A1C 0030A534 */   ori       $a1, $a1, (0x80153000 & 0xFFFF)
    /* 44220 80053A20 1000BF8F */  lw         $ra, 0x10($sp)
    /* 44224 80053A24 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 44228 80053A28 0800E003 */  jr         $ra
    /* 4422C 80053A2C 00000000 */   nop
.size MojiTaskExec2, . - MojiTaskExec2
