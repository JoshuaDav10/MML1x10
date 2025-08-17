.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Map_screen_init
    /* 52D9C 8006259C 0C80023C */  lui        $v0, %hi(Game_work + 0x52)
    /* 52DA0 800625A0 621B4280 */  lb         $v0, %lo(Game_work + 0x52)($v0)
    /* 52DA4 800625A4 8C0F80AF */  sw         $zero, %gp_rel(Map_screen_work)($gp)
    /* 52DA8 800625A8 0A80013C */  lui        $at, %hi(D_800987F4)
    /* 52DAC 800625AC F48720AC */  sw         $zero, %lo(D_800987F4)($at)
    /* 52DB0 800625B0 09004228 */  slti       $v0, $v0, 0x9
    /* 52DB4 800625B4 05004010 */  beqz       $v0, .L800625CC
    /* 52DB8 800625B8 01000224 */   addiu     $v0, $zero, 0x1
    /* 52DBC 800625BC 0A80013C */  lui        $at, %hi(D_800987F4)
    /* 52DC0 800625C0 F48720A0 */  sb         $zero, %lo(D_800987F4)($at)
    /* 52DC4 800625C4 75890108 */  j          .L800625D4
    /* 52DC8 800625C8 00000000 */   nop
  .L800625CC:
    /* 52DCC 800625CC 0A80013C */  lui        $at, %hi(D_800987F4)
    /* 52DD0 800625D0 F48722A0 */  sb         $v0, %lo(D_800987F4)($at)
  .L800625D4:
    /* 52DD4 800625D4 0800E003 */  jr         $ra
    /* 52DD8 800625D8 00000000 */   nop
.size Map_screen_init, . - Map_screen_init
