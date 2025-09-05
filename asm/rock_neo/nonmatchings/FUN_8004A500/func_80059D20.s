.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059D20
    /* 4A520 80059D20 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4A524 80059D24 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4A528 80059D28 21808000 */  addu       $s0, $a0, $zero
    /* 4A52C 80059D2C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 4A530 80059D30 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4A534 80059D34 6C00068E */  lw         $a2, 0x6C($s0)
    /* 4A538 80059D38 00000000 */  nop
    /* 4A53C 80059D3C 0100D190 */  lbu        $s1, 0x1($a2)
    /* 4A540 80059D40 0C80013C */  lui        $at, %hi(D_800BE2F8)
    /* 4A544 80059D44 21083100 */  addu       $at, $at, $s1
    /* 4A548 80059D48 F8E22390 */  lbu        $v1, %lo(D_800BE2F8)($at)
    /* 4A54C 80059D4C 00000000 */  nop
    /* 4A550 80059D50 80280300 */  sll        $a1, $v1, 2
    /* 4A554 80059D54 0400622C */  sltiu      $v0, $v1, 0x4
    /* 4A558 80059D58 0980013C */  lui        $at, %hi(D_8008AF00)
    /* 4A55C 80059D5C 21082500 */  addu       $at, $at, $a1
    /* 4A560 80059D60 00AF278C */  lw         $a3, %lo(D_8008AF00)($at)
    /* 4A564 80059D64 07004010 */  beqz       $v0, .L80059D84
    /* 4A568 80059D68 21200000 */   addu      $a0, $zero, $zero
    /* 4A56C 80059D6C 0C80013C */  lui        $at, %hi(Game_work + 0x28)
    /* 4A570 80059D70 21082500 */  addu       $at, $at, $a1
    /* 4A574 80059D74 381B258C */  lw         $a1, %lo(Game_work + 0x28)($at)
    /* 4A578 80059D78 0700C624 */  addiu      $a2, $a2, 0x7
    /* 4A57C 80059D7C 6D670108 */  j          .L80059DB4
.size func_80059D20, . - func_80059D20
