.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060680
    /* 50E80 80060680 CD000424 */  addiu      $a0, $zero, 0xCD
    /* 50E84 80060684 01000292 */  lbu        $v0, 0x1($s0)
    /* 50E88 80060688 DD810108 */  j          .L80060774
    /* 50E8C 8006068C 050000A2 */   sb        $zero, 0x5($s0)
  glabel .L80060690
    /* 50E90 80060690 0E76000C */  jal        Cd_read_sync2
    /* 50E94 80060694 00000000 */   nop
    /* 50E98 80060698 11014014 */  bnez       $v0, .L80060AE0
    /* 50E9C 8006069C 21100000 */   addu      $v0, $zero, $zero
    /* 50EA0 800606A0 EB75000C */  jal        func_8001D7AC
    /* 50EA4 800606A4 16000424 */   addiu     $a0, $zero, 0x16
    /* 50EA8 800606A8 70012282 */  lb         $v0, 0x170($s1)
    /* 50EAC 800606AC 00000000 */  nop
    /* 50EB0 800606B0 05004010 */  beqz       $v0, .L800606C8
    /* 50EB4 800606B4 21200000 */   addu      $a0, $zero, $zero
    /* 50EB8 800606B8 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 50EBC 800606BC 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 50EC0 800606C0 B5810108 */  j          .L800606D4
    /* 50EC4 800606C4 5C000624 */   addiu     $a2, $zero, 0x5C
  .L800606C8:
    /* 50EC8 800606C8 1F80053C */  lui        $a1, (0x801F2000 >> 16)
    /* 50ECC 800606CC 0020A534 */  ori        $a1, $a1, (0x801F2000 & 0xFFFF)
    /* 50ED0 800606D0 5D000624 */  addiu      $a2, $zero, 0x5D
  .L800606D4:
    /* 50ED4 800606D4 0B4E010C */  jal        MojiTaskExec
    /* 50ED8 800606D8 00000000 */   nop
    /* 50EDC 800606DC 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 50EE0 800606E0 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 50EE4 800606E4 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* 50EE8 800606E8 24104300 */  and        $v0, $v0, $v1
    /* 50EEC 800606EC 1E004014 */  bnez       $v0, .L80060768
.size func_80060680, . - func_80060680
