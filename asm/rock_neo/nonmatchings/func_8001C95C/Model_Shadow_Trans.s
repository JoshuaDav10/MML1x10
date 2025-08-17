.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Model_Shadow_Trans
    /* 1CF94 8002C794 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1CF98 8002C798 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1CF9C 8002C79C 0A80123C */  lui        $s2, %hi(D_800987D8)
    /* 1CFA0 8002C7A0 D887528E */  lw         $s2, %lo(D_800987D8)($s2)
    /* 1CFA4 8002C7A4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1CFA8 8002C7A8 21888000 */  addu       $s1, $a0, $zero
    /* 1CFAC 8002C7AC 2000B4AF */  sw         $s4, 0x20($sp)
    /* 1CFB0 8002C7B0 21A0A000 */  addu       $s4, $a1, $zero
    /* 1CFB4 8002C7B4 2400B5AF */  sw         $s5, 0x24($sp)
    /* 1CFB8 8002C7B8 21A8C000 */  addu       $s5, $a2, $zero
    /* 1CFBC 8002C7BC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1CFC0 8002C7C0 2198E000 */  addu       $s3, $a3, $zero
    /* 1CFC4 8002C7C4 2800BFAF */  sw         $ra, 0x28($sp)
    /* 1CFC8 8002C7C8 4000422E */  sltiu      $v0, $s2, 0x40
    /* 1CFCC 8002C7CC 35004010 */  beqz       $v0, .L8002C8A4
    /* 1CFD0 8002C7D0 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1CFD4 8002C7D4 40101200 */  sll        $v0, $s2, 1
    /* 1CFD8 8002C7D8 21105200 */  addu       $v0, $v0, $s2
    /* 1CFDC 8002C7DC 14002396 */  lhu        $v1, 0x14($s1)
    /* 1CFE0 8002C7E0 80800200 */  sll        $s0, $v0, 2
    /* 1CFE4 8002C7E4 0B80013C */  lui        $at, %hi(D_800ACE00)
    /* 1CFE8 8002C7E8 21083000 */  addu       $at, $at, $s0
    /* 1CFEC 8002C7EC 00CE23A4 */  sh         $v1, %lo(D_800ACE00)($at)
    /* 1CFF0 8002C7F0 76002282 */  lb         $v0, 0x76($s1)
    /* 1CFF4 8002C7F4 00000000 */  nop
    /* 1CFF8 8002C7F8 04004010 */  beqz       $v0, .L8002C80C
    /* 1CFFC 8002C7FC 00000000 */   nop
    /* 1D000 8002C800 16002686 */  lh         $a2, 0x16($s1)
    /* 1D004 8002C804 06B20008 */  j          .L8002C818
    /* 1D008 8002C808 00000000 */   nop
  .L8002C80C:
    /* 1D00C 8002C80C 9B23010C */  jal        func_80048E6C
    /* 1D010 8002C810 21202002 */   addu      $a0, $s1, $zero
    /* 1D014 8002C814 21304000 */  addu       $a2, $v0, $zero
  .L8002C818:
    /* 1D018 8002C818 0B80013C */  lui        $at, %hi(D_800ACE02)
    /* 1D01C 8002C81C 21083000 */  addu       $at, $at, $s0
    /* 1D020 8002C820 02CE26A4 */  sh         $a2, %lo(D_800ACE02)($at)
    /* 1D024 8002C824 40201200 */  sll        $a0, $s2, 1
    /* 1D028 8002C828 21209200 */  addu       $a0, $a0, $s2
    /* 1D02C 8002C82C 18002296 */  lhu        $v0, 0x18($s1)
    /* 1D030 8002C830 80200400 */  sll        $a0, $a0, 2
    /* 1D034 8002C834 0B80013C */  lui        $at, %hi(D_800ACE04)
    /* 1D038 8002C838 21082400 */  addu       $at, $at, $a0
    /* 1D03C 8002C83C 04CE22A4 */  sh         $v0, %lo(D_800ACE04)($at)
    /* 1D040 8002C840 80131300 */  sll        $v0, $s3, 14
    /* 1D044 8002C844 56002396 */  lhu        $v1, 0x56($s1)
    /* 1D048 8002C848 16012596 */  lhu        $a1, 0x116($s1)
    /* 1D04C 8002C84C 25108202 */  or         $v0, $s4, $v0
    /* 1D050 8002C850 0B80013C */  lui        $at, %hi(D_800ACE08)
    /* 1D054 8002C854 21082400 */  addu       $at, $at, $a0
    /* 1D058 8002C858 08CE22A4 */  sh         $v0, %lo(D_800ACE08)($at)
    /* 1D05C 8002C85C 83111500 */  sra        $v0, $s5, 6
    /* 1D060 8002C860 00130200 */  sll        $v0, $v0, 12
    /* 1D064 8002C864 23186500 */  subu       $v1, $v1, $a1
    /* 1D068 8002C868 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* 1D06C 8002C86C 25186200 */  or         $v1, $v1, $v0
    /* 1D070 8002C870 0A80023C */  lui        $v0, %hi(D_800987D8)
    /* 1D074 8002C874 D887428C */  lw         $v0, %lo(D_800987D8)($v0)
    /* 1D078 8002C878 0B80013C */  lui        $at, %hi(D_800ACE06)
    /* 1D07C 8002C87C 21082400 */  addu       $at, $at, $a0
    /* 1D080 8002C880 06CE23A4 */  sh         $v1, %lo(D_800ACE06)($at)
    /* 1D084 8002C884 16002396 */  lhu        $v1, 0x16($s1)
    /* 1D088 8002C888 01004224 */  addiu      $v0, $v0, 0x1
    /* 1D08C 8002C88C 2318C300 */  subu       $v1, $a2, $v1
    /* 1D090 8002C890 0A80013C */  lui        $at, %hi(D_800987D8)
    /* 1D094 8002C894 D88722AC */  sw         $v0, %lo(D_800987D8)($at)
    /* 1D098 8002C898 0B80013C */  lui        $at, %hi(D_800ACE0A)
    /* 1D09C 8002C89C 21082400 */  addu       $at, $at, $a0
    /* 1D0A0 8002C8A0 0ACE23A4 */  sh         $v1, %lo(D_800ACE0A)($at)
  .L8002C8A4:
    /* 1D0A4 8002C8A4 2800BF8F */  lw         $ra, 0x28($sp)
    /* 1D0A8 8002C8A8 2400B58F */  lw         $s5, 0x24($sp)
    /* 1D0AC 8002C8AC 2000B48F */  lw         $s4, 0x20($sp)
    /* 1D0B0 8002C8B0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1D0B4 8002C8B4 1800B28F */  lw         $s2, 0x18($sp)
    /* 1D0B8 8002C8B8 1400B18F */  lw         $s1, 0x14($sp)
    /* 1D0BC 8002C8BC 1000B08F */  lw         $s0, 0x10($sp)
    /* 1D0C0 8002C8C0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1D0C4 8002C8C4 0800E003 */  jr         $ra
    /* 1D0C8 8002C8C8 00000000 */   nop
.size Model_Shadow_Trans, . - Model_Shadow_Trans
