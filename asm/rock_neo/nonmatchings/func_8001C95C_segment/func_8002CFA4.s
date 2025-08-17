.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002CFA4
    /* 1D7A4 8002CFA4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1D7A8 8002CFA8 1580043C */  lui        $a0, (0x8015BC00 >> 16)
    /* 1D7AC 8002CFAC 00BC8434 */  ori        $a0, $a0, (0x8015BC00 & 0xFFFF)
    /* 1D7B0 8002CFB0 1580053C */  lui        $a1, (0x8015BFFC >> 16)
    /* 1D7B4 8002CFB4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1D7B8 8002CFB8 F35D000C */  jal        func_800177CC
    /* 1D7BC 8002CFBC FCBFA534 */   ori       $a1, $a1, (0x8015BFFC & 0xFFFF)
    /* 1D7C0 8002CFC0 000E0224 */  addiu      $v0, $zero, 0xE00
    /* 1D7C4 8002CFC4 0A80013C */  lui        $at, %hi(D_800987D8)
    /* 1D7C8 8002CFC8 D88720AC */  sw         $zero, %lo(D_800987D8)($at)
    /* 1D7CC 8002CFCC 801F013C */  lui        $at, (0x1F800075 >> 16)
    /* 1D7D0 8002CFD0 750020A0 */  sb         $zero, (0x1F800075 & 0xFFFF)($at)
    /* 1D7D4 8002CFD4 801F013C */  lui        $at, (0x1F800004 >> 16)
    /* 1D7D8 8002CFD8 040020A4 */  sh         $zero, (0x1F800004 & 0xFFFF)($at)
    /* 1D7DC 8002CFDC 801F013C */  lui        $at, (0x1F800006 >> 16)
    /* 1D7E0 8002CFE0 060022A4 */  sh         $v0, (0x1F800006 & 0xFFFF)($at)
.size func_8002CFA4, . - func_8002CFA4
