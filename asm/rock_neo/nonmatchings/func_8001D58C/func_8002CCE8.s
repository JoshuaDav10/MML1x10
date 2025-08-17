.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002CCE8
    /* 1D4E8 8002CCE8 46B30008 */  j          .L8002CD18
    /* 1D4EC 8002CCEC 0400C2AE */   sw        $v0, 0x4($s6)
  .L8002CCF0:
    /* 1D4F0 8002CCF0 40020224 */  addiu      $v0, $zero, 0x240
    /* 1D4F4 8002CCF4 23104500 */  subu       $v0, $v0, $a1
    /* 1D4F8 8002CCF8 83100200 */  sra        $v0, $v0, 2
    /* 1D4FC 8002CCFC 00240200 */  sll        $a0, $v0, 16
    /* 1D500 8002CD00 001A0200 */  sll        $v1, $v0, 8
    /* 1D504 8002CD04 002E053C */  lui        $a1, (0x2E000000 >> 16)
    /* 1D508 8002CD08 25186500 */  or         $v1, $v1, $a1
    /* 1D50C 8002CD0C 25208300 */  or         $a0, $a0, $v1
    /* 1D510 8002CD10 25208200 */  or         $a0, $a0, $v0
    /* 1D514 8002CD14 0400C4AE */  sw         $a0, 0x4($s6)
  .L8002CD18:
    /* 1D518 8002CD18 801F153C */  lui        $s5, (0x1F800074 >> 16)
    /* 1D51C 8002CD1C 7400B536 */  ori        $s5, $s5, (0x1F800074 & 0xFFFF)
    /* 1D520 8002CD20 3800A88F */  lw         $t0, 0x38($sp)
    /* 1D524 8002CD24 0000D287 */  lh         $s2, 0x0($fp)
    /* 1D528 8002CD28 0000A292 */  lbu        $v0, 0x0($s5)
    /* 1D52C 8002CD2C 0200D187 */  lh         $s1, 0x2($fp)
    /* 1D530 8002CD30 0400D487 */  lh         $s4, 0x4($fp)
    /* 1D534 8002CD34 23801301 */  subu       $s0, $t0, $s3
    /* 1D538 8002CD38 21200002 */  addu       $a0, $s0, $zero
    /* 1D53C 8002CD3C 04905200 */  sllv       $s2, $s2, $v0
    /* 1D540 8002CD40 04885100 */  sllv       $s1, $s1, $v0
    /* 1D544 8002CD44 18E8010C */  jal        rsin
    /* 1D548 8002CD48 04A05400 */   sllv      $s4, $s4, $v0
    /* 1D54C 8002CD4C 18005700 */  mult       $v0, $s7
    /* 1D550 8002CD50 21200002 */  addu       $a0, $s0, $zero
    /* 1D554 8002CD54 1200B1A7 */  sh         $s1, 0x12($sp)
    /* 1D558 8002CD58 0000A292 */  lbu        $v0, 0x0($s5)
    /* 1D55C 8002CD5C 0C001024 */  addiu      $s0, $zero, 0xC
    /* 1D560 8002CD60 23100202 */  subu       $v0, $s0, $v0
    /* 1D564 8002CD64 12400000 */  mflo       $t0
    /* 1D568 8002CD68 07104800 */  srav       $v0, $t0, $v0
    /* 1D56C 8002CD6C 21105200 */  addu       $v0, $v0, $s2
    /* 1D570 8002CD70 4BE8010C */  jal        rcos
    /* 1D574 8002CD74 1000A2A7 */   sh        $v0, 0x10($sp)
    /* 1D578 8002CD78 18005700 */  mult       $v0, $s7
    /* 1D57C 8002CD7C 3800A88F */  lw         $t0, 0x38($sp)
    /* 1D580 8002CD80 0000A292 */  lbu        $v0, 0x0($s5)
    /* 1D584 8002CD84 21981301 */  addu       $s3, $t0, $s3
    /* 1D588 8002CD88 21206002 */  addu       $a0, $s3, $zero
    /* 1D58C 8002CD8C 23100202 */  subu       $v0, $s0, $v0
    /* 1D590 8002CD90 12400000 */  mflo       $t0
    /* 1D594 8002CD94 07104800 */  srav       $v0, $t0, $v0
    /* 1D598 8002CD98 21105400 */  addu       $v0, $v0, $s4
    /* 1D59C 8002CD9C 18E8010C */  jal        rsin
    /* 1D5A0 8002CDA0 1400A2A7 */   sh        $v0, 0x14($sp)
    /* 1D5A4 8002CDA4 18005700 */  mult       $v0, $s7
    /* 1D5A8 8002CDA8 0000A292 */  lbu        $v0, 0x0($s5)
    /* 1D5AC 8002CDAC 21206002 */  addu       $a0, $s3, $zero
    /* 1D5B0 8002CDB0 1A00B1A7 */  sh         $s1, 0x1A($sp)
    /* 1D5B4 8002CDB4 23100202 */  subu       $v0, $s0, $v0
    /* 1D5B8 8002CDB8 12400000 */  mflo       $t0
    /* 1D5BC 8002CDBC 07104800 */  srav       $v0, $t0, $v0
    /* 1D5C0 8002CDC0 21105200 */  addu       $v0, $v0, $s2
.size func_8002CCE8, . - func_8002CCE8
