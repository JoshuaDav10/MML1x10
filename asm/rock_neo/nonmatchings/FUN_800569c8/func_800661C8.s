.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800661C8
    /* 569C8 800661C8 2118A003 */  addu       $v1, $sp, $zero
  .L800661CC:
    /* 569CC 800661CC 000060AC */  sw         $zero, 0x0($v1)
    /* 569D0 800661D0 0100A524 */  addiu      $a1, $a1, 0x1
    /* 569D4 800661D4 0300A22C */  sltiu      $v0, $a1, 0x3
    /* 569D8 800661D8 FCFF4014 */  bnez       $v0, .L800661CC
    /* 569DC 800661DC 04006324 */   addiu     $v1, $v1, 0x4
    /* 569E0 800661E0 E0000524 */  addiu      $a1, $zero, 0xE0
    /* 569E4 800661E4 8003E824 */  addiu      $t0, $a3, 0x380
  .L800661E8:
    /* 569E8 800661E8 0000068D */  lw         $a2, 0x0($t0)
    /* 569EC 800661EC 0000A28F */  lw         $v0, 0x0($sp)
    /* 569F0 800661F0 001C0600 */  sll        $v1, $a2, 16
    /* 569F4 800661F4 02240600 */  srl        $a0, $a2, 16
    /* 569F8 800661F8 25186400 */  or         $v1, $v1, $a0
    /* 569FC 800661FC 21104300 */  addu       $v0, $v0, $v1
.size func_800661C8, . - func_800661C8
