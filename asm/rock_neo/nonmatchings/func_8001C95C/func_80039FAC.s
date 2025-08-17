.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80039FAC
    /* 2A7AC 80039FAC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2A7B0 80039FB0 0C80033C */  lui        $v1, %hi(Scene_work + 0x1)
    /* 2A7B4 80039FB4 494C6324 */  addiu      $v1, $v1, %lo(Scene_work + 0x1)
    /* 2A7B8 80039FB8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 2A7BC 80039FBC 00006890 */  lbu        $t0, 0x0($v1)
    /* 2A7C0 80039FC0 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 2A7C4 80039FC4 000062A0 */  sb         $v0, 0x0($v1)
    /* 2A7C8 80039FC8 0C80033C */  lui        $v1, %hi(Scene_work)
    /* 2A7CC 80039FCC 484C6390 */  lbu        $v1, %lo(Scene_work)($v1)
    /* 2A7D0 80039FD0 01000224 */  addiu      $v0, $zero, 0x1
    /* 2A7D4 80039FD4 0C80013C */  lui        $at, %hi(Scene_work)
    /* 2A7D8 80039FD8 484C22A0 */  sb         $v0, %lo(Scene_work)($at)
    /* 2A7DC 80039FDC 100E88AF */  sw         $t0, %gp_rel(D_80098674)($gp)
    /* 2A7E0 80039FE0 0C0E83AF */  sw         $v1, %gp_rel(D_80098670)($gp)
    /* 2A7E4 80039FE4 FFE7000C */  jal        func_80039FFC
    /* 2A7E8 80039FE8 00000000 */   nop
    /* 2A7EC 80039FEC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2A7F0 80039FF0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2A7F4 80039FF4 0800E003 */  jr         $ra
    /* 2A7F8 80039FF8 00000000 */   nop
.size func_80039FAC, . - func_80039FAC
