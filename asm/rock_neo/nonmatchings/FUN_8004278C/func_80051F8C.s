.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80051F8C
    /* 4278C 80051F8C 9D49010C */  jal        func_80052674
    /* 42790 80051F90 1000B5AF */   sw        $s5, 0x10($sp)
    /* 42794 80051F94 62004014 */  bnez       $v0, .L80052120
    /* 42798 80051F98 3800B127 */   addiu     $s1, $sp, 0x38
    /* 4279C 80051F9C 76004282 */  lb         $v0, 0x76($s2)
    /* 427A0 80051FA0 00000000 */  nop
    /* 427A4 80051FA4 53014010 */  beqz       $v0, .L800524F4
    /* 427A8 80051FA8 21100000 */   addu      $v0, $zero, $zero
    /* 427AC 80051FAC C000428E */  lw         $v0, 0xC0($s2)
    /* 427B0 80051FB0 00000000 */  nop
    /* 427B4 80051FB4 4F01C216 */  bne        $s6, $v0, .L800524F4
    /* 427B8 80051FB8 21100000 */   addu      $v0, $zero, $zero
    /* 427BC 80051FBC 44006286 */  lh         $v0, 0x44($s3)
    /* 427C0 80051FC0 00000000 */  nop
    /* 427C4 80051FC4 9800A2AF */  sw         $v0, 0x98($sp)
    /* 427C8 80051FC8 46006286 */  lh         $v0, 0x46($s3)
    /* 427CC 80051FCC 00000000 */  nop
    /* 427D0 80051FD0 9C00A2AF */  sw         $v0, 0x9C($sp)
    /* 427D4 80051FD4 48006286 */  lh         $v0, 0x48($s3)
    /* 427D8 80051FD8 2300E016 */  bnez       $s7, .L80052068
.size func_80051F8C, . - func_80051F8C
