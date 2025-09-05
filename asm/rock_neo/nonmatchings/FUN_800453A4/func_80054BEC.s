.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054BEC
    /* 453EC 80054BEC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 453F0 80054BF0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 453F4 80054BF4 21808000 */  addu       $s0, $a0, $zero
    /* 453F8 80054BF8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 453FC 80054BFC 1400028E */  lw         $v0, 0x14($s0)
    /* 45400 80054C00 ED000324 */  addiu      $v1, $zero, 0xED
    /* 45404 80054C04 030043A0 */  sb         $v1, 0x3($v0)
    /* 45408 80054C08 71000582 */  lb         $a1, 0x71($s0)
    /* 4540C 80054C0C 73000282 */  lb         $v0, 0x73($s0)
.size func_80054BEC, . - func_80054BEC
