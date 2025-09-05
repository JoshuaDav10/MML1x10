.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80061D80
    /* 52580 80061D80 2800C634 */  ori        $a2, $a2, 0x28
    /* 52584 80061D84 2800A425 */  addiu      $a0, $t5, 0x28
    /* 52588 80061D88 24108F00 */  and        $v0, $a0, $t7
    /* 5258C 80061D8C 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* 52590 80061D90 25104300 */  or         $v0, $v0, $v1
    /* 52594 80061D94 0000A2AD */  sw         $v0, 0x0($t5)
    /* 52598 80061D98 18000227 */  addiu      $v0, $t8, 0x18
    /* 5259C 80061D9C 0400A5AD */  sw         $a1, 0x4($t5)
    /* 525A0 80061DA0 0800A2A5 */  sh         $v0, 0x8($t5)
.size func_80061D80, . - func_80061D80
