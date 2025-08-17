.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80050B74
    /* 41374 80050B74 801F033C */  lui        $v1, (0x1F8000FF >> 16)
    /* 41378 80050B78 FF006334 */  ori        $v1, $v1, (0x1F8000FF & 0xFFFF)
    /* 4137C 80050B7C 00006290 */  lbu        $v0, 0x0($v1)
    /* 41380 80050B80 00000000 */  nop
    /* 41384 80050B84 03004230 */  andi       $v0, $v0, 0x3
    /* 41388 80050B88 03004010 */  beqz       $v0, .L80050B98
    /* 4138C 80050B8C 00000000 */   nop
    /* 41390 80050B90 801F013C */  lui        $at, (0x1F800106 >> 16)
    /* 41394 80050B94 060120A4 */  sh         $zero, (0x1F800106 & 0xFFFF)($at)
  .L80050B98:
    /* 41398 80050B98 00008284 */  lh         $v0, 0x0($a0)
    /* 4139C 80050B9C 00000000 */  nop
    /* 413A0 80050BA0 0200401C */  bgtz       $v0, .L80050BAC
    /* 413A4 80050BA4 01000224 */   addiu     $v0, $zero, 0x1
    /* 413A8 80050BA8 02000224 */  addiu      $v0, $zero, 0x2
  .L80050BAC:
    /* 413AC 80050BAC 0800E003 */  jr         $ra
    /* 413B0 80050BB0 000062A0 */   sb        $v0, 0x0($v1)
.size func_80050B74, . - func_80050B74
