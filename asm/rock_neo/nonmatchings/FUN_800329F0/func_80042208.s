.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80042208
    /* 32A08 80042208 0B80023C */  lui        $v0, %hi(Player_work + 0x6E)
    /* 32A0C 8004220C 1E524284 */  lh         $v0, %lo(Player_work + 0x6E)($v0)
    /* 32A10 80042210 00000000 */  nop
    /* 32A14 80042214 03004104 */  bgez       $v0, .L80042224
    /* 32A18 80042218 01000224 */   addiu     $v0, $zero, 0x1
    /* 32A1C 8004221C 8C080108 */  j          .L80042230
    /* 32A20 80042220 21100000 */   addu      $v0, $zero, $zero
  .L80042224:
    /* 32A24 80042224 0B80013C */  lui        $at, %hi(Player_work + 0x449)
    /* 32A28 80042228 F95522A0 */  sb         $v0, %lo(Player_work + 0x449)($at)
    /* 32A2C 8004222C 01000224 */  addiu      $v0, $zero, 0x1
  .L80042230:
    /* 32A30 80042230 0800E003 */  jr         $ra
    /* 32A34 80042234 00000000 */   nop
.size func_80042208, . - func_80042208
