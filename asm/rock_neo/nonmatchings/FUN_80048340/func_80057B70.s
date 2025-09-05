.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80057B70
    /* 48370 80057B70 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 48374 80057B74 1000B0AF */  sw         $s0, 0x10($sp)
    /* 48378 80057B78 21808000 */  addu       $s0, $a0, $zero
    /* 4837C 80057B7C 21280000 */  addu       $a1, $zero, $zero
    /* 48380 80057B80 9012848F */  lw         $a0, %gp_rel(D_80098AF4)($gp)
    /* 48384 80057B84 1400BFAF */  sw         $ra, 0x14($sp)
.size func_80057B70, . - func_80057B70
