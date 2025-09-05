.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800664BC
    /* 56CBC 800664BC 80000224 */  addiu      $v0, $zero, 0x80
    /* 56CC0 800664C0 0C80013C */  lui        $at, %hi(Game_work + 0x60)
    /* 56CC4 800664C4 701B22A4 */  sh         $v0, %lo(Game_work + 0x60)($at)
    /* 56CC8 800664C8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 56CCC 800664CC 0C80013C */  lui        $at, %hi(Game_work + 0x79)
    /* 56CD0 800664D0 891B22A0 */  sb         $v0, %lo(Game_work + 0x79)($at)
    /* 56CD4 800664D4 0C80013C */  lui        $at, %hi(Game_work + 0x7A)
    /* 56CD8 800664D8 8A1B22A0 */  sb         $v0, %lo(Game_work + 0x7A)($at)
    /* 56CDC 800664DC 01000224 */  addiu      $v0, $zero, 0x1
    /* 56CE0 800664E0 0C80013C */  lui        $at, %hi(Game_work + 0x5A)
    /* 56CE4 800664E4 6A1B22A0 */  sb         $v0, %lo(Game_work + 0x5A)($at)
    /* 56CE8 800664E8 0C80023C */  lui        $v0, %hi(Game_work + 0x82)
    /* 56CEC 800664EC 921B4280 */  lb         $v0, %lo(Game_work + 0x82)($v0)
    /* 56CF0 800664F0 0C80033C */  lui        $v1, %hi(D_800C3558)
    /* 56CF4 800664F4 58356324 */  addiu      $v1, $v1, %lo(D_800C3558)
    /* 56CF8 800664F8 0C80013C */  lui        $at, %hi(Game_work + 0xC)
    /* 56CFC 800664FC 1C1B20AC */  sw         $zero, %lo(Game_work + 0xC)($at)
.size func_800664BC, . - func_800664BC
