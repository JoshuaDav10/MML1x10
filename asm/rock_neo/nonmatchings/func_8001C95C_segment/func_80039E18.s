.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80039E18
    /* 2A618 80039E18 100E828F */  lw         $v0, %gp_rel(D_80098674)($gp)
    /* 2A61C 80039E1C 0C0E838F */  lw         $v1, %gp_rel(D_80098670)($gp)
    /* 2A620 80039E20 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2A624 80039E24 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2A628 80039E28 0C80013C */  lui        $at, %hi(Scene_work + 0x1)
    /* 2A62C 80039E2C 494C22A0 */  sb         $v0, %lo(Scene_work + 0x1)($at)
    /* 2A630 80039E30 0C80013C */  lui        $at, %hi(Scene_work)
    /* 2A634 80039E34 484C23A0 */  sb         $v1, %lo(Scene_work)($at)
    /* 2A638 80039E38 94E7000C */  jal        func_80039E50
    /* 2A63C 80039E3C 00000000 */   nop
    /* 2A640 80039E40 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2A644 80039E44 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2A648 80039E48 0800E003 */  jr         $ra
    /* 2A64C 80039E4C 00000000 */   nop
.size func_80039E18, . - func_80039E18
