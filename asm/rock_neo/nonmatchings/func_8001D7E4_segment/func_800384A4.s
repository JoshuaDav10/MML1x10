.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800384A4
    /* 28CA4 800384A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 28CA8 800384A8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 28CAC 800384AC 0A80073C */  lui        $a3, %hi(D_800A39A0)
    /* 28CB0 800384B0 A039E724 */  addiu      $a3, $a3, %lo(D_800A39A0)
    /* 28CB4 800384B4 0000828C */  lw         $v0, 0x0($a0)
    /* 28CB8 800384B8 0400838C */  lw         $v1, 0x4($a0)
    /* 28CBC 800384BC 0800868C */  lw         $a2, 0x8($a0)
    /* 28CC0 800384C0 0000E2AC */  sw         $v0, 0x0($a3)
    /* 28CC4 800384C4 0400E3AC */  sw         $v1, 0x4($a3)
    /* 28CC8 800384C8 0800E6AC */  sw         $a2, 0x8($a3)
    /* 28CCC 800384CC 0C00828C */  lw         $v0, 0xC($a0)
    /* 28CD0 800384D0 00000000 */  nop
    /* 28CD4 800384D4 0C00E2AC */  sw         $v0, 0xC($a3)
    /* 28CD8 800384D8 DCE0000C */  jal        func_80038370
    /* 28CDC 800384DC 00000000 */   nop
    /* 28CE0 800384E0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 28CE4 800384E4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 28CE8 800384E8 0800E003 */  jr         $ra
    /* 28CEC 800384EC 00000000 */   nop
.size func_800384A4, . - func_800384A4
