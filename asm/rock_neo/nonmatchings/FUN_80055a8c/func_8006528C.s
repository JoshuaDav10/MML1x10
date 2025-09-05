.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8006528C
    /* 55A8C 8006528C C0018DBA */  swr        $t5, 0x1C0($s4)
    /* 55A90 80065290 C7018EAA */  swl        $t6, 0x1C7($s4)
    /* 55A94 80065294 C4018EBA */  swr        $t6, 0x1C4($s4)
    /* 55A98 80065298 C80182A6 */  sh         $v0, 0x1C8($s4)
    /* 55A9C 8006529C CC0183A6 */  sh         $v1, 0x1CC($s4)
    /* 55AA0 800652A0 CE0186A6 */  sh         $a2, 0x1CE($s4)
    /* 55AA4 800652A4 D40187A2 */  sb         $a3, 0x1D4($s4)
    /* 55AA8 800652A8 D50188A2 */  sb         $t0, 0x1D5($s4)
    /* 55AAC 800652AC D60189A2 */  sb         $t1, 0x1D6($s4)
    /* 55AB0 800652B0 D8018AA2 */  sb         $t2, 0x1D8($s4)
    /* 55AB4 800652B4 D9018BA2 */  sb         $t3, 0x1D9($s4)
    /* 55AB8 800652B8 DA018CA2 */  sb         $t4, 0x1DA($s4)
    /* 55ABC 800652BC 7301C292 */  lbu        $v0, 0x173($s6)
    /* 55AC0 800652C0 4C04C392 */  lbu        $v1, 0x44C($s6)
    /* 55AC4 800652C4 4E04C792 */  lbu        $a3, 0x44E($s6)
    /* 55AC8 800652C8 4F04C892 */  lbu        $t0, 0x44F($s6)
    /* 55ACC 800652CC 5004C98E */  lw         $t1, 0x450($s6)
    /* 55AD0 800652D0 01000624 */  addiu      $a2, $zero, 0x1
    /* 55AD4 800652D4 DB0182A2 */  sb         $v0, 0x1DB($s4)
    /* 55AD8 800652D8 DC0183A2 */  sb         $v1, 0x1DC($s4)
    /* 55ADC 800652DC DE0187A2 */  sb         $a3, 0x1DE($s4)
    /* 55AE0 800652E0 DF0188A2 */  sb         $t0, 0x1DF($s4)
    /* 55AE4 800652E4 B75D000C */  jal        .L800176DC
    /* 55AE8 800652E8 080289AE */   sw        $t1, 0x208($s4)
    /* 55AEC 800652EC 7404C426 */  addiu      $a0, $s6, 0x474
.size func_8006528C, . - func_8006528C
