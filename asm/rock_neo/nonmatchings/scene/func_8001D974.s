.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8001D974
    /* E174 8001D974 0C80033C */  lui        $v1, %hi(Game_work + 0x53)
    /* E178 8001D978 631B6324 */  addiu      $v1, $v1, %lo(Game_work + 0x53)
    /* E17C 8001D97C 00006290 */  lbu        $v0, 0x0($v1)
    /* E180 8001D980 00000000 */  nop
    /* E184 8001D984 01004224 */  addiu      $v0, $v0, 0x1
    /* E188 8001D988 0800E003 */  jr         $ra
    /* E18C 8001D98C 000062A0 */   sb        $v0, 0x0($v1)
.size func_8001D974, . - func_8001D974
