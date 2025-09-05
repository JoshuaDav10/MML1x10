.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800468C4
    /* 370C4 800468C4 2800028E */  lw         $v0, 0x28($s0)
    /* 370C8 800468C8 2C00038E */  lw         $v1, 0x2C($s0)
    /* 370CC 800468CC 3000048E */  lw         $a0, 0x30($s0)
    /* 370D0 800468D0 3400058E */  lw         $a1, 0x34($s0)
    /* 370D4 800468D4 2800A2AF */  sw         $v0, 0x28($sp)
    /* 370D8 800468D8 2C00A3AF */  sw         $v1, 0x2C($sp)
    /* 370DC 800468DC 3000A4AF */  sw         $a0, 0x30($sp)
    /* 370E0 800468E0 3400A5AF */  sw         $a1, 0x34($sp)
    /* 370E4 800468E4 94FF010C */  jal        rand
    /* 370E8 800468E8 00000000 */   nop
    /* 370EC 800468EC 1000A427 */  addiu      $a0, $sp, 0x10
    /* 370F0 800468F0 7F004530 */  andi       $a1, $v0, 0x7F
    /* 370F4 800468F4 1800B127 */  addiu      $s1, $sp, 0x18
    /* 370F8 800468F8 0E000396 */  lhu        $v1, 0xE($s0)
    /* 370FC 800468FC 3F004230 */  andi       $v0, $v0, 0x3F
    /* 37100 80046900 80006324 */  addiu      $v1, $v1, 0x80
    /* 37104 80046904 21186500 */  addu       $v1, $v1, $a1
.size func_800468C4, . - func_800468C4
