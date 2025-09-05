.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8005FDE4
    /* 505E4 8005FDE4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 505E8 8005FDE8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 505EC 8005FDEC 21808000 */  addu       $s0, $a0, $zero
.size func_8005FDE4, . - func_8005FDE4
