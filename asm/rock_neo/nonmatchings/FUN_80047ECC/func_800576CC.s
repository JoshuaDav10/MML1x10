.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800576CC
    /* 47ECC 800576CC 0100A224 */  addiu      $v0, $a1, 0x1
    /* 47ED0 800576D0 80280500 */  sll        $a1, $a1, 2
    /* 47ED4 800576D4 2128A400 */  addu       $a1, $a1, $a0
    /* 47ED8 800576D8 C00082A4 */  sh         $v0, 0xC0($a0)
    /* 47EDC 800576DC 6C00828C */  lw         $v0, 0x6C($a0)
    /* 47EE0 800576E0 80180300 */  sll        $v1, $v1, 2
    /* 47EE4 800576E4 01004224 */  addiu      $v0, $v0, 0x1
    /* 47EE8 800576E8 4C00A2AC */  sw         $v0, 0x4C($a1)
.size func_800576CC, . - func_800576CC
