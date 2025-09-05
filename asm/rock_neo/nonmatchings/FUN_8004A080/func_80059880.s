.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_80059880
    /* 4A080 80059880 0B4E010C */  jal        MojiTaskExec
    /* 4A084 80059884 00000000 */   nop
    /* 4A088 80059888 0200033C */  lui        $v1, (0x28000 >> 16)
    /* 4A08C 8005988C F411828F */  lw         $v0, %gp_rel(Moji_flag)($gp)
    /* 4A090 80059890 00806334 */  ori        $v1, $v1, (0x28000 & 0xFFFF)
    /* 4A094 80059894 25104300 */  or         $v0, $v0, $v1
    /* 4A098 80059898 F41182AF */  sw         $v0, %gp_rel(Moji_flag)($gp)
    /* 4A09C 8005989C 71000292 */  lbu        $v0, 0x71($s0)
    /* 4A0A0 800598A0 2C660108 */  j          .L800598B0
    /* 4A0A4 800598A4 790002A2 */   sb        $v0, 0x79($s0)
  .L800598A8:
    /* 4A0A8 800598A8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4A0AC 800598AC 040002A6 */  sh         $v0, 0x4($s0)
  .L800598B0:
    /* 4A0B0 800598B0 21100000 */  addu       $v0, $zero, $zero
  .L800598B4:
    /* 4A0B4 800598B4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4A0B8 800598B8 1800B08F */  lw         $s0, 0x18($sp)
    /* 4A0BC 800598BC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4A0C0 800598C0 0800E003 */  jr         $ra
    /* 4A0C4 800598C4 00000000 */   nop
.size func_80059880, . - func_80059880
