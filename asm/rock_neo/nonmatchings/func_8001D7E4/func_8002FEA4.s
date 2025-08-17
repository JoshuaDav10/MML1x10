.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002FEA4
    /* 206A4 8002FEA4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 206A8 8002FEA8 2800B0AF */  sw         $s0, 0x28($sp)
    /* 206AC 8002FEAC 21808000 */  addu       $s0, $a0, $zero
    /* 206B0 8002FEB0 1800A427 */  addiu      $a0, $sp, 0x18
    /* 206B4 8002FEB4 003C0700 */  sll        $a3, $a3, 16
    /* 206B8 8002FEB8 033C0700 */  sra        $a3, $a3, 16
    /* 206BC 8002FEBC 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 206C0 8002FEC0 56000386 */  lh         $v1, 0x56($s0)
    /* 206C4 8002FEC4 00140500 */  sll        $v0, $a1, 16
    /* 206C8 8002FEC8 1000A7AF */  sw         $a3, 0x10($sp)
    /* 206CC 8002FECC 003C0600 */  sll        $a3, $a2, 16
    /* 206D0 8002FED0 03340200 */  sra        $a2, $v0, 16
    /* 206D4 8002FED4 033C0700 */  sra        $a3, $a3, 16
    /* 206D8 8002FED8 16C0000C */  jal        func_80030058
    /* 206DC 8002FEDC 21286000 */   addu      $a1, $v1, $zero
    /* 206E0 8002FEE0 1C00028E */  lw         $v0, 0x1C($s0)
    /* 206E4 8002FEE4 1800A38F */  lw         $v1, 0x18($sp)
    /* 206E8 8002FEE8 00000000 */  nop
    /* 206EC 8002FEEC 21104300 */  addu       $v0, $v0, $v1
    /* 206F0 8002FEF0 1C0002AE */  sw         $v0, 0x1C($s0)
    /* 206F4 8002FEF4 2000028E */  lw         $v0, 0x20($s0)
    /* 206F8 8002FEF8 1C00A38F */  lw         $v1, 0x1C($sp)
    /* 206FC 8002FEFC 1C000426 */  addiu      $a0, $s0, 0x1C
    /* 20700 8002FF00 21104300 */  addu       $v0, $v0, $v1
    /* 20704 8002FF04 200002AE */  sw         $v0, 0x20($s0)
    /* 20708 8002FF08 2400028E */  lw         $v0, 0x24($s0)
    /* 2070C 8002FF0C 2000A38F */  lw         $v1, 0x20($sp)
    /* 20710 8002FF10 14000526 */  addiu      $a1, $s0, 0x14
    /* 20714 8002FF14 21104300 */  addu       $v0, $v0, $v1
    /* 20718 8002FF18 54C0000C */  jal        func_80030150
    /* 2071C 8002FF1C 240002AE */   sw        $v0, 0x24($s0)
    /* 20720 8002FF20 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 20724 8002FF24 2800B08F */  lw         $s0, 0x28($sp)
    /* 20728 8002FF28 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2072C 8002FF2C 0800E003 */  jr         $ra
    /* 20730 8002FF30 00000000 */   nop
.size func_8002FEA4, . - func_8002FEA4
