.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80039BBC
    /* 2A3BC 80039BBC 0A80093C */  lui        $t1, %hi(D_800A39A0)
    /* 2A3C0 80039BC0 A0392925 */  addiu      $t1, $t1, %lo(D_800A39A0)
    /* 2A3C4 80039BC4 0000828C */  lw         $v0, 0x0($a0)
    /* 2A3C8 80039BC8 0400838C */  lw         $v1, 0x4($a0)
    /* 2A3CC 80039BCC 0800888C */  lw         $t0, 0x8($a0)
    /* 2A3D0 80039BD0 000022AD */  sw         $v0, 0x0($t1)
    /* 2A3D4 80039BD4 040023AD */  sw         $v1, 0x4($t1)
    /* 2A3D8 80039BD8 080028AD */  sw         $t0, 0x8($t1)
    /* 2A3DC 80039BDC 0C00828C */  lw         $v0, 0xC($a0)
    /* 2A3E0 80039BE0 00000000 */  nop
    /* 2A3E4 80039BE4 0C0022AD */  sw         $v0, 0xC($t1)
    /* 2A3E8 80039BE8 0A80013C */  lui        $at, %hi(D_800A3964)
    /* 2A3EC 80039BEC 643925AC */  sw         $a1, %lo(D_800A3964)($at)
    /* 2A3F0 80039BF0 0A80013C */  lui        $at, %hi(D_800A3968)
    /* 2A3F4 80039BF4 683926AC */  sw         $a2, %lo(D_800A3968)($at)
    /* 2A3F8 80039BF8 0A80013C */  lui        $at, %hi(D_800A396C)
    /* 2A3FC 80039BFC 6C3927AC */  sw         $a3, %lo(D_800A396C)($at)
    /* 2A400 80039C00 0800E003 */  jr         $ra
    /* 2A404 80039C04 00000000 */   nop
.size func_80039BBC, . - func_80039BBC
