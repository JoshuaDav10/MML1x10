.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel func_800578B4
    /* 480B4 800578B4 04004224 */  addiu      $v0, $v0, 0x4
    /* 480B8 800578B8 435E0108 */  j          .L8005790C
    /* 480BC 800578BC 6C0002AE */   sw        $v0, 0x6C($s0)
.size func_800578B4, . - func_800578B4
