.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800437A8
    /* 33FA8 800437A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 33FAC 800437AC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 33FB0 800437B0 21808000 */  addu       $s0, $a0, $zero
    /* 33FB4 800437B4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 33FB8 800437B8 08000292 */  lbu        $v0, 0x8($s0)
    /* 33FBC 800437BC 00000000 */  nop
    /* 33FC0 800437C0 80100200 */  sll        $v0, $v0, 2
    /* 33FC4 800437C4 0980013C */  lui        $at, %hi(D_8008A0D8)
    /* 33FC8 800437C8 21082200 */  addu       $at, $at, $v0
    /* 33FCC 800437CC D8A0228C */  lw         $v0, %lo(D_8008A0D8)($at)
    /* 33FD0 800437D0 00000000 */  nop
    /* 33FD4 800437D4 09F84000 */  jalr       $v0
    /* 33FD8 800437D8 00000000 */   nop
    /* 33FDC 800437DC EB46010C */  jal        func_80051BAC
    /* 33FE0 800437E0 21200002 */   addu      $a0, $s0, $zero
    /* 33FE4 800437E4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 33FE8 800437E8 1000B08F */  lw         $s0, 0x10($sp)
    /* 33FEC 800437EC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 33FF0 800437F0 0800E003 */  jr         $ra
    /* 33FF4 800437F4 00000000 */   nop
.size func_800437A8, . - func_800437A8
