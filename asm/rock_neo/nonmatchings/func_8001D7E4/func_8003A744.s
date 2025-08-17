.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003A744
    /* 2AF44 8003A744 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 2AF48 8003A748 4800B4AF */  sw         $s4, 0x48($sp)
    /* 2AF4C 8003A74C 06001424 */  addiu      $s4, $zero, 0x6
    /* 2AF50 8003A750 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 2AF54 8003A754 FF00153C */  lui        $s5, (0xFFFFFF >> 16)
    /* 2AF58 8003A758 FFFFB536 */  ori        $s5, $s5, (0xFFFFFF & 0xFFFF)
    /* 2AF5C 8003A75C 4400B3AF */  sw         $s3, 0x44($sp)
    /* 2AF60 8003A760 1F80133C */  lui        $s3, (0x801F6048 >> 16)
    /* 2AF64 8003A764 9C10848F */  lw         $a0, %gp_rel(D_80098900)($gp)
    /* 2AF68 8003A768 0A80053C */  lui        $a1, %hi(D_80098904)
    /* 2AF6C 8003A76C 0489A58C */  lw         $a1, %lo(D_80098904)($a1)
    /* 2AF70 8003A770 0A80063C */  lui        $a2, %hi(D_80098908)
    /* 2AF74 8003A774 0889C68C */  lw         $a2, %lo(D_80098908)($a2)
    /* 2AF78 8003A778 48607336 */  ori        $s3, $s3, (0x801F6048 & 0xFFFF)
    /* 2AF7C 8003A77C 5000BFAF */  sw         $ra, 0x50($sp)
    /* 2AF80 8003A780 4000B2AF */  sw         $s2, 0x40($sp)
    /* 2AF84 8003A784 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 2AF88 8003A788 36EC010C */  jal        SetBackColor
    /* 2AF8C 8003A78C 3800B0AF */   sw        $s0, 0x38($sp)
    /* 2AF90 8003A790 0C108297 */  lhu        $v0, %gp_rel(D_80098870)($gp)
    /* 2AF94 8003A794 0A80033C */  lui        $v1, %hi(D_80098872)
    /* 2AF98 8003A798 72886394 */  lhu        $v1, %lo(D_80098872)($v1)
    /* 2AF9C 8003A79C 0A80053C */  lui        $a1, %hi(D_80098874)
    /* 2AFA0 8003A7A0 7488A594 */  lhu        $a1, %lo(D_80098874)($a1)
    /* 2AFA4 8003A7A4 0A80063C */  lui        $a2, %hi(D_80098878)
    /* 2AFA8 8003A7A8 7888C694 */  lhu        $a2, %lo(D_80098878)($a2)
    /* 2AFAC 8003A7AC 0A80073C */  lui        $a3, %hi(D_8009887A)
    /* 2AFB0 8003A7B0 7A88E794 */  lhu        $a3, %lo(D_8009887A)($a3)
    /* 2AFB4 8003A7B4 0A80083C */  lui        $t0, %hi(D_8009887C)
    /* 2AFB8 8003A7B8 7C880895 */  lhu        $t0, %lo(D_8009887C)($t0)
    /* 2AFBC 8003A7BC 0A80093C */  lui        $t1, %hi(D_80098880)
    /* 2AFC0 8003A7C0 80882995 */  lhu        $t1, %lo(D_80098880)($t1)
    /* 2AFC4 8003A7C4 0A800A3C */  lui        $t2, %hi(D_80098882)
    /* 2AFC8 8003A7C8 82884A95 */  lhu        $t2, %lo(D_80098882)($t2)
    /* 2AFCC 8003A7CC 0A800B3C */  lui        $t3, %hi(D_80098884)
    /* 2AFD0 8003A7D0 84886B95 */  lhu        $t3, %lo(D_80098884)($t3)
    /* 2AFD4 8003A7D4 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2AFD8 8003A7D8 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 2AFDC 8003A7DC 1200A3A7 */  sh         $v1, 0x12($sp)
    /* 2AFE0 8003A7E0 1400A5A7 */  sh         $a1, 0x14($sp)
    /* 2AFE4 8003A7E4 1600A6A7 */  sh         $a2, 0x16($sp)
    /* 2AFE8 8003A7E8 1800A7A7 */  sh         $a3, 0x18($sp)
    /* 2AFEC 8003A7EC 1A00A8A7 */  sh         $t0, 0x1A($sp)
    /* 2AFF0 8003A7F0 1C00A9A7 */  sh         $t1, 0x1C($sp)
    /* 2AFF4 8003A7F4 1E00AAA7 */  sh         $t2, 0x1E($sp)
    /* 2AFF8 8003A7F8 D2EB010C */  jal        SetLightMatrix
    /* 2AFFC 8003A7FC 2000ABA7 */   sh        $t3, 0x20($sp)
    /* 2B000 8003A800 1000A427 */  addiu      $a0, $sp, 0x10
    /* 2B004 8003A804 F40F8293 */  lbu        $v0, %gp_rel(D_80098858)($gp)
    /* 2B008 8003A808 0A80033C */  lui        $v1, %hi(D_8009885A)
    /* 2B00C 8003A80C 5A886390 */  lbu        $v1, %lo(D_8009885A)($v1)
    /* 2B010 8003A810 00110200 */  sll        $v0, $v0, 4
    /* 2B014 8003A814 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 2B018 8003A818 0A80023C */  lui        $v0, %hi(D_80098859)
    /* 2B01C 8003A81C 59884290 */  lbu        $v0, %lo(D_80098859)($v0)
    /* 2B020 8003A820 00190300 */  sll        $v1, $v1, 4
    /* 2B024 8003A824 1C00A3A7 */  sh         $v1, 0x1C($sp)
    /* 2B028 8003A828 0A80033C */  lui        $v1, %hi(D_8009885D)
    /* 2B02C 8003A82C 5D886390 */  lbu        $v1, %lo(D_8009885D)($v1)
    /* 2B030 8003A830 00110200 */  sll        $v0, $v0, 4
    /* 2B034 8003A834 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 2B038 8003A838 0A80023C */  lui        $v0, %hi(D_8009885C)
    /* 2B03C 8003A83C 5C884290 */  lbu        $v0, %lo(D_8009885C)($v0)
    /* 2B040 8003A840 00190300 */  sll        $v1, $v1, 4
    /* 2B044 8003A844 1800A3A7 */  sh         $v1, 0x18($sp)
    /* 2B048 8003A848 0A80033C */  lui        $v1, %hi(D_80098860)
    /* 2B04C 8003A84C 60886390 */  lbu        $v1, %lo(D_80098860)($v1)
    /* 2B050 8003A850 00110200 */  sll        $v0, $v0, 4
    /* 2B054 8003A854 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 2B058 8003A858 0A80023C */  lui        $v0, %hi(D_8009885E)
    /* 2B05C 8003A85C 5E884290 */  lbu        $v0, %lo(D_8009885E)($v0)
    /* 2B060 8003A860 00190300 */  sll        $v1, $v1, 4
    /* 2B064 8003A864 1400A3A7 */  sh         $v1, 0x14($sp)
    /* 2B068 8003A868 0A80033C */  lui        $v1, %hi(D_80098862)
    /* 2B06C 8003A86C 62886390 */  lbu        $v1, %lo(D_80098862)($v1)
    /* 2B070 8003A870 00110200 */  sll        $v0, $v0, 4
    /* 2B074 8003A874 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* 2B078 8003A878 0A80023C */  lui        $v0, %hi(D_80098861)
    /* 2B07C 8003A87C 61884290 */  lbu        $v0, %lo(D_80098861)($v0)
    /* 2B080 8003A880 00190300 */  sll        $v1, $v1, 4
    /* 2B084 8003A884 2000A3A7 */  sh         $v1, 0x20($sp)
    /* 2B088 8003A888 00110200 */  sll        $v0, $v0, 4
    /* 2B08C 8003A88C DEEB010C */  jal        SetColorMatrix
    /* 2B090 8003A890 1A00A2A7 */   sh        $v0, 0x1A($sp)
  .L8003A894:
    /* 2B094 8003A894 0000628E */  lw         $v0, 0x0($s3)
    /* 2B098 8003A898 00000000 */  nop
    /* 2B09C 8003A89C 24205500 */  and        $a0, $v0, $s5
    /* 2B0A0 8003A8A0 0000838C */  lw         $v1, 0x0($a0)
    /* 2B0A4 8003A8A4 21880000 */  addu       $s1, $zero, $zero
    /* 2B0A8 8003A8A8 FF006230 */  andi       $v0, $v1, 0xFF
    /* 2B0AC 8003A8AC 80100200 */  sll        $v0, $v0, 2
    /* 2B0B0 8003A8B0 04004224 */  addiu      $v0, $v0, 0x4
    /* 2B0B4 8003A8B4 003F6330 */  andi       $v1, $v1, 0x3F00
    /* 2B0B8 8003A8B8 C2910300 */  srl        $s2, $v1, 7
    /* 2B0BC 8003A8BC 08004012 */  beqz       $s2, .L8003A8E0
    /* 2B0C0 8003A8C0 21208200 */   addu      $a0, $a0, $v0
    /* 2B0C4 8003A8C4 21808000 */  addu       $s0, $a0, $zero
  .L8003A8C8:
    /* 2B0C8 8003A8C8 46EA000C */  jal        func_8003A918
    /* 2B0CC 8003A8CC 21200002 */   addu      $a0, $s0, $zero
    /* 2B0D0 8003A8D0 02003126 */  addiu      $s1, $s1, 0x2
    /* 2B0D4 8003A8D4 2B103202 */  sltu       $v0, $s1, $s2
    /* 2B0D8 8003A8D8 FBFF4014 */  bnez       $v0, .L8003A8C8
    /* 2B0DC 8003A8DC 08001026 */   addiu     $s0, $s0, 0x8
  .L8003A8E0:
    /* 2B0E0 8003A8E0 01009426 */  addiu      $s4, $s4, 0x1
    /* 2B0E4 8003A8E4 0C00822E */  sltiu      $v0, $s4, 0xC
    /* 2B0E8 8003A8E8 EAFF4014 */  bnez       $v0, .L8003A894
    /* 2B0EC 8003A8EC 04007326 */   addiu     $s3, $s3, 0x4
    /* 2B0F0 8003A8F0 5000BF8F */  lw         $ra, 0x50($sp)
    /* 2B0F4 8003A8F4 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 2B0F8 8003A8F8 4800B48F */  lw         $s4, 0x48($sp)
    /* 2B0FC 8003A8FC 4400B38F */  lw         $s3, 0x44($sp)
    /* 2B100 8003A900 4000B28F */  lw         $s2, 0x40($sp)
    /* 2B104 8003A904 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 2B108 8003A908 3800B08F */  lw         $s0, 0x38($sp)
    /* 2B10C 8003A90C 5800BD27 */  addiu      $sp, $sp, 0x58
    /* 2B110 8003A910 0800E003 */  jr         $ra
    /* 2B114 8003A914 00000000 */   nop
.size func_8003A744, . - func_8003A744
