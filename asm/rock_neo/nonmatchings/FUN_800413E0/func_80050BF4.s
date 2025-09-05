.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80050BF4
    /* 413F4 80050BF4 02008284 */  lh         $v0, 0x2($a0)
    /* 413F8 80050BF8 00000000 */  nop
    /* 413FC 80050BFC 0500401C */  bgtz       $v0, .L80050C14
    /* 41400 80050C00 20000224 */   addiu     $v0, $zero, 0x20
    /* 41404 80050C04 801F013C */  lui        $at, (0x1F8000FF >> 16)
    /* 41408 80050C08 FF0022A0 */  sb         $v0, (0x1F8000FF & 0xFFFF)($at)
    /* 4140C 80050C0C 09430108 */  j          .L80050C24
    /* 41410 80050C10 01000224 */   addiu     $v0, $zero, 0x1
  .L80050C14:
    /* 41414 80050C14 10000224 */  addiu      $v0, $zero, 0x10
    /* 41418 80050C18 801F013C */  lui        $at, (0x1F8000FF >> 16)
    /* 4141C 80050C1C FF0022A0 */  sb         $v0, (0x1F8000FF & 0xFFFF)($at)
    /* 41420 80050C20 21100000 */  addu       $v0, $zero, $zero
  .L80050C24:
    /* 41424 80050C24 0800E003 */  jr         $ra
    /* 41428 80050C28 00000000 */   nop
.size func_80050BF4, . - func_80050BF4
