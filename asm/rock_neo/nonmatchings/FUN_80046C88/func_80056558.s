.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80056558
    /* 46D58 80056558 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 46D5C 8005655C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 46D60 80056560 21808000 */  addu       $s0, $a0, $zero
    /* 46D64 80056564 1400BFAF */  sw         $ra, 0x14($sp)
    /* 46D68 80056568 4400058E */  lw         $a1, 0x44($s0)
    /* 46D6C 8005656C 00000000 */  nop
    /* 46D70 80056570 0D00A010 */  beqz       $a1, .L800565A8
    /* 46D74 80056574 00000000 */   nop
    /* 46D78 80056578 71000282 */  lb         $v0, 0x71($s0)
    /* 46D7C 8005657C 38118393 */  lbu        $v1, %gp_rel(D_8009899C)($gp)
.size func_80056558, . - func_80056558
