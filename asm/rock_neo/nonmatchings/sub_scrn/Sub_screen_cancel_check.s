.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Sub_screen_cancel_check
    /* 51664 80060E64 0C80023C */  lui        $v0, %hi(D_800C0C2A)
    /* 51668 80060E68 2A0C4294 */  lhu        $v0, %lo(D_800C0C2A)($v0)
    /* 5166C 80060E6C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 51670 80060E70 08104230 */  andi       $v0, $v0, 0x1008
    /* 51674 80060E74 03004014 */  bnez       $v0, .L80060E84
    /* 51678 80060E78 1000BFAF */   sw        $ra, 0x10($sp)
    /* 5167C 80060E7C AC830108 */  j          .L80060EB0
    /* 51680 80060E80 21100000 */   addu      $v0, $zero, $zero
  .L80060E84:
    /* 51684 80060E84 83000424 */  addiu      $a0, $zero, 0x83
    /* 51688 80060E88 01000524 */  addiu      $a1, $zero, 0x1
    /* 5168C 80060E8C 0268000C */  jal        Sound_call
    /* 51690 80060E90 21300000 */   addu      $a2, $zero, $zero
    /* 51694 80060E94 8C4E010C */  jal        MojiTaskKill
    /* 51698 80060E98 00000000 */   nop
    /* 5169C 80060E9C CA8F010C */  jal        Game_logo_kill
    /* 516A0 80060EA0 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 516A4 80060EA4 1075000C */  jal        Cd_read_comb
    /* 516A8 80060EA8 16000424 */   addiu     $a0, $zero, 0x16
    /* 516AC 80060EAC 01000224 */  addiu      $v0, $zero, 0x1
  .L80060EB0:
    /* 516B0 80060EB0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 516B4 80060EB4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 516B8 80060EB8 0800E003 */  jr         $ra
    /* 516BC 80060EBC 00000000 */   nop
.size Sub_screen_cancel_check, . - Sub_screen_cancel_check
