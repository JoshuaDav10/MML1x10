.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80046848
    /* 37048 80046848 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3704C 8004684C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 37050 80046850 21808000 */  addu       $s0, $a0, $zero
    /* 37054 80046854 1400BFAF */  sw         $ra, 0x14($sp)
    /* 37058 80046858 03000292 */  lbu        $v0, 0x3($s0)
    /* 3705C 8004685C 00000000 */  nop
    /* 37060 80046860 02004010 */  beqz       $v0, .L8004686C
    /* 37064 80046864 9D000424 */   addiu     $a0, $zero, 0x9D
    /* 37068 80046868 9E000424 */  addiu      $a0, $zero, 0x9E
  .L8004686C:
    /* 3706C 8004686C 1468000C */  jal        Sound_call2
    /* 37070 80046870 38000526 */   addiu     $a1, $s0, 0x38
    /* 37074 80046874 62C6000C */  jal        func_80031988
    /* 37078 80046878 21200002 */   addu      $a0, $s0, $zero
    /* 3707C 8004687C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 37080 80046880 1000B08F */  lw         $s0, 0x10($sp)
    /* 37084 80046884 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 37088 80046888 0800E003 */  jr         $ra
    /* 3708C 8004688C 00000000 */   nop
.size func_80046848, . - func_80046848
