.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800477A0
    /* 37FA0 800477A0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 37FA4 800477A4 21288000 */  addu       $a1, $a0, $zero
    /* 37FA8 800477A8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 37FAC 800477AC 0300A290 */  lbu        $v0, 0x3($a1)
    /* 37FB0 800477B0 00000000 */  nop
    /* 37FB4 800477B4 0F004330 */  andi       $v1, $v0, 0xF
    /* 37FB8 800477B8 0700622C */  sltiu      $v0, $v1, 0x7
    /* 37FBC 800477BC 08004010 */  beqz       $v0, .L800477E0
    /* 37FC0 800477C0 4400A424 */   addiu     $a0, $a1, 0x44
    /* 37FC4 800477C4 80100300 */  sll        $v0, $v1, 2
    /* 37FC8 800477C8 0180013C */  lui        $at, %hi(D_80010D50)
    /* 37FCC 800477CC 21082200 */  addu       $at, $at, $v0
    /* 37FD0 800477D0 500D228C */  lw         $v0, %lo(D_80010D50)($at)
.size func_800477A0, . - func_800477A0
    /* 37FD4 800477D4 00000000 */  nop
