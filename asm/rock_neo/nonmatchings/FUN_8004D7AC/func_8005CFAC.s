.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005CFAC
    /* 4D7AC 8005CFAC 06004010 */  beqz       $v0, .L8005CFC8
    /* 4D7B0 8005CFB0 40100400 */   sll       $v0, $a0, 1
    /* 4D7B4 8005CFB4 18004286 */  lh         $v0, 0x18($s2)
    /* 4D7B8 8005CFB8 1A004386 */  lh         $v1, 0x1A($s2)
    /* 4D7BC 8005CFBC 21800202 */  addu       $s0, $s0, $v0
    /* 4D7C0 8005CFC0 2130C300 */  addu       $a2, $a2, $v1
    /* 4D7C4 8005CFC4 40100400 */  sll        $v0, $a0, 1
  .L8005CFC8:
    /* 4D7C8 8005CFC8 21104400 */  addu       $v0, $v0, $a0
    /* 4D7CC 8005CFCC C0100200 */  sll        $v0, $v0, 3
    /* 4D7D0 8005CFD0 21104400 */  addu       $v0, $v0, $a0
    /* 4D7D4 8005CFD4 80880200 */  sll        $s1, $v0, 2
    /* 4D7D8 8005CFD8 0980153C */  lui        $s5, %hi(D_8008D688)
    /* 4D7DC 8005CFDC 88D6B526 */  addiu      $s5, $s5, %lo(D_8008D688)
    /* 4D7E0 8005CFE0 21203502 */  addu       $a0, $s1, $s5
    /* 4D7E4 8005CFE4 002C1000 */  sll        $a1, $s0, 16
    /* 4D7E8 8005CFE8 032C0500 */  sra        $a1, $a1, 16
    /* 4D7EC 8005CFEC 00140600 */  sll        $v0, $a2, 16
    /* 4D7F0 8005CFF0 039C0200 */  sra        $s3, $v0, 16
    /* 4D7F4 8005CFF4 21306002 */  addu       $a2, $s3, $zero
    /* 4D7F8 8005CFF8 A674010C */  jal        func_8005D298
    /* 4D7FC 8005CFFC 21380000 */   addu      $a3, $zero, $zero
    /* 4D800 8005D000 1400A426 */  addiu      $a0, $s5, 0x14
    /* 4D804 8005D004 21202402 */  addu       $a0, $s1, $a0
    /* 4D808 8005D008 23101702 */  subu       $v0, $s0, $s7
    /* 4D80C 8005D00C 00140200 */  sll        $v0, $v0, 16
    /* 4D810 8005D010 03B40200 */  sra        $s6, $v0, 16
    /* 4D814 8005D014 2128C002 */  addu       $a1, $s6, $zero
    /* 4D818 8005D018 21306002 */  addu       $a2, $s3, $zero
    /* 4D81C 8005D01C A674010C */  jal        func_8005D298
    /* 4D820 8005D020 21380000 */   addu      $a3, $zero, $zero
    /* 4D824 8005D024 1E00801A */  blez       $s4, .L8005D0A0
    /* 4D828 8005D028 3C00A426 */   addiu     $a0, $s5, 0x3C
    /* 4D82C 8005D02C 21202402 */  addu       $a0, $s1, $a0
    /* 4D830 8005D030 23801402 */  subu       $s0, $s0, $s4
    /* 4D834 8005D034 01000526 */  addiu      $a1, $s0, 0x1
    /* 4D838 8005D038 002C0500 */  sll        $a1, $a1, 16
    /* 4D83C 8005D03C 032C0500 */  sra        $a1, $a1, 16
    /* 4D840 8005D040 21306002 */  addu       $a2, $s3, $zero
    /* 4D844 8005D044 0980013C */  lui        $at, %hi(D_8008D6CE)
    /* 4D848 8005D048 21083100 */  addu       $at, $at, $s1
    /* 4D84C 8005D04C CED62794 */  lhu        $a3, %lo(D_8008D6CE)($at)
    /* 4D850 8005D050 1000428E */  lw         $v0, 0x10($s2)
    /* 4D854 8005D054 003A0700 */  sll        $a3, $a3, 8
    /* 4D858 8005D058 2538F400 */  or         $a3, $a3, $s4
    /* 4D85C 8005D05C FFFFE730 */  andi       $a3, $a3, 0xFFFF
    /* 4D860 8005D060 E774010C */  jal        func_8005D39C
    /* 4D864 8005D064 1000A2AF */   sw        $v0, 0x10($sp)
    /* 4D868 8005D068 5000A426 */  addiu      $a0, $s5, 0x50
    /* 4D86C 8005D06C 21202402 */  addu       $a0, $s1, $a0
    /* 4D870 8005D070 00841000 */  sll        $s0, $s0, 16
    /* 4D874 8005D074 032C1000 */  sra        $a1, $s0, 16
    /* 4D878 8005D078 21306002 */  addu       $a2, $s3, $zero
    /* 4D87C 8005D07C 0980013C */  lui        $at, %hi(D_8008D6E2)
    /* 4D880 8005D080 21083100 */  addu       $at, $at, $s1
    /* 4D884 8005D084 E2D62794 */  lhu        $a3, %lo(D_8008D6E2)($at)
    /* 4D888 8005D088 1000428E */  lw         $v0, 0x10($s2)
    /* 4D88C 8005D08C 003A0700 */  sll        $a3, $a3, 8
    /* 4D890 8005D090 0100E734 */  ori        $a3, $a3, 0x1
    /* 4D894 8005D094 01FFE730 */  andi       $a3, $a3, 0xFF01
    /* 4D898 8005D098 E774010C */  jal        func_8005D39C
    /* 4D89C 8005D09C 1000A2AF */   sw        $v0, 0x10($sp)
  .L8005D0A0:
    /* 4D8A0 8005D0A0 2800A426 */  addiu      $a0, $s5, 0x28
    /* 4D8A4 8005D0A4 21202402 */  addu       $a0, $s1, $a0
    /* 4D8A8 8005D0A8 2128C002 */  addu       $a1, $s6, $zero
    /* 4D8AC 8005D0AC 0980013C */  lui        $at, %hi(D_8008D6BA)
    /* 4D8B0 8005D0B0 21083100 */  addu       $at, $at, $s1
    /* 4D8B4 8005D0B4 BAD62794 */  lhu        $a3, %lo(D_8008D6BA)($at)
    /* 4D8B8 8005D0B8 21306002 */  addu       $a2, $s3, $zero
    /* 4D8BC 8005D0BC 003A0700 */  sll        $a3, $a3, 8
    /* 4D8C0 8005D0C0 2538F700 */  or         $a3, $a3, $s7
    /* 4D8C4 8005D0C4 A674010C */  jal        func_8005D298
    /* 4D8C8 8005D0C8 FFFFE730 */   andi      $a3, $a3, 0xFFFF
    /* 4D8CC 8005D0CC 3800BF8F */  lw         $ra, 0x38($sp)
    /* 4D8D0 8005D0D0 3400B78F */  lw         $s7, 0x34($sp)
    /* 4D8D4 8005D0D4 3000B68F */  lw         $s6, 0x30($sp)
    /* 4D8D8 8005D0D8 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 4D8DC 8005D0DC 2800B48F */  lw         $s4, 0x28($sp)
    /* 4D8E0 8005D0E0 2400B38F */  lw         $s3, 0x24($sp)
    /* 4D8E4 8005D0E4 2000B28F */  lw         $s2, 0x20($sp)
    /* 4D8E8 8005D0E8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4D8EC 8005D0EC 1800B08F */  lw         $s0, 0x18($sp)
    /* 4D8F0 8005D0F0 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 4D8F4 8005D0F4 0800E003 */  jr         $ra
    /* 4D8F8 8005D0F8 00000000 */   nop
.size func_8005CFAC, . - func_8005CFAC
