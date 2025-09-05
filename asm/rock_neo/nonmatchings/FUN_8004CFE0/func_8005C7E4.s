.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005C7E4
    /* 4CFE4 8005C7E4 0B008290 */  lbu        $v0, 0xB($a0)
    /* 4CFE8 8005C7E8 00000000 */  nop
    /* 4CFEC 8005C7EC 01004224 */  addiu      $v0, $v0, 0x1
    /* 4CFF0 8005C7F0 FF710108 */  j          .L8005C7FC
    /* 4CFF4 8005C7F4 0B0082A0 */   sb        $v0, 0xB($a0)
  .L8005C7F8:
    /* 4CFF8 8005C7F8 0B0080A0 */  sb         $zero, 0xB($a0)
  .L8005C7FC:
    /* 4CFFC 8005C7FC 18008284 */  lh         $v0, 0x18($a0)
    /* 4D000 8005C800 00000000 */  nop
    /* 4D004 8005C804 96004228 */  slti       $v0, $v0, 0x96
    /* 4D008 8005C808 0D004010 */  beqz       $v0, .L8005C840
    /* 4D00C 8005C80C 00000000 */   nop
    /* 4D010 8005C810 0B008380 */  lb         $v1, 0xB($a0)
    /* 4D014 8005C814 00000000 */  nop
    /* 4D018 8005C818 5A006228 */  slti       $v0, $v1, 0x5A
    /* 4D01C 8005C81C 08004010 */  beqz       $v0, .L8005C840
    /* 4D020 8005C820 00000000 */   nop
    /* 4D024 8005C824 0A008280 */  lb         $v0, 0xA($a0)
    /* 4D028 8005C828 00000000 */  nop
    /* 4D02C 8005C82C 3C004228 */  slti       $v0, $v0, 0x3C
    /* 4D030 8005C830 05004014 */  bnez       $v0, .L8005C848
    /* 4D034 8005C834 3C006228 */   slti      $v0, $v1, 0x3C
    /* 4D038 8005C838 03004014 */  bnez       $v0, .L8005C848
    /* 4D03C 8005C83C 00000000 */   nop
  .L8005C840:
    /* 4D040 8005C840 4A75010C */  jal        func_8005D528
    /* 4D044 8005C844 00000000 */   nop
  .L8005C848:
    /* 4D048 8005C848 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4D04C 8005C84C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4D050 8005C850 0800E003 */  jr         $ra
.size func_8005C7E4, . - func_8005C7E4
