.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C6D4
    /* 4CED4 8005C6D4 0300422E */  sltiu      $v0, $s2, 0x3
    /* 4CED8 8005C6D8 EAFF4014 */  bnez       $v0, .L8005C684
    /* 4CEDC 8005C6DC 24001026 */   addiu     $s0, $s0, 0x24
    /* 4CEE0 8005C6E0 0C80043C */  lui        $a0, %hi(D_800BBE2C)
    /* 4CEE4 8005C6E4 2CBE8424 */  addiu      $a0, $a0, %lo(D_800BBE2C)
    /* 4CEE8 8005C6E8 00008290 */  lbu        $v0, 0x0($a0)
    /* 4CEEC 8005C6EC 00000000 */  nop
    /* 4CEF0 8005C6F0 02004230 */  andi       $v0, $v0, 0x2
    /* 4CEF4 8005C6F4 03004010 */  beqz       $v0, .L8005C704
    /* 4CEF8 8005C6F8 00000000 */   nop
    /* 4CEFC 8005C6FC 3F74010C */  jal        func_8005D0FC
    /* 4CF00 8005C700 00000000 */   nop
  glabel .L8005C704
    /* 4CF04 8005C704 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 4CF08 8005C708 2800B28F */  lw         $s2, 0x28($sp)
    /* 4CF0C 8005C70C 2400B18F */  lw         $s1, 0x24($sp)
    /* 4CF10 8005C710 2000B08F */  lw         $s0, 0x20($sp)
    /* 4CF14 8005C714 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 4CF18 8005C718 0800E003 */  jr         $ra
    /* 4CF1C 8005C71C 00000000 */   nop
  glabel func_8005C720
    /* 4CF20 8005C720 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4CF24 8005C724 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4CF28 8005C728 04008290 */  lbu        $v0, 0x4($a0)
    /* 4CF2C 8005C72C 00000000 */  nop
    /* 4CF30 8005C730 80100200 */  sll        $v0, $v0, 2
    /* 4CF34 8005C734 0980013C */  lui        $at, %hi(D_8008D7B4)
    /* 4CF38 8005C738 21082200 */  addu       $at, $at, $v0
    /* 4CF3C 8005C73C B4D7228C */  lw         $v0, %lo(D_8008D7B4)($at)
    /* 4CF40 8005C740 00000000 */  nop
    /* 4CF44 8005C744 09F84000 */  jalr       $v0
    /* 4CF48 8005C748 00000000 */   nop
    /* 4CF4C 8005C74C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4CF50 8005C750 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4CF54 8005C754 0800E003 */  jr         $ra
    /* 4CF58 8005C758 00000000 */   nop
    /* 4CF5C 8005C75C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4CF60 8005C760 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4CF64 8005C764 0F008290 */  lbu        $v0, 0xF($a0)
    /* 4CF68 8005C768 00000000 */  nop
    /* 4CF6C 8005C76C 36004014 */  bnez       $v0, .L8005C848
    /* 4CF70 8005C770 00000000 */   nop
    /* 4CF74 8005C774 0D008290 */  lbu        $v0, 0xD($a0)
    /* 4CF78 8005C778 0B80053C */  lui        $a1, %hi(Player_work)
    /* 4CF7C 8005C77C B051A524 */  addiu      $a1, $a1, %lo(Player_work)
    /* 4CF80 8005C780 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4CF84 8005C784 0200422C */  sltiu      $v0, $v0, 0x2
    /* 4CF88 8005C788 1C004010 */  beqz       $v0, .L8005C7FC
    /* 4CF8C 8005C78C 00000000 */   nop
    /* 4CF90 8005C790 18008294 */  lhu        $v0, 0x18($a0)
    /* 4CF94 8005C794 0C008390 */  lbu        $v1, 0xC($a0)
    /* 4CF98 8005C798 01004224 */  addiu      $v0, $v0, 0x1
    /* 4CF9C 8005C79C 06006010 */  beqz       $v1, .L8005C7B8
    /* 4CFA0 8005C7A0 180082A4 */   sh        $v0, 0x18($a0)
    /* 4CFA4 8005C7A4 0A008290 */  lbu        $v0, 0xA($a0)
    /* 4CFA8 8005C7A8 00000000 */  nop
    /* 4CFAC 8005C7AC 01004224 */  addiu      $v0, $v0, 0x1
    /* 4CFB0 8005C7B0 EF710108 */  j          .L8005C7BC
    /* 4CFB4 8005C7B4 0A0082A0 */   sb        $v0, 0xA($a0)
  .L8005C7B8:
    /* 4CFB8 8005C7B8 0A0080A0 */  sb         $zero, 0xA($a0)
  .L8005C7BC:
    /* 4CFBC 8005C7BC 1400A38C */  lw         $v1, 0x14($a1)
    /* 4CFC0 8005C7C0 2C00A28C */  lw         $v0, 0x2C($a1)
    /* 4CFC4 8005C7C4 00000000 */  nop
    /* 4CFC8 8005C7C8 0B006214 */  bne        $v1, $v0, .L8005C7F8
    /* 4CFCC 8005C7CC 00000000 */   nop
    /* 4CFD0 8005C7D0 1800A384 */  lh         $v1, 0x18($a1)
    /* 4CFD4 8005C7D4 3000A284 */  lh         $v0, 0x30($a1)
    /* 4CFD8 8005C7D8 00000000 */  nop
    /* 4CFDC 8005C7DC 06006214 */  bne        $v1, $v0, .L8005C7F8
.size func_8005C6D4, . - func_8005C6D4
