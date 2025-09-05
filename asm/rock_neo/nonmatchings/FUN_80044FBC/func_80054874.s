.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80054874
    /* 45074 80054874 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 45078 80054878 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4507C 8005487C 21808000 */  addu       $s0, $a0, $zero
    /* 45080 80054880 1400BFAF */  sw         $ra, 0x14($sp)
.size func_80054874, . - func_80054874
