.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80039CEC
    /* 2A4EC 80039CEC 0A80093C */  lui        $t1, %hi(D_800A39E0)
    /* 2A4F0 80039CF0 E0392925 */  addiu      $t1, $t1, %lo(D_800A39E0)
    /* 2A4F4 80039CF4 0000828C */  lw         $v0, 0x0($a0)
    /* 2A4F8 80039CF8 0400838C */  lw         $v1, 0x4($a0)
    /* 2A4FC 80039CFC 0800888C */  lw         $t0, 0x8($a0)
    /* 2A500 80039D00 000022AD */  sw         $v0, 0x0($t1)
    /* 2A504 80039D04 040023AD */  sw         $v1, 0x4($t1)
    /* 2A508 80039D08 080028AD */  sw         $t0, 0x8($t1)
    /* 2A50C 80039D0C 0C00828C */  lw         $v0, 0xC($a0)
    /* 2A510 80039D10 00000000 */  nop
    /* 2A514 80039D14 0C0022AD */  sw         $v0, 0xC($t1)
    /* 2A518 80039D18 0A80013C */  lui        $at, %hi(D_800A3994)
    /* 2A51C 80039D1C 943925AC */  sw         $a1, %lo(D_800A3994)($at)
    /* 2A520 80039D20 0A80013C */  lui        $at, %hi(D_800A3998)
    /* 2A524 80039D24 983926AC */  sw         $a2, %lo(D_800A3998)($at)
    /* 2A528 80039D28 0A80013C */  lui        $at, %hi(D_800A399C)
    /* 2A52C 80039D2C 9C3927AC */  sw         $a3, %lo(D_800A399C)($at)
    /* 2A530 80039D30 0800E003 */  jr         $ra
    /* 2A534 80039D34 00000000 */   nop
.size func_80039CEC, . - func_80039CEC
