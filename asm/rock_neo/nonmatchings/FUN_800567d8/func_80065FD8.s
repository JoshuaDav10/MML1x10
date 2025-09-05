.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80065FD8
    /* 567D8 80065FD8 BC01E48C */  lw         $a0, 0x1BC($a3)
    /* 567DC 80065FDC 21104300 */  addu       $v0, $v0, $v1
    /* 567E0 80065FE0 33018214 */  bne        $a0, $v0, .L800664B0
    /* 567E4 80065FE4 03000224 */   addiu     $v0, $zero, 0x3
    /* 567E8 80065FE8 21280000 */  addu       $a1, $zero, $zero
    /* 567EC 80065FEC 2118A003 */  addu       $v1, $sp, $zero
  .L80065FF0:
    /* 567F0 80065FF0 000060AC */  sw         $zero, 0x0($v1)
    /* 567F4 80065FF4 0100A524 */  addiu      $a1, $a1, 0x1
    /* 567F8 80065FF8 0300A22C */  sltiu      $v0, $a1, 0x3
    /* 567FC 80065FFC FCFF4014 */  bnez       $v0, .L80065FF0
.size func_80065FD8, . - func_80065FD8
