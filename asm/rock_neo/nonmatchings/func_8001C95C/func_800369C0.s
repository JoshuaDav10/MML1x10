.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800369C0
    /* 271C0 800369C0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 271C4 800369C4 0C80033C */  lui        $v1, %hi(D_800BC81C)
    /* 271C8 800369C8 1CC86394 */  lhu        $v1, %lo(D_800BC81C)($v1)
    /* 271CC 800369CC 01000224 */  addiu      $v0, $zero, 0x1
    /* 271D0 800369D0 801F013C */  lui        $at, (0x1F800074 >> 16)
    /* 271D4 800369D4 740022A0 */  sb         $v0, (0x1F800074 & 0xFFFF)($at)
    /* 271D8 800369D8 80060224 */  addiu      $v0, $zero, 0x680
    /* 271DC 800369DC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 271E0 800369E0 801F013C */  lui        $at, (0x1F800006 >> 16)
    /* 271E4 800369E4 060022A4 */  sh         $v0, (0x1F800006 & 0xFFFF)($at)
    /* 271E8 800369E8 801F013C */  lui        $at, (0x1F800076 >> 16)
    /* 271EC 800369EC 760022A4 */  sh         $v0, (0x1F800076 & 0xFFFF)($at)
    /* 271F0 800369F0 40200300 */  sll        $a0, $v1, 1
    /* 271F4 800369F4 3333822C */  sltiu      $v0, $a0, 0x3333
    /* 271F8 800369F8 02004014 */  bnez       $v0, .L80036A04
    /* 271FC 800369FC 00000000 */   nop
    /* 27200 80036A00 21206000 */  addu       $a0, $v1, $zero
  .L80036A04:
    /* 27204 80036A04 73E8010C */  jal        SetFogNear
    /* 27208 80036A08 80010524 */   addiu     $a1, $zero, 0x180
    /* 2720C 80036A0C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 27210 80036A10 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 27214 80036A14 0800E003 */  jr         $ra
    /* 27218 80036A18 00000000 */   nop
.size func_800369C0, . - func_800369C0
