.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_8003F958
    /* 30158 8003F958 120102A2 */  sb         $v0, 0x112($s0)
  .L8003F95C:
    /* 3015C 8003F95C 090000A2 */  sb         $zero, 0x9($s0)
    /* 30160 8003F960 0A0000A6 */  sh         $zero, 0xA($s0)
  .L8003F964:
    /* 30164 8003F964 1800BF8F */  lw         $ra, 0x18($sp)
    /* 30168 8003F968 1400B18F */  lw         $s1, 0x14($sp)
    /* 3016C 8003F96C 1000B08F */  lw         $s0, 0x10($sp)
    /* 30170 8003F970 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 30174 8003F974 0800E003 */  jr         $ra
    /* 30178 8003F978 00000000 */   nop
.size func_8003F958, . - func_8003F958
