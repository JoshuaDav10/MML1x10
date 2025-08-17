.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80039C54
    /* 2A454 80039C54 0A80093C */  lui        $t1, %hi(D_800A39C0)
    /* 2A458 80039C58 C0392925 */  addiu      $t1, $t1, %lo(D_800A39C0)
    /* 2A45C 80039C5C 0000828C */  lw         $v0, 0x0($a0)
    /* 2A460 80039C60 0400838C */  lw         $v1, 0x4($a0)
    /* 2A464 80039C64 0800888C */  lw         $t0, 0x8($a0)
    /* 2A468 80039C68 000022AD */  sw         $v0, 0x0($t1)
    /* 2A46C 80039C6C 040023AD */  sw         $v1, 0x4($t1)
    /* 2A470 80039C70 080028AD */  sw         $t0, 0x8($t1)
    /* 2A474 80039C74 0C00828C */  lw         $v0, 0xC($a0)
    /* 2A478 80039C78 00000000 */  nop
    /* 2A47C 80039C7C 0C0022AD */  sw         $v0, 0xC($t1)
    /* 2A480 80039C80 0A80013C */  lui        $at, %hi(D_800A397C)
    /* 2A484 80039C84 7C3925AC */  sw         $a1, %lo(D_800A397C)($at)
    /* 2A488 80039C88 0A80013C */  lui        $at, %hi(D_800A3980)
    /* 2A48C 80039C8C 803926AC */  sw         $a2, %lo(D_800A3980)($at)
    /* 2A490 80039C90 0A80013C */  lui        $at, %hi(D_800A3984)
    /* 2A494 80039C94 843927AC */  sw         $a3, %lo(D_800A3984)($at)
    /* 2A498 80039C98 0800E003 */  jr         $ra
    /* 2A49C 80039C9C 00000000 */   nop
.size func_80039C54, . - func_80039C54
