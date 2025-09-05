.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80050BE0
    /* 413E0 80050BE0 0200401C */  bgtz       $v0, .L80050BEC
    /* 413E4 80050BE4 04000224 */   addiu     $v0, $zero, 0x4
    /* 413E8 80050BE8 08000224 */  addiu      $v0, $zero, 0x8
  .L80050BEC:
    /* 413EC 80050BEC 0800E003 */  jr         $ra
    /* 413F0 80050BF0 000062A0 */   sb        $v0, 0x0($v1)
.size func_80050BE0, . - func_80050BE0
