.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A700
    /* 4AF00 8005A700 0B4E010C */  jal        MojiTaskExec
    /* 4AF04 8005A704 00000000 */   nop
    /* 4AF08 8005A708 E5690108 */  j          .L8005A794
    /* 4AF0C 8005A70C FF000224 */   addiu     $v0, $zero, 0xFF
  .L8005A710:
    /* 4AF10 8005A710 BA000296 */  lhu        $v0, 0xBA($s0)
    /* 4AF14 8005A714 00000000 */  nop
    /* 4AF18 8005A718 00404230 */  andi       $v0, $v0, 0x4000
    /* 4AF1C 8005A71C 27004010 */  beqz       $v0, .L8005A7BC
    /* 4AF20 8005A720 82000424 */   addiu     $a0, $zero, 0x82
    /* 4AF24 8005A724 01000524 */  addiu      $a1, $zero, 0x1
    /* 4AF28 8005A728 0268000C */  jal        Sound_call
    /* 4AF2C 8005A72C 21300000 */   addu      $a2, $zero, $zero
    /* 4AF30 8005A730 ED0F8593 */  lbu        $a1, %gp_rel(D_80098851)($gp)
    /* 4AF34 8005A734 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 4AF38 8005A738 1900A210 */  beq        $a1, $v0, .L8005A7A0
    /* 4AF3C 8005A73C 00000000 */   nop
    /* 4AF40 8005A740 71000282 */  lb         $v0, 0x71($s0)
    /* 4AF44 8005A744 38118393 */  lbu        $v1, %gp_rel(D_8009899C)($gp)
    /* 4AF48 8005A748 0B80043C */  lui        $a0, %hi(Player_work + 0x454)
    /* 4AF4C 8005A74C 04568424 */  addiu      $a0, $a0, %lo(Player_work + 0x454)
    /* 4AF50 8005A750 21104300 */  addu       $v0, $v0, $v1
    /* 4AF54 8005A754 21104400 */  addu       $v0, $v0, $a0
    /* 4AF58 8005A758 0B80013C */  lui        $at, %hi(Player_work + 0x454)
    /* 4AF5C 8005A75C 21082500 */  addu       $at, $at, $a1
    /* 4AF60 8005A760 04562390 */  lbu        $v1, %lo(Player_work + 0x454)($at)
    /* 4AF64 8005A764 00004490 */  lbu        $a0, 0x0($v0)
    /* 4AF68 8005A768 000043A0 */  sb         $v1, 0x0($v0)
    /* 4AF6C 8005A76C ED0F8293 */  lbu        $v0, %gp_rel(D_80098851)($gp)
    /* 4AF70 8005A770 0B80013C */  lui        $at, %hi(Player_work + 0x454)
    /* 4AF74 8005A774 21082200 */  addu       $at, $at, $v0
    /* 4AF78 8005A778 045624A0 */  sb         $a0, %lo(Player_work + 0x454)($at)
    /* 4AF7C 8005A77C C884010C */  jal        Sub_screen_rb_parts_set
.size func_8005A700, . - func_8005A700
