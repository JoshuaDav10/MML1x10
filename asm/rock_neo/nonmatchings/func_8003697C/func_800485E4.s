.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800485E4
    /* 38DE4 800485E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 38DE8 800485E8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 38DEC 800485EC 04008290 */  lbu        $v0, 0x4($a0)
    /* 38DF0 800485F0 00000000 */  nop
    /* 38DF4 800485F4 80100200 */  sll        $v0, $v0, 2
    /* 38DF8 800485F8 0980013C */  lui        $at, %hi(D_8008A778)
    /* 38DFC 800485FC 21082200 */  addu       $at, $at, $v0
    /* 38E00 80048600 78A7228C */  lw         $v0, %lo(D_8008A778)($at)
    /* 38E04 80048604 00000000 */  nop
    /* 38E08 80048608 09F84000 */  jalr       $v0
    /* 38E0C 8004860C 00000000 */   nop
    /* 38E10 80048610 1000BF8F */  lw         $ra, 0x10($sp)
    /* 38E14 80048614 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 38E18 80048618 0800E003 */  jr         $ra
    /* 38E1C 8004861C 00000000 */   nop
.size func_800485E4, . - func_800485E4
