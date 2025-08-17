.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80037738
    /* 27F38 80037738 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 27F3C 8003773C 0B008018 */  blez       $a0, .L8003776C
    /* 27F40 80037740 1000BFAF */   sw        $ra, 0x10($sp)
    /* 27F44 80037744 FFFF8330 */  andi       $v1, $a0, 0xFFFF
    /* 27F48 80037748 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* 27F4C 8003774C 2A104300 */  slt        $v0, $v0, $v1
    /* 27F50 80037750 06004014 */  bnez       $v0, .L8003776C
    /* 27F54 80037754 0F00023C */   lui       $v0, (0xF0000 >> 16)
    /* 27F58 80037758 24108200 */  and        $v0, $a0, $v0
    /* 27F5C 8003775C 03004010 */  beqz       $v0, .L8003776C
    /* 27F60 80037760 00000000 */   nop
    /* 27F64 80037764 DFDD000C */  jal        func_8003777C
    /* 27F68 80037768 FFFF8430 */   andi      $a0, $a0, 0xFFFF
  .L8003776C:
    /* 27F6C 8003776C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 27F70 80037770 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 27F74 80037774 0800E003 */  jr         $ra
    /* 27F78 80037778 00000000 */   nop
.size func_80037738, . - func_80037738
