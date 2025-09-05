.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80050400
    /* 40C00 80050400 801F073C */  lui        $a3, (0x1F8000F0 >> 16)
    /* 40C04 80050404 F000E784 */  lh         $a3, (0x1F8000F0 & 0xFFFF)($a3)
    /* 40C08 80050408 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 40C0C 8005040C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 40C10 80050410 00008284 */  lh         $v0, 0x0($a0)
    /* 40C14 80050414 00000000 */  nop
    /* 40C18 80050418 2318E200 */  subu       $v1, $a3, $v0
    /* 40C1C 8005041C 02006104 */  bgez       $v1, .L80050428
    /* 40C20 80050420 00000000 */   nop
    /* 40C24 80050424 23184700 */  subu       $v1, $v0, $a3
  .L80050428:
    /* 40C28 80050428 801F083C */  lui        $t0, (0x1F8000F8 >> 16)
    /* 40C2C 8005042C F8000885 */  lh         $t0, (0x1F8000F8 & 0xFFFF)($t0)
    /* 40C30 80050430 00000000 */  nop
    /* 40C34 80050434 23380201 */  subu       $a3, $t0, $v0
.size func_80050400, . - func_80050400
