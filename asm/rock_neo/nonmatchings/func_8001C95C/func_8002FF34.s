.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002FF34
    /* 20734 8002FF34 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 20738 8002FF38 2800B0AF */  sw         $s0, 0x28($sp)
    /* 2073C 8002FF3C 21808000 */  addu       $s0, $a0, $zero
    /* 20740 8002FF40 1800A427 */  addiu      $a0, $sp, 0x18
    /* 20744 8002FF44 003C0700 */  sll        $a3, $a3, 16
    /* 20748 8002FF48 033C0700 */  sra        $a3, $a3, 16
    /* 2074C 8002FF4C 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 20750 8002FF50 56000386 */  lh         $v1, 0x56($s0)
    /* 20754 8002FF54 00140500 */  sll        $v0, $a1, 16
    /* 20758 8002FF58 1000A7AF */  sw         $a3, 0x10($sp)
    /* 2075C 8002FF5C 003C0600 */  sll        $a3, $a2, 16
    /* 20760 8002FF60 03340200 */  sra        $a2, $v0, 16
    /* 20764 8002FF64 033C0700 */  sra        $a3, $a3, 16
    /* 20768 8002FF68 16C0000C */  jal        func_80030058
    /* 2076C 8002FF6C 21286000 */   addu      $a1, $v1, $zero
    /* 20770 8002FF70 2804028E */  lw         $v0, 0x428($s0)
    /* 20774 8002FF74 1800A38F */  lw         $v1, 0x18($sp)
    /* 20778 8002FF78 00000000 */  nop
    /* 2077C 8002FF7C 21104300 */  addu       $v0, $v0, $v1
    /* 20780 8002FF80 280402AE */  sw         $v0, 0x428($s0)
    /* 20784 8002FF84 2C04028E */  lw         $v0, 0x42C($s0)
    /* 20788 8002FF88 1C00A38F */  lw         $v1, 0x1C($sp)
    /* 2078C 8002FF8C 28040426 */  addiu      $a0, $s0, 0x428
    /* 20790 8002FF90 21104300 */  addu       $v0, $v0, $v1
    /* 20794 8002FF94 2C0402AE */  sw         $v0, 0x42C($s0)
    /* 20798 8002FF98 3004028E */  lw         $v0, 0x430($s0)
    /* 2079C 8002FF9C 2000A38F */  lw         $v1, 0x20($sp)
    /* 207A0 8002FFA0 38040526 */  addiu      $a1, $s0, 0x438
    /* 207A4 8002FFA4 21104300 */  addu       $v0, $v0, $v1
    /* 207A8 8002FFA8 54C0000C */  jal        func_80030150
    /* 207AC 8002FFAC 300402AE */   sw        $v0, 0x430($s0)
    /* 207B0 8002FFB0 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 207B4 8002FFB4 2800B08F */  lw         $s0, 0x28($sp)
    /* 207B8 8002FFB8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 207BC 8002FFBC 0800E003 */  jr         $ra
    /* 207C0 8002FFC0 00000000 */   nop
.size func_8002FF34, . - func_8002FF34
