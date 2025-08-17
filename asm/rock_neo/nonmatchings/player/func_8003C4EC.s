.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003C4EC
    /* 2CCEC 8003C4EC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2CCF0 8003C4F0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2CCF4 8003C4F4 21888000 */  addu       $s1, $a0, $zero
    /* 2CCF8 8003C4F8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 2CCFC 8003C4FC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2CD00 8003C500 74002382 */  lb         $v1, 0x74($s1)
    /* 2CD04 8003C504 01000224 */  addiu      $v0, $zero, 0x1
    /* 2CD08 8003C508 18006214 */  bne        $v1, $v0, .L8003C56C
    /* 2CD0C 8003C50C 00000000 */   nop
    /* 2CD10 8003C510 7C002296 */  lhu        $v0, 0x7C($s1)
    /* 2CD14 8003C514 00000000 */  nop
    /* 2CD18 8003C518 00204230 */  andi       $v0, $v0, 0x2000
    /* 2CD1C 8003C51C 13004010 */  beqz       $v0, .L8003C56C
    /* 2CD20 8003C520 00000000 */   nop
    /* 2CD24 8003C524 09002292 */  lbu        $v0, 0x9($s1)
    /* 2CD28 8003C528 00000000 */  nop
    /* 2CD2C 8003C52C F9FF4224 */  addiu      $v0, $v0, -0x7
    /* 2CD30 8003C530 0200422C */  sltiu      $v0, $v0, 0x2
    /* 2CD34 8003C534 0D004010 */  beqz       $v0, .L8003C56C
    /* 2CD38 8003C538 00000000 */   nop
    /* 2CD3C 8003C53C 0A002292 */  lbu        $v0, 0xA($s1)
    /* 2CD40 8003C540 00000000 */  nop
    /* 2CD44 8003C544 0400422C */  sltiu      $v0, $v0, 0x4
    /* 2CD48 8003C548 08004010 */  beqz       $v0, .L8003C56C
    /* 2CD4C 8003C54C 15000524 */   addiu     $a1, $zero, 0x15
    /* 2CD50 8003C550 21300000 */  addu       $a2, $zero, $zero
    /* 2CD54 8003C554 7707010C */  jal        func_80041DDC
    /* 2CD58 8003C558 01000724 */   addiu     $a3, $zero, 0x1
    /* 2CD5C 8003C55C 04000224 */  addiu      $v0, $zero, 0x4
    /* 2CD60 8003C560 0A0022A2 */  sb         $v0, 0xA($s1)
    /* 2CD64 8003C564 460020A6 */  sh         $zero, 0x46($s1)
    /* 2CD68 8003C568 4E0020A6 */  sh         $zero, 0x4E($s1)
  .L8003C56C:
    /* 2CD6C 8003C56C 08002292 */  lbu        $v0, 0x8($s1)
    /* 2CD70 8003C570 00000000 */  nop
    /* 2CD74 8003C574 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2CD78 8003C578 0200422C */  sltiu      $v0, $v0, 0x2
    /* 2CD7C 8003C57C 08004010 */  beqz       $v0, .L8003C5A0
    /* 2CD80 8003C580 00000000 */   nop
    /* 2CD84 8003C584 76002282 */  lb         $v0, 0x76($s1)
    /* 2CD88 8003C588 00000000 */  nop
    /* 2CD8C 8003C58C 04004010 */  beqz       $v0, .L8003C5A0
    /* 2CD90 8003C590 00000000 */   nop
    /* 2CD94 8003C594 C000258E */  lw         $a1, 0xC0($s1)
    /* 2CD98 8003C598 564C010C */  jal        func_80053158
    /* 2CD9C 8003C59C 21202002 */   addu      $a0, $s1, $zero
  .L8003C5A0:
    /* 2CDA0 8003C5A0 08002392 */  lbu        $v1, 0x8($s1)
    /* 2CDA4 8003C5A4 03000224 */  addiu      $v0, $zero, 0x3
    /* 2CDA8 8003C5A8 08006214 */  bne        $v1, $v0, .L8003C5CC
    /* 2CDAC 8003C5AC 00000000 */   nop
    /* 2CDB0 8003C5B0 76002282 */  lb         $v0, 0x76($s1)
    /* 2CDB4 8003C5B4 00000000 */  nop
    /* 2CDB8 8003C5B8 04004010 */  beqz       $v0, .L8003C5CC
    /* 2CDBC 8003C5BC 00000000 */   nop
    /* 2CDC0 8003C5C0 C000258E */  lw         $a1, 0xC0($s1)
    /* 2CDC4 8003C5C4 C74C010C */  jal        func_8005331C
    /* 2CDC8 8003C5C8 21202002 */   addu      $a0, $s1, $zero
  .L8003C5CC:
    /* 2CDCC 8003C5CC 9676000C */  jal        Sce_flag_test
    /* 2CDD0 8003C5D0 00020424 */   addiu     $a0, $zero, 0x200
    /* 2CDD4 8003C5D4 03004014 */  bnez       $v0, .L8003C5E4
    /* 2CDD8 8003C5D8 00000000 */   nop
    /* 2CDDC 8003C5DC 0B43010C */  jal        func_80050C2C
    /* 2CDE0 8003C5E0 21202002 */   addu      $a0, $s1, $zero
  .L8003C5E4:
    /* 2CDE4 8003C5E4 08002292 */  lbu        $v0, 0x8($s1)
    /* 2CDE8 8003C5E8 00000000 */  nop
    /* 2CDEC 8003C5EC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2CDF0 8003C5F0 0200422C */  sltiu      $v0, $v0, 0x2
    /* 2CDF4 8003C5F4 41004010 */  beqz       $v0, .L8003C6FC
    /* 2CDF8 8003C5F8 FF00033C */   lui       $v1, (0xFF00FF >> 16)
    /* 2CDFC 8003C5FC 7400228E */  lw         $v0, 0x74($s1)
    /* 2CE00 8003C600 FF006334 */  ori        $v1, $v1, (0xFF00FF & 0xFFFF)
    /* 2CE04 8003C604 24104300 */  and        $v0, $v0, $v1
    /* 2CE08 8003C608 3C004014 */  bnez       $v0, .L8003C6FC
    /* 2CE0C 8003C60C 00000000 */   nop
    /* 2CE10 8003C610 16003086 */  lh         $s0, 0x16($s1)
    /* 2CE14 8003C614 9B23010C */  jal        func_80048E6C
    /* 2CE18 8003C618 21202002 */   addu      $a0, $s1, $zero
    /* 2CE1C 8003C61C 7800238E */  lw         $v1, 0x78($s1)
    /* 2CE20 8003C620 00000000 */  nop
    /* 2CE24 8003C624 0A006384 */  lh         $v1, 0xA($v1)
    /* 2CE28 8003C628 00000000 */  nop
    /* 2CE2C 8003C62C 23184300 */  subu       $v1, $v0, $v1
    /* 2CE30 8003C630 E0FF6224 */  addiu      $v0, $v1, -0x20
    /* 2CE34 8003C634 2A800202 */  slt        $s0, $s0, $v0
    /* 2CE38 8003C638 29000012 */  beqz       $s0, .L8003C6E0
    /* 2CE3C 8003C63C 00000000 */   nop
    /* 2CE40 8003C640 75002282 */  lb         $v0, 0x75($s1)
    /* 2CE44 8003C644 00000000 */  nop
    /* 2CE48 8003C648 23004014 */  bnez       $v0, .L8003C6D8
    /* 2CE4C 8003C64C 01000224 */   addiu     $v0, $zero, 0x1
    /* 2CE50 8003C650 09002392 */  lbu        $v1, 0x9($s1)
    /* 2CE54 8003C654 0E000224 */  addiu      $v0, $zero, 0xE
    /* 2CE58 8003C658 06006214 */  bne        $v1, $v0, .L8003C674
    /* 2CE5C 8003C65C 03000224 */   addiu     $v0, $zero, 0x3
    /* 2CE60 8003C660 2BE5000C */  jal        func_800394AC
    /* 2CE64 8003C664 00000000 */   nop
    /* 2CE68 8003C668 080120A6 */  sh         $zero, 0x108($s1)
    /* 2CE6C 8003C66C 09002392 */  lbu        $v1, 0x9($s1)
    /* 2CE70 8003C670 03000224 */  addiu      $v0, $zero, 0x3
  .L8003C674:
    /* 2CE74 8003C674 0E006214 */  bne        $v1, $v0, .L8003C6B0
    /* 2CE78 8003C678 07000224 */   addiu     $v0, $zero, 0x7
    /* 2CE7C 8003C67C 0A002292 */  lbu        $v0, 0xA($s1)
    /* 2CE80 8003C680 00000000 */  nop
    /* 2CE84 8003C684 0500422C */  sltiu      $v0, $v0, 0x5
    /* 2CE88 8003C688 08004010 */  beqz       $v0, .L8003C6AC
    /* 2CE8C 8003C68C 8E000424 */   addiu     $a0, $zero, 0x8E
    /* 2CE90 8003C690 21280000 */  addu       $a1, $zero, $zero
    /* 2CE94 8003C694 0268000C */  jal        Sound_call
    /* 2CE98 8003C698 21300000 */   addu      $a2, $zero, $zero
    /* 2CE9C 8003C69C 8F000424 */  addiu      $a0, $zero, 0x8F
    /* 2CEA0 8003C6A0 21280000 */  addu       $a1, $zero, $zero
    /* 2CEA4 8003C6A4 0268000C */  jal        Sound_call
    /* 2CEA8 8003C6A8 21300000 */   addu      $a2, $zero, $zero
  .L8003C6AC:
    /* 2CEAC 8003C6AC 07000224 */  addiu      $v0, $zero, 0x7
  .L8003C6B0:
    /* 2CEB0 8003C6B0 090022A2 */  sb         $v0, 0x9($s1)
    /* 2CEB4 8003C6B4 04000224 */  addiu      $v0, $zero, 0x4
    /* 2CEB8 8003C6B8 0A0022A6 */  sh         $v0, 0xA($s1)
    /* 2CEBC 8003C6BC 01000224 */  addiu      $v0, $zero, 0x1
    /* 2CEC0 8003C6C0 460020A6 */  sh         $zero, 0x46($s1)
    /* 2CEC4 8003C6C4 680120A2 */  sb         $zero, 0x168($s1)
    /* 2CEC8 8003C6C8 690120A2 */  sb         $zero, 0x169($s1)
    /* 2CECC 8003C6CC 100122A2 */  sb         $v0, 0x110($s1)
    /* 2CED0 8003C6D0 110120A2 */  sb         $zero, 0x111($s1)
    /* 2CED4 8003C6D4 01000224 */  addiu      $v0, $zero, 0x1
  .L8003C6D8:
    /* 2CED8 8003C6D8 BFF10008 */  j          .L8003C6FC
    /* 2CEDC 8003C6DC 740022A2 */   sb        $v0, 0x74($s1)
  .L8003C6E0:
    /* 2CEE0 8003C6E0 16002286 */  lh         $v0, 0x16($s1)
    /* 2CEE4 8003C6E4 00000000 */  nop
    /* 2CEE8 8003C6E8 2A104300 */  slt        $v0, $v0, $v1
    /* 2CEEC 8003C6EC 03004010 */  beqz       $v0, .L8003C6FC
    /* 2CEF0 8003C6F0 00140300 */   sll       $v0, $v1, 16
    /* 2CEF4 8003C6F4 160023A6 */  sh         $v1, 0x16($s1)
    /* 2CEF8 8003C6F8 200022AE */  sw         $v0, 0x20($s1)
  .L8003C6FC:
    /* 2CEFC 8003C6FC 052D010C */  jal        func_8004B414
    /* 2CF00 8003C700 21202002 */   addu      $a0, $s1, $zero
    /* 2CF04 8003C704 13004104 */  bgez       $v0, .L8003C754
    /* 2CF08 8003C708 00000000 */   nop
    /* 2CF0C 8003C70C 2C002296 */  lhu        $v0, 0x2C($s1)
    /* 2CF10 8003C710 30002396 */  lhu        $v1, 0x30($s1)
    /* 2CF14 8003C714 3400248E */  lw         $a0, 0x34($s1)
    /* 2CF18 8003C718 3C00258E */  lw         $a1, 0x3C($s1)
    /* 2CF1C 8003C71C 74002682 */  lb         $a2, 0x74($s1)
    /* 2CF20 8003C720 480020A6 */  sh         $zero, 0x48($s1)
    /* 2CF24 8003C724 440020A6 */  sh         $zero, 0x44($s1)
    /* 2CF28 8003C728 140022A6 */  sh         $v0, 0x14($s1)
    /* 2CF2C 8003C72C 180023A6 */  sh         $v1, 0x18($s1)
    /* 2CF30 8003C730 1C0024AE */  sw         $a0, 0x1C($s1)
    /* 2CF34 8003C734 0700C010 */  beqz       $a2, .L8003C754
    /* 2CF38 8003C738 240025AE */   sw        $a1, 0x24($s1)
    /* 2CF3C 8003C73C 2E002296 */  lhu        $v0, 0x2E($s1)
    /* 2CF40 8003C740 3800238E */  lw         $v1, 0x38($s1)
    /* 2CF44 8003C744 740020A2 */  sb         $zero, 0x74($s1)
    /* 2CF48 8003C748 460020A6 */  sh         $zero, 0x46($s1)
    /* 2CF4C 8003C74C 160022A6 */  sh         $v0, 0x16($s1)
    /* 2CF50 8003C750 200023AE */  sw         $v1, 0x20($s1)
  .L8003C754:
    /* 2CF54 8003C754 68012582 */  lb         $a1, 0x168($s1)
    /* 2CF58 8003C758 69012682 */  lb         $a2, 0x169($s1)
    /* 2CF5C 8003C75C 01B4000C */  jal        func_8002D004
    /* 2CF60 8003C760 21202002 */   addu      $a0, $s1, $zero
    /* 2CF64 8003C764 75CA000C */  jal        func_800329D4
    /* 2CF68 8003C768 21202002 */   addu      $a0, $s1, $zero
    /* 2CF6C 8003C76C 75C9000C */  jal        func_800325D4
    /* 2CF70 8003C770 21202002 */   addu      $a0, $s1, $zero
    /* 2CF74 8003C774 00002292 */  lbu        $v0, 0x0($s1)
    /* 2CF78 8003C778 00000000 */  nop
    /* 2CF7C 8003C77C 02004230 */  andi       $v0, $v0, 0x2
    /* 2CF80 8003C780 05004010 */  beqz       $v0, .L8003C798
    /* 2CF84 8003C784 21202002 */   addu      $a0, $s1, $zero
    /* 2CF88 8003C788 32000524 */  addiu      $a1, $zero, 0x32
    /* 2CF8C 8003C78C AB020624 */  addiu      $a2, $zero, 0x2AB
    /* 2CF90 8003C790 E5B1000C */  jal        Model_Shadow_Trans
    /* 2CF94 8003C794 21380000 */   addu      $a3, $zero, $zero
  .L8003C798:
    /* 2CF98 8003C798 1800BF8F */  lw         $ra, 0x18($sp)
    /* 2CF9C 8003C79C 1400B18F */  lw         $s1, 0x14($sp)
    /* 2CFA0 8003C7A0 1000B08F */  lw         $s0, 0x10($sp)
    /* 2CFA4 8003C7A4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 2CFA8 8003C7A8 0800E003 */  jr         $ra
    /* 2CFAC 8003C7AC 00000000 */   nop
.size func_8003C4EC, . - func_8003C4EC
