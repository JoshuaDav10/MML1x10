.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005FC44
    /* 50444 8005FC44 01000524 */  addiu      $a1, $zero, 0x1
    /* 50448 8005FC48 0268000C */  jal        Sound_call
    /* 5044C 8005FC4C 21300000 */   addu      $a2, $zero, $zero
    /* 50450 8005FC50 437F0108 */  j          .L8005FD0C
    /* 50454 8005FC54 02000224 */   addiu     $v0, $zero, 0x2
  glabel .L8005FC58
    /* 50458 8005FC58 797F010C */  jal        func_8005FDE4
    /* 5045C 8005FC5C 21202002 */   addu      $a0, $s1, $zero
    /* 50460 8005FC60 21184000 */  addu       $v1, $v0, $zero
    /* 50464 8005FC64 01000224 */  addiu      $v0, $zero, 0x1
    /* 50468 8005FC68 15006210 */  beq        $v1, $v0, .L8005FCC0
    /* 5046C 8005FC6C 02006228 */   slti      $v0, $v1, 0x2
    /* 50470 8005FC70 05004010 */  beqz       $v0, .L8005FC88
    /* 50474 8005FC74 00000000 */   nop
    /* 50478 8005FC78 08006010 */  beqz       $v1, .L8005FC9C
    /* 5047C 8005FC7C 21200000 */   addu      $a0, $zero, $zero
    /* 50480 8005FC80 737F0108 */  j          .L8005FDCC
    /* 50484 8005FC84 00000000 */   nop
  .L8005FC88:
    /* 50488 8005FC88 02000224 */  addiu      $v0, $zero, 0x2
    /* 5048C 8005FC8C 13006210 */  beq        $v1, $v0, .L8005FCDC
    /* 50490 8005FC90 21200000 */   addu      $a0, $zero, $zero
    /* 50494 8005FC94 737F0108 */  j          .L8005FDCC
    /* 50498 8005FC98 00000000 */   nop
  .L8005FC9C:
    /* 5049C 8005FC9C 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 504A0 8005FCA0 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 504A4 8005FCA4 0B4E010C */  jal        MojiTaskExec
    /* 504A8 8005FCA8 4D000624 */   addiu     $a2, $zero, 0x4D
    /* 504AC 8005FCAC 02000292 */  lbu        $v0, 0x2($s0)
    /* 504B0 8005FCB0 00000000 */  nop
    /* 504B4 8005FCB4 02004224 */  addiu      $v0, $v0, 0x2
    /* 504B8 8005FCB8 737F0108 */  j          .L8005FDCC
.size func_8005FC44, . - func_8005FC44
