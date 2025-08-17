.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001A744
    /* AF44 8001A744 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* AF48 8001A748 5C00B1AF */  sw         $s1, 0x5C($sp)
    /* AF4C 8001A74C 21888000 */  addu       $s1, $a0, $zero
    /* AF50 8001A750 6400B3AF */  sw         $s3, 0x64($sp)
    /* AF54 8001A754 2198A000 */  addu       $s3, $a1, $zero
    /* AF58 8001A758 5800B0AF */  sw         $s0, 0x58($sp)
    /* AF5C 8001A75C 2180C000 */  addu       $s0, $a2, $zero
    /* AF60 8001A760 2120E000 */  addu       $a0, $a3, $zero
    /* AF64 8001A764 2000A627 */  addiu      $a2, $sp, 0x20
    /* AF68 8001A768 6800BFAF */  sw         $ra, 0x68($sp)
    /* AF6C 8001A76C 6000B2AF */  sw         $s2, 0x60($sp)
    /* AF70 8001A770 03007292 */  lbu        $s2, 0x3($s3)
    /* AF74 8001A774 02000592 */  lbu        $a1, 0x2($s0)
    /* AF78 8001A778 1F005232 */  andi       $s2, $s2, 0x1F
    /* AF7C 8001A77C 40101200 */  sll        $v0, $s2, 1
    /* AF80 8001A780 0C80013C */  lui        $at, %hi(Game_work + 0x1E0)
    /* AF84 8001A784 21082200 */  addu       $at, $at, $v0
    /* AF88 8001A788 F01C2284 */  lh         $v0, %lo(Game_work + 0x1E0)($at)
    /* AF8C 8001A78C 2200A727 */  addiu      $a3, $sp, 0x22
    /* AF90 8001A790 9D68000C */  jal        func_8001A274
    /* AF94 8001A794 1000A2AF */   sw        $v0, 0x10($sp)
    /* AF98 8001A798 0600033C */  lui        $v1, (0x60093 >> 16)
    /* AF9C 8001A79C 93006334 */  ori        $v1, $v1, (0x60093 & 0xFFFF)
    /* AFA0 8001A7A0 01000224 */  addiu      $v0, $zero, 0x1
    /* AFA4 8001A7A4 04104202 */  sllv       $v0, $v0, $s2
    /* AFA8 8001A7A8 008C1100 */  sll        $s1, $s1, 16
    /* AFAC 8001A7AC 1800A2AF */  sw         $v0, 0x18($sp)
    /* AFB0 8001A7B0 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* AFB4 8001A7B4 16000586 */  lh         $a1, 0x16($s0)
    /* AFB8 8001A7B8 76C3010C */  jal        SsUtGetVagAddr
    /* AFBC 8001A7BC 03241100 */   sra       $a0, $s1, 16
    /* AFC0 8001A7C0 3400A2AF */  sw         $v0, 0x34($sp)
    /* AFC4 8001A7C4 06000292 */  lbu        $v0, 0x6($s0)
    /* AFC8 8001A7C8 04000492 */  lbu        $a0, 0x4($s0)
    /* AFCC 8001A7CC 05000592 */  lbu        $a1, 0x5($s0)
    /* AFD0 8001A7D0 B769000C */  jal        func_8001A6DC
    /* AFD4 8001A7D4 23204400 */   subu      $a0, $v0, $a0
    /* AFD8 8001A7D8 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* AFDC 8001A7DC 10000296 */  lhu        $v0, 0x10($s0)
    /* AFE0 8001A7E0 00000000 */  nop
    /* AFE4 8001A7E4 5200A2A7 */  sh         $v0, 0x52($sp)
    /* AFE8 8001A7E8 12000296 */  lhu        $v0, 0x12($s0)
    /* AFEC 8001A7EC 00000000 */  nop
    /* AFF0 8001A7F0 5400A2A7 */  sh         $v0, 0x54($sp)
    /* AFF4 8001A7F4 02006292 */  lbu        $v0, 0x2($s3)
    /* AFF8 8001A7F8 00000000 */  nop
    /* AFFC 8001A7FC 0F004230 */  andi       $v0, $v0, 0xF
    /* B000 8001A800 0A80013C */  lui        $at, %hi(D_80098B48)
    /* B004 8001A804 21083200 */  addu       $at, $at, $s2
    /* B008 8001A808 488B22A0 */  sb         $v0, %lo(D_80098B48)($at)
    /* B00C 8001A80C 6DAA010C */  jal        SpuSetKeyOnWithAttr
    /* B010 8001A810 1800A427 */   addiu     $a0, $sp, 0x18
    /* B014 8001A814 6800BF8F */  lw         $ra, 0x68($sp)
    /* B018 8001A818 6400B38F */  lw         $s3, 0x64($sp)
    /* B01C 8001A81C 6000B28F */  lw         $s2, 0x60($sp)
    /* B020 8001A820 5C00B18F */  lw         $s1, 0x5C($sp)
    /* B024 8001A824 5800B08F */  lw         $s0, 0x58($sp)
    /* B028 8001A828 7000BD27 */  addiu      $sp, $sp, 0x70
    /* B02C 8001A82C 0800E003 */  jr         $ra
    /* B030 8001A830 00000000 */   nop
.size func_8001A744, . - func_8001A744
