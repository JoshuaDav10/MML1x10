.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80039CA0
    /* 2A4A0 80039CA0 0A80093C */  lui        $t1, %hi(D_800A39B0)
    /* 2A4A4 80039CA4 B0392925 */  addiu      $t1, $t1, %lo(D_800A39B0)
    /* 2A4A8 80039CA8 0000828C */  lw         $v0, 0x0($a0)
    /* 2A4AC 80039CAC 0400838C */  lw         $v1, 0x4($a0)
    /* 2A4B0 80039CB0 0800888C */  lw         $t0, 0x8($a0)
    /* 2A4B4 80039CB4 000022AD */  sw         $v0, 0x0($t1)
    /* 2A4B8 80039CB8 040023AD */  sw         $v1, 0x4($t1)
    /* 2A4BC 80039CBC 080028AD */  sw         $t0, 0x8($t1)
    /* 2A4C0 80039CC0 0C00828C */  lw         $v0, 0xC($a0)
    /* 2A4C4 80039CC4 00000000 */  nop
    /* 2A4C8 80039CC8 0C0022AD */  sw         $v0, 0xC($t1)
    /* 2A4CC 80039CCC 0A80013C */  lui        $at, %hi(D_800A3970)
    /* 2A4D0 80039CD0 703925AC */  sw         $a1, %lo(D_800A3970)($at)
    /* 2A4D4 80039CD4 0A80013C */  lui        $at, %hi(D_800A3974)
    /* 2A4D8 80039CD8 743926AC */  sw         $a2, %lo(D_800A3974)($at)
    /* 2A4DC 80039CDC 0A80013C */  lui        $at, %hi(D_800A3978)
    /* 2A4E0 80039CE0 783927AC */  sw         $a3, %lo(D_800A3978)($at)
    /* 2A4E4 80039CE4 0800E003 */  jr         $ra
    /* 2A4E8 80039CE8 00000000 */   nop
.size func_80039CA0, . - func_80039CA0
