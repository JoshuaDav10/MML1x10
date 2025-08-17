.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80037694
    /* 27E94 80037694 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 27E98 80037698 1400B1AF */  sw         $s1, 0x14($sp)
    /* 27E9C 8003769C 21888000 */  addu       $s1, $a0, $zero
    /* 27EA0 800376A0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 27EA4 800376A4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 27EA8 800376A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 27EAC 800376AC C400228E */  lw         $v0, 0xC4($s1)
    /* 27EB0 800376B0 00FF033C */  lui        $v1, (0xFF000000 >> 16)
    /* 27EB4 800376B4 24104300 */  and        $v0, $v0, $v1
    /* 27EB8 800376B8 03004010 */  beqz       $v0, .L800376C8
    /* 27EBC 800376BC 2190A000 */   addu      $s2, $a1, $zero
    /* 27EC0 800376C0 C7DD0008 */  j          .L8003771C
    /* 27EC4 800376C4 FF7F0224 */   addiu     $v0, $zero, 0x7FFF
  .L800376C8:
    /* 27EC8 800376C8 0927010C */  jal        func_80049C24
    /* 27ECC 800376CC 21202002 */   addu      $a0, $s1, $zero
    /* 27ED0 800376D0 21804000 */  addu       $s0, $v0, $zero
    /* 27ED4 800376D4 10000012 */  beqz       $s0, .L80037718
    /* 27ED8 800376D8 00000000 */   nop
    /* 27EDC 800376DC 0A00001A */  blez       $s0, .L80037708
    /* 27EE0 800376E0 FFFF0332 */   andi      $v1, $s0, 0xFFFF
    /* 27EE4 800376E4 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* 27EE8 800376E8 2A104300 */  slt        $v0, $v0, $v1
    /* 27EEC 800376EC 06004014 */  bnez       $v0, .L80037708
    /* 27EF0 800376F0 0F00023C */   lui       $v0, (0xF0000 >> 16)
    /* 27EF4 800376F4 24100202 */  and        $v0, $s0, $v0
    /* 27EF8 800376F8 03004010 */  beqz       $v0, .L80037708
    /* 27EFC 800376FC FFFF0432 */   andi      $a0, $s0, 0xFFFF
    /* 27F00 80037700 DFDD000C */  jal        func_8003777C
    /* 27F04 80037704 21284002 */   addu      $a1, $s2, $zero
  .L80037708:
    /* 27F08 80037708 052D010C */  jal        func_8004B414
    /* 27F0C 8003770C 21202002 */   addu      $a0, $s1, $zero
    /* 27F10 80037710 C7DD0008 */  j          .L8003771C
    /* 27F14 80037714 21100002 */   addu      $v0, $s0, $zero
  .L80037718:
    /* 27F18 80037718 21100000 */  addu       $v0, $zero, $zero
  .L8003771C:
    /* 27F1C 8003771C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 27F20 80037720 1800B28F */  lw         $s2, 0x18($sp)
    /* 27F24 80037724 1400B18F */  lw         $s1, 0x14($sp)
    /* 27F28 80037728 1000B08F */  lw         $s0, 0x10($sp)
    /* 27F2C 8003772C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 27F30 80037730 0800E003 */  jr         $ra
    /* 27F34 80037734 00000000 */   nop
.size func_80037694, . - func_80037694
