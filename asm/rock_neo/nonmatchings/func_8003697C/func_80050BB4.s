.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80050BB4
    /* 413B4 80050BB4 801F033C */  lui        $v1, (0x1F8000FF >> 16)
    /* 413B8 80050BB8 FF006334 */  ori        $v1, $v1, (0x1F8000FF & 0xFFFF)
    /* 413BC 80050BBC 00006290 */  lbu        $v0, 0x0($v1)
    /* 413C0 80050BC0 00000000 */  nop
    /* 413C4 80050BC4 0C004230 */  andi       $v0, $v0, 0xC
    /* 413C8 80050BC8 03004010 */  beqz       $v0, .L80050BD8
    /* 413CC 80050BCC 00000000 */   nop
    /* 413D0 80050BD0 801F013C */  lui        $at, (0x1F80010A >> 16)
    /* 413D4 80050BD4 0A0120A4 */  sh         $zero, (0x1F80010A & 0xFFFF)($at)
  .L80050BD8:
    /* 413D8 80050BD8 04008284 */  lh         $v0, 0x4($a0)
    /* 413DC 80050BDC 00000000 */  nop
    /* 413E0 80050BE0 0200401C */  bgtz       $v0, .L80050BEC
    /* 413E4 80050BE4 04000224 */   addiu     $v0, $zero, 0x4
    /* 413E8 80050BE8 08000224 */  addiu      $v0, $zero, 0x8
  .L80050BEC:
    /* 413EC 80050BEC 0800E003 */  jr         $ra
    /* 413F0 80050BF0 000062A0 */   sb        $v0, 0x0($v1)
.size func_80050BB4, . - func_80050BB4
