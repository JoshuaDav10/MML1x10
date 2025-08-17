.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001DEE4
    /* E6E4 8001DEE4 0A80013C */  lui        $at, %hi(D_800988E8)
    /* E6E8 8001DEE8 E88820AC */  sw         $zero, %lo(D_800988E8)($at)
    /* E6EC 8001DEEC 1F000324 */  addiu      $v1, $zero, 0x1F
    /* E6F0 8001DEF0 0B80023C */  lui        $v0, %hi(D_800ACDBC)
    /* E6F4 8001DEF4 BCCD4224 */  addiu      $v0, $v0, %lo(D_800ACDBC)
  .L8001DEF8:
    /* E6F8 8001DEF8 000040AC */  sw         $zero, 0x0($v0)
    /* E6FC 8001DEFC FFFF6324 */  addiu      $v1, $v1, -0x1
    /* E700 8001DF00 FDFF6104 */  bgez       $v1, .L8001DEF8
    /* E704 8001DF04 FCFF4224 */   addiu     $v0, $v0, -0x4
    /* E708 8001DF08 0800E003 */  jr         $ra
    /* E70C 8001DF0C 00000000 */   nop
.size func_8001DEE4, . - func_8001DEE4
