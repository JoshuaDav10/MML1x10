.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060B80
    /* 51380 80060B80 16000424 */  addiu      $a0, $zero, 0x16
    /* 51384 80060B84 21200000 */  addu       $a0, $zero, $zero
    /* 51388 80060B88 0980053C */  lui        $a1, %hi(D_8008CB64)
    /* 5138C 80060B8C 64CBA58C */  lw         $a1, %lo(D_8008CB64)($a1)
    /* 51390 80060B90 0B4E010C */  jal        MojiTaskExec
    /* 51394 80060B94 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 51398 80060B98 08830108 */  j          .L80060C20
    /* 5139C 80060B9C 00000000 */   nop
  .L80060BA0:
    /* 513A0 80060BA0 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 513A4 80060BA4 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 513A8 80060BA8 0040033C */  lui        $v1, (0x40000000 >> 16)
    /* 513AC 80060BAC 24104300 */  and        $v0, $v0, $v1
    /* 513B0 80060BB0 07004014 */  bnez       $v0, .L80060BD0
    /* 513B4 80060BB4 00000000 */   nop
    /* 513B8 80060BB8 0C80023C */  lui        $v0, %hi(D_800C0C2A)
    /* 513BC 80060BBC 2A0C4294 */  lhu        $v0, %lo(D_800C0C2A)($v0)
    /* 513C0 80060BC0 00000000 */  nop
    /* 513C4 80060BC4 08004230 */  andi       $v0, $v0, 0x8
    /* 513C8 80060BC8 1A004010 */  beqz       $v0, .L80060C34
    /* 513CC 80060BCC 00000000 */   nop
  .L80060BD0:
    /* 513D0 80060BD0 0C80023C */  lui        $v0, %hi(D_800C0C2A)
    /* 513D4 80060BD4 2A0C4294 */  lhu        $v0, %lo(D_800C0C2A)($v0)
    /* 513D8 80060BD8 00000000 */  nop
    /* 513DC 80060BDC 08004230 */  andi       $v0, $v0, 0x8
    /* 513E0 80060BE0 04004010 */  beqz       $v0, .L80060BF4
    /* 513E4 80060BE4 83000424 */   addiu     $a0, $zero, 0x83
    /* 513E8 80060BE8 01000524 */  addiu      $a1, $zero, 0x1
    /* 513EC 80060BEC 0268000C */  jal        Sound_call
    /* 513F0 80060BF0 21300000 */   addu      $a2, $zero, $zero
  .L80060BF4:
    /* 513F4 80060BF4 8C4E010C */  jal        MojiTaskKill
    /* 513F8 80060BF8 00000000 */   nop
    /* 513FC 80060BFC 0C80053C */  lui        $a1, (0x800C0000 >> 16)
.size func_80060B80, . - func_80060B80
