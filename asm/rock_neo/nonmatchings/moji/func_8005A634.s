.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005A634
    /* 4AE34 8005A634 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4AE38 8005A638 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4AE3C 8005A63C 21808000 */  addu       $s0, $a0, $zero
    /* 4AE40 8005A640 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 4AE44 8005A644 0000048E */  lw         $a0, 0x0($s0)
    /* 4AE48 8005A648 0001053C */  lui        $a1, (0x1000000 >> 16)
    /* 4AE4C 8005A64C 24108500 */  and        $v0, $a0, $a1
    /* 4AE50 8005A650 0D004014 */  bnez       $v0, .L8005A688
    /* 4AE54 8005A654 BFFF023C */   lui       $v0, (0xFFBFFFFF >> 16)
    /* 4AE58 8005A658 FFFF033C */  lui        $v1, (0xFFFF7FFF >> 16)
    /* 4AE5C 8005A65C FF7F6334 */  ori        $v1, $v1, (0xFFFF7FFF & 0xFFFF)
    /* 4AE60 8005A660 25108500 */  or         $v0, $a0, $a1
    /* 4AE64 8005A664 24104300 */  and        $v0, $v0, $v1
    /* 4AE68 8005A668 79000392 */  lbu        $v1, 0x79($s0)
    /* 4AE6C 8005A66C 000002AE */  sw         $v0, 0x0($s0)
    /* 4AE70 8005A670 05000224 */  addiu      $v0, $zero, 0x5
    /* 4AE74 8005A674 040002A6 */  sh         $v0, 0x4($s0)
    /* 4AE78 8005A678 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 4AE7C 8005A67C 710003A2 */  sb         $v1, 0x71($s0)
    /* 4AE80 8005A680 ED0F82A3 */  sb         $v0, %gp_rel(D_80098851)($gp)
    /* 4AE84 8005A684 BFFF023C */  lui        $v0, (0xFFBFFFFF >> 16)
  .L8005A688:
    /* 4AE88 8005A688 FFFF4234 */  ori        $v0, $v0, (0xFFBFFFFF & 0xFFFF)
    /* 4AE8C 8005A68C 0000038E */  lw         $v1, 0x0($s0)
    /* 4AE90 8005A690 04000486 */  lh         $a0, 0x4($s0)
    /* 4AE94 8005A694 24186200 */  and        $v1, $v1, $v0
    /* 4AE98 8005A698 21108000 */  addu       $v0, $a0, $zero
    /* 4AE9C 8005A69C 6600801C */  bgtz       $a0, .L8005A838
    /* 4AEA0 8005A6A0 000003AE */   sw        $v1, 0x0($s0)
    /* 4AEA4 8005A6A4 CA8F010C */  jal        Game_logo_kill
    /* 4AEA8 8005A6A8 21200000 */   addu      $a0, $zero, $zero
    /* 4AEAC 8005A6AC CA8F010C */  jal        Game_logo_kill
    /* 4AEB0 8005A6B0 01000424 */   addiu     $a0, $zero, 0x1
    /* 4AEB4 8005A6B4 B800028E */  lw         $v0, 0xB8($s0)
    /* 4AEB8 8005A6B8 0810033C */  lui        $v1, (0x10080000 >> 16)
    /* 4AEBC 8005A6BC 24104300 */  and        $v0, $v0, $v1
    /* 4AEC0 8005A6C0 13004010 */  beqz       $v0, .L8005A710
    /* 4AEC4 8005A6C4 83000424 */   addiu     $a0, $zero, 0x83
    /* 4AEC8 8005A6C8 01000524 */  addiu      $a1, $zero, 0x1
    /* 4AECC 8005A6CC 0268000C */  jal        Sound_call
    /* 4AED0 8005A6D0 21300000 */   addu      $a2, $zero, $zero
    /* 4AED4 8005A6D4 FFFE043C */  lui        $a0, (0xFEFFFFFF >> 16)
    /* 4AED8 8005A6D8 4400058E */  lw         $a1, 0x44($s0)
    /* 4AEDC 8005A6DC 71000292 */  lbu        $v0, 0x71($s0)
    /* 4AEE0 8005A6E0 FFFF8434 */  ori        $a0, $a0, (0xFEFFFFFF & 0xFFFF)
    /* 4AEE4 8005A6E4 790002A2 */  sb         $v0, 0x79($s0)
    /* 4AEE8 8005A6E8 0000028E */  lw         $v0, 0x0($s0)
    /* 4AEEC 8005A6EC 6C00038E */  lw         $v1, 0x6C($s0)
    /* 4AEF0 8005A6F0 24104400 */  and        $v0, $v0, $a0
    /* 4AEF4 8005A6F4 000002AE */  sw         $v0, 0x0($s0)
    /* 4AEF8 8005A6F8 01006490 */  lbu        $a0, 0x1($v1)
    /* 4AEFC 8005A6FC 02006690 */  lbu        $a2, 0x2($v1)
    /* 4AF00 8005A700 0B4E010C */  jal        MojiTaskExec
    /* 4AF04 8005A704 00000000 */   nop
    /* 4AF08 8005A708 E5690108 */  j          .L8005A794
    /* 4AF0C 8005A70C FF000224 */   addiu     $v0, $zero, 0xFF
  .L8005A710:
    /* 4AF10 8005A710 BA000296 */  lhu        $v0, 0xBA($s0)
    /* 4AF14 8005A714 00000000 */  nop
    /* 4AF18 8005A718 00404230 */  andi       $v0, $v0, 0x4000
    /* 4AF1C 8005A71C 27004010 */  beqz       $v0, .L8005A7BC
    /* 4AF20 8005A720 82000424 */   addiu     $a0, $zero, 0x82
    /* 4AF24 8005A724 01000524 */  addiu      $a1, $zero, 0x1
    /* 4AF28 8005A728 0268000C */  jal        Sound_call
    /* 4AF2C 8005A72C 21300000 */   addu      $a2, $zero, $zero
    /* 4AF30 8005A730 ED0F8593 */  lbu        $a1, %gp_rel(D_80098851)($gp)
    /* 4AF34 8005A734 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 4AF38 8005A738 1900A210 */  beq        $a1, $v0, .L8005A7A0
    /* 4AF3C 8005A73C 00000000 */   nop
    /* 4AF40 8005A740 71000282 */  lb         $v0, 0x71($s0)
    /* 4AF44 8005A744 38118393 */  lbu        $v1, %gp_rel(D_8009899C)($gp)
    /* 4AF48 8005A748 0B80043C */  lui        $a0, %hi(Player_work + 0x454)
    /* 4AF4C 8005A74C 04568424 */  addiu      $a0, $a0, %lo(Player_work + 0x454)
    /* 4AF50 8005A750 21104300 */  addu       $v0, $v0, $v1
    /* 4AF54 8005A754 21104400 */  addu       $v0, $v0, $a0
    /* 4AF58 8005A758 0B80013C */  lui        $at, %hi(Player_work + 0x454)
    /* 4AF5C 8005A75C 21082500 */  addu       $at, $at, $a1
    /* 4AF60 8005A760 04562390 */  lbu        $v1, %lo(Player_work + 0x454)($at)
    /* 4AF64 8005A764 00004490 */  lbu        $a0, 0x0($v0)
    /* 4AF68 8005A768 000043A0 */  sb         $v1, 0x0($v0)
    /* 4AF6C 8005A76C ED0F8293 */  lbu        $v0, %gp_rel(D_80098851)($gp)
    /* 4AF70 8005A770 0B80013C */  lui        $at, %hi(Player_work + 0x454)
    /* 4AF74 8005A774 21082200 */  addu       $at, $at, $v0
    /* 4AF78 8005A778 045624A0 */  sb         $a0, %lo(Player_work + 0x454)($at)
    /* 4AF7C 8005A77C C884010C */  jal        Sub_screen_rb_parts_set
    /* 4AF80 8005A780 00000000 */   nop
    /* 4AF84 8005A784 71000292 */  lbu        $v0, 0x71($s0)
    /* 4AF88 8005A788 00000000 */  nop
    /* 4AF8C 8005A78C 790002A2 */  sb         $v0, 0x79($s0)
    /* 4AF90 8005A790 FF000224 */  addiu      $v0, $zero, 0xFF
  .L8005A794:
    /* 4AF94 8005A794 ED0F82A3 */  sb         $v0, %gp_rel(D_80098851)($gp)
    /* 4AF98 8005A798 116A0108 */  j          .L8005A844
    /* 4AF9C 8005A79C 21100000 */   addu      $v0, $zero, $zero
  .L8005A7A0:
    /* 4AFA0 8005A7A0 71000292 */  lbu        $v0, 0x71($s0)
    /* 4AFA4 8005A7A4 38118393 */  lbu        $v1, %gp_rel(D_8009899C)($gp)
    /* 4AFA8 8005A7A8 00000000 */  nop
    /* 4AFAC 8005A7AC 21104300 */  addu       $v0, $v0, $v1
    /* 4AFB0 8005A7B0 ED0F82A3 */  sb         $v0, %gp_rel(D_80098851)($gp)
    /* 4AFB4 8005A7B4 116A0108 */  j          .L8005A844
    /* 4AFB8 8005A7B8 21100000 */   addu      $v0, $zero, $zero
  .L8005A7BC:
    /* 4AFBC 8005A7BC 38118393 */  lbu        $v1, %gp_rel(D_8009899C)($gp)
    /* 4AFC0 8005A7C0 00000000 */  nop
    /* 4AFC4 8005A7C4 11006010 */  beqz       $v1, .L8005A80C
    /* 4AFC8 8005A7C8 00000000 */   nop
    /* 4AFCC 8005A7CC 70118293 */  lbu        $v0, %gp_rel(D_800989D4)($gp)
    /* 4AFD0 8005A7D0 00000000 */  nop
    /* 4AFD4 8005A7D4 2B106200 */  sltu       $v0, $v1, $v0
    /* 4AFD8 8005A7D8 06004010 */  beqz       $v0, .L8005A7F4
    /* 4AFDC 8005A7DC 21200000 */   addu      $a0, $zero, $zero
    /* 4AFE0 8005A7E0 0200053C */  lui        $a1, (0x20018 >> 16)
    /* 4AFE4 8005A7E4 F08F010C */  jal        func_80063FC0
    /* 4AFE8 8005A7E8 1800A534 */   ori       $a1, $a1, (0x20018 & 0xFFFF)
    /* 4AFEC 8005A7EC 096A0108 */  j          .L8005A824
    /* 4AFF0 8005A7F0 01000424 */   addiu     $a0, $zero, 0x1
  .L8005A7F4:
    /* 4AFF4 8005A7F4 05006010 */  beqz       $v1, .L8005A80C
    /* 4AFF8 8005A7F8 0200053C */   lui       $a1, (0x20018 >> 16)
    /* 4AFFC 8005A7FC F08F010C */  jal        func_80063FC0
    /* 4B000 8005A800 1800A534 */   ori       $a1, $a1, (0x20018 & 0xFFFF)
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
.size func_8005A634, . - func_8005A634
