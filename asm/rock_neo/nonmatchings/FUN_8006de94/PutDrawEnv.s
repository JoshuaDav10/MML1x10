.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

glabel PutDrawEnv
    /* 6DEA0 8007D6A0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6DEA4 8007D6A4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6DEA8 8007D6A8 0980123C */  lui        $s2, %hi(D_8009771A)
    /* 6DEAC 8007D6AC 1A775226 */  addiu      $s2, $s2, %lo(D_8009771A)
    /* 6DEB0 8007D6B0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 6DEB4 8007D6B4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6DEB8 8007D6B8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6DEBC 8007D6BC 00004292 */  lbu        $v0, 0x0($s2)
    /* 6DEC0 8007D6C0 00000000 */  nop
    /* 6DEC4 8007D6C4 0200422C */  sltiu      $v0, $v0, 0x2
    /* 6DEC8 8007D6C8 08004014 */  bnez       $v0, .L8007D6EC
    /* 6DECC 8007D6CC 21888000 */   addu      $s1, $a0, $zero
    /* 6DED0 8007D6D0 0180043C */  lui        $a0, (0x80010000 >> 16)
.size PutDrawEnv, . - PutDrawEnv
