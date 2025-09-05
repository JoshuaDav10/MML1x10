.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800456D8
    /* 35ED8 800456D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 35EDC 800456DC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 35EE0 800456E0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 35EE4 800456E4 94FF010C */  jal        rand
    /* 35EE8 800456E8 21808000 */   addu      $s0, $a0, $zero
    /* 35EEC 800456EC 01004230 */  andi       $v0, $v0, 0x1
    /* 35EF0 800456F0 05004010 */  beqz       $v0, .L80045708
    /* 35EF4 800456F4 00000000 */   nop
    /* 35EF8 800456F8 00000292 */  lbu        $v0, 0x0($s0)
    /* 35EFC 800456FC 00000000 */  nop
    /* 35F00 80045700 02004234 */  ori        $v0, $v0, 0x2
    /* 35F04 80045704 000002A2 */  sb         $v0, 0x0($s0)
  .L80045708:
    /* 35F08 80045708 21200002 */  addu       $a0, $s0, $zero
    /* 35F0C 8004570C 71BE000C */  jal        func_8002F9C4
    /* 35F10 80045710 03000526 */   addiu     $a1, $s0, 0x3
    /* 35F14 80045714 9B000424 */  addiu      $a0, $zero, 0x9B
    /* 35F18 80045718 08000292 */  lbu        $v0, 0x8($s0)
    /* 35F1C 8004571C 38000526 */  addiu      $a1, $s0, 0x38
    /* 35F20 80045720 01004224 */  addiu      $v0, $v0, 0x1
    /* 35F24 80045724 1468000C */  jal        Sound_call2
    /* 35F28 80045728 080002A2 */   sb        $v0, 0x8($s0)
    /* 35F2C 8004572C AD16010C */  jal        func_80045AB4
    /* 35F30 80045730 21200002 */   addu      $a0, $s0, $zero
    /* 35F34 80045734 F216010C */  jal        func_80045BC8
    /* 35F38 80045738 21200002 */   addu      $a0, $s0, $zero
    /* 35F3C 8004573C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 35F40 80045740 1000B08F */  lw         $s0, 0x10($sp)
    /* 35F44 80045744 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 35F48 80045748 0800E003 */  jr         $ra
    /* 35F4C 8004574C 00000000 */   nop
.size func_800456D8, . - func_800456D8
