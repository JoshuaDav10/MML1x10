.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80039DE8
    /* 2A5E8 80039DE8 100E828F */  lw         $v0, %gp_rel(D_80098674)($gp)
    /* 2A5EC 80039DEC 0C0E848F */  lw         $a0, %gp_rel(D_80098670)($gp)
    /* 2A5F0 80039DF0 00020324 */  addiu      $v1, $zero, 0x200
    /* 2A5F4 80039DF4 C80483AF */  sw         $v1, %gp_rel(D_80097D2C)($gp)
    /* 2A5F8 80039DF8 0B80013C */  lui        $at, %hi(Player_work + 0x44D)
    /* 2A5FC 80039DFC FD5520A0 */  sb         $zero, %lo(Player_work + 0x44D)($at)
    /* 2A600 80039E00 0C80013C */  lui        $at, %hi(Scene_work + 0x1)
    /* 2A604 80039E04 494C22A0 */  sb         $v0, %lo(Scene_work + 0x1)($at)
    /* 2A608 80039E08 0C80013C */  lui        $at, %hi(Scene_work)
    /* 2A60C 80039E0C 484C24A0 */  sb         $a0, %lo(Scene_work)($at)
    /* 2A610 80039E10 0800E003 */  jr         $ra
    /* 2A614 80039E14 00000000 */   nop
.size func_80039DE8, . - func_80039DE8
