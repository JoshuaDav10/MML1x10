.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057DF4
    /* 485F4 80057DF4 21308000 */  addu       $a2, $a0, $zero
    /* 485F8 80057DF8 21280000 */  addu       $a1, $zero, $zero
    /* 485FC 80057DFC 0C80073C */  lui        $a3, %hi(Game_work + 0x84)
    /* 48600 80057E00 941BE724 */  addiu      $a3, $a3, %lo(Game_work + 0x84)
  .L80057E04:
    /* 48604 80057E04 40100500 */  sll        $v0, $a1, 1
    /* 48608 80057E08 6C00C48C */  lw         $a0, 0x6C($a2)
    /* 4860C 80057E0C 70118393 */  lbu        $v1, %gp_rel(D_800989D4)($gp)
    /* 48610 80057E10 2120A400 */  addu       $a0, $a1, $a0
    /* 48614 80057E14 00190300 */  sll        $v1, $v1, 4
    /* 48618 80057E18 21186700 */  addu       $v1, $v1, $a3
    /* 4861C 80057E1C 21104300 */  addu       $v0, $v0, $v1
    /* 48620 80057E20 04004294 */  lhu        $v0, 0x4($v0)
    /* 48624 80057E24 0100A524 */  addiu      $a1, $a1, 0x1
    /* 48628 80057E28 010082A0 */  sb         $v0, 0x1($a0)
    /* 4862C 80057E2C 0300A22C */  sltiu      $v0, $a1, 0x3
    /* 48630 80057E30 F4FF4014 */  bnez       $v0, .L80057E04
    /* 48634 80057E34 00000000 */   nop
    /* 48638 80057E38 6C00C28C */  lw         $v0, 0x6C($a2)
    /* 4863C 80057E3C 00000000 */  nop
    /* 48640 80057E40 01004224 */  addiu      $v0, $v0, 0x1
    /* 48644 80057E44 6C00C2AC */  sw         $v0, 0x6C($a2)
    /* 48648 80057E48 0800E003 */  jr         $ra
    /* 4864C 80057E4C 01000224 */   addiu     $v0, $zero, 0x1
.size func_80057DF4, . - func_80057DF4
