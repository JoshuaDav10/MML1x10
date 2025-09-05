.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80041570
    /* 31D70 80041570 2120C000 */  addu       $a0, $a2, $zero
    /* 31D74 80041574 0200A284 */  lh         $v0, 0x2($a1)
    /* 31D78 80041578 21280002 */  addu       $a1, $s0, $zero
    /* 31D7C 8004157C 00140200 */  sll        $v0, $v0, 16
    /* 31D80 80041580 3400A2AF */  sw         $v0, 0x34($sp)
    /* 31D84 80041584 2400A2AF */  sw         $v0, 0x24($sp)
    /* 31D88 80041588 00002686 */  lh         $a2, 0x0($s1)
    /* 31D8C 8004158C 02002886 */  lh         $t0, 0x2($s1)
    /* 31D90 80041590 06002786 */  lh         $a3, 0x6($s1)
    /* 31D94 80041594 2110C800 */  addu       $v0, $a2, $t0
    /* 31D98 80041598 C21F0200 */  srl        $v1, $v0, 31
    /* 31D9C 8004159C 21104300 */  addu       $v0, $v0, $v1
    /* 31DA0 800415A0 43100200 */  sra        $v0, $v0, 1
    /* 31DA4 800415A4 23B0C200 */  subu       $s6, $a2, $v0
    /* 31DA8 800415A8 04002686 */  lh         $a2, 0x4($s1)
    /* 31DAC 800415AC 23A80201 */  subu       $s5, $t0, $v0
    /* 31DB0 800415B0 2110C700 */  addu       $v0, $a2, $a3
    /* 31DB4 800415B4 C21F0200 */  srl        $v1, $v0, 31
    /* 31DB8 800415B8 21104300 */  addu       $v0, $v0, $v1
    /* 31DBC 800415BC 43100200 */  sra        $v0, $v0, 1
    /* 31DC0 800415C0 23A0C200 */  subu       $s4, $a2, $v0
    /* 31DC4 800415C4 0EEE010C */  jal        RotMatrixYXZ
    /* 31DC8 800415C8 2398E200 */   subu      $s3, $a3, $v0
    /* 31DCC 800415CC 21200002 */  addu       $a0, $s0, $zero
    /* 31DD0 800415D0 2000A527 */  addiu      $a1, $sp, 0x20
    /* 31DD4 800415D4 6AC0000C */  jal        func_800301A8
    /* 31DD8 800415D8 3000A627 */   addiu     $a2, $sp, 0x30
    /* 31DDC 800415DC 21580000 */  addu       $t3, $zero, $zero
    /* 31DE0 800415E0 0C000724 */  addiu      $a3, $zero, 0xC
    /* 31DE4 800415E4 50000824 */  addiu      $t0, $zero, 0x50
  .L800415E8:
    /* 31DE8 800415E8 801F023C */  lui        $v0, (0x1F800100 >> 16)
    /* 31DEC 800415EC 00014284 */  lh         $v0, (0x1F800100 & 0xFFFF)($v0)
    /* 31DF0 800415F0 00000000 */  nop
    /* 31DF4 800415F4 18004800 */  mult       $v0, $t0
    /* 31DF8 800415F8 12200000 */  mflo       $a0
    /* 31DFC 800415FC 02008104 */  bgez       $a0, .L80041608
.size func_80041570, . - func_80041570
