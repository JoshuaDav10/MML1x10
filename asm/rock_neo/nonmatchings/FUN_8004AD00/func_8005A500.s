.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A500
    /* 4AD00 8005A500 FFFFA430 */  andi       $a0, $a1, 0xFFFF
  .L8005A504:
    /* 4AD04 8005A504 72000282 */  lb         $v0, 0x72($s0)
    /* 4AD08 8005A508 72000492 */  lbu        $a0, 0x72($s0)
    /* 4AD0C 8005A50C 12004018 */  blez       $v0, .L8005A558
    /* 4AD10 8005A510 21280000 */   addu      $a1, $zero, $zero
    /* 4AD14 8005A514 80000624 */  addiu      $a2, $zero, 0x80
    /* 4AD18 8005A518 FFFFA330 */  andi       $v1, $a1, 0xFFFF
  .L8005A51C:
    /* 4AD1C 8005A51C 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4AD20 8005A520 00160400 */  sll        $v0, $a0, 24
    /* 4AD24 8005A524 03160200 */  sra        $v0, $v0, 24
    /* 4AD28 8005A528 23104300 */  subu       $v0, $v0, $v1
    /* 4AD2C 8005A52C 40180200 */  sll        $v1, $v0, 1
    /* 4AD30 8005A530 21186200 */  addu       $v1, $v1, $v0
    /* 4AD34 8005A534 6C00048E */  lw         $a0, 0x6C($s0)
    /* 4AD38 8005A538 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 4AD3C 8005A53C 23208300 */  subu       $a0, $a0, $v1
    /* 4AD40 8005A540 010086A0 */  sb         $a2, 0x1($a0)
    /* 4AD44 8005A544 72000382 */  lb         $v1, 0x72($s0)
    /* 4AD48 8005A548 72000492 */  lbu        $a0, 0x72($s0)
    /* 4AD4C 8005A54C 2A104300 */  slt        $v0, $v0, $v1
    /* 4AD50 8005A550 F2FF4014 */  bnez       $v0, .L8005A51C
    /* 4AD54 8005A554 FFFFA330 */   andi      $v1, $a1, 0xFFFF
  .L8005A558:
    /* 4AD58 8005A558 6C00028E */  lw         $v0, 0x6C($s0)
    /* 4AD5C 8005A55C 00000000 */  nop
    /* 4AD60 8005A560 02004224 */  addiu      $v0, $v0, 0x2
    /* 4AD64 8005A564 6C0002AE */  sw         $v0, 0x6C($s0)
  .L8005A568:
    /* 4AD68 8005A568 21104002 */  addu       $v0, $s2, $zero
    /* 4AD6C 8005A56C 0000038E */  lw         $v1, 0x0($s0)
    /* 4AD70 8005A570 8000043C */  lui        $a0, (0x800000 >> 16)
    /* 4AD74 8005A574 25186400 */  or         $v1, $v1, $a0
    /* 4AD78 8005A578 000003AE */  sw         $v1, 0x0($s0)
    /* 4AD7C 8005A57C 7C00BF8F */  lw         $ra, 0x7C($sp)
.size func_8005A500, . - func_8005A500
