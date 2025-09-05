.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sub_screen_basic_param_set
    /* 5260C 80061E0C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 52610 80061E10 00E1043C */  lui        $a0, (0xE100000D >> 16)
    /* 52614 80061E14 0D008434 */  ori        $a0, $a0, (0xE100000D & 0xFFFF)
    /* 52618 80061E18 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
    /* 5261C 80061E1C FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* 52620 80061E20 21300000 */  addu       $a2, $zero, $zero
    /* 52624 80061E24 801F073C */  lui        $a3, (0x1F800070 >> 16)
    /* 52628 80061E28 7000E78C */  lw         $a3, (0x1F800070 & 0xFFFF)($a3)
    /* 5262C 80061E2C 0B80033C */  lui        $v1, %hi(Player_work + 0xB0)
    /* 52630 80061E30 60526384 */  lh         $v1, %lo(Player_work + 0xB0)($v1)
    /* 52634 80061E34 0B80093C */  lui        $t1, %hi(Player_work + 0x6E)
    /* 52638 80061E38 1E522985 */  lh         $t1, %lo(Player_work + 0x6E)($t1)
    /* 5263C 80061E3C 0002053C */  lui        $a1, (0x2000000 >> 16)
.size Sub_screen_basic_param_set, . - Sub_screen_basic_param_set
