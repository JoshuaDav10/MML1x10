.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060C00
    /* 51400 80060C00 641BA580 */  lb         $a1, 0x1B64($a1)
    /* 51404 80060C04 0B80043C */  lui        $a0, %hi(Player_work)
    /* 51408 80060C08 B0518424 */  addiu      $a0, $a0, %lo(Player_work)
    /* 5140C 80060C0C 7F09010C */  jal        func_800425FC
.size func_80060C00, . - func_80060C00
