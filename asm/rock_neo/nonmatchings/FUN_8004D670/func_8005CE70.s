.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005CE70
    /* 4D670 8005CE70 21380000 */  addu       $a3, $zero, $zero
  .L8005CE74:
    /* 4D674 8005CE74 0980043C */  lui        $a0, %hi(D_8008D660)
    /* 4D678 8005CE78 60D68424 */  addiu      $a0, $a0, %lo(D_8008D660)
    /* 4D67C 8005CE7C 21286002 */  addu       $a1, $s3, $zero
    /* 4D680 8005CE80 21309502 */  addu       $a2, $s4, $s5
    /* 4D684 8005CE84 2330D200 */  subu       $a2, $a2, $s2
    /* 4D688 8005CE88 00340600 */  sll        $a2, $a2, 16
    /* 4D68C 8005CE8C 03340600 */  sra        $a2, $a2, 16
    /* 4D690 8005CE90 0980073C */  lui        $a3, %hi(.L8008D668)
    /* 4D694 8005CE94 68D6E794 */  lhu        $a3, %lo(.L8008D668)($a3)
    /* 4D698 8005CE98 00121200 */  sll        $v0, $s2, 8
    /* 4D69C 8005CE9C 2538E200 */  or         $a3, $a3, $v0
    /* 4D6A0 8005CEA0 FFFFE730 */  andi       $a3, $a3, 0xFFFF
  .L8005CEA4:
    /* 4D6A4 8005CEA4 A674010C */  jal        func_8005D298
    /* 4D6A8 8005CEA8 00000000 */   nop
    /* 4D6AC 8005CEAC 0980043C */  lui        $a0, %hi(D_8008D624)
    /* 4D6B0 8005CEB0 24D68424 */  addiu      $a0, $a0, %lo(D_8008D624)
    /* 4D6B4 8005CEB4 2128C002 */  addu       $a1, $s6, $zero
    /* 4D6B8 8005CEB8 21309502 */  addu       $a2, $s4, $s5
    /* 4D6BC 8005CEBC 2330D200 */  subu       $a2, $a2, $s2
    /* 4D6C0 8005CEC0 00340600 */  sll        $a2, $a2, 16
    /* 4D6C4 8005CEC4 03340600 */  sra        $a2, $a2, 16
    /* 4D6C8 8005CEC8 A674010C */  jal        func_8005D298
    /* 4D6CC 8005CECC 21380000 */   addu      $a3, $zero, $zero
    /* 4D6D0 8005CED0 3400BF8F */  lw         $ra, 0x34($sp)
    /* 4D6D4 8005CED4 3000B68F */  lw         $s6, 0x30($sp)
    /* 4D6D8 8005CED8 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 4D6DC 8005CEDC 2800B48F */  lw         $s4, 0x28($sp)
    /* 4D6E0 8005CEE0 2400B38F */  lw         $s3, 0x24($sp)
.size func_8005CE70, . - func_8005CE70
