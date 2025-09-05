.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800545C8
    /* 44DC8 800545C8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 44DCC 800545CC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 44DD0 800545D0 21808000 */  addu       $s0, $a0, $zero
    /* 44DD4 800545D4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 44DD8 800545D8 0000038E */  lw         $v1, 0x0($s0)
.size func_800545C8, . - func_800545C8
