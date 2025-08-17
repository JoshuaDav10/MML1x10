.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002C2B0
    /* 1CAB0 8002C2B0 18005000 */  mult       $v0, $s0
    /* 1CAB4 8002C2B4 12180000 */  mflo       $v1
    /* 1CAB8 8002C2B8 2410CC00 */  and        $v0, $a2, $t4
    /* 1CABC 8002C2BC 00000000 */  nop
    /* 1CAC0 8002C2C0 18005900 */  mult       $v0, $t9
    /* 1CAC4 8002C2C4 C2210800 */  srl        $a0, $t0, 7
    /* 1CAC8 8002C2C8 FF008430 */  andi       $a0, $a0, 0xFF
    /* 1CACC 8002C2CC C2110300 */  srl        $v0, $v1, 7
    /* 1CAD0 8002C2D0 00FF4230 */  andi       $v0, $v0, 0xFF00
    /* 1CAD4 8002C2D4 25208200 */  or         $a0, $a0, $v0
    /* 1CAD8 8002C2D8 0000A38F */  lw         $v1, 0x0($sp)
    /* 1CADC 8002C2DC 12300000 */  mflo       $a2
    /* 1CAE0 8002C2E0 C2110600 */  srl        $v0, $a2, 7
    /* 1CAE4 8002C2E4 24104C00 */  and        $v0, $v0, $t4
    /* 1CAE8 8002C2E8 25308200 */  or         $a2, $a0, $v0
    /* 1CAEC 8002C2EC 25186600 */  or         $v1, $v1, $a2
    /* 1CAF0 8002C2F0 0400A3AC */  sw         $v1, 0x4($a1)
    /* 1CAF4 8002C2F4 FCFF468D */  lw         $a2, -0x4($t2)
    /* 1CAF8 8002C2F8 00000000 */  nop
    /* 1CAFC 8002C2FC FF00C230 */  andi       $v0, $a2, 0xFF
    /* 1CB00 8002C300 18005100 */  mult       $v0, $s1
    /* 1CB04 8002C304 12180000 */  mflo       $v1
    /* 1CB08 8002C308 00FFC230 */  andi       $v0, $a2, 0xFF00
    /* 1CB0C 8002C30C 00000000 */  nop
    /* 1CB10 8002C310 18005000 */  mult       $v0, $s0
    /* 1CB14 8002C314 12200000 */  mflo       $a0
    /* 1CB18 8002C318 2410CC00 */  and        $v0, $a2, $t4
    /* 1CB1C 8002C31C 00000000 */  nop
    /* 1CB20 8002C320 18005900 */  mult       $v0, $t9
    /* 1CB24 8002C324 C2190300 */  srl        $v1, $v1, 7
    /* 1CB28 8002C328 FF006330 */  andi       $v1, $v1, 0xFF
.size func_8002C2B0, . - func_8002C2B0
