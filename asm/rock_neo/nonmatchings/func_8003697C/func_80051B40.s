.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80051B40
    /* 42340 80051B40 0C80023C */  lui        $v0, %hi(D_800BC058)
    /* 42344 80051B44 58C04224 */  addiu      $v0, $v0, %lo(D_800BC058)
    /* 42348 80051B48 0A80013C */  lui        $at, %hi(D_80098894)
    /* 4234C 80051B4C 948822AC */  sw         $v0, %lo(D_80098894)($at)
    /* 42350 80051B50 0C80023C */  lui        $v0, %hi(D_800BC360)
    /* 42354 80051B54 60C34224 */  addiu      $v0, $v0, %lo(D_800BC360)
    /* 42358 80051B58 0A80013C */  lui        $at, %hi(D_80098898)
    /* 4235C 80051B5C 988822AC */  sw         $v0, %lo(D_80098898)($at)
    /* 42360 80051B60 0800E003 */  jr         $ra
    /* 42364 80051B64 00000000 */   nop
.size func_80051B40, . - func_80051B40
