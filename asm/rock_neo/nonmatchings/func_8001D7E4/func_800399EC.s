.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800399EC
    /* 2A1EC 800399EC 0C05858F */  lw         $a1, %gp_rel(D_80097D70)($gp)
    /* 2A1F0 800399F0 00000000 */  nop
    /* 2A1F4 800399F4 0800A22C */  sltiu      $v0, $a1, 0x8
    /* 2A1F8 800399F8 0C004010 */  beqz       $v0, .L80039A2C
    /* 2A1FC 800399FC 21308000 */   addu      $a2, $a0, $zero
    /* 2A200 80039A00 0805838F */  lw         $v1, %gp_rel(D_80097D6C)($gp)
    /* 2A204 80039A04 0100A424 */  addiu      $a0, $a1, 0x1
    /* 2A208 80039A08 0C0584AF */  sw         $a0, %gp_rel(D_80097D70)($gp)
    /* 2A20C 80039A0C 21186500 */  addu       $v1, $v1, $a1
    /* 2A210 80039A10 07006330 */  andi       $v1, $v1, 0x7
    /* 2A214 80039A14 80180300 */  sll        $v1, $v1, 2
    /* 2A218 80039A18 0A80013C */  lui        $at, %hi(D_8009869C)
    /* 2A21C 80039A1C 21082300 */  addu       $at, $at, $v1
    /* 2A220 80039A20 9C8626AC */  sw         $a2, %lo(D_8009869C)($at)
    /* 2A224 80039A24 8CE60008 */  j          .L80039A30
    /* 2A228 80039A28 01000224 */   addiu     $v0, $zero, 0x1
  .L80039A2C:
    /* 2A22C 80039A2C 21100000 */  addu       $v0, $zero, $zero
  .L80039A30:
    /* 2A230 80039A30 0800E003 */  jr         $ra
    /* 2A234 80039A34 00000000 */   nop
.size func_800399EC, . - func_800399EC
