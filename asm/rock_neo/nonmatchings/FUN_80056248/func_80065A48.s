.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80065A48
    /* 56248 80065A48 21104300 */  addu       $v0, $v0, $v1
    /* 5624C 80065A4C 26104500 */  xor        $v0, $v0, $a1
    /* 56250 80065A50 21208200 */  addu       $a0, $a0, $v0
    /* 56254 80065A54 3C1D228E */  lw         $v0, 0x1D3C($s1)
    /* 56258 80065A58 EC1E238E */  lw         $v1, 0x1EEC($s1)
.size func_80065A48, . - func_80065A48
