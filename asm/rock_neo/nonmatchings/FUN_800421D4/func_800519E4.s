.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800519E4
    /* 421E4 800519E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 421E8 800519E8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 421EC 800519EC 21808000 */  addu       $s0, $a0, $zero
.size func_800519E4, . - func_800519E4
