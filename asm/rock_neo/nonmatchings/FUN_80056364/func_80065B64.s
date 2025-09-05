.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80065B64
    /* 56364 80065B64 1C1B26AC */  sw         $a2, 0x1B1C($at)
    /* 56368 80065B68 0C80013C */  lui        $at, %hi(Game_work + 0x1C)
    /* 5636C 80065B6C 2C1B27AC */  sw         $a3, %lo(Game_work + 0x1C)($at)
    /* 56370 80065B70 0C80013C */  lui        $at, %hi(Game_work + 0x20)
    /* 56374 80065B74 301B28AC */  sw         $t0, %lo(Game_work + 0x20)($at)
    /* 56378 80065B78 0C80013C */  lui        $at, %hi(Game_work + 0x24)
    /* 5637C 80065B7C 341B29AC */  sw         $t1, %lo(Game_work + 0x24)($at)
.size func_80065B64, . - func_80065B64
