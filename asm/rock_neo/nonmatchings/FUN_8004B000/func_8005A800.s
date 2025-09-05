.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A800
    /* 4B000 8005A800 1800A534 */  ori        $a1, $a1, 0x18
    /* 4B004 8005A804 116A0108 */  j          .L8005A844
    /* 4B008 8005A808 21100000 */   addu      $v0, $zero, $zero
  .L8005A80C:
    /* 4B00C 8005A80C 38118293 */  lbu        $v0, %gp_rel(D_8009899C)($gp)
    /* 4B010 8005A810 70118393 */  lbu        $v1, %gp_rel(D_800989D4)($gp)
    /* 4B014 8005A814 00000000 */  nop
    /* 4B018 8005A818 2B104300 */  sltu       $v0, $v0, $v1
    /* 4B01C 8005A81C 08004010 */  beqz       $v0, .L8005A840
    /* 4B020 8005A820 21200000 */   addu      $a0, $zero, $zero
  .L8005A824:
    /* 4B024 8005A824 0200053C */  lui        $a1, (0x20019 >> 16)
    /* 4B028 8005A828 F08F010C */  jal        func_80063FC0
    /* 4B02C 8005A82C 1900A534 */   ori       $a1, $a1, (0x20019 & 0xFFFF)
    /* 4B030 8005A830 116A0108 */  j          .L8005A844
    /* 4B034 8005A834 21100000 */   addu      $v0, $zero, $zero
  .L8005A838:
    /* 4B038 8005A838 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4B03C 8005A83C 040002A6 */  sh         $v0, 0x4($s0)
  .L8005A840:
    /* 4B040 8005A840 21100000 */  addu       $v0, $zero, $zero
  .L8005A844:
    /* 4B044 8005A844 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4B048 8005A848 1800B08F */  lw         $s0, 0x18($sp)
    /* 4B04C 8005A84C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4B050 8005A850 0800E003 */  jr         $ra
    /* 4B054 8005A854 00000000 */   nop
.size func_8005A800, . - func_8005A800
