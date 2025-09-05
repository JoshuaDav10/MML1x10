.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80066664
    /* 56E64 80066664 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 56E68 80066668 1000B0AF */  sw         $s0, 0x10($sp)
    /* 56E6C 8006666C 21808000 */  addu       $s0, $a0, $zero
    /* 56E70 80066670 1400BFAF */  sw         $ra, 0x14($sp)
    /* 56E74 80066674 02000396 */  lhu        $v1, 0x2($s0)
    /* 56E78 80066678 01000224 */  addiu      $v0, $zero, 0x1
    /* 56E7C 8006667C 0A006014 */  bnez       $v1, .L800666A8
.size func_80066664, . - func_80066664
