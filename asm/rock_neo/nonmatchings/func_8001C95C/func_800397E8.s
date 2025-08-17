.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800397E8
    /* 29FE8 800397E8 30000224 */  addiu      $v0, $zero, 0x30
    /* 29FEC 800397EC 0A80013C */  lui        $at, %hi(D_800A396C)
    /* 29FF0 800397F0 6C3922AC */  sw         $v0, %lo(D_800A396C)($at)
    /* 29FF4 800397F4 00020224 */  addiu      $v0, $zero, 0x200
    /* 29FF8 800397F8 C80482AF */  sw         $v0, %gp_rel(D_80097D2C)($gp)
    /* 29FFC 800397FC 0A80013C */  lui        $at, %hi(D_800A3964)
    /* 2A000 80039800 643922AC */  sw         $v0, %lo(D_800A3964)($at)
    /* 2A004 80039804 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2A008 80039808 0A80013C */  lui        $at, %hi(D_800A3962)
    /* 2A00C 8003980C 623922A0 */  sb         $v0, %lo(D_800A3962)($at)
    /* 2A010 80039810 0B80013C */  lui        $at, %hi(Player_work + 0x44D)
    /* 2A014 80039814 FD5520A0 */  sb         $zero, %lo(Player_work + 0x44D)($at)
    /* 2A018 80039818 0800E003 */  jr         $ra
    /* 2A01C 8003981C 00000000 */   nop
.size func_800397E8, . - func_800397E8
