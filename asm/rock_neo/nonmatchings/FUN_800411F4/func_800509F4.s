.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800509F4
    /* 411F4 800509F4 01006330 */  andi       $v1, $v1, 0x1
    /* 411F8 800509F8 87420108 */  j          .L80050A1C
    /* 411FC 800509FC 21180000 */   addu      $v1, $zero, $zero
  .L80050A00:
    /* 41200 80050A00 801F023C */  lui        $v0, (0x1F8000FF >> 16)
    /* 41204 80050A04 FF004290 */  lbu        $v0, (0x1F8000FF & 0xFFFF)($v0)
    /* 41208 80050A08 00000000 */  nop
    /* 4120C 80050A0C 10004230 */  andi       $v0, $v0, 0x10
    /* 41210 80050A10 02004010 */  beqz       $v0, .L80050A1C
    /* 41214 80050A14 01006330 */   andi      $v1, $v1, 0x1
    /* 41218 80050A18 21180000 */  addu       $v1, $zero, $zero
  .L80050A1C:
    /* 4121C 80050A1C 0800E003 */  jr         $ra
    /* 41220 80050A20 21106000 */   addu      $v0, $v1, $zero
.size func_800509F4, . - func_800509F4
