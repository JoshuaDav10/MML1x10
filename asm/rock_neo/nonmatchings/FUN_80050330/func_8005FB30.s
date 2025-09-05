.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005FB30
    /* 50330 8005FB30 82000424 */  addiu      $a0, $zero, 0x82
    /* 50334 8005FB34 01000524 */  addiu      $a1, $zero, 0x1
    /* 50338 8005FB38 0268000C */  jal        Sound_call
    /* 5033C 8005FB3C 21300000 */   addu      $a2, $zero, $zero
    /* 50340 8005FB40 21200000 */  addu       $a0, $zero, $zero
    /* 50344 8005FB44 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 50348 8005FB48 05000692 */  lbu        $a2, 0x5($s0)
    /* 5034C 8005FB4C 0B4E010C */  jal        MojiTaskExec
    /* 50350 8005FB50 0020A534 */   ori       $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 50354 8005FB54 DB7E0108 */  j          .L8005FB6C
    /* 50358 8005FB58 00000000 */   nop
  .L8005FB5C:
    /* 5035C 8005FB5C 83000424 */  addiu      $a0, $zero, 0x83
    /* 50360 8005FB60 01000524 */  addiu      $a1, $zero, 0x1
    /* 50364 8005FB64 0268000C */  jal        Sound_call
    /* 50368 8005FB68 21300000 */   addu      $a2, $zero, $zero
  .L8005FB6C:
    /* 5036C 8005FB6C 02000292 */  lbu        $v0, 0x2($s0)
    /* 50370 8005FB70 00000000 */  nop
    /* 50374 8005FB74 01004224 */  addiu      $v0, $v0, 0x1
    /* 50378 8005FB78 E87E0108 */  j          .L8005FBA0
    /* 5037C 8005FB7C 020002A2 */   sb        $v0, 0x2($s0)
  .L8005FB80:
    /* 50380 8005FB80 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 50384 8005FB84 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 50388 8005FB88 00000000 */  nop
    /* 5038C 8005FB8C 24104300 */  and        $v0, $v0, $v1
    /* 50390 8005FB90 03004014 */  bnez       $v0, .L8005FBA0
    /* 50394 8005FB94 02000224 */   addiu     $v0, $zero, 0x2
    /* 50398 8005FB98 010002A2 */  sb         $v0, 0x1($s0)
    /* 5039C 8005FB9C 020000A2 */  sb         $zero, 0x2($s0)
  .L8005FBA0:
    /* 503A0 8005FBA0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 503A4 8005FBA4 1000B08F */  lw         $s0, 0x10($sp)
    /* 503A8 8005FBA8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 503AC 8005FBAC 0800E003 */  jr         $ra
.size func_8005FB30, . - func_8005FB30
