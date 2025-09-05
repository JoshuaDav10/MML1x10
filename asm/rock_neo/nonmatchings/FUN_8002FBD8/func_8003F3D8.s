.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003F3D8
    /* 2FBD8 8003F3D8 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FBDC 8003F3DC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 2FBE0 8003F3E0 0800E003 */  jr         $ra
    /* 2FBE4 8003F3E4 00000000 */   nop
.size func_8003F3D8, . - func_8003F3D8
