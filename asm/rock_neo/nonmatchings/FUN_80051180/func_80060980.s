.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060980
    /* 51180 80060980 CA8F010C */  jal        Game_logo_kill
    /* 51184 80060984 21200000 */   addu      $a0, $zero, $zero
    /* 51188 80060988 21200002 */  addu       $a0, $s0, $zero
    /* 5118C 8006098C FFFF0524 */  addiu      $a1, $zero, -0x1
  .L80060990:
    /* 51190 80060990 1086010C */  jal        Sub_screen_status_calc
    /* 51194 80060994 00000000 */   nop
    /* 51198 80060998 0A80023C */  lui        $v0, %hi(Moji_flag3)
    /* 5119C 8006099C 308B428C */  lw         $v0, %lo(Moji_flag3)($v0)
    /* 511A0 800609A0 0400033C */  lui        $v1, (0x40000 >> 16)
    /* 511A4 800609A4 24104300 */  and        $v0, $v0, $v1
    /* 511A8 800609A8 03004010 */  beqz       $v0, .L800609B8
    /* 511AC 800609AC 00000000 */   nop
    /* 511B0 800609B0 9280010C */  jal        func_80060248
    /* 511B4 800609B4 21200002 */   addu      $a0, $s0, $zero
  .L800609B8:
    /* 511B8 800609B8 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 511BC 800609BC 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 511C0 800609C0 0040033C */  lui        $v1, (0x40000000 >> 16)
    /* 511C4 800609C4 24104300 */  and        $v0, $v0, $v1
    /* 511C8 800609C8 1A004010 */  beqz       $v0, .L80060A34
    /* 511CC 800609CC 0D000224 */   addiu     $v0, $zero, 0xD
    /* 511D0 800609D0 04000392 */  lbu        $v1, 0x4($s0)
    /* 511D4 800609D4 00000000 */  nop
    /* 511D8 800609D8 19006210 */  beq        $v1, $v0, .L80060A40
    /* 511DC 800609DC 82000424 */   addiu     $a0, $zero, 0x82
    /* 511E0 800609E0 9676000C */  jal        Sce_flag_test
    /* 511E4 800609E4 C0044426 */   addiu     $a0, $s2, 0x4C0
    /* 511E8 800609E8 0C004010 */  beqz       $v0, .L80060A1C
    /* 511EC 800609EC 82000424 */   addiu     $a0, $zero, 0x82
    /* 511F0 800609F0 01000524 */  addiu      $a1, $zero, 0x1
    /* 511F4 800609F4 0268000C */  jal        Sound_call
    /* 511F8 800609F8 21300000 */   addu      $a2, $zero, $zero
    /* 511FC 800609FC 21200000 */  addu       $a0, $zero, $zero
.size func_80060980, . - func_80060980
