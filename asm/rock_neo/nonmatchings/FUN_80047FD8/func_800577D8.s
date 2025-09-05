.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800577D8
    /* 47FD8 800577D8 CCCA228C */  lw         $v0, -0x3534($at)
  .L800577DC:
    /* 47FDC 800577DC 00000000 */  nop
    /* 47FE0 800577E0 480082AC */  sw         $v0, 0x48($a0)
    /* 47FE4 800577E4 6C0082AC */  sw         $v0, 0x6C($a0)
    /* 47FE8 800577E8 3E0080A0 */  sb         $zero, 0x3E($a0)
    /* 47FEC 800577EC 3C0080A0 */  sb         $zero, 0x3C($a0)
    /* 47FF0 800577F0 720080A0 */  sb         $zero, 0x72($a0)
  .L800577F4:
    /* 47FF4 800577F4 0800E003 */  jr         $ra
    /* 47FF8 800577F8 01000224 */   addiu     $v0, $zero, 0x1
.size func_800577D8, . - func_800577D8
