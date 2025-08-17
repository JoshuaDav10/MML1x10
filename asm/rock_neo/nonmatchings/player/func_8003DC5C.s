.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003DC5C
    /* 2E45C 8003DC5C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2E460 8003DC60 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2E464 8003DC64 21808000 */  addu       $s0, $a0, $zero
    /* 2E468 8003DC68 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2E46C 8003DC6C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2E470 8003DC70 0A000392 */  lbu        $v1, 0xA($s0)
    /* 2E474 8003DC74 1C011196 */  lhu        $s1, 0x11C($s0)
    /* 2E478 8003DC78 0800622C */  sltiu      $v0, $v1, 0x8
    /* 2E47C 8003DC7C F4004010 */  beqz       $v0, .L8003E050
    /* 2E480 8003DC80 80100300 */   sll       $v0, $v1, 2
    /* 2E484 8003DC84 0180013C */  lui        $at, %hi(jtbl_80010BC4)
    /* 2E488 8003DC88 21082200 */  addu       $at, $at, $v0
    /* 2E48C 8003DC8C C40B228C */  lw         $v0, %lo(jtbl_80010BC4)($at)
    /* 2E490 8003DC90 00000000 */  nop
    /* 2E494 8003DC94 08004000 */  jr         $v0
    /* 2E498 8003DC98 00000000 */   nop
  glabel .L8003DC9C
    /* 2E49C 8003DC9C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E4A0 8003DCA0 740002A2 */  sb         $v0, 0x74($s0)
    /* 2E4A4 8003DCA4 4D0402A2 */  sb         $v0, 0x44D($s0)
    /* 2E4A8 8003DCA8 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2E4AC 8003DCAC AC000492 */  lbu        $a0, 0xAC($s0)
    /* 2E4B0 8003DCB0 6B010392 */  lbu        $v1, 0x16B($s0)
    /* 2E4B4 8003DCB4 02004224 */  addiu      $v0, $v0, 0x2
    /* 2E4B8 8003DCB8 01006330 */  andi       $v1, $v1, 0x1
    /* 2E4BC 8003DCBC 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 2E4C0 8003DCC0 03006010 */  beqz       $v1, .L8003DCD0
    /* 2E4C4 8003DCC4 AD0004A2 */   sb        $a0, 0xAD($s0)
    /* 2E4C8 8003DCC8 35F70008 */  j          .L8003DCD4
    /* 2E4CC 8003DCCC E0FC0224 */   addiu     $v0, $zero, -0x320
  .L8003DCD0:
    /* 2E4D0 8003DCD0 40FE0224 */  addiu      $v0, $zero, -0x1C0
  .L8003DCD4:
    /* 2E4D4 8003DCD4 460002A6 */  sh         $v0, 0x46($s0)
    /* 2E4D8 8003DCD8 12010282 */  lb         $v0, 0x112($s0)
    /* 2E4DC 8003DCDC 00000000 */  nop
    /* 2E4E0 8003DCE0 C0100200 */  sll        $v0, $v0, 3
    /* 2E4E4 8003DCE4 21100202 */  addu       $v0, $s0, $v0
    /* 2E4E8 8003DCE8 48014294 */  lhu        $v0, 0x148($v0)
    /* 2E4EC 8003DCEC 00000000 */  nop
    /* 2E4F0 8003DCF0 24105100 */  and        $v0, $v0, $s1
    /* 2E4F4 8003DCF4 02004014 */  bnez       $v0, .L8003DD00
    /* 2E4F8 8003DCF8 00000000 */   nop
    /* 2E4FC 8003DCFC 480000A6 */  sh         $zero, 0x48($s0)
  .L8003DD00:
    /* 2E500 8003DD00 F208010C */  jal        Pl00_shot_enable_on
    /* 2E504 8003DD04 21200002 */   addu      $a0, $s0, $zero
    /* 2E508 8003DD08 21200002 */  addu       $a0, $s0, $zero
    /* 2E50C 8003DD0C 14000524 */  addiu      $a1, $zero, 0x14
    /* 2E510 8003DD10 21300000 */  addu       $a2, $zero, $zero
    /* 2E514 8003DD14 7707010C */  jal        func_80041DDC
    /* 2E518 8003DD18 01000724 */   addiu     $a3, $zero, 0x1
    /* 2E51C 8003DD1C 12010582 */  lb         $a1, 0x112($s0)
    /* 2E520 8003DD20 1AF8000C */  jal        func_8003E068
    /* 2E524 8003DD24 21200002 */   addu      $a0, $s0, $zero
    /* 2E528 8003DD28 92000424 */  addiu      $a0, $zero, 0x92
    /* 2E52C 8003DD2C 21280000 */  addu       $a1, $zero, $zero
    /* 2E530 8003DD30 0268000C */  jal        Sound_call
    /* 2E534 8003DD34 21300000 */   addu      $a2, $zero, $zero
    /* 2E538 8003DD38 14F80008 */  j          .L8003E050
    /* 2E53C 8003DD3C 00000000 */   nop
  glabel .L8003DD40
    /* 2E540 8003DD40 12010582 */  lb         $a1, 0x112($s0)
    /* 2E544 8003DD44 1AF8000C */  jal        func_8003E068
    /* 2E548 8003DD48 21200002 */   addu      $a0, $s0, $zero
    /* 2E54C 8003DD4C 38010296 */  lhu        $v0, 0x138($s0)
    /* 2E550 8003DD50 00000000 */  nop
    /* 2E554 8003DD54 24105100 */  and        $v0, $v0, $s1
    /* 2E558 8003DD58 99004010 */  beqz       $v0, .L8003DFC0
    /* 2E55C 8003DD5C 00000000 */   nop
    /* 2E560 8003DD60 46000296 */  lhu        $v0, 0x46($s0)
    /* 2E564 8003DD64 00000000 */  nop
    /* 2E568 8003DD68 30004224 */  addiu      $v0, $v0, 0x30
    /* 2E56C 8003DD6C 460002A6 */  sh         $v0, 0x46($s0)
    /* 2E570 8003DD70 00140200 */  sll        $v0, $v0, 16
    /* 2E574 8003DD74 B6004004 */  bltz       $v0, .L8003E050
    /* 2E578 8003DD78 21200002 */   addu      $a0, $s0, $zero
    /* 2E57C 8003DD7C 15000524 */  addiu      $a1, $zero, 0x15
    /* 2E580 8003DD80 21300000 */  addu       $a2, $zero, $zero
    /* 2E584 8003DD84 7707010C */  jal        func_80041DDC
    /* 2E588 8003DD88 01000724 */   addiu     $a3, $zero, 0x1
    /* 2E58C 8003DD8C 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2E590 8003DD90 00000000 */  nop
    /* 2E594 8003DD94 03004224 */  addiu      $v0, $v0, 0x3
    /* 2E598 8003DD98 14F80008 */  j          .L8003E050
    /* 2E59C 8003DD9C 0A0002A2 */   sb        $v0, 0xA($s0)
  glabel .L8003DDA0
    /* 2E5A0 8003DDA0 12010582 */  lb         $a1, 0x112($s0)
    /* 2E5A4 8003DDA4 1AF8000C */  jal        func_8003E068
    /* 2E5A8 8003DDA8 21200002 */   addu      $a0, $s0, $zero
    /* 2E5AC 8003DDAC 46000286 */  lh         $v0, 0x46($s0)
    /* 2E5B0 8003DDB0 00000000 */  nop
    /* 2E5B4 8003DDB4 21184000 */  addu       $v1, $v0, $zero
    /* 2E5B8 8003DDB8 23100200 */  negu       $v0, $v0
    /* 2E5BC 8003DDBC 41024228 */  slti       $v0, $v0, 0x241
    /* 2E5C0 8003DDC0 04004014 */  bnez       $v0, .L8003DDD4
    /* 2E5C4 8003DDC4 21200002 */   addu      $a0, $s0, $zero
    /* 2E5C8 8003DDC8 40026224 */  addiu      $v0, $v1, 0x240
    /* 2E5CC 8003DDCC 14F80008 */  j          .L8003E050
    /* 2E5D0 8003DDD0 460002A6 */   sh        $v0, 0x46($s0)
  .L8003DDD4:
    /* 2E5D4 8003DDD4 15000524 */  addiu      $a1, $zero, 0x15
    /* 2E5D8 8003DDD8 21300000 */  addu       $a2, $zero, $zero
    /* 2E5DC 8003DDDC 7707010C */  jal        func_80041DDC
    /* 2E5E0 8003DDE0 01000724 */   addiu     $a3, $zero, 0x1
    /* 2E5E4 8003DDE4 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2E5E8 8003DDE8 460000A6 */  sh         $zero, 0x46($s0)
    /* 2E5EC 8003DDEC 02004224 */  addiu      $v0, $v0, 0x2
    /* 2E5F0 8003DDF0 14F80008 */  j          .L8003E050
    /* 2E5F4 8003DDF4 0A0002A2 */   sb        $v0, 0xA($s0)
  glabel .L8003DDF8
    /* 2E5F8 8003DDF8 21200002 */  addu       $a0, $s0, $zero
    /* 2E5FC 8003DDFC 12000524 */  addiu      $a1, $zero, 0x12
    /* 2E600 8003DE00 21300000 */  addu       $a2, $zero, $zero
    /* 2E604 8003DE04 7707010C */  jal        func_80041DDC
    /* 2E608 8003DE08 01000724 */   addiu     $a3, $zero, 0x1
    /* 2E60C 8003DE0C 0A000292 */  lbu        $v0, 0xA($s0)
    /* 2E610 8003DE10 00020324 */  addiu      $v1, $zero, 0x200
    /* 2E614 8003DE14 440003A6 */  sh         $v1, 0x44($s0)
    /* 2E618 8003DE18 01004224 */  addiu      $v0, $v0, 0x1
    /* 2E61C 8003DE1C 0A0002A2 */  sb         $v0, 0xA($s0)
  glabel .L8003DE20
    /* 2E620 8003DE20 12010582 */  lb         $a1, 0x112($s0)
    /* 2E624 8003DE24 1AF8000C */  jal        func_8003E068
    /* 2E628 8003DE28 21200002 */   addu      $a0, $s0, $zero
    /* 2E62C 8003DE2C 46000296 */  lhu        $v0, 0x46($s0)
    /* 2E630 8003DE30 00000000 */  nop
    /* 2E634 8003DE34 30004224 */  addiu      $v0, $v0, 0x30
    /* 2E638 8003DE38 14F80008 */  j          .L8003E050
    /* 2E63C 8003DE3C 460002A6 */   sh        $v0, 0x46($s0)
  glabel .L8003DE40
    /* 2E640 8003DE40 A7000382 */  lb         $v1, 0xA7($s0)
    /* 2E644 8003DE44 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 2E648 8003DE48 81006214 */  bne        $v1, $v0, .L8003E050
    /* 2E64C 8003DE4C 00000000 */   nop
    /* 2E650 8003DE50 E808010C */  jal        Pl00_shot_enable_off
    /* 2E654 8003DE54 21200002 */   addu      $a0, $s0, $zero
    /* 2E658 8003DE58 12010382 */  lb         $v1, 0x112($s0)
    /* 2E65C 8003DE5C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E660 8003DE60 2E006210 */  beq        $v1, $v0, .L8003DF1C
    /* 2E664 8003DE64 02006228 */   slti      $v0, $v1, 0x2
    /* 2E668 8003DE68 05004010 */  beqz       $v0, .L8003DE80
    /* 2E66C 8003DE6C 00000000 */   nop
    /* 2E670 8003DE70 0A006010 */  beqz       $v1, .L8003DE9C
    /* 2E674 8003DE74 21200002 */   addu      $a0, $s0, $zero
    /* 2E678 8003DE78 F5F70008 */  j          .L8003DFD4
    /* 2E67C 8003DE7C 00000000 */   nop
  .L8003DE80:
    /* 2E680 8003DE80 02000224 */  addiu      $v0, $zero, 0x2
    /* 2E684 8003DE84 32006210 */  beq        $v1, $v0, .L8003DF50
    /* 2E688 8003DE88 03000224 */   addiu     $v0, $zero, 0x3
    /* 2E68C 8003DE8C 3D006210 */  beq        $v1, $v0, .L8003DF84
    /* 2E690 8003DE90 21200002 */   addu      $a0, $s0, $zero
    /* 2E694 8003DE94 F5F70008 */  j          .L8003DFD4
    /* 2E698 8003DE98 00000000 */   nop
  .L8003DE9C:
    /* 2E69C 8003DE9C 34010296 */  lhu        $v0, 0x134($s0)
    /* 2E6A0 8003DEA0 00000000 */  nop
    /* 2E6A4 8003DEA4 24105100 */  and        $v0, $v0, $s1
    /* 2E6A8 8003DEA8 08004014 */  bnez       $v0, .L8003DECC
    /* 2E6AC 8003DEAC 00000000 */   nop
    /* 2E6B0 8003DEB0 24010296 */  lhu        $v0, 0x124($s0)
    /* 2E6B4 8003DEB4 00000000 */  nop
    /* 2E6B8 8003DEB8 24105100 */  and        $v0, $v0, $s1
    /* 2E6BC 8003DEBC 45004014 */  bnez       $v0, .L8003DFD4
    /* 2E6C0 8003DEC0 21200002 */   addu      $a0, $s0, $zero
    /* 2E6C4 8003DEC4 EDF70008 */  j          .L8003DFB4
    /* 2E6C8 8003DEC8 2A000524 */   addiu     $a1, $zero, 0x2A
  .L8003DECC:
    /* 2E6CC 8003DECC 4A040292 */  lbu        $v0, 0x44A($s0)
    /* 2E6D0 8003DED0 00000000 */  nop
    /* 2E6D4 8003DED4 1100422C */  sltiu      $v0, $v0, 0x11
    /* 2E6D8 8003DED8 0E004014 */  bnez       $v0, .L8003DF14
    /* 2E6DC 8003DEDC 21200002 */   addu      $a0, $s0, $zero
    /* 2E6E0 8003DEE0 3B000524 */  addiu      $a1, $zero, 0x3B
    /* 2E6E4 8003DEE4 21300000 */  addu       $a2, $zero, $zero
    /* 2E6E8 8003DEE8 21380000 */  addu       $a3, $zero, $zero
    /* 2E6EC 8003DEEC 03000224 */  addiu      $v0, $zero, 0x3
    /* 2E6F0 8003DEF0 090082A0 */  sb         $v0, 0x9($a0)
    /* 2E6F4 8003DEF4 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E6F8 8003DEF8 0A0082A4 */  sh         $v0, 0xA($a0)
    /* 2E6FC 8003DEFC 00030224 */  addiu      $v0, $zero, 0x300
    /* 2E700 8003DF00 440082A4 */  sh         $v0, 0x44($a0)
    /* 2E704 8003DF04 7707010C */  jal        func_80041DDC
    /* 2E708 8003DF08 480080A4 */   sh        $zero, 0x48($a0)
    /* 2E70C 8003DF0C 14F80008 */  j          .L8003E050
    /* 2E710 8003DF10 00000000 */   nop
  .L8003DF14:
    /* 2E714 8003DF14 EDF70008 */  j          .L8003DFB4
    /* 2E718 8003DF18 2A000524 */   addiu     $a1, $zero, 0x2A
  .L8003DF1C:
    /* 2E71C 8003DF1C 34010296 */  lhu        $v0, 0x134($s0)
    /* 2E720 8003DF20 00000000 */  nop
    /* 2E724 8003DF24 24105100 */  and        $v0, $v0, $s1
    /* 2E728 8003DF28 07004014 */  bnez       $v0, .L8003DF48
    /* 2E72C 8003DF2C 21200002 */   addu      $a0, $s0, $zero
    /* 2E730 8003DF30 2C010296 */  lhu        $v0, 0x12C($s0)
    /* 2E734 8003DF34 00000000 */  nop
    /* 2E738 8003DF38 24105100 */  and        $v0, $v0, $s1
    /* 2E73C 8003DF3C 26004014 */  bnez       $v0, .L8003DFD8
    /* 2E740 8003DF40 17000524 */   addiu     $a1, $zero, 0x17
    /* 2E744 8003DF44 21200002 */  addu       $a0, $s0, $zero
  .L8003DF48:
    /* 2E748 8003DF48 EDF70008 */  j          .L8003DFB4
    /* 2E74C 8003DF4C 2B000524 */   addiu     $a1, $zero, 0x2B
  .L8003DF50:
    /* 2E750 8003DF50 34010296 */  lhu        $v0, 0x134($s0)
    /* 2E754 8003DF54 00000000 */  nop
    /* 2E758 8003DF58 24105100 */  and        $v0, $v0, $s1
    /* 2E75C 8003DF5C 07004014 */  bnez       $v0, .L8003DF7C
    /* 2E760 8003DF60 21200002 */   addu      $a0, $s0, $zero
    /* 2E764 8003DF64 26010296 */  lhu        $v0, 0x126($s0)
    /* 2E768 8003DF68 00000000 */  nop
    /* 2E76C 8003DF6C 24105100 */  and        $v0, $v0, $s1
    /* 2E770 8003DF70 19004014 */  bnez       $v0, .L8003DFD8
    /* 2E774 8003DF74 17000524 */   addiu     $a1, $zero, 0x17
    /* 2E778 8003DF78 21200002 */  addu       $a0, $s0, $zero
  .L8003DF7C:
    /* 2E77C 8003DF7C EDF70008 */  j          .L8003DFB4
    /* 2E780 8003DF80 2D000524 */   addiu     $a1, $zero, 0x2D
  .L8003DF84:
    /* 2E784 8003DF84 34010296 */  lhu        $v0, 0x134($s0)
    /* 2E788 8003DF88 00000000 */  nop
    /* 2E78C 8003DF8C 24105100 */  and        $v0, $v0, $s1
    /* 2E790 8003DF90 07004014 */  bnez       $v0, .L8003DFB0
    /* 2E794 8003DF94 00000000 */   nop
    /* 2E798 8003DF98 2E010296 */  lhu        $v0, 0x12E($s0)
    /* 2E79C 8003DF9C 00000000 */  nop
    /* 2E7A0 8003DFA0 24105100 */  and        $v0, $v0, $s1
    /* 2E7A4 8003DFA4 0C004014 */  bnez       $v0, .L8003DFD8
.size func_8003DC5C, . - func_8003DC5C
