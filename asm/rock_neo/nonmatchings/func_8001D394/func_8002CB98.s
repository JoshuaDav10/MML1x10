.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8002CB98
    /* 1D398 8002CB98 FF3FA530 */  andi       $a1, $a1, 0x3FFF
    /* 1D39C 8002CB9C F7B2000C */  jal        func_8002CBDC
    /* 1D3A0 8002CBA0 1000A2AF */   sw        $v0, 0x10($sp)
    /* 1D3A4 8002CBA4 2A107402 */  slt        $v0, $s3, $s4
    /* 1D3A8 8002CBA8 EBFF4014 */  bnez       $v0, .L8002CB58
    /* 1D3AC 8002CBAC 21204002 */   addu      $a0, $s2, $zero
  .L8002CBB0:
    /* 1D3B0 8002CBB0 0A80013C */  lui        $at, %hi(D_800987D8)
    /* 1D3B4 8002CBB4 D88720AC */  sw         $zero, %lo(D_800987D8)($at)
    /* 1D3B8 8002CBB8 3400BF8F */  lw         $ra, 0x34($sp)
    /* 1D3BC 8002CBBC 3000B48F */  lw         $s4, 0x30($sp)
    /* 1D3C0 8002CBC0 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 1D3C4 8002CBC4 2800B28F */  lw         $s2, 0x28($sp)
    /* 1D3C8 8002CBC8 2400B18F */  lw         $s1, 0x24($sp)
    /* 1D3CC 8002CBCC 2000B08F */  lw         $s0, 0x20($sp)
    /* 1D3D0 8002CBD0 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 1D3D4 8002CBD4 0800E003 */  jr         $ra
    /* 1D3D8 8002CBD8 00000000 */   nop
  glabel func_8002CBDC
    /* 1D3DC 8002CBDC 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 1D3E0 8002CBE0 6000BEAF */  sw         $fp, 0x60($sp)
    /* 1D3E4 8002CBE4 21F08000 */  addu       $fp, $a0, $zero
    /* 1D3E8 8002CBE8 5C00B7AF */  sw         $s7, 0x5C($sp)
    /* 1D3EC 8002CBEC 21B8A000 */  addu       $s7, $a1, $zero
    /* 1D3F0 8002CBF0 4C00B3AF */  sw         $s3, 0x4C($sp)
    /* 1D3F4 8002CBF4 2198C000 */  addu       $s3, $a2, $zero
    /* 1D3F8 8002CBF8 7800A58F */  lw         $a1, 0x78($sp)
    /* 1D3FC 8002CBFC 801F083C */  lui        $t0, (0x1F800008 >> 16)
    /* 1D400 8002CC00 08000835 */  ori        $t0, $t0, (0x1F800008 & 0xFFFF)
    /* 1D404 8002CC04 6400BFAF */  sw         $ra, 0x64($sp)
    /* 1D408 8002CC08 5800B6AF */  sw         $s6, 0x58($sp)
    /* 1D40C 8002CC0C 5400B5AF */  sw         $s5, 0x54($sp)
    /* 1D410 8002CC10 5000B4AF */  sw         $s4, 0x50($sp)
    /* 1D414 8002CC14 4800B2AF */  sw         $s2, 0x48($sp)
.size func_8002CB98, . - func_8002CB98
