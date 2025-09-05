.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005FBDC
    /* 503DC 8005FBDC 80100300 */  sll        $v0, $v1, 2
    /* 503E0 8005FBE0 0180013C */  lui        $at, %hi(jtbl_800112CC)
    /* 503E4 8005FBE4 21082200 */  addu       $at, $at, $v0
    /* 503E8 8005FBE8 CC12228C */  lw         $v0, %lo(jtbl_800112CC)($at)
    /* 503EC 8005FBEC 00000000 */  nop
    /* 503F0 8005FBF0 08004000 */  jr         $v0
    /* 503F4 8005FBF4 00000000 */   nop
  glabel .L8005FBF8
    /* 503F8 8005FBF8 04000292 */  lbu        $v0, 0x4($s0)
    /* 503FC 8005FBFC 0980013C */  lui        $at, %hi(D_8008DAF4)
    /* 50400 8005FC00 21082200 */  addu       $at, $at, $v0
    /* 50404 8005FC04 F4DA2490 */  lbu        $a0, %lo(D_8008DAF4)($at)
    /* 50408 8005FC08 9676000C */  jal        Sce_flag_test
    /* 5040C 8005FC0C 20058424 */   addiu     $a0, $a0, 0x520
    /* 50410 8005FC10 0B004010 */  beqz       $v0, .L8005FC40
    /* 50414 8005FC14 82000424 */   addiu     $a0, $zero, 0x82
    /* 50418 8005FC18 01000524 */  addiu      $a1, $zero, 0x1
    /* 5041C 8005FC1C 0268000C */  jal        Sound_call
    /* 50420 8005FC20 21300000 */   addu      $a2, $zero, $zero
    /* 50424 8005FC24 21200000 */  addu       $a0, $zero, $zero
    /* 50428 8005FC28 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 5042C 8005FC2C 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 50430 8005FC30 0B4E010C */  jal        MojiTaskExec
    /* 50434 8005FC34 4C000624 */   addiu     $a2, $zero, 0x4C
    /* 50438 8005FC38 567F0108 */  j          .L8005FD58
    /* 5043C 8005FC3C 00000000 */   nop
  .L8005FC40:
    /* 50440 8005FC40 83000424 */  addiu      $a0, $zero, 0x83
.size func_8005FBDC, . - func_8005FBDC
