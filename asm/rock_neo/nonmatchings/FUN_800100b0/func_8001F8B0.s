.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001F8B0
    /* 100B0 8001F8B0 307E0008 */  j          .L8001F8C0
    /* 100B4 8001F8B4 34000224 */   addiu     $v0, $zero, 0x34
  .L8001F8B8:
    /* 100B8 8001F8B8 580982A7 */  sh         $v0, %gp_rel(D_800981BC)($gp)
    /* 100BC 8001F8BC 35000224 */  addiu      $v0, $zero, 0x35
  .L8001F8C0:
    /* 100C0 8001F8C0 5E0982A7 */  sh         $v0, %gp_rel(D_800981C2)($gp)
    /* 100C4 8001F8C4 5C0982A7 */  sh         $v0, %gp_rel(D_800981C0)($gp)
    /* 100C8 8001F8C8 5A0982A7 */  sh         $v0, %gp_rel(D_800981BE)($gp)
  .L8001F8CC:
    /* 100CC 8001F8CC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 100D0 8001F8D0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 100D4 8001F8D4 0800E003 */  jr         $ra
    /* 100D8 8001F8D8 00000000 */   nop
.size func_8001F8B0, . - func_8001F8B0
