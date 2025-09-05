.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80044594
    /* 34D94 80044594 3500E018 */  blez       $a3, .L8004466C
    /* 34D98 80044598 00000000 */   nop
    /* 34D9C 8004459C 0D00A280 */  lb         $v0, 0xD($a1)
    /* 34DA0 800445A0 00008384 */  lh         $v1, 0x0($a0)
    /* 34DA4 800445A4 C0100200 */  sll        $v0, $v0, 3
    /* 34DA8 800445A8 0980013C */  lui        $at, %hi(D_8008A1C8)
    /* 34DAC 800445AC 21082200 */  addu       $at, $at, $v0
    /* 34DB0 800445B0 C8A12684 */  lh         $a2, %lo(D_8008A1C8)($at)
    /* 34DB4 800445B4 1200601C */  bgtz       $v1, .L80044600
    /* 34DB8 800445B8 2A10C700 */   slt       $v0, $a2, $a3
    /* 34DBC 800445BC 10004014 */  bnez       $v0, .L80044600
    /* 34DC0 800445C0 2310C700 */   subu      $v0, $a2, $a3
    /* 34DC4 800445C4 C0110200 */  sll        $v0, $v0, 7
    /* 34DC8 800445C8 1A004600 */  div        $zero, $v0, $a2
    /* 34DCC 800445CC 0200C014 */  bnez       $a2, .L800445D8
    /* 34DD0 800445D0 00000000 */   nop
    /* 34DD4 800445D4 0D000700 */  break      7
  .L800445D8:
    /* 34DD8 800445D8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 34DDC 800445DC 0400C114 */  bne        $a2, $at, .L800445F0
    /* 34DE0 800445E0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 34DE4 800445E4 02004114 */  bne        $v0, $at, .L800445F0
    /* 34DE8 800445E8 00000000 */   nop
    /* 34DEC 800445EC 0D000600 */  break      6
  .L800445F0:
    /* 34DF0 800445F0 12100000 */  mflo       $v0
.size func_80044594, . - func_80044594
