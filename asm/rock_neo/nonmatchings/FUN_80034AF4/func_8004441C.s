.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004441C
    /* 34C1C 8004441C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 34C20 80044420 21288000 */  addu       $a1, $a0, $zero
    /* 34C24 80044424 1000BFAF */  sw         $ra, 0x10($sp)
    /* 34C28 80044428 0300A290 */  lbu        $v0, 0x3($a1)
    /* 34C2C 8004442C 00000000 */  nop
    /* 34C30 80044430 0F004330 */  andi       $v1, $v0, 0xF
    /* 34C34 80044434 0700622C */  sltiu      $v0, $v1, 0x7
    /* 34C38 80044438 08004010 */  beqz       $v0, .L8004445C
    /* 34C3C 8004443C 4400A424 */   addiu     $a0, $a1, 0x44
    /* 34C40 80044440 80100300 */  sll        $v0, $v1, 2
    /* 34C44 80044444 0180013C */  lui        $at, %hi(D_80010D14)
    /* 34C48 80044448 21082200 */  addu       $at, $at, $v0
    /* 34C4C 8004444C 140D228C */  lw         $v0, %lo(D_80010D14)($at)
.size func_8004441C, . - func_8004441C
    /* 34C50 80044450 00000000 */  nop
