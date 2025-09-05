.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80066558
    /* 56D58 80066558 0C80013C */  lui        $at, %hi(Game_work + 0x44)
    /* 56D5C 8006655C 541B20A4 */  sh         $zero, %lo(Game_work + 0x44)($at)
    /* 56D60 80066560 0C80013C */  lui        $at, %hi(Game_work + 0x46)
    /* 56D64 80066564 561B20A4 */  sh         $zero, %lo(Game_work + 0x46)($at)
    /* 56D68 80066568 0C80013C */  lui        $at, %hi(Game_work + 0x48)
    /* 56D6C 8006656C 581B20A4 */  sh         $zero, %lo(Game_work + 0x48)($at)
    /* 56D70 80066570 0C80013C */  lui        $at, %hi(Game_work + 0x4A)
    /* 56D74 80066574 5A1B20A4 */  sh         $zero, %lo(Game_work + 0x4A)($at)
    /* 56D78 80066578 0C80013C */  lui        $at, %hi(Game_work + 0x4C)
    /* 56D7C 8006657C 5C1B20AC */  sw         $zero, %lo(Game_work + 0x4C)($at)
.size func_80066558, . - func_80066558
