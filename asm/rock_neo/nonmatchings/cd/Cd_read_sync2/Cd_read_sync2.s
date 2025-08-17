.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel Cd_read_sync2
    /* E038 8001D838 0A80023C */  lui        $v0, %hi(unknown_Cd_strucptr)
    /* E03C 8001D83C A489428C */  lw         $v0, %lo(unknown_Cd_strucptr)($v0)
    /* E040 8001D840 0A80033C */  lui        $v1, %hi(D_800A3A40)
    /* E044 8001D844 403A6324 */  addiu      $v1, $v1, %lo(D_800A3A40)
    /* E048 8001D848 26104300 */  xor        $v0, $v0, $v1
    /* E04C 8001D84C 0800E003 */  jr         $ra
    /* E050 8001D850 2B100200 */   sltu      $v0, $zero, $v0
.size Cd_read_sync2, . - Cd_read_sync2
