.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060480
    /* 50C80 80060480 220006A2 */  sb         $a2, 0x22($s0)
    /* 50C84 80060484 250007A2 */  sb         $a3, 0x25($s0)
    /* 50C88 80060488 2A0008A2 */  sb         $t0, 0x2A($s0)
    /* 50C8C 8006048C 2D0009A2 */  sb         $t1, 0x2D($s0)
    /* 50C90 80060490 32000AA2 */  sb         $t2, 0x32($s0)
    /* 50C94 80060494 35000BA2 */  sb         $t3, 0x35($s0)
  .L80060498:
    /* 50C98 80060498 2B002017 */  bnez       $t9, .L80060548
    /* 50C9C 8006049C A4000424 */   addiu     $a0, $zero, 0xA4
    /* 50CA0 800604A0 CB000424 */  addiu      $a0, $zero, 0xCB
    /* 50CA4 800604A4 28000524 */  addiu      $a1, $zero, 0x28
    /* 50CA8 800604A8 12000692 */  lbu        $a2, 0x12($s0)
    /* 50CAC 800604AC 8B86010C */  jal        Sub_screen_gauge_set
    /* 50CB0 800604B0 21380000 */   addu      $a3, $zero, $zero
    /* 50CB4 800604B4 CB000424 */  addiu      $a0, $zero, 0xCB
    /* 50CB8 800604B8 28000524 */  addiu      $a1, $zero, 0x28
    /* 50CBC 800604BC 15000692 */  lbu        $a2, 0x15($s0)
    /* 50CC0 800604C0 8B86010C */  jal        Sub_screen_gauge_set
    /* 50CC4 800604C4 01000724 */   addiu     $a3, $zero, 0x1
    /* 50CC8 800604C8 CB000424 */  addiu      $a0, $zero, 0xCB
    /* 50CCC 800604CC 32000524 */  addiu      $a1, $zero, 0x32
    /* 50CD0 800604D0 1A000692 */  lbu        $a2, 0x1A($s0)
    /* 50CD4 800604D4 8B86010C */  jal        Sub_screen_gauge_set
    /* 50CD8 800604D8 21380000 */   addu      $a3, $zero, $zero
    /* 50CDC 800604DC CB000424 */  addiu      $a0, $zero, 0xCB
    /* 50CE0 800604E0 32000524 */  addiu      $a1, $zero, 0x32
    /* 50CE4 800604E4 1D000692 */  lbu        $a2, 0x1D($s0)
    /* 50CE8 800604E8 8B86010C */  jal        Sub_screen_gauge_set
    /* 50CEC 800604EC 01000724 */   addiu     $a3, $zero, 0x1
    /* 50CF0 800604F0 CB000424 */  addiu      $a0, $zero, 0xCB
    /* 50CF4 800604F4 3C000524 */  addiu      $a1, $zero, 0x3C
    /* 50CF8 800604F8 22000692 */  lbu        $a2, 0x22($s0)
    /* 50CFC 800604FC 8B86010C */  jal        Sub_screen_gauge_set
.size func_80060480, . - func_80060480
