.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001A968
    /* B168 8001A968 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* B16C 8001A96C 2000B4AF */  sw         $s4, 0x20($sp)
    /* B170 8001A970 21A08000 */  addu       $s4, $a0, $zero
    /* B174 8001A974 2800BFAF */  sw         $ra, 0x28($sp)
    /* B178 8001A978 2400B5AF */  sw         $s5, 0x24($sp)
    /* B17C 8001A97C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* B180 8001A980 1800B2AF */  sw         $s2, 0x18($sp)
    /* B184 8001A984 1400B1AF */  sw         $s1, 0x14($sp)
    /* B188 8001A988 1000B0AF */  sw         $s0, 0x10($sp)
    /* B18C 8001A98C 02008286 */  lh         $v0, 0x2($s4)
    /* B190 8001A990 0880033C */  lui        $v1, %hi(D_8008241C)
    /* B194 8001A994 1C246324 */  addiu      $v1, $v1, %lo(D_8008241C)
    /* B198 8001A998 80100200 */  sll        $v0, $v0, 2
    /* B19C 8001A99C 21904300 */  addu       $s2, $v0, $v1
    /* B1A0 8001A9A0 00004492 */  lbu        $a0, 0x0($s2)
    /* B1A4 8001A9A4 7F68000C */  jal        func_8001A1FC
    /* B1A8 8001A9A8 3F008430 */   andi      $a0, $a0, 0x3F
    /* B1AC 8001A9AC 21384000 */  addu       $a3, $v0, $zero
    /* B1B0 8001A9B0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* B1B4 8001A9B4 2B00E210 */  beq        $a3, $v0, .L8001AA64
    /* B1B8 8001A9B8 1480063C */   lui       $a2, (0x8014B820 >> 16)
    /* B1BC 8001A9BC 20B8C634 */  ori        $a2, $a2, (0x8014B820 & 0xFFFF)
    /* B1C0 8001A9C0 40200700 */  sll        $a0, $a3, 1
    /* B1C4 8001A9C4 21208700 */  addu       $a0, $a0, $a3
    /* B1C8 8001A9C8 80210400 */  sll        $a0, $a0, 6
    /* B1CC 8001A9CC 21208700 */  addu       $a0, $a0, $a3
    /* B1D0 8001A9D0 40210400 */  sll        $a0, $a0, 5
    /* B1D4 8001A9D4 03004592 */  lbu        $a1, 0x3($s2)
    /* B1D8 8001A9D8 01004392 */  lbu        $v1, 0x1($s2)
    /* B1DC 8001A9DC 1F00A230 */  andi       $v0, $a1, 0x1F
    /* B1E0 8001A9E0 FF005330 */  andi       $s3, $v0, 0xFF
    /* B1E4 8001A9E4 7F006330 */  andi       $v1, $v1, 0x7F
    /* B1E8 8001A9E8 00190300 */  sll        $v1, $v1, 4
    /* B1EC 8001A9EC 6000A530 */  andi       $a1, $a1, 0x60
    /* B1F0 8001A9F0 02004292 */  lbu        $v0, 0x2($s2)
    /* B1F4 8001A9F4 42810500 */  srl        $s0, $a1, 5
    /* B1F8 8001A9F8 02110200 */  srl        $v0, $v0, 4
    /* B1FC 8001A9FC 21104300 */  addu       $v0, $v0, $v1
    /* B200 8001AA00 40110200 */  sll        $v0, $v0, 5
    /* B204 8001AA04 21104600 */  addu       $v0, $v0, $a2
    /* B208 8001AA08 21888200 */  addu       $s1, $a0, $v0
    /* B20C 8001AA0C C0100700 */  sll        $v0, $a3, 3
    /* B210 8001AA10 0C80013C */  lui        $at, %hi(Game_work + 0x1B8)
    /* B214 8001AA14 21082200 */  addu       $at, $at, $v0
    /* B218 8001AA18 C81C3594 */  lhu        $s5, %lo(Game_work + 0x1B8)($at)
    /* B21C 8001AA1C 11000006 */  bltz       $s0, .L8001AA64
    /* B220 8001AA20 00000000 */   nop
  .L8001AA24:
    /* B224 8001AA24 FFFF6232 */  andi       $v0, $s3, 0xFFFF
    /* B228 8001AA28 1800422C */  sltiu      $v0, $v0, 0x18
    /* B22C 8001AA2C 0D004010 */  beqz       $v0, .L8001AA64
    /* B230 8001AA30 21204002 */   addu      $a0, $s2, $zero
    /* B234 8001AA34 0D6A000C */  jal        func_8001A834
    /* B238 8001AA38 21288002 */   addu      $a1, $s4, $zero
    /* B23C 8001AA3C 05004010 */  beqz       $v0, .L8001AA54
    /* B240 8001AA40 FFFFA432 */   andi      $a0, $s5, 0xFFFF
    /* B244 8001AA44 21284002 */  addu       $a1, $s2, $zero
    /* B248 8001AA48 21302002 */  addu       $a2, $s1, $zero
    /* B24C 8001AA4C D169000C */  jal        func_8001A744
    /* B250 8001AA50 21388002 */   addu      $a3, $s4, $zero
  .L8001AA54:
    /* B254 8001AA54 20003126 */  addiu      $s1, $s1, 0x20
    /* B258 8001AA58 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* B25C 8001AA5C F1FF0106 */  bgez       $s0, .L8001AA24
    /* B260 8001AA60 01007326 */   addiu     $s3, $s3, 0x1
  .L8001AA64:
    /* B264 8001AA64 2800BF8F */  lw         $ra, 0x28($sp)
    /* B268 8001AA68 2400B58F */  lw         $s5, 0x24($sp)
    /* B26C 8001AA6C 2000B48F */  lw         $s4, 0x20($sp)
    /* B270 8001AA70 1C00B38F */  lw         $s3, 0x1C($sp)
    /* B274 8001AA74 1800B28F */  lw         $s2, 0x18($sp)
    /* B278 8001AA78 1400B18F */  lw         $s1, 0x14($sp)
    /* B27C 8001AA7C 1000B08F */  lw         $s0, 0x10($sp)
    /* B280 8001AA80 3000BD27 */  addiu      $sp, $sp, 0x30
    /* B284 8001AA84 0800E003 */  jr         $ra
    /* B288 8001AA88 00000000 */   nop
.size func_8001A968, . - func_8001A968
