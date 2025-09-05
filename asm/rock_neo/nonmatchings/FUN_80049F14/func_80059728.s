.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059728
    /* 49F28 80059728 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 49F2C 8005972C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 49F30 80059730 21808000 */  addu       $s0, $a0, $zero
    /* 49F34 80059734 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 49F38 80059738 0000048E */  lw         $a0, 0x0($s0)
    /* 49F3C 8005973C 0001053C */  lui        $a1, (0x1000000 >> 16)
    /* 49F40 80059740 24108500 */  and        $v0, $a0, $a1
.size func_80059728, . - func_80059728
