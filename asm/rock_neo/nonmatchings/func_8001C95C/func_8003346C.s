.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003346C
    /* 23C6C 8003346C B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 23C70 80033470 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 23C74 80033474 21888000 */  addu       $s1, $a0, $zero
    /* 23C78 80033478 1000A427 */  addiu      $a0, $sp, 0x10
    /* 23C7C 8003347C 3800B0AF */  sw         $s0, 0x38($sp)
    /* 23C80 80033480 1800B027 */  addiu      $s0, $sp, 0x18
    /* 23C84 80033484 4000BFAF */  sw         $ra, 0x40($sp)
    /* 23C88 80033488 1000A0A7 */  sh         $zero, 0x10($sp)
    /* 23C8C 8003348C 56002296 */  lhu        $v0, 0x56($s1)
    /* 23C90 80033490 21280002 */  addu       $a1, $s0, $zero
    /* 23C94 80033494 1400A0A7 */  sh         $zero, 0x14($sp)
    /* 23C98 80033498 6AED010C */  jal        RotMatrix
    /* 23C9C 8003349C 1200A2A7 */   sh        $v0, 0x12($sp)
    /* 23CA0 800334A0 21202002 */  addu       $a0, $s1, $zero
    /* 23CA4 800334A4 66CD000C */  jal        func_80033598
    /* 23CA8 800334A8 21280002 */   addu      $a1, $s0, $zero
    /* 23CAC 800334AC 4000BF8F */  lw         $ra, 0x40($sp)
    /* 23CB0 800334B0 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 23CB4 800334B4 3800B08F */  lw         $s0, 0x38($sp)
    /* 23CB8 800334B8 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 23CBC 800334BC 0800E003 */  jr         $ra
    /* 23CC0 800334C0 00000000 */   nop
.size func_8003346C, . - func_8003346C
