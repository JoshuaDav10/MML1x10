.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800666D8
    /* 56ED8 800666D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 56EDC 800666DC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 56EE0 800666E0 05008280 */  lb         $v0, 0x5($a0)
    /* 56EE4 800666E4 00000000 */  nop
    /* 56EE8 800666E8 80100200 */  sll        $v0, $v0, 2
    /* 56EEC 800666EC 0980013C */  lui        $at, %hi(D_8008FD20)
    /* 56EF0 800666F0 21082200 */  addu       $at, $at, $v0
    /* 56EF4 800666F4 20FD228C */  lw         $v0, %lo(D_8008FD20)($at)
    /* 56EF8 800666F8 00000000 */  nop
    /* 56EFC 800666FC 09F84000 */  jalr       $v0
.size func_800666D8, . - func_800666D8
