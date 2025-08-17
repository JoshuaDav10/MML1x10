.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80033EBC
    /* 246BC 80033EBC FF000224 */  addiu      $v0, $zero, 0xFF
    /* 246C0 80033EC0 0A80013C */  lui        $at, %hi(D_800988E0)
    /* 246C4 80033EC4 E08820AC */  sw         $zero, %lo(D_800988E0)($at)
    /* 246C8 80033EC8 0A80013C */  lui        $at, %hi(D_80098798)
    /* 246CC 80033ECC 988722AC */  sw         $v0, %lo(D_80098798)($at)
    /* 246D0 80033ED0 0A80013C */  lui        $at, %hi(D_8009A306)
    /* 246D4 80033ED4 06A320A0 */  sb         $zero, %lo(D_8009A306)($at)
    /* 246D8 80033ED8 0A80013C */  lui        $at, %hi(D_8009A31A)
    /* 246DC 80033EDC 1AA320A0 */  sb         $zero, %lo(D_8009A31A)($at)
    /* 246E0 80033EE0 0A80013C */  lui        $at, %hi(D_8009A32E)
    /* 246E4 80033EE4 2EA320A0 */  sb         $zero, %lo(D_8009A32E)($at)
    /* 246E8 80033EE8 0A80013C */  lui        $at, %hi(D_8009A342)
    /* 246EC 80033EEC 42A320A0 */  sb         $zero, %lo(D_8009A342)($at)
    /* 246F0 80033EF0 FC0C80AF */  sw         $zero, %gp_rel(D_80098560)($gp)
    /* 246F4 80033EF4 000D80AF */  sw         $zero, %gp_rel(D_80098564)($gp)
    /* 246F8 80033EF8 040D80AF */  sw         $zero, %gp_rel(D_80098568)($gp)
    /* 246FC 80033EFC 0800E003 */  jr         $ra
    /* 24700 80033F00 00000000 */   nop
.size func_80033EBC, . - func_80033EBC
