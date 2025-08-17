.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D7E4
    /* DFE4 8001D7E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* DFE8 8001D7E8 0A80023C */  lui        $v0, %hi(unknown_Cd_strucptr)
    /* DFEC 8001D7EC A489428C */  lw         $v0, %lo(unknown_Cd_strucptr)($v0)
    /* DFF0 8001D7F0 0A80033C */  lui        $v1, %hi(D_800A3A40)
    /* DFF4 8001D7F4 403A6324 */  addiu      $v1, $v1, %lo(D_800A3A40)
    /* DFF8 8001D7F8 1400BFAF */  sw         $ra, 0x14($sp)
    /* DFFC 8001D7FC 09004310 */  beq        $v0, $v1, .L8001D824
    /* E000 8001D800 1000B0AF */   sw        $s0, 0x10($sp)
    /* E004 8001D804 21806000 */  addu       $s0, $v1, $zero
  .L8001D808:
    /* E008 8001D808 A64B000C */  jal        func_80012E98
    /* E00C 8001D80C 01000424 */   addiu     $a0, $zero, 0x1
    /* E010 8001D810 0A80023C */  lui        $v0, %hi(unknown_Cd_strucptr)
    /* E014 8001D814 A489428C */  lw         $v0, %lo(unknown_Cd_strucptr)($v0)
    /* E018 8001D818 00000000 */  nop
    /* E01C 8001D81C FAFF5014 */  bne        $v0, $s0, .L8001D808
    /* E020 8001D820 00000000 */   nop
  .L8001D824:
    /* E024 8001D824 1400BF8F */  lw         $ra, 0x14($sp)
    /* E028 8001D828 1000B08F */  lw         $s0, 0x10($sp)
    /* E02C 8001D82C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* E030 8001D830 0800E003 */  jr         $ra
    /* E034 8001D834 00000000 */   nop
.size func_8001D7E4, . - func_8001D7E4
