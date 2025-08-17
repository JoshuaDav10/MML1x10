.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80019D18
    /* A518 80019D18 0C80023C */  lui        $v0, %hi(Game_work + 0x50)
    /* A51C 80019D1C 601B4280 */  lb         $v0, %lo(Game_work + 0x50)($v0)
    /* A520 80019D20 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A524 80019D24 1000BFAF */  sw         $ra, 0x10($sp)
    /* A528 80019D28 80100200 */  sll        $v0, $v0, 2
    /* A52C 80019D2C 0880013C */  lui        $at, %hi(Unk_stage_func_tbl)
    /* A530 80019D30 21082200 */  addu       $at, $at, $v0
    /* A534 80019D34 A023228C */  lw         $v0, %lo(Unk_stage_func_tbl)($at)
    /* A538 80019D38 00000000 */  nop
    /* A53C 80019D3C 03004010 */  beqz       $v0, .L80019D4C
    /* A540 80019D40 00000000 */   nop
    /* A544 80019D44 09F84000 */  jalr       $v0
    /* A548 80019D48 21200000 */   addu      $a0, $zero, $zero
  .L80019D4C:
    /* A54C 80019D4C 0C80023C */  lui        $v0, %hi(Game_work + 0x50)
    /* A550 80019D50 601B4280 */  lb         $v0, %lo(Game_work + 0x50)($v0)
    /* A554 80019D54 21200000 */  addu       $a0, $zero, $zero
    /* A558 80019D58 80100200 */  sll        $v0, $v0, 2
    /* A55C 80019D5C 0880013C */  lui        $at, %hi(D_80082320)
    /* A560 80019D60 21082200 */  addu       $at, $at, $v0
    /* A564 80019D64 2023238C */  lw         $v1, %lo(D_80082320)($at)
    /* A568 80019D68 00000000 */  nop
    /* A56C 80019D6C 0A006010 */  beqz       $v1, .L80019D98
    /* A570 80019D70 21100000 */   addu      $v0, $zero, $zero
    /* A574 80019D74 0C80023C */  lui        $v0, %hi(Game_work + 0x51)
    /* A578 80019D78 611B4280 */  lb         $v0, %lo(Game_work + 0x51)($v0)
    /* A57C 80019D7C 00000000 */  nop
    /* A580 80019D80 40100200 */  sll        $v0, $v0, 1
    /* A584 80019D84 21104300 */  addu       $v0, $v0, $v1
    /* A588 80019D88 00004494 */  lhu        $a0, 0x0($v0)
    /* A58C 80019D8C 00000000 */  nop
    /* A590 80019D90 FFFF8238 */  xori       $v0, $a0, 0xFFFF
    /* A594 80019D94 2B100200 */  sltu       $v0, $zero, $v0
  .L80019D98:
    /* A598 80019D98 05004010 */  beqz       $v0, .L80019DB0
    /* A59C 80019D9C 21280000 */   addu      $a1, $zero, $zero
    /* A5A0 80019DA0 0268000C */  jal        Sound_call
    /* A5A4 80019DA4 21300000 */   addu      $a2, $zero, $zero
    /* A5A8 80019DA8 6E670008 */  j          .L80019DB8
    /* A5AC 80019DAC 00000000 */   nop
  .L80019DB0:
    /* A5B0 80019DB0 CF6C000C */  jal        func_8001B33C
    /* A5B4 80019DB4 00000000 */   nop
  .L80019DB8:
    /* A5B8 80019DB8 0A80023C */  lui        $v0, %hi(D_80098958)
    /* A5BC 80019DBC 5889428C */  lw         $v0, %lo(D_80098958)($v0)
    /* A5C0 80019DC0 FFF70324 */  addiu      $v1, $zero, -0x801
    /* A5C4 80019DC4 24104300 */  and        $v0, $v0, $v1
    /* A5C8 80019DC8 0A80013C */  lui        $at, %hi(D_80098958)
    /* A5CC 80019DCC 588922AC */  sw         $v0, %lo(D_80098958)($at)
    /* A5D0 80019DD0 1000BF8F */  lw         $ra, 0x10($sp)
    /* A5D4 80019DD4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A5D8 80019DD8 0800E003 */  jr         $ra
    /* A5DC 80019DDC 00000000 */   nop
.size func_80019D18, . - func_80019D18
