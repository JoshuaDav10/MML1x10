.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Cd_read_comb
    /* DC40 8001D440 0A80023C */  lui        $v0, %hi(unknown_Cd_strucptr)
    /* DC44 8001D444 A489428C */  lw         $v0, %lo(unknown_Cd_strucptr)($v0)
    /* DC48 8001D448 06000324 */  addiu      $v1, $zero, 0x6
    /* DC4C 8001D44C 000043AC */  sw         $v1, 0x0($v0)
    /* DC50 8001D450 040044AC */  sw         $a0, 0x4($v0)
    /* DC54 8001D454 10004224 */  addiu      $v0, $v0, 0x10
    /* DC58 8001D458 0A80013C */  lui        $at, %hi(unknown_Cd_strucptr)
    /* DC5C 8001D45C A48922AC */  sw         $v0, %lo(unknown_Cd_strucptr)($at)
    /* DC60 8001D460 0800E003 */  jr         $ra
    /* DC64 8001D464 00000000 */   nop
.size Cd_read_comb, . - Cd_read_comb
