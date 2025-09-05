.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D844
    /* 4E044 8005D844 03000224 */  addiu      $v0, $zero, 0x3
    /* 4E048 8005D848 0C80013C */  lui        $at, %hi(D_800BBE2C)
    /* 4E04C 8005D84C 2CBE22A0 */  sb         $v0, %lo(D_800BBE2C)($at)
    /* 4E050 8005D850 01000224 */  addiu      $v0, $zero, 0x1
    /* 4E054 8005D854 0C80013C */  lui        $at, %hi(D_800BBE44)
    /* 4E058 8005D858 44BE24A4 */  sh         $a0, %lo(D_800BBE44)($at)
    /* 4E05C 8005D85C 0C80013C */  lui        $at, %hi(D_800BBE46)
    /* 4E060 8005D860 46BE25A4 */  sh         $a1, %lo(D_800BBE46)($at)
    /* 4E064 8005D864 0C80013C */  lui        $at, %hi(D_800BBE38)
    /* 4E068 8005D868 38BE26A0 */  sb         $a2, %lo(D_800BBE38)($at)
    /* 4E06C 8005D86C 0C80013C */  lui        $at, %hi(D_800BBE39)
    /* 4E070 8005D870 39BE22A0 */  sb         $v0, %lo(D_800BBE39)($at)
    /* 4E074 8005D874 0800E003 */  jr         $ra
    /* 4E078 8005D878 00000000 */   nop
.size func_8005D844, . - func_8005D844
