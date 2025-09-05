.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005D87C
    /* 4E07C 8005D87C 0C80013C */  lui        $at, %hi(D_800BBE2C)
    /* 4E080 8005D880 2CBE20AC */  sw         $zero, %lo(D_800BBE2C)($at)
    /* 4E084 8005D884 0C80013C */  lui        $at, %hi(D_800BBE30)
    /* 4E088 8005D888 30BE20AC */  sw         $zero, %lo(D_800BBE30)($at)
    /* 4E08C 8005D88C 0C80013C */  lui        $at, %hi(D_800BBE34)
    /* 4E090 8005D890 34BE20AC */  sw         $zero, %lo(D_800BBE34)($at)
    /* 4E094 8005D894 0C80013C */  lui        $at, %hi(D_800BBE38)
    /* 4E098 8005D898 38BE20AC */  sw         $zero, %lo(D_800BBE38)($at)
    /* 4E09C 8005D89C 0C80013C */  lui        $at, %hi(D_800BBE3C)
    /* 4E0A0 8005D8A0 3CBE20AC */  sw         $zero, %lo(D_800BBE3C)($at)
    /* 4E0A4 8005D8A4 0C80013C */  lui        $at, %hi(D_800BBE40)
    /* 4E0A8 8005D8A8 40BE20AC */  sw         $zero, %lo(D_800BBE40)($at)
    /* 4E0AC 8005D8AC 0C80013C */  lui        $at, %hi(D_800BBE44)
    /* 4E0B0 8005D8B0 44BE20AC */  sw         $zero, %lo(D_800BBE44)($at)
    /* 4E0B4 8005D8B4 0C80013C */  lui        $at, %hi(D_800BBE48)
    /* 4E0B8 8005D8B8 48BE20AC */  sw         $zero, %lo(D_800BBE48)($at)
    /* 4E0BC 8005D8BC 0800E003 */  jr         $ra
    /* 4E0C0 8005D8C0 00000000 */   nop
.size func_8005D87C, . - func_8005D87C
