.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80065A5C
    /* 5625C 80065A5C F001258E */  lw         $a1, 0x1F0($s1)
    /* 56260 80065A60 21104300 */  addu       $v0, $v0, $v1
    /* 56264 80065A64 26104500 */  xor        $v0, $v0, $a1
    /* 56268 80065A68 21208200 */  addu       $a0, $a0, $v0
    /* 5626C 80065A6C FC1E24AE */  sw         $a0, 0x1EFC($s1)
    /* 56270 80065A70 26208800 */  xor        $a0, $a0, $t0
    /* 56274 80065A74 F41E228E */  lw         $v0, 0x1EF4($s1)
    /* 56278 80065A78 F81E238E */  lw         $v1, 0x1EF8($s1)
    /* 5627C 80065A7C 27100200 */  nor        $v0, $zero, $v0
.size func_80065A5C, . - func_80065A5C
