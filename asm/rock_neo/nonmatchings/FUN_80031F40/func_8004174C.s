.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8004174C
    /* 31F4C 8004174C 0C80023C */  lui        $v0, %hi(Scene_work)
    /* 31F50 80041750 484C4290 */  lbu        $v0, %lo(Scene_work)($v0)
    /* 31F54 80041754 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 31F58 80041758 2000B0AF */  sw         $s0, 0x20($sp)
    /* 31F5C 8004175C 21808000 */  addu       $s0, $a0, $zero
    /* 31F60 80041760 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 31F64 80041764 2800B2AF */  sw         $s2, 0x28($sp)
    /* 31F68 80041768 AF004014 */  bnez       $v0, .L80041A28
    /* 31F6C 8004176C 2400B1AF */   sw        $s1, 0x24($sp)
    /* 31F70 80041770 FF00023C */  lui        $v0, (0xFFFFFF >> 16)
    /* 31F74 80041774 8801128E */  lw         $s2, 0x188($s0)
    /* 31F78 80041778 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* 31F7C 8004177C 24884202 */  and        $s1, $s2, $v0
    /* 31F80 80041780 07002016 */  bnez       $s1, .L800417A0
    /* 31F84 80041784 90010526 */   addiu     $a1, $s0, 0x190
    /* 31F88 80041788 0001023C */  lui        $v0, (0x1000000 >> 16)
    /* 31F8C 8004178C 24104202 */  and        $v0, $s2, $v0
    /* 31F90 80041790 97004010 */  beqz       $v0, .L800419F0
    /* 31F94 80041794 00000000 */   nop
    /* 31F98 80041798 0A002012 */  beqz       $s1, .L800417C4
.size func_8004174C, . - func_8004174C
