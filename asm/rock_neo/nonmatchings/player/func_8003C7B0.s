.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003C7B0
    /* 2CFB0 8003C7B0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 2CFB4 8003C7B4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2CFB8 8003C7B8 21808000 */  addu       $s0, $a0, $zero
    /* 2CFBC 8003C7BC 21280000 */  addu       $a1, $zero, $zero
    /* 2CFC0 8003C7C0 21300000 */  addu       $a2, $zero, $zero
    /* 2CFC4 8003C7C4 01000724 */  addiu      $a3, $zero, 0x1
    /* 2CFC8 8003C7C8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 2CFCC 8003C7CC 06000392 */  lbu        $v1, 0x6($s0)
    /* 2CFD0 8003C7D0 01000224 */  addiu      $v0, $zero, 0x1
    /* 2CFD4 8003C7D4 080002AE */  sw         $v0, 0x8($s0)
    /* 2CFD8 8003C7D8 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 2CFDC 8003C7DC 6C0002A6 */  sh         $v0, 0x6C($s0)
    /* 2CFE0 8003C7E0 07000224 */  addiu      $v0, $zero, 0x7
    /* 2CFE4 8003C7E4 440000A6 */  sh         $zero, 0x44($s0)
    /* 2CFE8 8003C7E8 460000A6 */  sh         $zero, 0x46($s0)
    /* 2CFEC 8003C7EC 480000A6 */  sh         $zero, 0x48($s0)
    /* 2CFF0 8003C7F0 140100A6 */  sh         $zero, 0x114($s0)
    /* 2CFF4 8003C7F4 160100A6 */  sh         $zero, 0x116($s0)
    /* 2CFF8 8003C7F8 180100A6 */  sh         $zero, 0x118($s0)
    /* 2CFFC 8003C7FC 120100A2 */  sb         $zero, 0x112($s0)
    /* 2D000 8003C800 130100A2 */  sb         $zero, 0x113($s0)
    /* 2D004 8003C804 100100A2 */  sb         $zero, 0x110($s0)
    /* 2D008 8003C808 710000A2 */  sb         $zero, 0x71($s0)
    /* 2D00C 8003C80C 730000A2 */  sb         $zero, 0x73($s0)
    /* 2D010 8003C810 880100AE */  sw         $zero, 0x188($s0)
    /* 2D014 8003C814 8C0100AE */  sw         $zero, 0x18C($s0)
    /* 2D018 8003C818 900100AE */  sw         $zero, 0x190($s0)
    /* 2D01C 8003C81C 940100AE */  sw         $zero, 0x194($s0)
    /* 2D020 8003C820 680100A2 */  sb         $zero, 0x168($s0)
    /* 2D024 8003C824 690100A2 */  sb         $zero, 0x169($s0)
    /* 2D028 8003C828 040100A2 */  sb         $zero, 0x104($s0)
    /* 2D02C 8003C82C AC0000A2 */  sb         $zero, 0xAC($s0)
    /* 2D030 8003C830 050100A2 */  sb         $zero, 0x105($s0)
    /* 2D034 8003C834 AD0000A2 */  sb         $zero, 0xAD($s0)
    /* 2D038 8003C838 740100A2 */  sb         $zero, 0x174($s0)
    /* 2D03C 8003C83C 770100A2 */  sb         $zero, 0x177($s0)
    /* 2D040 8003C840 750102A2 */  sb         $v0, 0x175($s0)
    /* 2D044 8003C844 080100A6 */  sh         $zero, 0x108($s0)
    /* 2D048 8003C848 0A0100A6 */  sh         $zero, 0x10A($s0)
    /* 2D04C 8003C84C 4B0400A2 */  sb         $zero, 0x44B($s0)
    /* 2D050 8003C850 4A0400A2 */  sb         $zero, 0x44A($s0)
    /* 2D054 8003C854 840100AE */  sw         $zero, 0x184($s0)
    /* 2D058 8003C858 03006334 */  ori        $v1, $v1, 0x3
    /* 2D05C 8003C85C 7707010C */  jal        func_80041DDC
    /* 2D060 8003C860 060003A2 */   sb        $v1, 0x6($s0)
    /* 2D064 8003C864 21200002 */  addu       $a0, $s0, $zero
    /* 2D068 8003C868 21280000 */  addu       $a1, $zero, $zero
    /* 2D06C 8003C86C 05000624 */  addiu      $a2, $zero, 0x5
    /* 2D070 8003C870 72C8000C */  jal        func_800321C8
    /* 2D074 8003C874 21380000 */   addu      $a3, $zero, $zero
    /* 2D078 8003C878 1400BF8F */  lw         $ra, 0x14($sp)
    /* 2D07C 8003C87C 1000B08F */  lw         $s0, 0x10($sp)
    /* 2D080 8003C880 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2D084 8003C884 0800E003 */  jr         $ra
    /* 2D088 8003C888 00000000 */   nop
.size func_8003C7B0, . - func_8003C7B0
