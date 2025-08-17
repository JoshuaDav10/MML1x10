.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80047DD8
    /* 385D8 80047DD8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 385DC 80047DDC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 385E0 80047DE0 21908000 */  addu       $s2, $a0, $zero
    /* 385E4 80047DE4 2400BFAF */  sw         $ra, 0x24($sp)
    /* 385E8 80047DE8 2000B4AF */  sw         $s4, 0x20($sp)
    /* 385EC 80047DEC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 385F0 80047DF0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 385F4 80047DF4 AA20010C */  jal        func_800482A8
    /* 385F8 80047DF8 1000B0AF */   sw        $s0, 0x10($sp)
    /* 385FC 80047DFC 0B80133C */  lui        $s3, %hi(Player_work)
    /* 38600 80047E00 B0517326 */  addiu      $s3, $s3, %lo(Player_work)
    /* 38604 80047E04 FF004230 */  andi       $v0, $v0, 0xFF
    /* 38608 80047E08 26004014 */  bnez       $v0, .L80047EA4
    /* 3860C 80047E0C 28005426 */   addiu     $s4, $s2, 0x28
    /* 38610 80047E10 06004292 */  lbu        $v0, 0x6($s2)
    /* 38614 80047E14 21880000 */  addu       $s1, $zero, $zero
    /* 38618 80047E18 20004234 */  ori        $v0, $v0, 0x20
    /* 3861C 80047E1C 060042A2 */  sb         $v0, 0x6($s2)
  .L80047E20:
    /* 38620 80047E20 FF002232 */  andi       $v0, $s1, 0xFF
    /* 38624 80047E24 40100200 */  sll        $v0, $v0, 1
    /* 38628 80047E28 21805400 */  addu       $s0, $v0, $s4
    /* 3862C 80047E2C FF002232 */  andi       $v0, $s1, 0xFF
    /* 38630 80047E30 100002A6 */  sh         $v0, 0x10($s0)
    /* 38634 80047E34 03004292 */  lbu        $v0, 0x3($s2)
    /* 38638 80047E38 00000000 */  nop
    /* 3863C 80047E3C 07004010 */  beqz       $v0, .L80047E5C
    /* 38640 80047E40 00000000 */   nop
    /* 38644 80047E44 94FF010C */  jal        rand
    /* 38648 80047E48 00000000 */   nop
    /* 3864C 80047E4C 56006396 */  lhu        $v1, 0x56($s3)
    /* 38650 80047E50 FF004230 */  andi       $v0, $v0, 0xFF
    /* 38654 80047E54 9C1F0108 */  j          .L80047E70
    /* 38658 80047E58 80006324 */   addiu     $v1, $v1, 0x80
  .L80047E5C:
    /* 3865C 80047E5C 94FF010C */  jal        rand
    /* 38660 80047E60 00000000 */   nop
    /* 38664 80047E64 56006396 */  lhu        $v1, 0x56($s3)
    /* 38668 80047E68 FF004230 */  andi       $v0, $v0, 0xFF
    /* 3866C 80047E6C 00FF6324 */  addiu      $v1, $v1, -0x100
  .L80047E70:
    /* 38670 80047E70 21186200 */  addu       $v1, $v1, $v0
    /* 38674 80047E74 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* 38678 80047E78 01003126 */  addiu      $s1, $s1, 0x1
    /* 3867C 80047E7C FF002232 */  andi       $v0, $s1, 0xFF
    /* 38680 80047E80 0800422C */  sltiu      $v0, $v0, 0x8
    /* 38684 80047E84 E6FF4014 */  bnez       $v0, .L80047E20
    /* 38688 80047E88 000003A6 */   sh        $v1, 0x0($s0)
    /* 3868C 80047E8C 8D000424 */  addiu      $a0, $zero, 0x8D
    /* 38690 80047E90 21280000 */  addu       $a1, $zero, $zero
    /* 38694 80047E94 0268000C */  jal        Sound_call
    /* 38698 80047E98 21300000 */   addu      $a2, $zero, $zero
    /* 3869C 80047E9C 01000224 */  addiu      $v0, $zero, 0x1
    /* 386A0 80047EA0 080042A2 */  sb         $v0, 0x8($s2)
  .L80047EA4:
    /* 386A4 80047EA4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 386A8 80047EA8 2000B48F */  lw         $s4, 0x20($sp)
    /* 386AC 80047EAC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 386B0 80047EB0 1800B28F */  lw         $s2, 0x18($sp)
    /* 386B4 80047EB4 1400B18F */  lw         $s1, 0x14($sp)
    /* 386B8 80047EB8 1000B08F */  lw         $s0, 0x10($sp)
    /* 386BC 80047EBC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 386C0 80047EC0 0800E003 */  jr         $ra
    /* 386C4 80047EC4 00000000 */   nop
.size func_80047DD8, . - func_80047DD8
