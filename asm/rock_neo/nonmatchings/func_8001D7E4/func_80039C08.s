.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80039C08
    /* 2A408 80039C08 0A80093C */  lui        $t1, %hi(D_800A39D0)
    /* 2A40C 80039C0C D0392925 */  addiu      $t1, $t1, %lo(D_800A39D0)
    /* 2A410 80039C10 0000828C */  lw         $v0, 0x0($a0)
    /* 2A414 80039C14 0400838C */  lw         $v1, 0x4($a0)
    /* 2A418 80039C18 0800888C */  lw         $t0, 0x8($a0)
    /* 2A41C 80039C1C 000022AD */  sw         $v0, 0x0($t1)
    /* 2A420 80039C20 040023AD */  sw         $v1, 0x4($t1)
    /* 2A424 80039C24 080028AD */  sw         $t0, 0x8($t1)
    /* 2A428 80039C28 0C00828C */  lw         $v0, 0xC($a0)
    /* 2A42C 80039C2C 00000000 */  nop
    /* 2A430 80039C30 0C0022AD */  sw         $v0, 0xC($t1)
    /* 2A434 80039C34 0A80013C */  lui        $at, %hi(D_800A3988)
    /* 2A438 80039C38 883925AC */  sw         $a1, %lo(D_800A3988)($at)
    /* 2A43C 80039C3C 0A80013C */  lui        $at, %hi(D_800A398C)
    /* 2A440 80039C40 8C3926AC */  sw         $a2, %lo(D_800A398C)($at)
    /* 2A444 80039C44 0A80013C */  lui        $at, %hi(D_800A3990)
    /* 2A448 80039C48 903927AC */  sw         $a3, %lo(D_800A3990)($at)
    /* 2A44C 80039C4C 0800E003 */  jr         $ra
    /* 2A450 80039C50 00000000 */   nop
.size func_80039C08, . - func_80039C08
