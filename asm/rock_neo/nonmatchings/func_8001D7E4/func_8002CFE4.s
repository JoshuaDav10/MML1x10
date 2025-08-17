.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002CFE4
    /* 1D7E4 8002CFE4 0A80013C */  lui        $at, %hi(D_800988FC)
    /* 1D7E8 8002CFE8 FC8820AC */  sw         $zero, %lo(D_800988FC)($at)
    /* 1D7EC 8002CFEC 801F013C */  lui        $at, (0x1F800076 >> 16)
    /* 1D7F0 8002CFF0 760022A4 */  sh         $v0, (0x1F800076 & 0xFFFF)($at)
    /* 1D7F4 8002CFF4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1D7F8 8002CFF8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1D7FC 8002CFFC 0800E003 */  jr         $ra
    /* 1D800 8002D000 00000000 */   nop
.size func_8002CFE4, . - func_8002CFE4
