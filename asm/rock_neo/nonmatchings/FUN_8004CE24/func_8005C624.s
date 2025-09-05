.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C624
    /* 4CE24 8005C624 C871010C */  jal        func_8005C720
    /* 4CE28 8005C628 21200002 */   addu      $a0, $s0, $zero
  .L8005C62C:
    /* 4CE2C 8005C62C 00000292 */  lbu        $v0, 0x0($s0)
    /* 4CE30 8005C630 00000000 */  nop
    /* 4CE34 8005C634 02004230 */  andi       $v0, $v0, 0x2
    /* 4CE38 8005C638 03004010 */  beqz       $v0, .L8005C648
    /* 4CE3C 8005C63C 00000000 */   nop
    /* 4CE40 8005C640 6F72010C */  jal        func_8005C9BC
    /* 4CE44 8005C644 21200002 */   addu      $a0, $s0, $zero
  .L8005C648:
    /* 4CE48 8005C648 0B80023C */  lui        $v0, %hi(Player_work + 0x171)
    /* 4CE4C 8005C64C 21534280 */  lb         $v0, %lo(Player_work + 0x171)($v0)
    /* 4CE50 8005C650 00000000 */  nop
    /* 4CE54 8005C654 08004010 */  beqz       $v0, .L8005C678
    /* 4CE58 8005C658 21900000 */   addu      $s2, $zero, $zero
    /* 4CE5C 8005C65C 24000292 */  lbu        $v0, 0x24($s0)
    /* 4CE60 8005C660 00000000 */  nop
    /* 4CE64 8005C664 02004230 */  andi       $v0, $v0, 0x2
    /* 4CE68 8005C668 03004010 */  beqz       $v0, .L8005C678
    /* 4CE6C 8005C66C 24000426 */   addiu     $a0, $s0, 0x24
    /* 4CE70 8005C670 3D73010C */  jal        func_8005CCF4
    /* 4CE74 8005C674 00000000 */   nop
  .L8005C678:
    /* 4CE78 8005C678 0C80113C */  lui        $s1, %hi(D_800BBDC0)
    /* 4CE7C 8005C67C C0BD3126 */  addiu      $s1, $s1, %lo(D_800BBDC0)
    /* 4CE80 8005C680 21800000 */  addu       $s0, $zero, $zero
  .L8005C684:
    /* 4CE84 8005C684 0C80013C */  lui        $at, %hi(D_800BBDC0)
    /* 4CE88 8005C688 21083000 */  addu       $at, $at, $s0
    /* 4CE8C 8005C68C C0BD2290 */  lbu        $v0, %lo(D_800BBDC0)($at)
    /* 4CE90 8005C690 00000000 */  nop
    /* 4CE94 8005C694 01004230 */  andi       $v0, $v0, 0x1
    /* 4CE98 8005C698 03004010 */  beqz       $v0, .L8005C6A8
    /* 4CE9C 8005C69C 00000000 */   nop
    /* 4CEA0 8005C6A0 5E72010C */  jal        func_8005C978
    /* 4CEA4 8005C6A4 21202002 */   addu      $a0, $s1, $zero
  .L8005C6A8:
    /* 4CEA8 8005C6A8 0C80013C */  lui        $at, %hi(D_800BBDC0)
    /* 4CEAC 8005C6AC 21083000 */  addu       $at, $at, $s0
    /* 4CEB0 8005C6B0 C0BD2290 */  lbu        $v0, %lo(D_800BBDC0)($at)
    /* 4CEB4 8005C6B4 00000000 */  nop
    /* 4CEB8 8005C6B8 02004230 */  andi       $v0, $v0, 0x2
    /* 4CEBC 8005C6BC 03004010 */  beqz       $v0, .L8005C6CC
    /* 4CEC0 8005C6C0 00000000 */   nop
    /* 4CEC4 8005C6C4 BF73010C */  jal        func_8005CEFC
    /* 4CEC8 8005C6C8 21202002 */   addu      $a0, $s1, $zero
  .L8005C6CC:
    /* 4CECC 8005C6CC 24003126 */  addiu      $s1, $s1, 0x24
    /* 4CED0 8005C6D0 01005226 */  addiu      $s2, $s2, 0x1
.size func_8005C624, . - func_8005C624
