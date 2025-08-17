.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80037C14
    /* 28414 80037C14 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* 28418 80037C18 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* 2841C 80037C1C 2B104400 */  sltu       $v0, $v0, $a0
    /* 28420 80037C20 09004014 */  bnez       $v0, .L80037C48
    /* 28424 80037C24 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 28428 80037C28 40100400 */  sll        $v0, $a0, 1
    /* 2842C 80037C2C 21104400 */  addu       $v0, $v0, $a0
    /* 28430 80037C30 80100200 */  sll        $v0, $v0, 2
    /* 28434 80037C34 1680013C */  lui        $at, %hi(D_8015C006)
    /* 28438 80037C38 21084100 */  addu       $at, $v0, $at
    /* 2843C 80037C3C 06C02294 */  lhu        $v0, %lo(D_8015C006)($at)
    /* 28440 80037C40 00000000 */  nop
    /* 28444 80037C44 FF0F4230 */  andi       $v0, $v0, 0xFFF
  .L80037C48:
    /* 28448 80037C48 0800E003 */  jr         $ra
    /* 2844C 80037C4C 00000000 */   nop
.size func_80037C14, . - func_80037C14
