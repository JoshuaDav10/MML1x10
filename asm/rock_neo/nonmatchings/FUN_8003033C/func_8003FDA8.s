.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003FDA8
    /* 305A8 8003FDA8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 305AC 8003FDAC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 305B0 8003FDB0 21808000 */  addu       $s0, $a0, $zero
    /* 305B4 8003FDB4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 305B8 8003FDB8 0A000292 */  lbu        $v0, 0xA($s0)
.size func_8003FDA8, . - func_8003FDA8
