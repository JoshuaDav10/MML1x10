.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001A110
    /* A910 8001A110 0A80023C */  lui        $v0, %hi(D_80098958)
    /* A914 8001A114 5889428C */  lw         $v0, %lo(D_80098958)($v0)
    /* A918 8001A118 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A91C 8001A11C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* A920 8001A120 1800B2AF */  sw         $s2, 0x18($sp)
    /* A924 8001A124 1400B1AF */  sw         $s1, 0x14($sp)
    /* A928 8001A128 2D004010 */  beqz       $v0, .L8001A1E0
    /* A92C 8001A12C 1000B0AF */   sw        $s0, 0x10($sp)
    /* A930 8001A130 BC6B000C */  jal        func_8001AEF0
    /* A934 8001A134 21800000 */   addu      $s0, $zero, $zero
    /* A938 8001A138 21880000 */  addu       $s1, $zero, $zero
  .L8001A13C:
    /* A93C 8001A13C 2A68000C */  jal        func_8001A0A8
    /* A940 8001A140 21200002 */   addu      $a0, $s0, $zero
    /* A944 8001A144 0A80013C */  lui        $at, %hi(D_80098AFD)
    /* A948 8001A148 21083100 */  addu       $at, $at, $s1
    /* A94C 8001A14C FD8A22A0 */  sb         $v0, %lo(D_80098AFD)($at)
    /* A950 8001A150 01001026 */  addiu      $s0, $s0, 0x1
    /* A954 8001A154 0400022A */  slti       $v0, $s0, 0x4
    /* A958 8001A158 F8FF4014 */  bnez       $v0, .L8001A13C
    /* A95C 8001A15C 08003126 */   addiu     $s1, $s1, 0x8
    /* A960 8001A160 0A80023C */  lui        $v0, %hi(D_80098938)
    /* A964 8001A164 3889428C */  lw         $v0, %lo(D_80098938)($v0)
    /* A968 8001A168 0C80103C */  lui        $s0, %hi(D_800BE4F8)
    /* A96C 8001A16C F8E41026 */  addiu      $s0, $s0, %lo(D_800BE4F8)
    /* A970 8001A170 17005010 */  beq        $v0, $s0, .L8001A1D0
    /* A974 8001A174 00000000 */   nop
    /* A978 8001A178 0880123C */  lui        $s2, %hi(D_8008241C)
    /* A97C 8001A17C 1C245226 */  addiu      $s2, $s2, %lo(D_8008241C)
    /* A980 8001A180 0880113C */  lui        $s1, %hi(D_80082C64)
    /* A984 8001A184 642C3126 */  addiu      $s1, $s1, %lo(D_80082C64)
  .L8001A188:
    /* A988 8001A188 02000286 */  lh         $v0, 0x2($s0)
    /* A98C 8001A18C 00000000 */  nop
    /* A990 8001A190 80100200 */  sll        $v0, $v0, 2
    /* A994 8001A194 21105200 */  addu       $v0, $v0, $s2
    /* A998 8001A198 00004290 */  lbu        $v0, 0x0($v0)
    /* A99C 8001A19C 00000000 */  nop
    /* A9A0 8001A1A0 82110200 */  srl        $v0, $v0, 6
    /* A9A4 8001A1A4 80100200 */  sll        $v0, $v0, 2
    /* A9A8 8001A1A8 21105100 */  addu       $v0, $v0, $s1
    /* A9AC 8001A1AC 0000428C */  lw         $v0, 0x0($v0)
    /* A9B0 8001A1B0 00000000 */  nop
    /* A9B4 8001A1B4 09F84000 */  jalr       $v0
    /* A9B8 8001A1B8 21200002 */   addu      $a0, $s0, $zero
    /* A9BC 8001A1BC 0A80023C */  lui        $v0, %hi(D_80098938)
    /* A9C0 8001A1C0 3889428C */  lw         $v0, %lo(D_80098938)($v0)
    /* A9C4 8001A1C4 14001026 */  addiu      $s0, $s0, 0x14
    /* A9C8 8001A1C8 EFFF0216 */  bne        $s0, $v0, .L8001A188
    /* A9CC 8001A1CC 00000000 */   nop
  .L8001A1D0:
    /* A9D0 8001A1D0 0C80023C */  lui        $v0, %hi(D_800BE4F8)
    /* A9D4 8001A1D4 F8E44224 */  addiu      $v0, $v0, %lo(D_800BE4F8)
    /* A9D8 8001A1D8 0A80013C */  lui        $at, %hi(D_80098938)
    /* A9DC 8001A1DC 388922AC */  sw         $v0, %lo(D_80098938)($at)
  .L8001A1E0:
    /* A9E0 8001A1E0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* A9E4 8001A1E4 1800B28F */  lw         $s2, 0x18($sp)
    /* A9E8 8001A1E8 1400B18F */  lw         $s1, 0x14($sp)
    /* A9EC 8001A1EC 1000B08F */  lw         $s0, 0x10($sp)
    /* A9F0 8001A1F0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A9F4 8001A1F4 0800E003 */  jr         $ra
    /* A9F8 8001A1F8 00000000 */   nop
.size func_8001A110, . - func_8001A110
