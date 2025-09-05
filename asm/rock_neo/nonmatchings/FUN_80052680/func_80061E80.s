.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80061E80
    /* 52680 80061E80 0004183C */  lui        $t8, (0x4000000 >> 16)
    /* 52684 80061E84 80640D3C */  lui        $t5, (0x64808080 >> 16)
    /* 52688 80061E88 8080AD35 */  ori        $t5, $t5, (0x64808080 & 0xFFFF)
    /* 5268C 80061E8C 24000F3C */  lui        $t7, (0x240000 >> 16)
    /* 52690 80061E90 08000C3C */  lui        $t4, (0x80008 >> 16)
    /* 52694 80061E94 08008C35 */  ori        $t4, $t4, (0x80008 & 0xFFFF)
    /* 52698 80061E98 F0FF2B25 */  addiu      $t3, $t1, -0x10
.size func_80061E80, . - func_80061E80
