.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Close_EVE_WORK
    /* 221F4 800319F4 E338033C */  lui        $v1, (0x38E38E39 >> 16)
    /* 221F8 800319F8 398E6334 */  ori        $v1, $v1, (0x38E38E39 & 0xFFFF)
    /* 221FC 800319FC 0A80023C */  lui        $v0, %hi(D_800A2D08)
    /* 22200 80031A00 082D4224 */  addiu      $v0, $v0, %lo(D_800A2D08)
    /* 22204 80031A04 23108200 */  subu       $v0, $a0, $v0
    /* 22208 80031A08 19004300 */  multu      $v0, $v1
    /* 2220C 80031A0C 0080033C */  lui        $v1, (0x80000000 >> 16)
    /* 22210 80031A10 10300000 */  mfhi       $a2
    /* 22214 80031A14 C2100600 */  srl        $v0, $a2, 3
    /* 22218 80031A18 06184300 */  srlv       $v1, $v1, $v0
    /* 2221C 80031A1C 0A80023C */  lui        $v0, %hi(D_80098818)
    /* 22220 80031A20 1888428C */  lw         $v0, %lo(D_80098818)($v0)
    /* 22224 80031A24 0A80053C */  lui        $a1, %hi(D_800987EC)
    /* 22228 80031A28 EC87A58C */  lw         $a1, %lo(D_800987EC)($a1)
    /* 2222C 80031A2C 25104300 */  or         $v0, $v0, $v1
    /* 22230 80031A30 0A80013C */  lui        $at, %hi(D_80098818)
    /* 22234 80031A34 188822AC */  sw         $v0, %lo(D_80098818)($at)
    /* 22238 80031A38 24104500 */  and        $v0, $v0, $a1
    /* 2223C 80031A3C 0A80013C */  lui        $at, %hi(D_80098818)
    /* 22240 80031A40 188822AC */  sw         $v0, %lo(D_80098818)($at)
    /* 22244 80031A44 0800E003 */  jr         $ra
    /* 22248 80031A48 000080A0 */   sb        $zero, 0x0($a0)
.size Close_EVE_WORK, . - Close_EVE_WORK
