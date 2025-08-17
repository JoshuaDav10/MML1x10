.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80031A4C
    /* 2224C 80031A4C 0C80023C */  lui        $v0, %hi(D_800BF118)
    /* 22250 80031A50 18F14224 */  addiu      $v0, $v0, %lo(D_800BF118)
    /* 22254 80031A54 23108200 */  subu       $v0, $a0, $v0
    /* 22258 80031A58 CCCC033C */  lui        $v1, (0xCCCCCCCD >> 16)
    /* 2225C 80031A5C CDCC6334 */  ori        $v1, $v1, (0xCCCCCCCD & 0xFFFF)
    /* 22260 80031A60 19004300 */  multu      $v0, $v1
    /* 22264 80031A64 0080033C */  lui        $v1, (0x80000000 >> 16)
    /* 22268 80031A68 10300000 */  mfhi       $a2
    /* 2226C 80031A6C 82110600 */  srl        $v0, $a2, 6
    /* 22270 80031A70 06184300 */  srlv       $v1, $v1, $v0
    /* 22274 80031A74 0A80023C */  lui        $v0, %hi(D_80098A4C)
    /* 22278 80031A78 4C8A428C */  lw         $v0, %lo(D_80098A4C)($v0)
    /* 2227C 80031A7C 0A80053C */  lui        $a1, %hi(D_800989CC)
    /* 22280 80031A80 CC89A58C */  lw         $a1, %lo(D_800989CC)($a1)
    /* 22284 80031A84 25104300 */  or         $v0, $v0, $v1
    /* 22288 80031A88 0A80013C */  lui        $at, %hi(D_80098A4C)
    /* 2228C 80031A8C 4C8A22AC */  sw         $v0, %lo(D_80098A4C)($at)
    /* 22290 80031A90 24104500 */  and        $v0, $v0, $a1
    /* 22294 80031A94 0A80013C */  lui        $at, %hi(D_80098A4C)
    /* 22298 80031A98 4C8A22AC */  sw         $v0, %lo(D_80098A4C)($at)
    /* 2229C 80031A9C 0800E003 */  jr         $ra
    /* 222A0 80031AA0 000080A0 */   sb        $zero, 0x0($a0)
.size func_80031A4C, . - func_80031A4C
