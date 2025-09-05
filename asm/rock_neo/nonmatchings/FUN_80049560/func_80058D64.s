.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80058D64
    /* 49564 80058D64 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 49568 80058D68 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4956C 80058D6C 21808000 */  addu       $s0, $a0, $zero
    /* 49570 80058D70 1400BFAF */  sw         $ra, 0x14($sp)
    /* 49574 80058D74 1400048E */  lw         $a0, 0x14($s0)
.size func_80058D64, . - func_80058D64
