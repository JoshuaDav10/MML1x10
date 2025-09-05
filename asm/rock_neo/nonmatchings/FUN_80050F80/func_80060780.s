.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060780
    /* 50F80 80060780 010002A2 */  sb         $v0, 0x1($s0)
  glabel .L80060784
    /* 50F84 80060784 0A80033C */  lui        $v1, %hi(Moji_flag)
    /* 50F88 80060788 588A638C */  lw         $v1, %lo(Moji_flag)($v1)
.size func_80060780, . - func_80060780
