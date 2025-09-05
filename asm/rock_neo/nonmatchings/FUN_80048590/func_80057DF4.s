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
.size func_80057DF4, . - func_80057DF4
