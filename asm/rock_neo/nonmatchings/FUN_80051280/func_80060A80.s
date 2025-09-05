.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80060A80
    /* 51280 80060A80 0D004014 */  bnez       $v0, .L80060AB8
    /* 51284 80060A84 21200002 */   addu      $a0, $s0, $zero
    /* 51288 80060A88 AB820108 */  j          .L80060AAC
    /* 5128C 80060A8C 03000224 */   addiu     $v0, $zero, 0x3
  glabel .L80060A90
    /* 51290 80060A90 0A80023C */  lui        $v0, %hi(Moji_flag)
    /* 51294 80060A94 588A428C */  lw         $v0, %lo(Moji_flag)($v0)
    /* 51298 80060A98 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* 5129C 80060A9C 24104300 */  and        $v0, $v0, $v1
    /* 512A0 80060AA0 05004014 */  bnez       $v0, .L80060AB8
    /* 512A4 80060AA4 21200002 */   addu      $a0, $s0, $zero
    /* 512A8 80060AA8 01000224 */  addiu      $v0, $zero, 0x1
  .L80060AAC:
    /* 512AC 80060AAC 010002A2 */  sb         $v0, 0x1($s0)
    /* 512B0 80060AB0 020000A2 */  sb         $zero, 0x2($s0)
  .L80060AB4:
    /* 512B4 80060AB4 21200002 */  addu       $a0, $s0, $zero
  .L80060AB8:
    /* 512B8 80060AB8 A980010C */  jal        func_800602A4
    /* 512BC 80060ABC 01000524 */   addiu     $a1, $zero, 0x1
    /* 512C0 80060AC0 B8820108 */  j          .L80060AE0
    /* 512C4 80060AC4 21100000 */   addu      $v0, $zero, $zero
  glabel .L80060AC8
    /* 512C8 80060AC8 0E76000C */  jal        Cd_read_sync2
    /* 512CC 80060ACC 00000000 */   nop
    /* 512D0 80060AD0 03004014 */  bnez       $v0, .L80060AE0
    /* 512D4 80060AD4 21100000 */   addu      $v0, $zero, $zero
    /* 512D8 80060AD8 000000AE */  sw         $zero, 0x0($s0)
  .L80060ADC:
    /* 512DC 80060ADC 21100000 */  addu       $v0, $zero, $zero
  .L80060AE0:
    /* 512E0 80060AE0 2000BF8F */  lw         $ra, 0x20($sp)
    /* 512E4 80060AE4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 512E8 80060AE8 1800B28F */  lw         $s2, 0x18($sp)
    /* 512EC 80060AEC 1400B18F */  lw         $s1, 0x14($sp)
    /* 512F0 80060AF0 1000B08F */  lw         $s0, 0x10($sp)
    /* 512F4 80060AF4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 512F8 80060AF8 0800E003 */  jr         $ra
    /* 512FC 80060AFC 00000000 */   nop
.size func_80060A80, . - func_80060A80
