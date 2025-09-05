.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80055C1C
    /* 4641C 80055C1C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 46420 80055C20 1000B0AF */  sw         $s0, 0x10($sp)
    /* 46424 80055C24 21808000 */  addu       $s0, $a0, $zero
    /* 46428 80055C28 1400BFAF */  sw         $ra, 0x14($sp)
    /* 4642C 80055C2C 0000028E */  lw         $v0, 0x0($s0)
.size func_80055C1C, . - func_80055C1C
