.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001F1DC
    /* F9DC 8001F1DC 0C80013C */  lui        $at, %hi(Scene_work + 0x10)
    /* F9E0 8001F1E0 584C20AC */  sw         $zero, %lo(Scene_work + 0x10)($at)
    /* F9E4 8001F1E4 0C80013C */  lui        $at, %hi(Scene_work + 0x18)
    /* F9E8 8001F1E8 604C20AC */  sw         $zero, %lo(Scene_work + 0x18)($at)
    /* F9EC 8001F1EC 0C80013C */  lui        $at, %hi(Scene_work + 0x1C)
    /* F9F0 8001F1F0 644C20AC */  sw         $zero, %lo(Scene_work + 0x1C)($at)
    /* F9F4 8001F1F4 0C80013C */  lui        $at, %hi(Scene_work + 0x8)
    /* F9F8 8001F1F8 504C20A0 */  sb         $zero, %lo(Scene_work + 0x8)($at)
    /* F9FC 8001F1FC 0C80013C */  lui        $at, %hi(Scene_work + 0x9)
    /* FA00 8001F200 514C20A0 */  sb         $zero, %lo(Scene_work + 0x9)($at)
    /* FA04 8001F204 0800E003 */  jr         $ra
    /* FA08 8001F208 00000000 */   nop
.size func_8001F1DC, . - func_8001F1DC
