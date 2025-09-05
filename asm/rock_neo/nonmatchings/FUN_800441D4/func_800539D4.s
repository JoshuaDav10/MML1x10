.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800539D4
    /* 441D4 800539D4 0008033C */  lui        $v1, (0x8000000 >> 16)
    /* 441D8 800539D8 07186302 */  srav       $v1, $v1, $s3
    /* 441DC 800539DC 25208300 */  or         $a0, $a0, $v1
    /* 441E0 800539E0 F41184AF */  sw         $a0, %gp_rel(Moji_flag)($gp)
  .L800539E4:
    /* 441E4 800539E4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 441E8 800539E8 2000B48F */  lw         $s4, 0x20($sp)
    /* 441EC 800539EC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 441F0 800539F0 1800B28F */  lw         $s2, 0x18($sp)
    /* 441F4 800539F4 1400B18F */  lw         $s1, 0x14($sp)
    /* 441F8 800539F8 1000B08F */  lw         $s0, 0x10($sp)
    /* 441FC 800539FC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 44200 80053A00 0800E003 */  jr         $ra
    /* 44204 80053A04 00000000 */   nop
.size func_800539D4, . - func_800539D4
