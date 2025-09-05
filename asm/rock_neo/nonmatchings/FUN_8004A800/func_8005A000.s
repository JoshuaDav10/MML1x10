.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A000
    /* 4A800 8005A000 03260200 */  sra        $a0, $v0, 24
    /* 4A804 8005A004 FFFFC224 */  addiu      $v0, $a2, -0x1
    /* 4A808 8005A008 2A108200 */  slt        $v0, $a0, $v0
    /* 4A80C 8005A00C 1B004010 */  beqz       $v0, .L8005A07C
    /* 4A810 8005A010 2118C000 */   addu      $v1, $a2, $zero
    /* 4A814 8005A014 21280000 */  addu       $a1, $zero, $zero
    /* 4A818 8005A018 2310C400 */  subu       $v0, $a2, $a0
    /* 4A81C 8005A01C 40180200 */  sll        $v1, $v0, 1
    /* 4A820 8005A020 6C00048E */  lw         $a0, 0x6C($s0)
    /* 4A824 8005A024 21186200 */  addu       $v1, $v1, $v0
    /* 4A828 8005A028 23208300 */  subu       $a0, $a0, $v1
    /* 4A82C 8005A02C 02008390 */  lbu        $v1, 0x2($a0)
    /* 4A830 8005A030 FFFFA230 */  andi       $v0, $a1, 0xFFFF
  .L8005A034:
    /* 4A834 8005A034 0980013C */  lui        $at, %hi(D_8008D028)
    /* 4A838 8005A038 21082200 */  addu       $at, $at, $v0
    /* 4A83C 8005A03C 28D02290 */  lbu        $v0, %lo(D_8008D028)($at)
    /* 4A840 8005A040 00000000 */  nop
    /* 4A844 8005A044 06006210 */  beq        $v1, $v0, .L8005A060
    /* 4A848 8005A048 00000000 */   nop
    /* 4A84C 8005A04C 0100A524 */  addiu      $a1, $a1, 0x1
    /* 4A850 8005A050 FFFFA230 */  andi       $v0, $a1, 0xFFFF
    /* 4A854 8005A054 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 4A858 8005A058 F6FF4014 */  bnez       $v0, .L8005A034
    /* 4A85C 8005A05C FFFFA230 */   andi      $v0, $a1, 0xFFFF
  .L8005A060:
    /* 4A860 8005A060 860005A6 */  sh         $a1, 0x86($s0)
    /* 4A864 8005A064 83000424 */  addiu      $a0, $zero, 0x83
  .L8005A068:
    /* 4A868 8005A068 01000524 */  addiu      $a1, $zero, 0x1
    /* 4A86C 8005A06C 0268000C */  jal        Sound_call
    /* 4A870 8005A070 21300000 */   addu      $a2, $zero, $zero
    /* 4A874 8005A074 81680108 */  j          .L8005A204
    /* 4A878 8005A078 00000000 */   nop
  .L8005A07C:
    /* 4A87C 8005A07C FEFF6224 */  addiu      $v0, $v1, -0x2
.size func_8005A000, . - func_8005A000
